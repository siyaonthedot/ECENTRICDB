USE [ECENTRICDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_CountEmployeeGender]    Script Date: 05-04-2019 02:15:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE  [dbo].[sp_GetEmployeesWithNoSalary] 
 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Employees
	WHERE salarylevelid NOT IN (SELECT salarylevelid FROM SalaryLevel GROUP BY salarylevelid)

END
