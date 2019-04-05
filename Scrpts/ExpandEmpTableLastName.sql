USE [ECENTRICDB]
GO
IF COLUMNPROPERTY(OBJECT_ID('Employees', 'U'), 'lastName', 'AllowsNull')=0
    ALTER TABLE [Employees]
        ALTER COLUMN [lastName] [varchar](60) NOT NULL
