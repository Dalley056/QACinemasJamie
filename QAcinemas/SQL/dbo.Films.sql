CREATE TABLE [dbo].[Films]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [ClassificationId] BIGINT NOT NULL, 
    [Title] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Duration] INT NOT NULL, 
    [Language] NVARCHAR(50) NOT NULL, 
    [ImdbId] NCHAR(10) NOT NULL, 
    [Featured] BIT NOT NULL, 
    [ImgSmall] NVARCHAR(MAX) NOT NULL, 
    [ImgLarge] NVARCHAR(MAX) NOT NULL, 
    [Active] BIT NULL DEFAULT 1, 
    [DateAdded] DATE NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Films_Classifications] FOREIGN KEY ([ClassificationId]) REFERENCES [Classifications]([Id]),
)
