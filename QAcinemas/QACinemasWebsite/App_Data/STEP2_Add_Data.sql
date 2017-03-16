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
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES (
	'18', 
	'Suitable only for people aged 18 or older, which means adults only. No one younger than 18 may see an 18 film in a cinema. It is illegal to supply a video work with an 18 certificate to anyone under that age.<br/>Films under this category do not have limitation on the foul language that is used. Hard drugs are generally allowed, and explicit sex references along with detailed sexual activity are also allowed. Scenes of strong real sex may be permitted if justified by the context (Sex works cannot be placed at "18"). Very strong, gory, and/or sadistic violence is usually permitted. Strong sexual violence is permitted unless it is eroticized or excessively graphic, in which a work will require compulsory cuts where possible.', 
	'/Images/Classifications/18small.png', 
	'/Images/Classifications/18large.png');
DECLARE @CLASSIFICATION_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES (
	'15', 
	'Suitable only for people aged 15 and older. No one younger than 15 may see a 15 film in a cinema. It is illegal to supply a video work with a 15 certificate to anyone under that age.<br/>Films under this category can contain adult themes, hard drugs, (frequent) strong language, strong violence and strong sex references, and nudity without graphic detail. Sexual activity may be portrayed but without any strong detail. Sexual violence may be shown if discreet and justified by context. Use of very strong language may be permitted based on frequency and how they are used, as well as contextual justification.', 
	'/Images/Classifications/15small.png', 
	'/Images/Classifications/15large.png');
DECLARE @CLASSIFICATION_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES (
	'12', 
	'This category applies to cinema releases from August 1989 to 2002, and home media since 1994. Suitable for people aged 12 and older. It is illegal to supply a video work with a 12 certificate to anyone under that age. <br/>12A-rated films are usually given a 12 certificate for the VHS/DVD version unless extra material has been added that requires a higher rating. The content guidelines are identical to those used for the 12A certificate.', 
	'/Images/Classifications/12small.png', 
	'/Images/Classifications/12large.png');
DECLARE @CLASSIFICATION_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES (
	'12A', 
	'This category applies to cinema only releases since 2002. Films under this category are considered to be unsuitable for young children. Cinemas in the United Kingdom are only permitted to supply tickets to see a 12A film to children under the age of 12 if they are accompanied by an adult aged 18 or over. However, it is unlikely to be suitable for children under the age of 12. <br/>Films under this category can contain mature themes, discrimination, soft drugs, moderate language, moderate violence, sex references and nudity. Sexual activity may be briefly and discreetly portrayed. Use of strong language may be permitted based on frequency and how they are used, as well as contextual justification. Sexual violence may be implied or briefly indicated.', 
	'/Images/Classifications/12Asmall.png', 
	'/Images/Classifications/12Alarge.png');
DECLARE @CLASSIFICATION_4_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES (
	'PG - Parental Guidance', 
	'All ages admitted, but some certain scenes can be unsuitable for young children. They should not disturb children aged 8 or older. May contain mild language (frequent/aggressive use may result in the work being passed at a higher category) or sex/drug references. May contain moderate violence if justified by context (e.g. fantasy). A parent may wish to check the content before they let their children watch or play it.', 
	'/Images/Classifications/PGsmall.png', 
	'/Images/Classifications/PGlarge.png');
DECLARE @CLASSIFICATION_5_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Classifications] ([Title], [Description], [ImgSmall], [ImgLarge]) VALUES (
	'U - Universal', 
	'All ages admitted. There is almost nothing unsuitable for children aged 4 years and over.', 
	'/Images/Classifications/Usmall.png', 
	'/Images/Classifications/Ularge.png');
