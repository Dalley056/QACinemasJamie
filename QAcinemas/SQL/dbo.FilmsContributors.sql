CREATE TABLE [dbo].[FilmsContributors]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [FilmId] BIGINT NOT NULL, 
    [ContributorId] BIGINT NOT NULL, 
    [Active] BIT NOT NULL DEFAULT 1, 
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_FilmsContributors_Films] FOREIGN KEY ([FilmId]) REFERENCES [Films]([Id]), 
    CONSTRAINT [FK_FilmsContributors_Contributors] FOREIGN KEY ([ContributorId]) REFERENCES [Contributors]([Id])
)
