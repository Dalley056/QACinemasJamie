CREATE TABLE [dbo].[Screens]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
	[CinemaId] BIGINT NOT NULL,
    [Name] NVARCHAR(50) NOT NULL, 
    [ImgSeating] NVARCHAR(MAX) NOT NULL, 
    [ImgSeatingBackdrop] NVARCHAR(MAX) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Screens_Cinemas] FOREIGN KEY ([CinemaId]) REFERENCES [Cinemas]([Id])
)
