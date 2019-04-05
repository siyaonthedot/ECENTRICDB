USE [ECENTRICDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_UpdateEmpSalaryByDepartName]    Script Date: 05-04-2019 12:18:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateEmpSalaryByDepartName] 

@DepartmentName  VARCHAR(50) 

AS
BEGIN
	SET NOCOUNT ON;

	UPDATE SalaryLevel
	SET amount = (SELECT s.amount + ( s.amount * s.increasePercentage/100) as amount FROM SalaryLevel s 
				INNER JOIN Employees e ON s.salaryLevelID = e.salaryLevelID
				INNER JOIN Department d ON e.departmentID = d.DepartmentID
				WHERE d.name  = @DepartmentName
				GROUP BY s.amount,s.increasePercentage)
				WHERE salaryLevelID = ( SELECT s.salaryLevelID FROM SalaryLevel s 
				INNER JOIN Employees e ON s.salaryLevelID = e.salaryLevelID
				INNER JOIN Department d ON e.departmentID = d.DepartmentID
				WHERE d.name  = @DepartmentName
				GROUP BY s.salaryLevelID)

END
GO