DECLARE @CLASSIFICATION_6_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);


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
	VALUES ( 'Sir Patrick', 'Stewart', 'Desc of P.Stewart');
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
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Dev', 'Patel', 'Desc of D.Patel');
DECLARE @CONTRIBUTOR_10_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Sunny', 'Pawar', 'Desc of S.Pawar');
DECLARE @CONTRIBUTOR_11_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Nicole', 'Kidman', 'Desc of N.Kidman');
DECLARE @CONTRIBUTOR_12_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Vin', 'Diesel', 'Desc of V.Diesel');
DECLARE @CONTRIBUTOR_13_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Tyrese', 'Gibson', 'Desc of T.Gibson');
DECLARE @CONTRIBUTOR_14_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Dwayne', 'Johnson', 'Desc of D.Johnson');
DECLARE @CONTRIBUTOR_15_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Dan', 'Stevens', 'Desc of D.Stevens');
DECLARE @CONTRIBUTOR_16_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Emma', 'Watson', 'Desc of E.Watson');
DECLARE @CONTRIBUTOR_17_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Luke', 'Evans', 'Desc of L.Evans');
DECLARE @CONTRIBUTOR_18_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Garth', 'Davis', 'Desc of G.Davis');
DECLARE @CONTRIBUTOR_19_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'F.Gary', 'Gray', 'Desc of F.G.Gray');
DECLARE @CONTRIBUTOR_20_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Contributors] ([FirstName], [LastName], [Description]) 
	VALUES ( 'Bill', 'Condon', 'Desc of B.Condon');
DECLARE @CONTRIBUTOR_21_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);

	

--GO
PRINT N'Adding Generic Film';
--GO
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge], [ReleaseDate]) VALUES ( 
	@CLASSIFICATION_2_ID, 
	'Logan', 
	'<p>Logan (Hugh Jackman) is aging. His rapid healing powers are failing, and the once powerful force of nature is becoming weaker. Where before he could fight harder and more brutally than anyone else, Wolverine has become ravaged with battle scars, and he knows that his mutation is slowly fading.</p><p>Laura (Dafne Keen), has incredibly similar powers and abilities to Logan. In order to protect her from evil forces tracking her down, Logan, Professor Xavier (Patrick Stewart) and other members of the X-Men must protect and guard her from those who would do her harm.</p><p>Unfortunately for all the mutant superheroes, Professor Xavier isn’t the powerful leader he once was. He finds himself losing control of his powers, and even finds himself forgetting his friends and allies, leaving the entirety of the mutant race in jeopardy.</p>', 
	135, 
	'English', 
	'ID34567', 
	0, 
	'/Images/Films/Logansmall1.jpg,/Images/Films/Logansmall2.jpg,/Images/Films/Logansmall3.jpg,/Images/Films/Logansmall4.jpg', 
	'/Images/Films/Loganlarge.jpg', 
	'20170102');
DECLARE @FILM_1_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge], [ReleaseDate]) VALUES ( 
	@CLASSIFICATION_2_ID, 
	'Moonlight', 
	'<p>Chiron is a small, quiet child. As a result, he is relentlessly bullied by his peers. Finding comfort only in the mentorship of drug dealer Juan (Mahershala Ali) and another young boy named Kevin, Chiron’s childhood is cold and confusing.</p><p>Fast-forward to Chiron’s teenage years, and he is similarly isolated. Events conspire that follow him into adulthood, and shape his existence.</p><p>Moonlight follows the life of Chiron from child to adult, and explores how small events can ripple into later life, for better or worse.</p>', 
	111, 
	'English', 
	'ID45678', 
	0, 
	'/Images/Films/Moonlightsmall1.jpg,/Images/Films/Moonlightsmall2.jpg,/Images/Films/Moonlightsmall3.jpg,/Images/Films/Moonlightsmall4.jpg', 
	'/Images/Films/Moonlightlarge.png', 
	'20170123');
DECLARE @FILM_2_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge], [ReleaseDate]) VALUES ( 
	@CLASSIFICATION_6_ID, 
	'The Lego Batman Movie', '<p>Spending most of his free time completely alone, his faithful butler Alfred (Ralph Fiennes) declares that Batman must learn to lighten up a little… and take care of the orphaned child he once adopted, Robin (Michael Cera).</p><p>The enthusiastic youngster is thrilled to discover his absent-adoptive father is actually Gotham’s Caped Crusader, but Batman struggles to handle his hyper tendances. Can the two work together to become an ultra-crime fighting duo?</p><p>Meanwhile, Gotham has a new villain on the loose; The Joker (Zach Galifianakis). Along with Harley Quinn (Jenny Slate), the two are reaping havoc across Gotham City, and only Batman and Robin can stop them.</p>', 
	90, 
	'English', 
	'ID32323', 
	0, 
	'/Images/Films/LegoBatmansmall1.jpg,/Images/Films/LegoBatmansmall2.jpg,/Images/Films/LegoBatmansmall3.jpg,/Images/Films/LegoBatmansmall4.jpg', 
	'/Images/Films/LegoBatmanlarge.jpg', 
	'20170202');
