using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Diagnostics;
using QACinemasWebsite;
using QACinemasWebsite.App_Code;

namespace QACinemasWebsite.Tests
{
    [TestClass]
    public class AuthTest
    {
        string TEST_PASSWORD = "password123";
        Auth.AuthData TEST_AUTHDATA;

        [TestMethod]
        public void GenerateHashSaltFromPassword()
        {
            
            TEST_AUTHDATA = Auth.StringToHashSalt(TEST_PASSWORD);
            Debug.WriteLine(String.Format("Password = {0}, Hash = {1}, Salt = {2}", TEST_PASSWORD, TEST_AUTHDATA.Hash, TEST_AUTHDATA.Salt));
            Assert.IsTrue(TEST_AUTHDATA != null &&
                            !String.IsNullOrEmpty(TEST_AUTHDATA.Hash) &&
                            !String.IsNullOrEmpty(TEST_AUTHDATA.Salt),
                            String.Format("Password = {0}, Hash = {1}, Salt = {2}", TEST_PASSWORD, TEST_AUTHDATA.Hash, TEST_AUTHDATA.Salt));
        }
    }
}
