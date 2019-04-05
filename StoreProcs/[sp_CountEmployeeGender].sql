USE [ECENTRICDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_CountEmployeeGender]    Script Date: 05-04-2019 12:16:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Siyabonga Mbambo
-- Create date: 2019-04-05
-- Description:	Get employee gender count by department name
-- =============================================
CREATE PROCEDURE  [dbo].[sp_CountEmployeeGender] 

@DepartmentName  VARCHAR(60)  
 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT COUNT(e.gender) AS Count, e.gender from Employees e
		INNER JOIN Department d on e.departmentID = d.DepartmentID
		WHERE d.name = @DepartmentName
		GROUP BY e.gender

END
GO


