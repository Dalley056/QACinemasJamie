CREATE TABLE [dbo].[Seats]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [ScreenId] BIGINT NOT NULL, 
    [Name] NVARCHAR(5) NOT NULL, 
    [PosTop] FLOAT NOT NULL, 
    [PosLeft] FLOAT NOT NULL, 
    [AudioDescription] BIT NOT NULL DEFAULT 0, 
    [WheelchairAccess] BIT NOT NULL DEFAULT 0, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Seats_Screens] FOREIGN KEY ([ScreenId]) REFERENCES [Screens]([Id])
)
