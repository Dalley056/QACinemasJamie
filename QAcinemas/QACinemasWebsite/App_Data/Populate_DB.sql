PRINT N'CREATING DATABASE QACinemasDB';
GO
CREATE DATABASE [QACinemasDB];
GO
USE [QACinemasDB];

GO
PRINT N'Creating Addresses';
GO
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
);

GO
PRINT N'Creating Users';
GO
CREATE TABLE [dbo].[Users]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [AddressId] BIGINT NOT NULL,
    [Username] NCHAR(20) UNIQUE NOT NULL,
    [PasswordHash] NCHAR(128) NOT NULL,
    [PasswordSalt] NCHAR(128) NOT NULL,
    [EmailAddress] NCHAR(256) NOT NULL,
    [PhoneNumber] NCHAR(50) NOT NULL,
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_Users_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id])
);

GO
PRINT N'Creating BillingDetails';
GO
CREATE TABLE [dbo].[BillingDetails]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [UserId] BIGINT NOT NULL,
	[AddressId] BIGINT NOT NULL,
    [CardType] NCHAR(20) NOT NULL,
    [CVC] INT NOT NULL,
    [CardNumber] INT NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_BillingDetails_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
    CONSTRAINT [FK_BillingDetails_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id])
);

--------------------------------------------------------------------------------
--CINEMA ASSOCIATED TABLES
GO
PRINT N'Creating Cinemas';
GO
CREATE TABLE [dbo].[Cinemas]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [AddressId] BIGINT NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(MAX) NOT NULL,
    [ImgSmall] NVARCHAR(MAX) NOT NULL,
    [ImgLarge] NVARCHAR(MAX) NOT NULL,
		[ImgParking] NVARCHAR(MAX) NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_Cinemas_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id]),
);

GO
PRINT N'Creating Offers';
GO
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
);

GO
PRINT N'Creating LocalVenues';
GO
CREATE TABLE [dbo].[LocalVenues]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [CinemaId] BIGINT NOT NULL,
    [AddressId] BIGINT NOT NULL,
    [Name] NVARCHAR(100) NOT NULL,
    [Description] NVARCHAR(MAX) NOT NULL,
    [Img] NVARCHAR(MAX) NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_LocalVenues_Cinemas] FOREIGN KEY ([CinemaId]) REFERENCES [Cinemas]([Id]),
    CONSTRAINT [FK_LocalVenues_Addresses] FOREIGN KEY ([AddressId]) REFERENCES [Addresses]([Id])
);

GO
PRINT N'Creating Screens';
GO
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
);

GO
PRINT N'Creating Seats';
GO
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
);

--------------------------------------------------------------------------------
--FILM ASSOCIATED TABLES
GO
PRINT N'Creating Classifications';
GO
CREATE TABLE [dbo].[Classifications]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [Title] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(MAX) NOT NULL,
    [ImgSmall] NVARCHAR(MAX) NOT NULL,
    [ImgLarge] NVARCHAR(MAX) NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate()
);

GO
PRINT N'Creating Films';
GO
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
);

GO
PRINT N'Creating Contributors';
GO
CREATE TABLE [dbo].[Contributors]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(MAX) NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL
);

GO
PRINT N'Creating Genres';
GO
CREATE TABLE [dbo].[Genres]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(50) NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate()
);

GO
PRINT N'Creating FilmsContributors';
GO
CREATE TABLE [dbo].[FilmsContributors]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [FilmId] BIGINT NOT NULL,
    [ContributorId] BIGINT NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_FilmsContributors_Films] FOREIGN KEY ([FilmId]) REFERENCES [Films]([Id]),
    CONSTRAINT [FK_FilmsContributors_Contributors] FOREIGN KEY ([ContributorId]) REFERENCES [Contributors]([Id])
);

GO
PRINT N'Creating FilmsGenres';
GO
CREATE TABLE [dbo].[FilmsGenres]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [FilmId] BIGINT NOT NULL,
    [GenreId] BIGINT NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_FilmsGenres_Films] FOREIGN KEY ([FilmId]) REFERENCES [Films]([Id]),
    CONSTRAINT [FK_FilmsGenres_Genres] FOREIGN KEY ([GenreId]) REFERENCES [Genres]([Id])
);

--------------------------------------------------------------------------------
--BOOKINGS ASSOCIATED TABLES
GO
PRINT N'Creating Bookings';
GO
CREATE TABLE [dbo].[Bookings]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [UserId] BIGINT NOT NULL,
    [BillingDetailsId] BIGINT NOT NULL,
    [Paid] BIT NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_Bookings_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id])
);

GO
PRINT N'Creating Showings';
GO
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
);

GO
PRINT N'Creating SeatBookings';
GO
CREATE TABLE [dbo].[SeatsBookings]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [SeatId] BIGINT NOT NULL,
    [ShowingId] BIGINT NOT NULL,
    [BookingId] BIGINT NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
    CONSTRAINT [FK_SeatBookings_Seats] FOREIGN KEY ([SeatId]) REFERENCES [Seats]([Id]),
    CONSTRAINT [FK_SeatBookings_Showings] FOREIGN KEY ([ShowingId]) REFERENCES [Showings]([Id]),
    CONSTRAINT [FK_SeatBookings_Bookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id])
);

--------------------------------------------------------------------------------
--DISCUSSION BOARD ASSOCIATED TABLES
GO
PRINT N'Creating Posts';
GO
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
);

GO
PRINT N'Creating Ratings';
GO
CREATE TABLE [dbo].[Ratings]
(
		[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
    [UserId] BIGINT NOT NULL,
		[FilmId] BIGINT NOT NULL,
		[Rating] INT NOT NULL,
    [Active] BIT NOT NULL DEFAULT 1,
    [DateAdded] DATETIME NOT NULL DEFAULT getdate(),
		CONSTRAINT [FK_Ratings_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
    CONSTRAINT [FK_Ratings_Films] FOREIGN KEY ([FilmId]) REFERENCES [Films]([Id])
);

GO
PRINT N'Done!';
GO