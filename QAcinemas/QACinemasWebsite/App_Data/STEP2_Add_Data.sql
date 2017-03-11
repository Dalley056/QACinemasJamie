USE [QACinemasDB];


GO
PRINT N'Adding default admin account.';
PRINT N'username = admin';
PRINT N'password = admin (CHANGE THE ADMIN PASSWORD ON FIRST RUN!)';
GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('123 Admin Road', 'Admin Complex', 'Adminton', 'Adminishire', 'Administan', 'AD12MIN', -2.290126399999963, 53.48752349999999);
INSERT INTO [dbo].[Users] ([AddressId], [Username], [PasswordHash], [PasswordSalt], [EmailAddress], [PhoneNumber], [FirstName], [LastName]) 
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'admin', 'lKVSYJt99OupgVMJmK03Vi2/0yeP3vuBJWBAxa63LY4=', 'admin', 'admin@admin.com', '+441234567890', 'Adminfirstname', 'adminlastname');





--LOCATIONS------------------------------------

--ADDING CINEMA 1-------

GO
PRINT N'Adding Cinema';
--GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('777 Baker St', 'Marlyebone', 'London', 'Greater London', 'United Kingdom', 'W1U 6HQ', 51.11111111, -0.151111111);
INSERT INTO [dbo].[Cinemas] ([AddressId], [Name], [Description], [OpeningTimes], [ImgSmall], [ImgLarge], [ImgParking]) 
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'QA Cinema One', 'QA Cinema One London','08:30 - 23:55,08:30 - 23:55,08:30 - 23:55,08:30 - 23:55,08:30 - 23:55,08:30 - 23:55,08:30 - 23:55' , '/Images/Cinemas/QA_Cinema_One_small.png', '/Images/Cinemas/QA_Cinema_One_large.png', '/Images/Cinemas/QA_Cinema_One_parking.png');
DECLARE @CINEMA_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);

--GO
PRINT N'Adding Screen';
--GO
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_1_ID, 'Screen One Cinema One', '/Images/Seating/QA_Screen_One_Cinema_One_seating.png', '/Images/Seating/QA_Screen_One_Cinema_One_backdrop.png', 0);
DECLARE @CINEMA_1_SCREEN_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_1_ID, 'Screen Two Cinema One', '/Images/Seating/QA_Screen_Two_Cinema_One_seating.png', '/Images/Seating/QA_Screen_Two_Cinema_One_backdrop.png', 0);
DECLARE @CINEMA_1_SCREEN_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_1_ID, 'Screen Three Cinema One', '/Images/Seating/QA_Screen_Three_Cinema_One_seating.png', '/Images/Seating/QA_Screen_Three_Cinema_One_backdrop.png', 1);
DECLARE @CINEMA_1_SCREEN_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);

--GO
PRINT N'Adding some seats';
--GO
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_1_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_1_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_1_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_1_ID, 'A1', 20, 20, 1, 1);

INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_2_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_2_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_2_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_2_ID, 'A1', 20, 20, 1, 1);

INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_3_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_3_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_3_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_1_SCREEN_3_ID, 'A1', 20, 20, 1, 1);


--GO
PRINT N'Adding Places To Go';
--GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('66-68 Chandos Pl', 'Covent Garden', 'London', 'Greater London', 'United Kingdom', 'WC2N 4HG', 51.5116879, -0.1465681);
INSERT INTO [dbo].[LocalVenues] ([CinemaId], [AddressId], [Name], [Description], [Img]) 
	VALUES (@CINEMA_1_ID, (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'Nandos', 'Afro-Portuguese chain restaurant serving flame-grilled chicken in spicy chilli sauce.', '/Images/LocalVenues/QA_Cinema_One_LocalVenue_One.png');
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('23-25 Old Compton St', 'Soho', 'London', 'Greater London', 'United Kingdom', 'W1D 5JL', 51.5116417, -0.146698);
INSERT INTO [dbo].[LocalVenues] ([CinemaId], [AddressId], [Name], [Description], [Img]) 
	VALUES (@CINEMA_1_ID, (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'Bar Soho', 'Cocktail bar with mirrored walls and a fairground horse, or decadent boudoir with baths for seats.', '/Images/LocalVenues/QA_Cinema_One_LocalVenue_Two.png');



--ADDING CINEMA 2-------

--GO
PRINT N'Adding Cinema';
--GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('19 St Ann St', 'Salford', 'Manchester', 'North West England', 'United Kingdom', 'M2 7LU', 53.4818452, -2.247151);
INSERT INTO [dbo].[Cinemas] ([AddressId], [Name], [Description], [OpeningTimes], [ImgSmall], [ImgLarge], [ImgParking]) 
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'QA Cinema Two', 'QA Cinema Two Manchester','09:00 - 23:00,09:00 - 23:00,09:00 - 23:00,09:00 - 23:00,09:00 - 23:00,09:00 - 23:00,09:00 - 23:00' , '/Images/Cinemas/QA_Cinema_Two_small.png', '/Images/Cinemas/QA_Cinema_Two_large.png', '/Images/Cinemas/QA_Cinema_Two_parking.png');
DECLARE @CINEMA_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);

