USE [Final]
GO
/****** Object:  Table [dbo].[AddSection]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddSection](
	[SectionId] [int] IDENTITY(1,1) NOT NULL,
	[SectionTitle] [varchar](50) NOT NULL,
	[SectionDetail] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AddSection] PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddTeacher]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddTeacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AddTeacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseTitle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DateSheet]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateSheet](
	[CourseId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[SectionId] [int] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeeChallan]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeeChallan](
	[Id] [int] NOT NULL,
	[ChallanId] [int] NOT NULL,
	[ChallanNo] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManageAttendance]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManageAttendance](
	[Id] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManagePayRoll]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManagePayRoll](
	[TeacherId] [int] NOT NULL,
	[Salary] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentSection]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSection](
	[Id] [int] NOT NULL,
	[SectionId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherCourse]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherCourse](
	[TeacherId] [int] NOT NULL,
	[CourseId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[TeacherId] [int] NOT NULL,
	[SectionId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[StartTime] [date] NOT NULL,
	[EndTime] [date] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_AddSection] FOREIGN KEY([SectionId])
REFERENCES [dbo].[AddSection] ([SectionId])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_AddSection]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_AddTeacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[AddTeacher] ([TeacherId])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_AddTeacher]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_Courses]
GO
ALTER TABLE [dbo].[FeeChallan]  WITH CHECK ADD  CONSTRAINT [FK_FeeChallan_Registration] FOREIGN KEY([Id])
REFERENCES [dbo].[Registration] ([Id])
GO
ALTER TABLE [dbo].[FeeChallan] CHECK CONSTRAINT [FK_FeeChallan_Registration]
GO
ALTER TABLE [dbo].[ManageAttendance]  WITH CHECK ADD  CONSTRAINT [FK_ManageAttendance_AddTeacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[AddTeacher] ([TeacherId])
GO
ALTER TABLE [dbo].[ManageAttendance] CHECK CONSTRAINT [FK_ManageAttendance_AddTeacher]
GO
ALTER TABLE [dbo].[ManageAttendance]  WITH CHECK ADD  CONSTRAINT [FK_ManageAttendance_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[ManageAttendance] CHECK CONSTRAINT [FK_ManageAttendance_Courses]
GO
ALTER TABLE [dbo].[ManageAttendance]  WITH CHECK ADD  CONSTRAINT [FK_ManageAttendance_Registration] FOREIGN KEY([Id])
REFERENCES [dbo].[Registration] ([Id])
GO
ALTER TABLE [dbo].[ManageAttendance] CHECK CONSTRAINT [FK_ManageAttendance_Registration]
GO
ALTER TABLE [dbo].[ManagePayRoll]  WITH CHECK ADD  CONSTRAINT [FK_ManagePayRoll_AddTeacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[AddTeacher] ([TeacherId])
GO
ALTER TABLE [dbo].[ManagePayRoll] CHECK CONSTRAINT [FK_ManagePayRoll_AddTeacher]
GO
ALTER TABLE [dbo].[StudentSection]  WITH CHECK ADD  CONSTRAINT [FK_StudentSection_AddSection] FOREIGN KEY([SectionId])
REFERENCES [dbo].[AddSection] ([SectionId])
GO
ALTER TABLE [dbo].[StudentSection] CHECK CONSTRAINT [FK_StudentSection_AddSection]
GO
ALTER TABLE [dbo].[StudentSection]  WITH CHECK ADD  CONSTRAINT [FK_StudentSection_Registration] FOREIGN KEY([Id])
REFERENCES [dbo].[Registration] ([Id])
GO
ALTER TABLE [dbo].[StudentSection] CHECK CONSTRAINT [FK_StudentSection_Registration]
GO
ALTER TABLE [dbo].[TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourse_AddTeacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[AddTeacher] ([TeacherId])
GO
ALTER TABLE [dbo].[TeacherCourse] CHECK CONSTRAINT [FK_TeacherCourse_AddTeacher]
GO
ALTER TABLE [dbo].[TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourse_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[TeacherCourse] CHECK CONSTRAINT [FK_TeacherCourse_Courses]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_AddSection] FOREIGN KEY([SectionId])
REFERENCES [dbo].[AddSection] ([SectionId])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_AddSection]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_AddTeacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[AddTeacher] ([TeacherId])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_AddTeacher]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Courses]
GO
/****** Object:  StoredProcedure [dbo].[CourseId]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CourseId]
AS
BEGIN
SELECT * from Courses
END
GO
/****** Object:  StoredProcedure [dbo].[Id]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Id]
AS
BEGIN
SELECT * from Registration
END
GO
/****** Object:  StoredProcedure [dbo].[SectionId]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SectionId]
AS
BEGIN
SELECT * from AddSection
END
GO
/****** Object:  StoredProcedure [dbo].[TeacherId]    Script Date: 5/4/2019 8:14:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TeacherId]
AS
BEGIN
SELECT * from AddTeacher
END
GO
