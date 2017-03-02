USE [QACinemasDB];
GO
PRINT N'Adding default admin account.';
PRINT N'username = admin';
PRINT N'password = admin (CHANGE THE ADMIN PASSWORD ON FIRST RUN!)';
GO

INSERT INTO [dbo].[Addresses] ([Line1], [Line2], [City], [Region], [Country], [Postcode], [CoordX], [CoordY]) 
	VALUES ('123 Admin Road', 'Admin Complex', 'Adminton', 'Adminishire', 'Administan', 'AD12MIN', -2.290126399999963, 53.48752349999999);
GO
INSERT INTO [dbo].[Users] ([AddressId], [Username], [PasswordHash], [PasswordSalt], [EmailAddress], [PhoneNumber], [FirstName], [LastName]) 
	VALUES ((SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]), 'admin', 'admin', 'admin', 'admin@admin.com', '+441234567890', 'Adminfirstname', 'adminlastname');
GO

PRINT N'Done!';