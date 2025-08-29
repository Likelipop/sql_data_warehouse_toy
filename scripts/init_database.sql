/*
===================================
Create Database and schemas
===================================
Script Purpose
  1. Create a database named DataWarehouse,
  2. Create bronze, silver, bronze schema.

-------- WARNING------------------
if there is the exact "Datawarehouse" Database, the code will replace (also remove all the current data)
and create a new one.
*/


USE master;

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH_ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

---Create schemma
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