DECLARE @FILM_3_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge], [ReleaseDate]) VALUES ( 
	@CLASSIFICATION_5_ID, 
	'Lion', 
	'<p>Haunted by flashbacks and reoccurring dreams, 30-year-old Saroo Brierley (Dev Patel) has an otherwise blessed life. Living in Australian with his adoptive mother Sue (Nicole Kidman), and father John (David Wenham), he has a loving relationship with his girlfriend, Lucy (Rooney Mara), but something is missing.</p><p>As a five-year-old, Saroo sought shelter on a train while waiting for his family member. Awoken suddenly, Saroo realised he was trapped on the train, and it was transporting him across India by thousands of miles – leaving his life and family behind.</p><p>Determined to reunite with the family who so unwillingly lost him, Saroo sets out to explore India and find closure. Understanding that searching India’s extensive rail network is an impossible task, he uses a variety of tools to try and find his mother and brothers.</p>', 
	118, 
	'English', 
	'ID13579', 
	0, 
	'/Images/Films/Lionsmall1.jpg,/Images/Films/Lionsmall2.jpg,/Images/Films/Lionsmall3.jpg,/Images/Films/Lionsmall4.jpg', 
	'/Images/Films/Lionlarge.jpg', 
	'20170117');
DECLARE @FILM_4_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge], [ReleaseDate]) VALUES ( 
	@CLASSIFICATION_4_ID, 
	'Fast & Furious 8', '<p>Following on from the events in Furious 7, the gang of professional street racers are taking to equally as exotic locations, rivalling the likes of Rio de Janeiro and Dubai from previous films in the franchise.</p><p>This time around, Dominic Toretto and his crew will be tearing up the streets of Cuba in Fast 8, although the film will also see the guys and gals nipping in between traffic in New York.</p><p>With a whole host of famous Fast and Furious faces returning to the roads, fans can expect to see the likes of Tyrese Gibson (2 Fast 2 Furious) as Roman Pearce, Lucas Black (The Fast and the Furious: Tokyo Drift) as Sean Boswell, and Dwayne Johnson (Fast Five) as DSS Agent Luke Hobbs.</p>', 
	134, 
	'English', 
	'ID67890', 
	0, 
	'/Images/Films/Fast8small1.jpg,/Images/Films/Fast8small2.jpg,/Images/Films/Fast8small3.jpg,/Images/Films/Fast8small4.jpg', 
	'/Images/Films/Fast8large.jpg', 
	'20170414');
DECLARE @FILM_5_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);
INSERT INTO [dbo].[Films] ([ClassificationId], [Title], [Description], [Duration], [Language], [ImdbId], [Featured], [ImgSmall], [ImgLarge], [ReleaseDate]) VALUES ( 
	@CLASSIFICATION_5_ID, 
	'Beauty and the Beast', 
	'<p>Belle soon finds her father imprisoned within the castle’s dungeons. Gravely ill, she desperately wants to rescue him from this freezing hole, when the terrifying beast (Dan Stevens) emerges from the shadows.</p><p>The only way to rescue her father? Take his place as the beast’s prisoner, and accept a lifetime spent in this remote, desolate castle.</p><p>As Belle’s time in the castle progresses, she learns of the curse placed upon the entire castle, transforming the servants into furniture, and the prince into the monstrous beast.</p>', 
	129, 
	'English', 
	'ID78901', 
	0, 
	'/Images/Films/BeautyNBeastsmall1.jpg,/Images/Films/BeautyNBeastsmall2.jpg,/Images/Films/BeautyNBeastsmall3.jpg,/Images/Films/BeautyNBeastsmall4.jpg', 
	'/Images/Films/BeautyNBeastlarge.jpg', 
	'20170317');
