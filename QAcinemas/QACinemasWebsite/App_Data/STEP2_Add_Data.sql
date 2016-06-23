USE [QACinemasDB];
GO
PRINT N'Adding default admin account.';
PRINT N'username = admin';
PRINT N'password = admin (CHANGE THE ADMIN PASSWORD ON FIRST RUN!)';
GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('123 Admin Road', 'Admin Complex', 'Adminton', 'Adminishire', 'Administan', 'AD12MIN', -2.290126399999963, 53.48752349999999);
INSERT INTO [dbo].[Users] ([AddressId], [Username], [PasswordHash], [PasswordSalt], [EmailAddress], [PhoneNumber], [FirstName], [LastName]) 
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'admin', '4yMwjoQGrGzAIg7YaNOD4VGABX8VFX+w2QbC/ZxZTss=', 'nCz5A/FPkSY+RCT4CxePCw==', 'admin@admin.com', '+441234567890', 'Adminfirstname', 'adminlastname');

--LOCATIONS
GO
PRINT N'Adding Cinema';
GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('1 Cinema Street', '', 'Cinenapolis', 'Cinnesota', 'United Cinestates', 'CI4NE', -2.290126399999963, 53.48752349999999);
INSERT INTO [dbo].[Cinemas] ([AddressId], [Name], [Description], [OpeningTimes], [ImgSmall], [ImgLarge], [ImgParking]) 
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'QA Cinemas One', 'QA Cinemas One Description','Opening Times' , '/Images/Cinemas/QA_Cinemas_One_small.png', '/Images/Cinemas/QA_Cinemas_One_large.png', '/Images/Cinemas/QA_Cinemas_One_parking.png');

GO
PRINT N'Adding Screen';
GO
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop])
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'Screen 1', '/Images/Seating/QA_Cinemas_One_Screen_1_seating.png', '/Images/Seating/QA_Cinemas_One_Screen_1_backdrop.png');

GO
PRINT N'Adding some seats';
GO
DECLARE @SCREEN_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@SCREEN_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@SCREEN_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@SCREEN_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@SCREEN_ID, 'A1', 20, 20, 1, 1);





---FILM
GO
PRINT N'Adding Classifications';
GO
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('18', '18 Rating', '/Images/Classifications/18_small.png', '/Images/Classifications/18large.png');
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('15', '15 Rating', '/Images/Classifications/15_small.png', '/Images/Classifications/15large.png');
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('12', '12 Rating', '/Images/Classifications/12_small.png', '/Images/Classifications/12large.png');
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('12A', '12A Rating', '/Images/Classifications/12A_small.png', '/Images/Classifications/12Alarge.png');
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('PG', 'PG Rating', '/Images/Classifications/PG_small.png', '/Images/Classifications/PGlarge.png');
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('U', 'U Rating', '/Images/Classifications/U_small.png', '/Images/Classifications/Ularge.png');
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('E', 'E Rating', '/Images/Classifications/E_small.png', '/Images/Classifications/Elarge.png');

GO
PRINT N'Adding Genres';
GO
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Action');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Adventure');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Animation');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Biography');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Comedy');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Crime');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Documentary');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Drama');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Family');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Fantasy');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Film-Noir');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('History');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Horror');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Music');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Musical');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Mystery');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Romance');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Sci-Fi');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Sport');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Thriller');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('War');
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Western');


GO
PRINT N'Adding Generic Film';
GO
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge]) 
	VALUES ( 1, 'Generic Film Title', 'Generic Description', 5000, 'English', 'ID1234', 0, '/Images/Films/Generic_Film_Title_small.png', '/Images/Films/Generic_Film_Title_large.png');



GO
PRINT N'Done!';
GO