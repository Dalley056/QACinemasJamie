CREATE TABLE [dbo].[Posts]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [UserId] BIGINT NOT NULL, 
	[FilmId] BIGINT NOT NULL,
    [Text] NVARCHAR(MAX) NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Posts_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]), 
    CONSTRAINT [FK_Posts_Films] FOREIGN KEY ([FilmId]) REFERENCES [Films]([Id])
)