--GO
PRINT N'Adding Screen';
--GO
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_2_ID, 'Screen One Cinema Two', '/Images/Seating/QA_Screen_One_Cinema_Two_seating.png', '/Images/Seating/QA_Screen_One_Cinema_Two_backdrop.png', 1);
DECLARE @CINEMA_2_SCREEN_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_2_ID, 'Screen Two Cinema Two', '/Images/Seating/QA_Screen_Two_Cinema_Two_seating.png', '/Images/Seating/QA_Screen_Two_Cinema_Two_backdrop.png', 0);
DECLARE @CINEMA_2_SCREEN_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_2_ID, 'Screen Three Cinema Two', '/Images/Seating/QA_Screen_Three_Cinema_Two_seating.png', '/Images/Seating/QA_Screen_Three_Cinema_Two_backdrop.png', 0);
DECLARE @CINEMA_2_SCREEN_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);

--GO
PRINT N'Adding some seats';
--GO
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_1_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_1_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_1_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_1_ID, 'A1', 20, 20, 1, 1);

INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_2_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_2_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_2_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_2_ID, 'A1', 20, 20, 1, 1);

INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_3_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_3_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_3_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_2_SCREEN_3_ID, 'A1', 20, 20, 1, 1);


--GO
PRINT N'Adding Places To Go';
--GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('2A St Marys St', '', 'Manchester', 'North West England', 'United Kingdom', 'M3 2LB', 53.4846007, -2.2648316);
INSERT INTO [dbo].[LocalVenues] ([CinemaId], [AddressId], [Name], [Description], [Img]) 
	VALUES (@CINEMA_2_ID, (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'Gaucho', 'Designer furnishings and cowhide fabrics create a lavish backdrop for Argentine food and wine.', '/Images/LocalVenues/QA_Cinema_Two_LocalVenue_One.png');
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('Beetham Tower', '303 Deansgate', 'Manchester', 'North West England', 'United Kingdom', 'M3 4LQ', 53.4797068,-2.2499314);
INSERT INTO [dbo].[LocalVenues] ([CinemaId], [AddressId], [Name], [Description], [Img]) 
	VALUES (@CINEMA_2_ID, (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'Cloud 23', 'Hilton hotels smart cocktail and champagne bar on the 23rd floor of the landmark Beetham Tower.', '/Images/LocalVenues/QA_Cinema_Two_LocalVenue_Two.png');



--ADDING CINEMA 3-------

--GO
PRINT N'Adding Cinema';
--GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('447 Streetsbrook Rd', 'Solihull', 'Birmingham', 'West Midlands', 'United Kingdom', 'B91 1QZ', 52.6961453, -1.8558917);
INSERT INTO [dbo].[Cinemas] ([AddressId], [Name], [Description], [OpeningTimes], [ImgSmall], [ImgLarge], [ImgParking]) 
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'QA Cinema Three', 'QA Cinema Three Birmingham','08:45 - 23:45,08:45 - 23:45,08:45 - 23:45,08:45 - 23:45,08:45 - 23:45,08:45 - 23:45,08:45 - 23:45' , '/Images/Cinemas/QA_Cinema_Three_small.png', '/Images/Cinemas/QA_Cinema_Three_large.png', '/Images/Cinemas/QA_Cinema_Three_parking.png');
DECLARE @CINEMA_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);