DECLARE @FILM_6_ID INT = (SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]);


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
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_4_ID, @CONTRIBUTOR_10_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_4_ID, @CONTRIBUTOR_11_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_4_ID, @CONTRIBUTOR_12_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_5_ID, @CONTRIBUTOR_13_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_5_ID, @CONTRIBUTOR_14_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_5_ID, @CONTRIBUTOR_15_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_6_ID, @CONTRIBUTOR_16_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_6_ID, @CONTRIBUTOR_17_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_6_ID, @CONTRIBUTOR_18_ID, 'Actor');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_4_ID, @CONTRIBUTOR_19_ID, 'Director');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_5_ID, @CONTRIBUTOR_20_ID, 'Director');
INSERT INTO [dbo].[FilmsContributors] ([FilmId], [ContributorId], [Role]) 
	VALUES ( @FILM_6_ID, @CONTRIBUTOR_21_ID, 'Director');


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
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_4_ID, @GENRE_8_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_5_ID, @GENRE_6_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_5_ID, @GENRE_20_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_6_ID, @GENRE_10_ID);
INSERT INTO [dbo].[FilmsGenres] ([FilmId], [GenreId]) 
	VALUES ( @FILM_6_ID, @GENRE_17_ID);






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
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_1_ID, @FILM_4_ID, '20170320 11:45:00 AM', '20170320 01:55:00 PM', 9.7);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_2_ID, @FILM_4_ID, '20170320 12:45:00 PM', '20170320 02:55:00 PM', 9.4);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_3_ID, @FILM_4_ID, '20170320 10:55:00 AM', '20170320 01:05:00 PM', 8.25);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_1_ID, @FILM_5_ID, '20170321 09:35:00 PM', '20170321 11:55:00 PM', 9.7);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_2_ID, @FILM_5_ID, '20170320 09:45:00 AM', '20170320 11:55:00 AM', 9.4);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_3_ID, @FILM_5_ID, '20170321 09:25:00 PM', '20170321 11:45:00 PM', 8.25);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_1_ID, @FILM_6_ID, '20170321 06:35:00 PM', '20170321 08:55:00 PM', 9.7);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_2_ID, @FILM_6_ID, '20170321 09:15:00 PM', '20170321 11:35:00 PM', 9.4);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_1_SCREEN_3_ID, @FILM_6_ID, '20170321 06:25:00 PM', '20170321 08:45:00 PM', 8.25);


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
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_1_ID, @FILM_6_ID, '20170320 11:35:00 AM', '20170320 01:25:00 PM', 11.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_2_ID, @FILM_6_ID, '20170320 12:35:00 PM', '20170320 02:45:00 PM', 12.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_3_ID, @FILM_6_ID, '20170320 10:50:00 AM', '20170320 01:00:00 PM', 9.55);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_1_ID, @FILM_5_ID, '20170321 09:10:00 PM', '20170321 11:30:00 PM', 11.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_2_ID, @FILM_5_ID, '20170320 09:35:00 AM', '20170320 11:25:00 AM', 12.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_3_ID, @FILM_5_ID, '20170321 09:05:00 PM', '20170321 11:25:00 PM', 9.55);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_1_ID, @FILM_4_ID, '20170321 06:10:00 PM', '20170321 08:30:00 PM', 11.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_2_ID, @FILM_4_ID, '20170321 09:35:00 PM', '20170321 11:55:00 PM', 12.05);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_2_SCREEN_3_ID, @FILM_4_ID, '20170321 06:05:00 PM', '20170321 08:25:00 PM', 9.55);


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
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_1_ID, @FILM_5_ID, '20170320 11:25:00 AM', '20170320 01:35:00 PM', 8.45);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_2_ID, @FILM_5_ID, '20170320 12:25:00 PM', '20170320 02:35:00 PM', 9.65);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_3_ID, @FILM_5_ID, '20170320 10:45:00 AM', '20170320 12:55:00 PM', 10.80);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_1_ID, @FILM_6_ID, '20170321 09:20:00 PM', '20170321 11:40:00 PM', 8.45);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_2_ID, @FILM_6_ID, '20170320 09:25:00 AM', '20170320 11:35:00 AM', 9.65);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_3_ID, @FILM_6_ID, '20170321 09:05:00 PM', '20170321 11:25:00 PM', 10.80);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_1_ID, @FILM_4_ID, '20170321 06:20:00 PM', '20170321 08:40:00 PM', 8.45);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_2_ID, @FILM_4_ID, '20170321 09:30:00 PM', '20170321 11:55:00 PM', 9.65);
INSERT INTO [dbo].[Showings] ([ScreenId], [FilmId], [StartTime], [EndTime], [CostPerSeat]) 
	VALUES ( @CINEMA_3_SCREEN_3_ID, @FILM_4_ID, '20170321 06:05:00 PM', '20170321 08:25:00 PM', 10.80);



GO
PRINT N'Done!';
GO