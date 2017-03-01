CREATE TABLE [dbo].[SeatsBookings]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [SeatId] BIGINT NOT NULL, 
    [ShowingId] BIGINT NOT NULL, 
    [BookingId] BIGINT NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_SeatBookings_Seats] FOREIGN KEY ([SeatId]) REFERENCES [Seats]([Id]), 
    CONSTRAINT [FK_SeatBookings_Showings] FOREIGN KEY ([ShowingId]) REFERENCES [Showings]([Id]), 
    CONSTRAINT [FK_SeatBookings_Bookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id])
)
