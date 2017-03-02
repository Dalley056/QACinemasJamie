----- Database Setup -----

OPTION 1: FRESH INSTALL
	1: Run STEP1_Populate_DB.sql

	2: If it asks which server to run in, specifiy:
					Local > MSSQLLocalDB

	3: The script should run. Check the output to see if any errors occur.
	   If the script complains about tables already existing you likely already
	   have an instance of the database in your DB server. See Option 2.

	4: OPTIONAL
	   Run STEP2_ADD_DATA.sql
	   This script adds dummy data to the database, omit this step if this is
	   not desired.



OPTION 2: REGENERATING DATABASE FROM SCRATCH
	If you wish to generate the database again from the script follow these steps
	then perform the steps in OPTION 1.

	################################################################################
	WARNING! - THIS WILL DESTROY ALL DATA IN YOUR LOCAL DATABASE INSTANCE - WARNING!
	################################################################################

	1: Navigate to SQL Server Object Explorer in Visual Studio.
	   Can be found in View> SQL Server Object Explorer or by using Ctrl+\, Ctrl+S.

	2: Find your instance of the database.
	   Usual location: (LocalDB)\MSSQLLocalDB (SQL Server *.*.*.* - ThisPC\You) > QACinemasDB

	3: Right click the database and delete it. (WARNING)
	   Alternatively, rename it to reslove conflicts.

	4: Perform the steps in Option 1 to create a fresh database.

   