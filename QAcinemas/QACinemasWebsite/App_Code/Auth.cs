using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using Microsoft.AspNetCore.Cryptography.KeyDerivation;
using System.Text;

namespace QACinemasWebsite.App_Code
{
    public static class Auth
    {
        public class AuthData
        {
            public string Hash;
            public string Salt;

            public AuthData(string hash = null, string salt = null)
            {
                Hash = hash;
                Salt = salt;
            }
        };

        /// <summary>
        /// Generate a salt of a speicified length. Used internally.
        /// </summary>
        /// <param name="size">size of salt in bits. Defaults to 128-bit salt</param>
        /// <returns>byte[] of salt</returns>
        private static byte[] GenerateSalt(int size = 128)
        {
            // generate a salt using a secure PRNG
            byte[] salt = new byte[size / 8];
            using (var rng = RandomNumberGenerator.Create())
            {
                rng.GetBytes(salt);
            }
            return salt;
        }

        /// <summary>
        /// Hashes a password and returns the result
        /// </summary>
        /// <param name="password">Password string to be hashed</param>
        /// <param name="salt">Salt string to be used in the hashing</param>
        /// <param name="hashsize">Size of the hash in bits</param>
        /// <returns>AuthData object containing the hash and salt</returns>
        private static String HashSaltPassword(string password, string salt, int hashsize = 256)
        {
            // derive a subkey (use HMACSHA256 with 10,000 iterations)
            string hash = Convert.ToBase64String(KeyDerivation.Pbkdf2(
                password: password,
                salt: Encoding.ASCII.GetBytes(salt),
                prf: KeyDerivationPrf.HMACSHA256,
                iterationCount: 10000,
                numBytesRequested: hashsize / 8));

            return hash;
        }

        /// <summary>
        /// Verifies if a username and password are valid users
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns>boolean result</returns>
        public static Boolean VerifyUsernamePassword(string username, string password)
        {
            DataSetTableAdapters.UsersTableAdapter usertableadapter = new DataSetTableAdapters.UsersTableAdapter();     
            DataSet.UsersDataTable data = usertableadapter.GetUserByUsername(username, true);                //Get user with matching username

            if (data != null && data.Count!=0)                                                               //check if user exists
            {
                DataSet.UsersRow user = data[0];                                                             //get the userrow from the dataset              
                string input_hash = HashSaltPassword(password, user.PasswordSalt.ToString());                //input password gets hashed using the known salt
                if (input_hash == user.PasswordHash.ToString().Trim()) return true;                          //if existing hash and generated hash match, user is verified!
            }
            return false;                                                                                    //for all other cases verification fails
        }

        /// <summary>
        /// Generates a hash and salt for an input string using HMACSHA256
        /// </summary>
        /// <param name="input">input string to be converted</param>
        /// <returns>AuthData object containing hash and salt string</returns>
        public static AuthData StringToHashSalt(string input)
        {
            string salt = Convert.ToBase64String(GenerateSalt());
            string hash = HashSaltPassword(input, salt);

            return new AuthData(hash, salt);
        }
    }
}