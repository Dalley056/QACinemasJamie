using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QACinemasWebsite.App_Code
{
    public class PasswordReset
    {
        private static double PASSWORD_RESET_REQUEST_TIMEOUT = 900;            //In seconds
        private static List<PasswordResetRequest> _passwordresetrequests = new List<PasswordResetRequest> { };

        public static List<PasswordResetRequest> PasswordResetRequests
        {
            get
            {
                PurgeOldRequests();
                return _passwordresetrequests;
            }
        }

        public static void RemoveRequest(PasswordResetRequest request)
        {
            PurgeOldRequests();
            _passwordresetrequests.Remove(request);
        }

        public static void AddRequest(PasswordResetRequest request)
        {
            PurgeOldRequests();
            _passwordresetrequests.Add(request);
            SendResetEmail(request);
            
        }

        public static PasswordResetRequest GetRequestByRequestId(string ID)
        {
            foreach(PasswordResetRequest request in PasswordResetRequests)
            {
                if(request.RequestId==ID)
                {
                    return request;
                }
            }
            return null;
        }
        public static void SendResetEmail(PasswordResetRequest request)
        {
            string email_body = String.Format("Please navigate to http://qacinemas.co.uk/resetpassword.aspx?id={0} to reset your password." +
                "This link is valid for 15 minutes.", request.RequestId);

            Common.Email.SendEmail(request.User.EmailAddress, "Password Reset Request", email_body);
        }



        /// <summary>
        /// Check the password reset requests list, remove out of date requests
        /// </summary>
        private static void PurgeOldRequests()
        {
            System.Diagnostics.Debug.WriteLine("DEBUG - Old password reset requests purged");
            foreach (PasswordResetRequest request in _passwordresetrequests)
            {
                if (request.RequestTime.AddSeconds(PASSWORD_RESET_REQUEST_TIMEOUT) < DateTime.Now)
                {
                    _passwordresetrequests.Remove(request);
                }
            }
        }

        /// <summary>
        /// Password reset request object
        /// </summary>
        public class PasswordResetRequest
        {

            private int REQUEST_ID_LENGTH = 32;

            private DataSet.UsersRow _user;
            private string _requestid;
            private DateTime _requesttime;


            public PasswordResetRequest(DataSet.UsersRow user)
            {
                _user = user;
                _requestid = Auth.GenerateRandomString(REQUEST_ID_LENGTH);
                _requesttime = DateTime.Now;
            }

            public DataSet.UsersRow User
            {
                get
                {
                    return _user;
                }
            }

            public string RequestId
            {
                get
                {
                    return _requestid;
                }
            }

            public DateTime RequestTime
            {
                get
                {
                    return _requesttime;
                }
            }
        }

    }
}