USE [master]
GO
/****** Object:  Database [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF]    Script Date: 11/6/2018 8:04:50 PM ******/
CREATE DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AjaxCRUD_DB', FILENAME = N'C:\Users\nsikm\Documents\GitHub\AjaxCRUD\AjaxCRUD\App_Data\AjaxCRUD_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AjaxCRUD_DB_log', FILENAME = N'C:\Users\nsikm\Documents\GitHub\AjaxCRUD\AjaxCRUD\App_Data\AjaxCRUD_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET  ENABLE_BROKER 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET QUERY_STORE = OFF
GO
USE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF]
GO
/****** Object:  User [admin]    Script Date: 11/6/2018 8:04:50 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 11/6/2018 8:04:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [int] NOT NULL,
	[TeacherId] [int] NULL,
	[StudentId] [int] NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/6/2018 8:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[UniversityId] [int] NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK__Student__32C52B99BA9D63CA] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 11/6/2018 8:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](20) NULL,
	[LastName] [nchar](20) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[University]    Script Date: 11/6/2018 8:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University](
	[UniversityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([GradeId], [Grade], [TeacherId], [StudentId]) VALUES (1, 8, 2, 45)
INSERT [dbo].[Grade] ([GradeId], [Grade], [TeacherId], [StudentId]) VALUES (2, 9, 1, 48)
INSERT [dbo].[Grade] ([GradeId], [Grade], [TeacherId], [StudentId]) VALUES (5, 10, 2, 59)
INSERT [dbo].[Grade] ([GradeId], [Grade], [TeacherId], [StudentId]) VALUES (6, 8, 2, 65)
INSERT [dbo].[Grade] ([GradeId], [Grade], [TeacherId], [StudentId]) VALUES (7, 10, 2, 23)
INSERT [dbo].[Grade] ([GradeId], [Grade], [TeacherId], [StudentId]) VALUES (9, 6, 2, 53)
SET IDENTITY_INSERT [dbo].[Grade] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (23, N'Nenad', N'Sikman', 3, 25)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (35, N'John', N'Doe', 3, 26)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (36, N'Mary', N'Smith-Robinson', 1, 25)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (38, N'Jane', N'Stuart', 3, 52)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (39, N'Tom', N'Wright', 2, 27)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (40, N'Steve', N'Robinson', 3, 26)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (41, N'Nicole', N'Jacobs', 1, 27)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (42, N'Jane', N'Wright', 2, 52)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (43, N'Jane', N'Doe', 3, 25)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (44, N'Kurt', N'Wright', 2, 25)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (45, N'Kurt', N'Robinson', 3, 52)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (46, N'Jane', N'Jenkins', 1, 25)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (47, N'Neil', N'Robinson', 2, 27)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (48, N'Tom', N'Patterson', 3, 21)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (49, N'Sam', N'Jenkins', 2, 26)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (50, N'Steve', N'Stuart', 3, 19)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (51, N'Maggie', N'Patterson', 1, 36)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (52, N'Maggie', N'Stuart', 2, 33)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (53, N'Jane', N'Doe', 3, 38)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (54, N'Steve', N'Patterson', 2, 23)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (55, N'Dave', N'Smith', 3, 22)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (56, N'Sam', N'Wilks', 1, 41)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (57, N'Kurt', N'Jefferson', 2, 42)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (58, N'Sam', N'Stuart', 3, 43)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (59, N'Jane', N'Stuart', 2, 44)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (60, N'Dave', N'Davis', 3, 45)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (61, N'Sam', N'Patterson', 1, 20)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (62, N'Tom', N'Jefferson', 2, 21)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (63, N'Jane', N'Stuart', 3, 22)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (64, N'Maggie', N'Jefferson', 2, 23)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (65, N'Mary', N'Wilks', 2, 24)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (66, N'Neil', N'Patterson', 2, 25)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (68, N'Steve', N'Jacobs', 1, 27)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (69, N'Jane', N'Jenkins', 2, 28)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (70, N'John', N'Jacobs', 3, 29)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (71, N'Neil', N'Smith', 2, 30)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (74, N'Mary', N'Patterson', 2, 33)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (75, N'Jane', N'Stuart', 3, 34)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (76, N'Travis', N'Arnold', 2, 35)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (77, N'John', N'Robinson', 2, 36)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (78, N'Travis', N'Arnold', 2, 37)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (87, N'Nenad', N'Sikman', 3, 24)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (88, N'Danen', N'Namkis', 1, 25)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [UniversityId], [Age]) VALUES (89, N'Nenad', N'sdadsads', 71, 55)
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [FirstName], [LastName]) VALUES (1, N'Anotehr             ', N'One                 ')
INSERT [dbo].[Teacher] ([TeacherId], [FirstName], [LastName]) VALUES (2, N'Dj                  ', N'Khaled              ')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET IDENTITY_INSERT [dbo].[University] ON 

INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (1, N'Columbia University')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (2, N'Holy Names University')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (3, N'Harvard University')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (57, N'Loyola Marymount University')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (59, N'Hope International University')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (60, N'Palo Alto University')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (62, N'University of the Pacific')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (64, N'University of Redlands')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (66, N'Dongguk University Los Angeles')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (67, N'San Diego State University')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (68, N'University of San Francisco')
INSERT [dbo].[University] ([UniversityId], [Name]) VALUES (71, N'Sonoma State University')
SET IDENTITY_INSERT [dbo].[University] OFF
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student1] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student1]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Teacher1] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Teacher1]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_University] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[University] ([UniversityId])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_University]
GO
USE [master]
GO
ALTER DATABASE [C:\USERS\NSIKM\DOCUMENTS\GITHUB\AJAXCRUD\AJAXCRUD\APP_DATA\AJAXCRUD_DB.MDF] SET  READ_WRITE 
GO
