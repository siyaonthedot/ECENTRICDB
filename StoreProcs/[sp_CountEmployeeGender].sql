USE [ECENTRICDB]
GO

/****** Object:  StoredProcedure [dbo].[sp_CountEmployeeGender]    Script Date: 05-04-2019 12:16:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[sp_CountEmployeeGender] 

@DepartmentName  VARCHAR(60)  
 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT COUNT(e.gender), e.gender from Employees e
		INNER JOIN Department d on e.departmentID = d.DepartmentID
		WHERE d.name = @DepartmentName
		GROUP BY e.gender

END
GO


