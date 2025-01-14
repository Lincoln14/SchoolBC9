USE [AssignmentBC9db]
GO
/****** Object:  User [Lincoln14]    Script Date: 20/12/2019 18:02:39 ******/
CREATE USER [Lincoln14] FOR LOGIN [Lincoln14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 20/12/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SubDate] [datetime] NOT NULL,
	[OralMark] [float] NULL,
	[TotalMark] [float] NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignmentRelation]    Script Date: 20/12/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignmentRelation](
	[AssignmentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[StudentID] [int] NULL,
 CONSTRAINT [PK_AssignmentRelation] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 20/12/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Stream] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 20/12/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[TuitionFees] [float] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentTakingCourse]    Script Date: 20/12/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTakingCourse](
	[CourseID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
 CONSTRAINT [PK_StudentTakingCourse] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 20/12/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainerTakingCourse]    Script Date: 20/12/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainerTakingCourse](
	[TrainerID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_TrainerTakingCourse] PRIMARY KEY CLUSTERED 
(
	[TrainerID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assignment] ON 

INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDate], [OralMark], [TotalMark]) VALUES (1, N'Thesis', N'Thesis Description ', CAST(N'2020-10-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDate], [OralMark], [TotalMark]) VALUES (2, N'Exercise 1', N'Exercise 1 Description', CAST(N'2020-10-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDate], [OralMark], [TotalMark]) VALUES (3, N'Exercise 2', N'Exercise 2 Description', CAST(N'2020-10-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDate], [OralMark], [TotalMark]) VALUES (5, N'Exercise 3', N'Exercise 3 Description', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDate], [OralMark], [TotalMark]) VALUES (6, N'Exercise 4', N'Exercise 4 Description', CAST(N'2020-10-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Assignment] ([ID], [Title], [Description], [SubDate], [OralMark], [TotalMark]) VALUES (7, N'Exercise 5', N'Exercise 5 Description', CAST(N'2020-10-15T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Assignment] OFF
INSERT [dbo].[AssignmentRelation] ([AssignmentID], [CourseID], [StudentID]) VALUES (1, 1, 1)
INSERT [dbo].[AssignmentRelation] ([AssignmentID], [CourseID], [StudentID]) VALUES (2, 1, 3)
INSERT [dbo].[AssignmentRelation] ([AssignmentID], [CourseID], [StudentID]) VALUES (2, 2, 2)
INSERT [dbo].[AssignmentRelation] ([AssignmentID], [CourseID], [StudentID]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (1, N'Maths', N'Maths', N'Maths', CAST(N'2020-10-01T00:00:00.000' AS DateTime), CAST(N'2020-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (2, N'PC', N'PC', N'PC', CAST(N'2020-05-04T00:00:00.000' AS DateTime), CAST(N'2020-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (3, N'SQL', N'SQL', N'SQL', CAST(N'2020-06-05T00:00:00.000' AS DateTime), CAST(N'2020-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (4, N'C#', N'C#', N'C#', CAST(N'2020-05-12T00:00:00.000' AS DateTime), CAST(N'2020-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (5, N'JavaScript', N'JavaScript', N'Js', CAST(N'2020-07-07T00:00:00.000' AS DateTime), CAST(N'2020-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (6, N'Assembly', N'Assembly', N'Assemb', CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-08-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Course] ([ID], [Title], [Stream], [Type], [StartDate], [EndDate]) VALUES (7, N'jQuery', N'jQuery', N'Jquery', CAST(N'2021-12-08T00:00:00.000' AS DateTime), CAST(N'2021-12-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (1, N'Avraam', N'Liaoutsis', CAST(N'1995-10-14T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (2, N'Alex', N'Liaoutsis', CAST(N'1995-10-14T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (3, N'Nikos', N'Kolimpiris', CAST(N'1995-05-29T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (6, N'Alex', N'Sakellariou', CAST(N'1985-11-29T00:00:00.000' AS DateTime), 500)
INSERT [dbo].[Student] ([ID], [FirstName], [LastName], [DateOfBirth], [TuitionFees]) VALUES (7, N'George', N'Giannaris', CAST(N'1987-06-03T00:00:00.000' AS DateTime), 3000)
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (1, 1)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (2, 1)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (2, 2)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (2, 3)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (3, 3)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (3, 6)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (3, 7)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (4, 2)
INSERT [dbo].[StudentTakingCourse] ([CourseID], [StudentID]) VALUES (4, 7)
SET IDENTITY_INSERT [dbo].[Trainer] ON 

INSERT [dbo].[Trainer] ([ID], [FirstName], [LastName], [Subject]) VALUES (13, N'Avraam', N'Liaoutsis', N'Maths')
INSERT [dbo].[Trainer] ([ID], [FirstName], [LastName], [Subject]) VALUES (14, N'Periklis', N'Aidinopoulos', N'C#')
INSERT [dbo].[Trainer] ([ID], [FirstName], [LastName], [Subject]) VALUES (15, N'Giwrgos', N'Pasparakis', N'Java')
SET IDENTITY_INSERT [dbo].[Trainer] OFF
INSERT [dbo].[TrainerTakingCourse] ([TrainerID], [CourseID]) VALUES (13, 2)
INSERT [dbo].[TrainerTakingCourse] ([TrainerID], [CourseID]) VALUES (14, 4)
INSERT [dbo].[TrainerTakingCourse] ([TrainerID], [CourseID]) VALUES (15, 1)
ALTER TABLE [dbo].[AssignmentRelation]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentRelation_Assignment] FOREIGN KEY([AssignmentID])
REFERENCES [dbo].[Assignment] ([ID])
GO
ALTER TABLE [dbo].[AssignmentRelation] CHECK CONSTRAINT [FK_AssignmentRelation_Assignment]
GO
ALTER TABLE [dbo].[AssignmentRelation]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentRelation_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[AssignmentRelation] CHECK CONSTRAINT [FK_AssignmentRelation_Course]
GO
ALTER TABLE [dbo].[AssignmentRelation]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentRelation_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[AssignmentRelation] CHECK CONSTRAINT [FK_AssignmentRelation_Student]
GO
ALTER TABLE [dbo].[StudentTakingCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentTakingCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[StudentTakingCourse] CHECK CONSTRAINT [FK_StudentTakingCourse_Course]
GO
ALTER TABLE [dbo].[StudentTakingCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentTakingCourse_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[StudentTakingCourse] CHECK CONSTRAINT [FK_StudentTakingCourse_Student]
GO
ALTER TABLE [dbo].[TrainerTakingCourse]  WITH CHECK ADD  CONSTRAINT [FK_TrainerTakingCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[TrainerTakingCourse] CHECK CONSTRAINT [FK_TrainerTakingCourse_Course]
GO
ALTER TABLE [dbo].[TrainerTakingCourse]  WITH CHECK ADD  CONSTRAINT [FK_TrainerTakingCourse_Trainer] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainer] ([ID])
GO
ALTER TABLE [dbo].[TrainerTakingCourse] CHECK CONSTRAINT [FK_TrainerTakingCourse_Trainer]
GO
