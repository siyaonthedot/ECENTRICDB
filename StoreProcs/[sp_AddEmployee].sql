USE [ECENTRICDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_AddEmployee]    Script Date: 05-04-2019 12:15:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[sp_AddEmployee] 

@lastName  VARCHAR(60)  ,
@firstName  VARCHAR(50)  ,
@gender  char(1)  ,
@IDNumber  VARCHAR(20),
@salaryID  INT ,
@departmentID  INT 

AS
BEGIN

	SET NOCOUNT ON;


  INSERT INTO Employees(lastName,firstName,gender,IDNumber,salaryLevelID,departmentID)
  VALUES(@lastName,@firstName,@gender,@IDNumber,@salaryID ,@departmentID )

END
GO


