CREATE TABLE [dbo].[BillingDetails]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [UserId] BIGINT NOT NULL, 
	[AddressId] BIGINT NOT NULL,
    [CardType] NCHAR(20) NOT NULL, 
    [CVC] INT NOT NULL, 
    [CardNumber] INT NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_BillingDetails_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]), 
    CONSTRAINT [FK_BillingDetails_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id])
)
