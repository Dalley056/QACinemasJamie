CREATE TABLE [dbo].[Classifications]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [ImgSmall] NVARCHAR(MAX) NOT NULL, 
    [ImgLarge] NVARCHAR(MAX) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate()
)
