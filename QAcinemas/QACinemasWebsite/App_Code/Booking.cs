using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QACinemasWebsite.App_Code
{
    public class Booking
    {
        public class BookingData
        {
            public int BookingId, UserId, ShowingId, BillingId;
            public int[] Seats;

            public BookingData(int bookingId, int userId, int showingId, int billingId, int[] seats )
            {
                BookingId = bookingId;
                UserId = userId;
                ShowingId = showingId;
                BillingId = billingId;
                Seats = seats;
            }
        }
    }
}