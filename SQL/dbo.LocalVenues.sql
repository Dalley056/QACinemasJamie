CREATE TABLE [dbo].[LocalVenues]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [CinemaId] BIGINT NOT NULL, 
    [AddressId] BIGINT NOT NULL, 
    [Name] NVARCHAR(100) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Img] NVARCHAR(MAX) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_LocalVenues_Cinemas] FOREIGN KEY ([CinemaId]) REFERENCES [Cinemas]([Id]), 
    CONSTRAINT [FK_LocalVenues_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id])
)
