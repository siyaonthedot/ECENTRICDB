USE [ECENTRICDB]
GO

/****** Object:  Table [dbo].[Employees]   ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[employeeNO] [int] IDENTITY(1,1) NOT NULL,
	[lastName] [varchar](60) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[gender] [char](1) NOT NULL,
	[IDNumber] [varchar](20) NOT NULL,
	[salaryLevelID] [int] NULL,
	[departmentID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[employeeNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Department] FOREIGN KEY([departmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO

ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Department]
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_SalaryLevel] FOREIGN KEY([salaryLevelID])
REFERENCES [dbo].[SalaryLevel] ([salaryLevelID])
GO

ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_SalaryLevel]
GO