--GO
PRINT N'Adding Screen';
--GO
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_3_ID, 'Screen One Cinema Three', '/Images/Seating/QA_Screen_One_Cinema_Three_seating.png', '/Images/Seating/QA_Screen_One_Cinema_Three_backdrop.png', 0);
DECLARE @CINEMA_3_SCREEN_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_3_ID, 'Screen Two Cinema Three', '/Images/Seating/QA_Screen_Two_Cinema_Three_seating.png', '/Images/Seating/QA_Screen_Two_Cinema_Three_backdrop.png', 1);
DECLARE @CINEMA_3_SCREEN_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Screens] ([CinemaId], [Name], [ImgSeating], [ImgSeatingBackdrop], [Deluxe])
	VALUES (@CINEMA_3_ID, 'Screen Three Cinema Three', '/Images/Seating/QA_Screen_Three_Cinema_Three_seating.png', '/Images/Seating/QA_Screen_Three_Cinema_Three_backdrop.png', 0);
DECLARE @CINEMA_3_SCREEN_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);

--GO
PRINT N'Adding some seats';
--GO
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_1_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_1_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_1_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_1_ID, 'A1', 20, 20, 1, 1);

INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_2_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_2_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_2_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_2_ID, 'A1', 20, 20, 1, 1);

INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_3_ID, 'A1', 5, 5, 0, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_3_ID, 'A2', 5, 20, 1, 0);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_3_ID, 'A1', 20, 5, 0, 1);
INSERT INTO [dbo].[Seats] ([ScreenId], [Name], [PosTop], [PosLeft], [AudioDescription], [WheelchairAccess]) 
	VALUES (@CINEMA_3_SCREEN_3_ID, 'A1', 20, 20, 1, 1);


--GO
PRINT N'Adding Places To Go';
--GO
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('55 Cornwall St', '', 'Birmingham', 'West Midlands', 'United Kingdom', 'B3 2DH', 52.4766321, -1.9081418);
INSERT INTO [dbo].[LocalVenues] ([CinemaId], [AddressId], [Name], [Description], [Img]) 
	VALUES (@CINEMA_3_ID, (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'Purnells', 'Celebrity chef Glyn Purnells innovative British menu in chic light-filled restaurant with bar.', '/Images/LocalVenues/QA_Cinema_Three_LocalVenue_One.png');
INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('110 Colmore Row', '', 'Birmingham', 'West Midlands', 'United Kingdom', 'B3 3AG', 52.4781165, -1.902979);
INSERT INTO [dbo].[LocalVenues] ([CinemaId], [AddressId], [Name], [Description], [Img]) 
	VALUES (@CINEMA_3_ID, (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'The Bureau Bar', 'Airy, stylish bar with marble panelling, booths and a roof terrace, for drinks and sharing plates.', '/Images/LocalVenues/QA_Cinema_Three_LocalVenue_Two.png');






---FILM-------------------------


--GO
PRINT N'Adding Classifications';
--GO
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('18', '18 Rating', '/Images/Classifications/18_small.png', '/Images/Classifications/18large.png');
DECLARE @CLASSIFICATION_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('15', '15 Rating', '/Images/Classifications/15_small.png', '/Images/Classifications/15large.png');
DECLARE @CLASSIFICATION_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('12', '12 Rating', '/Images/Classifications/12_small.png', '/Images/Classifications/12large.png');
DECLARE @CLASSIFICATION_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('12A', '12A Rating', '/Images/Classifications/12A_small.png', '/Images/Classifications/12Alarge.png');
DECLARE @CLASSIFICATION_4_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('PG', 'PG Rating', '/Images/Classifications/PG_small.png', '/Images/Classifications/PGlarge.png');
DECLARE @CLASSIFICATION_5_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('U', 'U Rating', '/Images/Classifications/U_small.png', '/Images/Classifications/Ularge.png');
DECLARE @CLASSIFICATION_6_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES ('E', 'E Rating', '/Images/Classifications/E_small.png', '/Images/Classifications/Elarge.png');
DECLARE @CLASSIFICATION_7_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);


--GO
PRINT N'Adding Genres';
--GO
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Action');
DECLARE @GENRE_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Adventure');
DECLARE @GENRE_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Animation');
DECLARE @GENRE_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Biography');
DECLARE @GENRE_4_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Comedy');
DECLARE @GENRE_5_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Crime');
DECLARE @GENRE_6_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Documentary');
DECLARE @GENRE_7_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Drama');
DECLARE @GENRE_8_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Family');
DECLARE @GENRE_9_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Fantasy');
DECLARE @GENRE_10_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Film-Noir');
DECLARE @GENRE_11_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('History');
DECLARE @GENRE_12_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Horror');
DECLARE @GENRE_13_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Music');
DECLARE @GENRE_14_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Musical');
DECLARE @GENRE_15_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Mystery');
DECLARE @GENRE_16_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Romance');
DECLARE @GENRE_17_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Sci-Fi');
DECLARE @GENRE_18_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Sport');
DECLARE @GENRE_19_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Thriller');
DECLARE @GENRE_20_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('War');
DECLARE @GENRE_21_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Genres] ([Name]) VALUES ('Western');
DECLARE @GENRE_22_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);



