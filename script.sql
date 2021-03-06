USE [WinsoftDB]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/24/2021 10:17:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Code] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](500) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Names]    Script Date: 3/24/2021 10:17:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Names](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[DeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Names] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Departments] ([Code], [Department]) VALUES (N'A1B2', N'IT')
INSERT [dbo].[Departments] ([Code], [Department]) VALUES (N'C3D4', N'Sales')
INSERT [dbo].[Departments] ([Code], [Department]) VALUES (N'E5F6', N'Accounting')
INSERT [dbo].[Names] ([Code], [Name], [DeptCode]) VALUES (2001, N'Tony Stark', N'A1B2')
INSERT [dbo].[Names] ([Code], [Name], [DeptCode]) VALUES (2002, N'Natalie Portman', N'C3D4')
INSERT [dbo].[Names] ([Code], [Name], [DeptCode]) VALUES (2003, N'Angelina Jolie', N'C3D4')
INSERT [dbo].[Names] ([Code], [Name], [DeptCode]) VALUES (2004, N'Leonardo Dicaprio', N'E5F6')
ALTER TABLE [dbo].[Names]  WITH CHECK ADD  CONSTRAINT [FK_Names_Departments] FOREIGN KEY([DeptCode])
REFERENCES [dbo].[Departments] ([Code])
GO
ALTER TABLE [dbo].[Names] CHECK CONSTRAINT [FK_Names_Departments]
GO
