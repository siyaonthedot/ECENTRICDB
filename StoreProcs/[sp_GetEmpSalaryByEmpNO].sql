USE [ECENTRICDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetEmpSalaryByEmpNO]    Script Date: 05-04-2019 12:17:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Siyabonga Mbambo
-- Create date: 2019-04-05
-- Description:	Get employees salary by EmpNo
-- =============================================
CREATE PROCEDURE  [dbo].[sp_GetEmpSalaryByEmpNO] 

@EmpNO INT

AS
BEGIN

	SET NOCOUNT ON;

	SELECT s.amount, d.name from Employees e
			INNER JOIN Department d on e.departmentID = d.DepartmentID
			INNER JOIN SalaryLevel s on e.salaryLevelID = s.salaryLevelID
				WHERE e.employeeNO = @EmpNO

END
GO


