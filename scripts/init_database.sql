/*
====================================================================
                    Create Database and Schemas
====================================================================

Script Purpose:
    This script creates a database named 'DataWarehouse' and
    initializes the required schemas: 'bronze', 'silver', and 'gold'.

    If the database already exists, it will be dropped and
    recreated to ensure a fresh database environment.

WARNING:
    Executing this script will permanently delete the existing
    'DataWarehouse' database, including all its tables, schemas,
    and stored data.

    Ensure that all required backups are taken before execution.
    Proceed with caution, especially in production environments.

====================================================================
*/




USE master;
GO

  --Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DATAWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

  --Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
 
Use DataWarehouse;
GO

  --Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
