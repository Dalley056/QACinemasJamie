CREATE TABLE [dbo].[Users]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [AddressId] BIGINT NOT NULL, 
    [Username] NCHAR(20) UNIQUE NOT NULL, 
    [PasswordHash] NCHAR(128) NOT NULL, 
    [PasswordSalt] NCHAR(128) NOT NULL, 
    [EmailAddress] NCHAR(256) NOT NULL, 
    [PhoneNumber] NCHAR(50) NOT NULL, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Users_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id])
)
