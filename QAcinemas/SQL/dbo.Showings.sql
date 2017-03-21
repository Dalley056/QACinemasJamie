CREATE TABLE [dbo].[Showings]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [ScreenId] BIGINT NOT NULL, 
    [FilmId] BIGINT NOT NULL, 
    [StartTime] DATETIME NOT NULL, 
    [EndTime] DATETIME NOT NULL, 
    [CostPerSeat] MONEY NOT NULL , 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Showings_Screens] FOREIGN KEY ([ScreenId]) REFERENCES [Screens]([Id]), 
    CONSTRAINT [FK_Showings_Films] FOREIGN KEY ([FilmId]) REFERENCES [Films]([Id])
	
)