--GO
PRINT N'Adding Generic Contributors';
--GO
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Hugh', 'Jackman', 'Desc of H.Jackman');
DECLARE @CONTRIBUTOR_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Mahershala', 'Ali', 'Desc of M.Ali');
DECLARE @CONTRIBUTOR_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Will', 'Arnett', 'Desc of W.Arnett');
DECLARE @CONTRIBUTOR_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Sir Patrick', ' Stewart', 'Desc of P.Stewart');
DECLARE @CONTRIBUTOR_4_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Shariff', 'Earp', 'Desc of S.Earp');
DECLARE @CONTRIBUTOR_5_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Michael', 'Cera', 'Desc of M.Cera');
DECLARE @CONTRIBUTOR_6_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'James', 'Mangold', 'Desc of J.Mangold');
DECLARE @CONTRIBUTOR_7_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Barry', 'Jenkins', 'Desc of B.Jenkins');
DECLARE @CONTRIBUTOR_8_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Chris', 'McKay', 'Desc of C.McKay');
DECLARE @CONTRIBUTOR_9_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
	
	

--GO
PRINT N'Adding Generic Film';
--GO
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge]) 
	VALUES ( @CLASSIFICATION_2_ID, 'Logan', 'Logan (Hugh Jackman) is aging. His rapid healing powers are failing, and the once powerful force of nature is becoming weaker. Where before he could fight harder and more brutally than anyone else, Wolverine has become ravaged with battle scars, and he knows that his mutation is slowly fading. Laura (Dafne Keen), has incredibly similar powers and abilities to Logan. In order to protect her from evil forces tracking her down, Logan, Professor Xavier (Patrick Stewart) and other members of the X-Men must protect and guard her from those who would do her harm. Unfortunately for all the mutant superheroes, Professor Xavier isn’t the powerful leader he once was. He finds himself losing control of his powers, and even finds himself forgetting his friends and allies, leaving the entirety of the mutant race in jeopardy.', 135, 'English', 'ID34567', 0, '/Images/Films/LoganSmall.png', '/Images/Films/LoganBig.png');
DECLARE @FILM_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge]) 
	VALUES ( @CLASSIFICATION_2_ID, 'Moonlight', 'At once a vital portrait of contemporary African American life and an intensely personal and poetic meditation on identity, family, friendship, and love, MOONLIGHT is a groundbreaking piece of cinema that reverberates with deep compassion and universal truths. Anchored by extraordinary performances from a tremendous ensemble cast, Barry Jenkinss staggering, singular vision is profoundly moving in its portrayal of the moments, people, and unknowable forces that shape our lives and make us who we are.', 150, 'English', 'ID45678', 0, '/Images/Films/MoonlightSmall.png', '/Images/Films/MoonlightBig.png');
DECLARE @FILM_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge]) 
	VALUES ( @CLASSIFICATION_6_ID, 'The Lego Batman Movie', 'Spending most of his free time completely alone, his faithful butler Alfred (Ralph Fiennes) declares that Batman must learn to lighten up a little… and take care of the orphaned child he once adopted, Robin (Michael Cera). The enthusiastic youngster is thrilled to discover his absent-adoptive father is actually Gotham’s Caped Crusader, but Batman struggles to handle his hyper tendances. Can the two work together to become an ultra-crime fighting duo?', 115, 'English', 'ID32323', 0, '/Images/Films/LegoBatmanSmall.png', '/Images/Films/LegoBatmanBig.png');
DECLARE @FILM_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);


--GO
PRINT N'Matching Generic Contributors to Films';
--GO
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_1_ID, @CONTRIBUTOR_1_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_2_ID, @CONTRIBUTOR_2_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_3_ID, @CONTRIBUTOR_3_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_1_ID, @CONTRIBUTOR_4_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_2_ID, @CONTRIBUTOR_5_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_3_ID, @CONTRIBUTOR_6_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_1_ID, @CONTRIBUTOR_7_ID, 'Director');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_2_ID, @CONTRIBUTOR_8_ID, 'Director');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_3_ID, @CONTRIBUTOR_9_ID, 'Director');


