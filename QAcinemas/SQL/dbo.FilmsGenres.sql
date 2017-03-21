CREATE TABLE [dbo].[FilmsGenres]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [FilmId] BIGINT NOT NULL, 
    [GenreId] BIGINT NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_FilmsGenres_Films] FOREIGN KEY ([FilmId]) REFERENCES [Films]([Id]), 
    CONSTRAINT [FK_FilmsGenres_Genres] FOREIGN KEY ([GenreId]) REFERENCES [Genres]([Id])
)
