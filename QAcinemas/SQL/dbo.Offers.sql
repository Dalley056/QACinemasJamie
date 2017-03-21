CREATE TABLE [dbo].[Offers]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [CinemaId] BIGINT NOT NULL, 
    [Name] NVARCHAR(100) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Img] NVARCHAR(MAX) NOT NULL, 
    [DateVoid] DATETIME NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_Offers_Cinemas] FOREIGN KEY ([CinemaId]) REFERENCES [Cinemas]([Id])
)