--GO
PRINT N'Matching Generic Genres to Films';
--GO
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_1_ID, @GENRE_1_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_1_ID, @GENRE_18_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId])  
	VALUES ( @FILM_2_ID, @GENRE_8_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_3_ID, @GENRE_3_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_3_ID, @GENRE_5_ID);






--TICKETS--------------------------------------


--CINEMA ONE SHOWINGS----
--GO
PRINT N'Adding Generic Showings';
--GO
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_1_ID, @FILM_1_ID, '20170320 08:45:00 PM', '20170320 10:55:00 PM', 9.7);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_2_ID, @FILM_1_ID, '20170320 09:45:00 PM', '20170320 11:55:00 PM', 9.4);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_3_ID, @FILM_1_ID, '20170320 07:55:00 PM', '20170320 10:05:00 PM', 8.25);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_1_ID, @FILM_2_ID, '20170320 05:45:00 PM', '20170320 07:55:00 PM', 9.7);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_2_ID, @FILM_2_ID, '20170320 06:45:00 PM', '20170320 08:55:00 PM', 9.4);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_3_ID, @FILM_2_ID, '20170320 04:55:00 PM', '20170320 07:05:00 PM', 8.25);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_1_ID, @FILM_3_ID, '20170320 02:45:00 PM', '20170320 04:55:00 PM', 9.7);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_2_ID, @FILM_3_ID, '20170320 03:45:00 PM', '20170320 05:55:00 PM', 9.4);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_3_ID, @FILM_3_ID, '20170320 01:55:00 PM', '20170320 04:05:00 PM', 8.25);


--CINEMA TWO SHOWINGS----
--GO
PRINT N'Adding Generic Showings';
--GO
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_1_ID, @FILM_3_ID, '20170320 08:35:00 PM', '20170320 10:25:00 PM', 11.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_2_ID, @FILM_3_ID, '20170320 09:35:00 PM', '20170320 11:25:00 PM', 12.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_3_ID, @FILM_3_ID, '20170320 07:50:00 PM', '20170320 10:00:00 PM', 9.55);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_1_ID, @FILM_2_ID, '20170320 05:35:00 PM', '20170320 07:25:00 PM', 11.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_2_ID, @FILM_2_ID, '20170320 06:35:00 PM', '20170320 08:25:00 PM', 12.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_3_ID, @FILM_2_ID, '20170320 04:50:00 PM', '20170320 07:00:00 PM', 9.55);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_1_ID, @FILM_1_ID, '20170320 02:35:00 PM', '20170320 04:25:00 PM', 11.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_2_ID, @FILM_1_ID, '20170320 03:35:00 PM', '20170320 05:25:00 PM', 12.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_3_ID, @FILM_1_ID, '20170320 01:50:00 PM', '20170320 04:00:00 PM', 9.55);


--CINEMA THREE SHOWINGS----
--GO
PRINT N'Adding Generic Showings';
--GO
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_1_ID, @FILM_2_ID, '20170320 08:25:00 PM', '20170320 10:35:00 PM', 8.45);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_2_ID, @FILM_2_ID, '20170320 09:25:00 PM', '20170320 11:35:00 PM', 9.65);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_3_ID, @FILM_2_ID, '20170320 07:45:00 PM', '20170320 09:55:00 PM', 10.80);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_1_ID, @FILM_3_ID, '20170320 05:25:00 PM', '20170320 07:35:00 PM', 8.45);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_2_ID, @FILM_3_ID, '20170320 06:25:00 PM', '20170320 08:35:00 PM', 9.65);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_3_ID, @FILM_3_ID, '20170320 04:45:00 PM', '20170320 06:55:00 PM', 10.80);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_1_ID, @FILM_1_ID, '20170320 02:25:00 PM', '20170320 04:35:00 PM', 8.45);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_2_ID, @FILM_1_ID, '20170320 03:25:00 PM', '20170320 05:35:00 PM', 9.65);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_3_ID, @FILM_1_ID, '20170320 01:45:00 PM', '20170320 03:55:00 PM', 10.80);



GO
PRINT N'Done!';
GO