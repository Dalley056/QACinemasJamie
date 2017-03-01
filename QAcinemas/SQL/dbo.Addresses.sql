CREATE TABLE [dbo].[Addresses]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [Line1] NCHAR(50) NOT NULL, 
    [Line2] NCHAR(50) NOT NULL, 
    [City] NCHAR(50) NOT NULL, 
    [Region] NCHAR(50) NOT NULL, 
    [Country] NCHAR(50) NOT NULL, 
    [Postcode] NCHAR(10) NOT NULL, 
    [CoordX] NVARCHAR(50) NOT NULL, 
    [CoordY] NVARCHAR(50) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate()
)
