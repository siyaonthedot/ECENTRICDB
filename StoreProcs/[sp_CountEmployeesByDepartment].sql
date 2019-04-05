USE [ECENTRICDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_CountEmployeesByDepartment]    Script Date: 05-04-2019 12:17:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[sp_CountEmployeesByDepartment] 

AS
BEGIN

	SET NOCOUNT ON;

	 SELECT  COUNT(e.EmployeeNO) AS EmpCount, d.name   
		FROM Employees e
		 INNER JOIN [ECENTRICDB].[dbo].[Department] d on e.departmentID = d.departmentID
			GROUP BY d.name

END
GO


