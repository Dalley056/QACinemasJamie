CREATE TABLE [dbo].[Bookings]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [UserId] BIGINT NOT NULL, 
    [BillingDetailsId] BIGINT NOT NULL, 
    [Paid] BIT NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Bookings_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id])
)
