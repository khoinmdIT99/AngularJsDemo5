USE [CasePortal]
GO
/****** Object:  Table [dbo].[District]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__District__3214EC0770C310C3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Path] [nvarchar](100) NOT NULL,
	[LogId] [int] NOT NULL,
 CONSTRAINT [PK__Document__3214EC07F78B3102] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] NOT NULL,
	[Path] [nvarchar](100) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentType]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[NotificationDate] [datetime] NOT NULL,
	[IncidentDate] [datetime] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[IncidentTypeId] [int] NOT NULL,
	[CreateAt] [datetime] NULL CONSTRAINT [DF_CreateAt]  DEFAULT (getdate()),
 CONSTRAINT [PK__Log__3214EC07DB773F88] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Media]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Path] [nvarchar](100) NOT NULL,
	[Type] [int] NOT NULL,
	[LogId] [int] NOT NULL,
 CONSTRAINT [PK__Media__3214EC07D90DA971] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/23/2019 5:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](15) NULL,
	[Address] [nvarchar](200) NULL,
	[Status] [int] NOT NULL,
	[ImageId] [int] NULL,
 CONSTRAINT [PK__AspNetUs__3214EC071FFD773A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([Id], [Name]) VALUES (1, N'01')
INSERT [dbo].[District] ([Id], [Name]) VALUES (2, N'02')
INSERT [dbo].[District] ([Id], [Name]) VALUES (3, N'03')
INSERT [dbo].[District] ([Id], [Name]) VALUES (4, N'04')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Document] ON 

INSERT [dbo].[Document] ([Id], [Name], [Path], [LogId]) VALUES (1, N'Log # 2019-0000233 Shotspotter 4', N'https://www.chicagocopa.org/wp-content/uploads/2019/05/Arrest-Report-of-Donell-Davis._REDACTED.pdf', 1)
INSERT [dbo].[Document] ([Id], [Name], [Path], [LogId]) VALUES (5, N'Log # 2019-0000233 Shotspotter 1', N'https://www.chicagocopa.org/wp-content/uploads/2019/05/Arrest-Report-of-Donell-Davis._REDACTED.pdf', 18)
INSERT [dbo].[Document] ([Id], [Name], [Path], [LogId]) VALUES (7, N'Log # 2019-0000233 Shotspotter 1', N'https://www.chicagocopa.org/wp-content/uploads/2019/05/Arrest-Report-of-Donell-Davis._REDACTED.pdf', 9)
INSERT [dbo].[Document] ([Id], [Name], [Path], [LogId]) VALUES (8, N'Log # 2019-0000233 Shotspotter 3', N'https://www.chicagocopa.org/wp-content/uploads/2019/05/Arrest-Report-of-Donell-Davis._REDACTED.pdf', 7)
INSERT [dbo].[Document] ([Id], [Name], [Path], [LogId]) VALUES (9, N'Log # 2019-0000233 Shotspotter 2', N'https://www.chicagocopa.org/wp-content/uploads/2019/05/Arrest-Report-of-Donell-Davis._REDACTED.pdf', 13)
SET IDENTITY_INSERT [dbo].[Document] OFF
SET IDENTITY_INSERT [dbo].[IncidentType] ON 

INSERT [dbo].[IncidentType] ([Id], [Name]) VALUES (1, N'Incident in Police Custody')
INSERT [dbo].[IncidentType] ([Id], [Name]) VALUES (2, N'Firearm Discharge')
INSERT [dbo].[IncidentType] ([Id], [Name]) VALUES (3, N'Other Use Of Force')
INSERT [dbo].[IncidentType] ([Id], [Name]) VALUES (4, N'Taser Discharge')
SET IDENTITY_INSERT [dbo].[IncidentType] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (1, N'2019-0000294', CAST(N'2019-03-10 03:00:00.000' AS DateTime), CAST(N'2019-03-03 09:16:00.000' AS DateTime), 1, 2, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (3, N'2019-0000212', CAST(N'2019-03-01 13:36:00.000' AS DateTime), CAST(N'2013-03-01 00:00:00.000' AS DateTime), 1, 2, CAST(N'2019-03-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (7, N'2019-0000233', CAST(N'2019-02-23 14:10:00.000' AS DateTime), CAST(N'2019-03-03 10:20:00.000' AS DateTime), 2, 2, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (9, N'2019-0000233', CAST(N'2019-03-23 14:00:00.000' AS DateTime), CAST(N'2019-03-23 00:00:00.000' AS DateTime), 1, 1, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (10, N'2019-0000222', CAST(N'2020-03-18 00:00:00.000' AS DateTime), CAST(N'2019-03-23 00:00:00.000' AS DateTime), 3, 3, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (11, N'2019-222222', CAST(N'2019-03-23 00:00:00.000' AS DateTime), CAST(N'2019-03-23 00:00:00.000' AS DateTime), 3, 4, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (12, N'2019-00001', CAST(N'2019-02-09 10:00:20.000' AS DateTime), CAST(N'2018-03-03 00:00:00.000' AS DateTime), 1, 2, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (13, N'2019-00001', CAST(N'2016-01-03 00:00:00.000' AS DateTime), CAST(N'2019-03-03 00:00:00.000' AS DateTime), 1, 2, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (14, N'2019-00003', CAST(N'2019-03-03 00:00:00.000' AS DateTime), CAST(N'2019-03-03 00:00:00.000' AS DateTime), 1, 1, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (15, N'2019-00004', CAST(N'2019-03-03 20:00:00.000' AS DateTime), CAST(N'2019-03-03 00:00:00.000' AS DateTime), 1, 3, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (16, N'2019-00005', CAST(N'2017-03-03 00:00:00.000' AS DateTime), CAST(N'2014-01-02 12:00:00.000' AS DateTime), 3, 2, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (17, N'2019-00006', CAST(N'2019-03-03 17:00:00.000' AS DateTime), CAST(N'2019-03-03 11:02:40.000' AS DateTime), 4, 2, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (18, N'2019-00007', CAST(N'2010-01-03 00:01:00.000' AS DateTime), CAST(N'2012-11-23 00:10:10.000' AS DateTime), 4, 4, CAST(N'2019-03-03 09:16:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (25, N'20196', CAST(N'2019-05-02 00:00:00.000' AS DateTime), CAST(N'2019-04-28 00:00:00.000' AS DateTime), 2, 1, CAST(N'2019-05-16 17:42:49.883' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (27, N'455', CAST(N'2019-05-10 00:00:00.000' AS DateTime), CAST(N'2019-05-04 00:00:00.000' AS DateTime), 3, 1, CAST(N'2019-05-16 17:50:00.287' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (28, N'5454', CAST(N'2019-05-09 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 2, 2, CAST(N'2019-05-16 17:53:35.060' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (29, N'2017-2017', CAST(N'2019-05-03 00:00:00.000' AS DateTime), CAST(N'2019-05-25 00:00:00.000' AS DateTime), 2, 1, CAST(N'2019-05-16 17:56:24.577' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (34, N'2011444', CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime), 1, 2, CAST(N'2019-05-17 10:05:52.407' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (35, N'2011444', CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-18 00:00:00.000' AS DateTime), 2, 1, CAST(N'2019-05-17 10:08:13.507' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (36, N'phuong dragon', CAST(N'2019-05-03 00:00:00.000' AS DateTime), CAST(N'2019-05-02 00:00:00.000' AS DateTime), 1, 2, CAST(N'2019-05-17 10:29:19.807' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (37, N'phuong dragon', CAST(N'2019-05-04 00:00:00.000' AS DateTime), CAST(N'2019-05-03 00:00:00.000' AS DateTime), 2, 2, CAST(N'2019-05-17 10:32:09.317' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (39, N'phuong dragon', CAST(N'2019-05-04 00:00:00.000' AS DateTime), CAST(N'2019-05-04 00:00:00.000' AS DateTime), 1, 2, CAST(N'2019-05-17 11:41:43.417' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (41, N'2018152', CAST(N'2019-05-02 00:00:00.000' AS DateTime), CAST(N'2019-05-18 00:00:00.000' AS DateTime), 3, 1, CAST(N'2019-05-17 13:16:53.737' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (42, N'1110', CAST(N'2019-04-30 00:00:00.000' AS DateTime), CAST(N'2019-05-03 00:00:00.000' AS DateTime), 2, 3, CAST(N'2019-05-17 13:28:36.187' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (43, N'201144400', CAST(N'2019-05-17 00:00:00.000' AS DateTime), CAST(N'2019-05-17 00:00:00.000' AS DateTime), 2, 3, CAST(N'2019-05-17 00:00:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (44, N'20174441', CAST(N'2019-05-06 00:00:00.000' AS DateTime), CAST(N'2019-05-25 00:00:00.000' AS DateTime), 3, 1, CAST(N'2019-05-17 00:00:00.000' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (45, N'2014-44', CAST(N'2019-05-18 00:00:00.000' AS DateTime), CAST(N'2019-04-28 00:00:00.000' AS DateTime), 2, 1, CAST(N'2019-05-17 13:41:26.613' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (46, N'201114', CAST(N'2019-05-18 00:00:00.000' AS DateTime), CAST(N'2019-05-10 00:00:00.000' AS DateTime), 2, 2, CAST(N'2019-05-17 13:45:41.023' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (47, N'2020-2014', CAST(N'2019-05-02 00:00:00.000' AS DateTime), CAST(N'2019-05-02 00:00:00.000' AS DateTime), 3, 4, CAST(N'2019-05-17 13:49:34.343' AS DateTime))
INSERT [dbo].[Log] ([Id], [Name], [NotificationDate], [IncidentDate], [DistrictId], [IncidentTypeId], [CreateAt]) VALUES (53, N'2018', CAST(N'2019-05-03 04:05:00.000' AS DateTime), CAST(N'2019-05-02 00:00:00.000' AS DateTime), 2, 1, CAST(N'2019-05-20 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Log] OFF
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([Id], [Name], [Path], [Type], [LogId]) VALUES (4, N'Log #2019-0000233 Body Worn Camera 1', N'https://www.w3schools.com/html/movie.mp4', 1, 1)
INSERT [dbo].[Media] ([Id], [Name], [Path], [Type], [LogId]) VALUES (5, N'Log # 2019-0000294 Body Worn Camera 1
', N'https://www.w3schools.com/html/horse.ogg', 2, 3)
INSERT [dbo].[Media] ([Id], [Name], [Path], [Type], [LogId]) VALUES (7, N'Log #2019-0000233 Body Worn Camera 1', N'https://www.w3schools.com/html/horse.ogg', 2, 1)
INSERT [dbo].[Media] ([Id], [Name], [Path], [Type], [LogId]) VALUES (8, N'Log #2019-0000233 Body Worn Camera 2', N'https://www.w3schools.com/tags/mov_bbb.ogg', 1, 7)
INSERT [dbo].[Media] ([Id], [Name], [Path], [Type], [LogId]) VALUES (12, N'Log #2019-0000233 Body Worn Camera 3', N'https://www.w3schools.com/tags/mov_bbb.ogg', 1, 18)
INSERT [dbo].[Media] ([Id], [Name], [Path], [Type], [LogId]) VALUES (15, N'12	Log #2019-0000233 Body Worn Camera 3	', N'	https://www.w3schools.com/tags/mov_bbb.ogg', 1, 18)
INSERT [dbo].[Media] ([Id], [Name], [Path], [Type], [LogId]) VALUES (23, N'Log #2019-0000233 Body Worn Camera 10', N'https://www.w3schools.com/html/horse.ogg', 2, 13)
SET IDENTITY_INSERT [dbo].[Media] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'SuperAdmin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Editor')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (4, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (3, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (3, 3)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (3, 4)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (4, 3)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (5, 4)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Password], [Phone], [Address], [Status], [ImageId]) VALUES (2, N'caongocphuong@gmail.com', N'123456', N'01659846212', N'Điền Hải, Phong Điền, Thừa Thiên Huế', 1, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Password], [Phone], [Address], [Status], [ImageId]) VALUES (3, N'caongocphuong2@gmail.com', N'123456', N'01659846212', N'Điền Hải, Phong Điền, Thừa Thiên Huế', 1, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Password], [Phone], [Address], [Status], [ImageId]) VALUES (4, N'caongocphuong3@gmail.com', N'123456', N'01659846212', N'Điền Hải, Phong Điền, Thừa Thiên Huế', 1, NULL)
INSERT [dbo].[Users] ([Id], [Email], [Password], [Phone], [Address], [Status], [ImageId]) VALUES (5, N'caongocphuong4@gmail.com', N'123456', N'01659846212', N'Điền Hải, Phong Điền, Thừa Thiên Huế', 1, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__AspNetUs__A9D105346566A1AD]    Script Date: 5/23/2019 5:50:47 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UQ__AspNetUs__A9D105346566A1AD] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK__Document__LogId__1FCDBCEB] FOREIGN KEY([LogId])
REFERENCES [dbo].[Log] ([Id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK__Document__LogId__1FCDBCEB]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK__Log__IncidentTyl__1920BF5C] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK__Log__IncidentTyl__1920BF5C]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK__Log__IncidentTyl__1A14E395] FOREIGN KEY([IncidentTypeId])
REFERENCES [dbo].[IncidentType] ([Id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK__Log__IncidentTyl__1A14E395]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FK__Media__LogId__1CF15040] FOREIGN KEY([LogId])
REFERENCES [dbo].[Log] ([Id])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK__Media__LogId__1CF15040]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK__User_Role__UserI__160F4887] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK__User_Role__UserI__160F4887]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Image] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Image] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Image]
GO
