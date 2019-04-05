USE [ECENTRICDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetEmployeesByDepartmentName]    Script Date: 05-04-2019 12:17:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetEmployeesByDepartmentName] 

@DepartmentName  VARCHAR(50) = NULL

AS
BEGIN
	SET NOCOUNT ON;

	IF(@DepartmentName IS NOT NULL)
	BEGIN 
		SELECT * FROM Employees emp
		INNER JOIN Department dep on emp.departmentID = dep.DepartmentID
				WHERE dep.name = @DepartmentName
	END
		ELSE
	BEGIN
		SELECT * FROM Employees

	  END

END
GO


