CREATE TABLE [dbo].[Cinemas]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [AddressId] BIGINT NOT NULL, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [ImgSmall] NVARCHAR(MAX) NOT NULL, 
    [ImgLarge] NVARCHAR(MAX) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Cinemas_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id]), 
)
