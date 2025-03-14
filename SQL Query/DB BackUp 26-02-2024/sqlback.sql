USE [master]
GO
/****** Object:  Database [EventManagement]    Script Date: 26-02-2024 13:07:07 ******/
CREATE DATABASE [EventManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EventManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\EventManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EventManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\EventManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [EventManagement] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EventManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EventManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EventManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EventManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EventManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EventManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [EventManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EventManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EventManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EventManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EventManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EventManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EventManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EventManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EventManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EventManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EventManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EventManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EventManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EventManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EventManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EventManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EventManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EventManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [EventManagement] SET  MULTI_USER 
GO
ALTER DATABASE [EventManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EventManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EventManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EventManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EventManagement] SET DELAYED_DURABILITY = DISABLED 
GO
--ALTER DATABASE [EventManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
--GO
ALTER DATABASE [EventManagement] SET QUERY_STORE = OFF
GO
USE [EventManagement]
GO
/****** Object:  Table [dbo].[C_Room]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Room](
	[Room_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](2000) NULL,
	[Event_Venue] [varchar](100) NULL,
	[Location_Link] [varchar](255) NULL,
	[Event_type] [varchar](50) NULL,
	[Equipment] [varchar](100) NULL,
	[Seat] [int] NULL,
	[Room_Img] [varchar](255) NULL,
	[Created_Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Reg]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Reg](
	[E_Id] [int] IDENTITY(1,1) NOT NULL,
	[E_Name] [varchar](255) NOT NULL,
	[E_Description] [varchar](1000) NOT NULL,
	[E_Sdate] [date] NULL,
	[E_Edate] [date] NULL,
	[E_Venue] [varchar](255) NOT NULL,
	[E_LocationLink] [varchar](255) NOT NULL,
	[E_Type] [varchar](100) NOT NULL,
	[E_Mode] [varchar](100) NOT NULL,
	[E_Seat] [int] NOT NULL,
	[E_RegisterLink] [varchar](255) NOT NULL,
	[E_BannerImg] [varchar](255) NOT NULL,
	[E_Icon] [varchar](255) NULL,
	[E_FloorMap] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[E_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organizer]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizer](
	[F_Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](255) NULL,
	[Last_Name] [varchar](255) NULL,
	[Organizer_Type] [varchar](50) NULL,
	[Email] [varchar](255) NULL,
	[Phone] [bigint] NULL,
	[Org_Image] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Report_Id] [int] IDENTITY(1,1) NOT NULL,
	[Event_Name] [varchar](50) NULL,
	[User_Name] [varchar](50) NULL,
	[R_description] [varchar](1000) NULL,
	[date_column] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sponcer]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sponcer](
	[S_Id] [int] IDENTITY(1,1) NOT NULL,
	[First_name] [varchar](255) NULL,
	[Last_name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Website] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Phone] [bigint] NULL,
	[Logo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[S_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Mgt]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Mgt](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Type] [varchar](255) NOT NULL,
	[User_Name] [varchar](1000) NOT NULL,
	[Mobile_Number] [bigint] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Confirm_Password] [varchar](100) NOT NULL,
	[Person_type] [varchar](100) NULL,
	[Createdby] [varchar](255) NULL,
	[Createdon] [date] NULL,
	[Updateby] [varchar](255) NULL,
	[Updatedon] [date] NULL,
	[Per_status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[C_Room] ON 

INSERT [dbo].[C_Room] ([Room_ID], [Name], [Description], [Event_Venue], [Location_Link], [Event_type], [Equipment], [Seat], [Room_Img], [Created_Date]) VALUES (1, N'Virran', N'Tech Solution', N'Chennai', N'T-Nagar', N'Conference', N'Speaker,Mic', 50, N'C:\fakepath\WIN_20231115_12_22_50_Pro.jpg', NULL)
INSERT [dbo].[C_Room] ([Room_ID], [Name], [Description], [Event_Venue], [Location_Link], [Event_type], [Equipment], [Seat], [Room_Img], [Created_Date]) VALUES (2, N'abitss', N'interview', N'chennai', N'https://localhost:44310/UI/Module/dashboard/Room_Count.aspx', N'Other', N'systems', 15, N'C:\BACK UP\13-02-2024\Event management 13-02-2024\Uploads\1ddcb108-ef2d-4944-b79f-e499d7020291.JPEG', NULL)
SET IDENTITY_INSERT [dbo].[C_Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Event_Reg] ON 

INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (2, N'Virran Productt', N'New product in virran', CAST(N'2024-02-22' AS Date), CAST(N'2024-02-22' AS Date), N'Chennai-T.nagar', N'www.virran.com', N'Conference', N'Onsite', 100, N'www.virran.com', N'C:\BACK UP\13-02-2024\Event management 13-02-2024\Uploads\6685246c-e456-4a88-8272-9421be411204.JPEG', N'null', N'null')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (3, N'Abits-New Product', N'New Product from Abits in the market', CAST(N'2024-02-22' AS Date), CAST(N'2024-02-23' AS Date), N'T.Nagar', N'www.Abits.com', N'Seminar', N'Hybrid', 100, N'www.Abits.com', N'C:\BACK UP\13-02-2024\Event management 13-02-2024\Uploads\8313dfb7-e3ad-42c0-8154-b561f93f3aab.JPEG', N'null', N'null')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (7, N'Virran', N'Virran Product', CAST(N'2024-01-18' AS Date), CAST(N'2024-01-19' AS Date), N'Chennai', N'www.google.com', N'Conference', N'Hybrid', 15, N'www.google.com', N'null', N'null', N'null')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (9, N'suji', N'lkjkjgjfhdg', CAST(N'2024-01-23' AS Date), CAST(N'2024-01-24' AS Date), N'chennai', N'www.google.com', N'Seminar', N'Onsite', 78, N'www.google.com', N'Screenshot (52).png', N'Screenshot (54).png', N'Screenshot (46).png')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (10, N'gdhdh', N'nb mnbm', CAST(N'2024-02-23' AS Date), CAST(N'2024-02-16' AS Date), N'vnmvn', N'mvghjmgj', N'Conference', N'Onsite', 6, N'mnvhjf', N'C:\BACK UP\13-02-2024\Event management 13-02-2024\Uploads\39e80703-49c7-490d-82e5-cd0fd4990b48.JPEG', N'null', N'null')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (14, N'jk', N'jhf', CAST(N'2024-01-17' AS Date), CAST(N'2024-01-02' AS Date), N'jhvngvb', N'ngchj', N'Conference', N'Hybrid', 76, N'hgdh', N'1243926.jpg', N'1243926.jpg', N'cat9.jpg')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (15, N'hii', N'hii', CAST(N'2024-01-19' AS Date), CAST(N'2024-01-24' AS Date), N'chennai', N'jwgdc', N'Conference', N'Hybrid', 76, N'jhadsgj', N'null', N'null', N'null')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (16, N'v', N'n', CAST(N'2024-02-22' AS Date), CAST(N'2024-02-01' AS Date), N'ekjrb', N'ehrfv', N'Seminar', N'Hybrid', 34, N'ergd', N'Screenshot (47).png', N'Screenshot (54).png', N'Screenshot (54).png')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (17, N'college', N'jhcf', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-17' AS Date), N'jSDKBV', N'jhevf', N'Conference', N'Onsite', 78, N'JVD', N'C:\BACK UP\12-02-24\Event management 02 -02-2024\Uploads\cat9.jpg', N'C:\BACK UP\12-02-24\Event management 02 -02-2024\Uploads\1243926.jpg', N'C:\BACK UP\12-02-24\Event management 02 -02-2024\Uploads\black-and-white-office-desk-desktop-i5qgtxi9v4hw81fv.jpg')
INSERT [dbo].[Event_Reg] ([E_Id], [E_Name], [E_Description], [E_Sdate], [E_Edate], [E_Venue], [E_LocationLink], [E_Type], [E_Mode], [E_Seat], [E_RegisterLink], [E_BannerImg], [E_Icon], [E_FloorMap]) VALUES (1013, N' pongal function', N'h', CAST(N'2024-02-22' AS Date), CAST(N'2024-02-23' AS Date), N'chennai', N'https://localhost:44310/UI/Module/dashboard/C_Event.aspx?E_Id=17', N'', N'', 34, N'https://localhost:44310/UI/Module/dashboard/C_Event.aspx', N'1243926.jpg', N'c07236e5206b72e5bf30ef477ac6a007 jpg', N'cat9.jpg')
SET IDENTITY_INSERT [dbo].[Event_Reg] OFF
GO
SET IDENTITY_INSERT [dbo].[organizer] ON 

INSERT [dbo].[organizer] ([F_Id], [First_Name], [Last_Name], [Organizer_Type], [Email], [Phone], [Org_Image]) VALUES (1, N'sujiikavii', N'sujikaviiii', N'Organization', N'raghulcs14@gmail.com', 8766556, N'C:\BACK UP\12-02-24\Event management 02 -02-2024\Uploads\28386265-1f91-4017-ac07-82ff0d502579.bin')
SET IDENTITY_INSERT [dbo].[organizer] OFF
GO
SET IDENTITY_INSERT [dbo].[Report] ON 

INSERT [dbo].[Report] ([Report_Id], [Event_Name], [User_Name], [R_description], [date_column]) VALUES (1, N'Lokesh', N'Lokesh', N'hiiiiiiiiiiiiii', NULL)
INSERT [dbo].[Report] ([Report_Id], [Event_Name], [User_Name], [R_description], [date_column]) VALUES (2, N'', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[Report] OFF
GO
SET IDENTITY_INSERT [dbo].[sponcer] ON 

INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (2, N'hiihgg', N'hiii', N'advsa', N'http:\\www.chennai.com', N'', 8148279505, N'M.kavitha -Dot Net (Past_ Present_ Future).pdf')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (4, N'kavikaviii', N'sujisuji', N'skjbchsbacjh', N'https://chat.openai.com/c/1df84153-a798-4348-94d8-433c8b8cff3f', N'', 987677665, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (5, N'moni', N'monipree', N'hbjbjhbjb', N'https://chat.openai.com/c/1df84153-a798-4348-94d8-433c8b8cff3f', N'', 987677665, N'black-and-white-office-desk-desktop-i5qgtxi9v4hw81fv.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (6, N'preethi', N'preethiravi', N'hbnjkbmkb', N'https://chat.openai.com/c/1df84153-a798-4348-94d8-433c8b8cff3f', N'', 987677665, N'desktop-wallpaper-positive-for-computers-stay-positive.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (7, N'anu', N'anu', N'kdfvbjbvdhdb', N'https://chat.openai.com/c/1df84153-a798-4348-94d8-433c8b8cff3f', N'', 987677665, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (9, N'anu', N'k df', N'skeb', N'https://www.google.com/maps', N'', 8148279505, N'desktop-wallpaper-positive-for-computers-stay-positive.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (10, N'kk', N'll', N'jjj', N'https://www.google.com/maps', N'', 2837466, N'desktop-wallpaper-positive-for-computers-stay-positive.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (11, N'kk', N'll', N'jjj', N'https://www.google.com/maps', N'', 2837466, N'desktop-wallpaper-positive-for-computers-stay-positive.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1002, N'qwg', N'we', N'rt', N'http:\\www.chennai.com', N'', 775456676, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1003, N'sha', N'banu', N'sdjlf', N'http:\\www.chennai.com', N'', 8148279505, N'1243926.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1004, N'llll', N'llllf', N'lll', N'http:\\www.chennai.com', N'', 146646, N'null')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1046, N'sha', N'banuuu', N'sdjlf', N'http:\\www.chennai.com', N'', 8148279505, N'null')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1047, N'gv', N'prakash', N'music', N'http:\\www.chennai.com', N'', 8765454, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1048, N'gvv', N'prakashh', N'music', N'http:\\www.chennai.com', N'', 8765454, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1049, N'me', N'r', N'f', N'http:\\www.chennai.com', N'', 8764, N'~/images/')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1052, N'divya', N'chv', N'khxvd', N'http:\\www.chennai.com', N'', 394856, N'1243926.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1061, N'anuuu', N'bama', N'jkdh', N'http:\\www.chennai.com', N'', 875654, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1062, N'anu', N'bama', N'jkdh', N'http:\\www.chennai.com', N'', 875654, N'~/images/')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1063, N'sujitha', N'mm', N'kjfv', N'http:\\www.chennai.com', N'', 875654, N'black-and-white-office-desk-desktop-i5qgtxi9v4hw81fv.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1064, N'sujitha', N'mmm', N'kjfv', N'http:\\www.chennai.com', N'', 875654, N'black-and-white-office-desk-desktop-i5qgtxi9v4hw81fv.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1065, N'kavitha', N'mohan', N'kjhg', N'https://www.google.com/maps', N'', 876544534, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1066, N'sujitha', N'mohan', N'jhfhdydftfy', N'http:\\www.chennai.com', N'suji@gmail.com', 78665, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1067, N'suba', N'sujiii', N'kndc', N'https://www.google.com/maps', N'kavitha@gmail.com', 9876545, N'cat9.jpg')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1068, N'kavitha', N'mohan', N'lkdwnf', N'https://www.google.com/maps', N'kavitha@gmail.com', 8148279505, N'')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1069, N'sujithakav', N'sujii', N'50', N'https://www.google.com', N'kavitha@gmail.com15', 1234567890, N'C:\BACK UP\13-02-2024\Event management 13-02-2024\Uploads\e9e7d4bc-9d56-42c1-9d70-5c501e7527a8.bin')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1070, N'first', N'las', N'description', N'http:\\www.chennai.com', N'kavitha@gmail.com15', 9840192585, N'C:\BACK UP\13-02-2024\Event management 13-02-2024\Uploads\9f935cf6-f34d-473b-ac70-b9bd912b35ed.bin')
INSERT [dbo].[sponcer] ([S_Id], [First_name], [Last_name], [Description], [Website], [Email], [Phone], [Logo]) VALUES (1071, N'firstt', N'last', N'description', N'http:\\www.chennai.com', N'kavitha@gmail.com15', 9840192585, N'C:\BACK UP\13-02-2024\Event management 13-02-2024\Uploads\22695991-1026-4aba-b1e9-ecb21555dbcd.bin')
SET IDENTITY_INSERT [dbo].[sponcer] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Mgt] ON 

INSERT [dbo].[User_Mgt] ([User_Id], [User_Type], [User_Name], [Mobile_Number], [Email], [Password], [Confirm_Password], [Person_type], [Createdby], [Createdon], [Updateby], [Updatedon], [Per_status]) VALUES (1023, N'Organization', N'kavitha', 8148279505, N'kavitha@gmail.com', N'', N'1234', N'Admin(SA)', NULL, CAST(N'2024-02-21' AS Date), NULL, NULL, N'Active')
INSERT [dbo].[User_Mgt] ([User_Id], [User_Type], [User_Name], [Mobile_Number], [Email], [Password], [Confirm_Password], [Person_type], [Createdby], [Createdon], [Updateby], [Updatedon], [Per_status]) VALUES (1025, N'Organization', N'mithraa', 8148279505, N'kavitha@gmail.com', N'', N'234', N'Admin', NULL, CAST(N'2024-02-21' AS Date), NULL, NULL, N'Active')
INSERT [dbo].[User_Mgt] ([User_Id], [User_Type], [User_Name], [Mobile_Number], [Email], [Password], [Confirm_Password], [Person_type], [Createdby], [Createdon], [Updateby], [Updatedon], [Per_status]) VALUES (1026, N'Organization', N'kavitha Mohan', 8148279505, N'sujithakavi20@gmail.com', N'', N'suji2001', N'User', NULL, CAST(N'2024-02-23' AS Date), NULL, NULL, N'Active')
INSERT [dbo].[User_Mgt] ([User_Id], [User_Type], [User_Name], [Mobile_Number], [Email], [Password], [Confirm_Password], [Person_type], [Createdby], [Createdon], [Updateby], [Updatedon], [Per_status]) VALUES (1030, N'Organization', N'krish', 8148279505, N'krish21@gmail.com', N'12', N'12', N'User', NULL, CAST(N'2024-02-23' AS Date), NULL, NULL, N'Active')
INSERT [dbo].[User_Mgt] ([User_Id], [User_Type], [User_Name], [Mobile_Number], [Email], [Password], [Confirm_Password], [Person_type], [Createdby], [Createdon], [Updateby], [Updatedon], [Per_status]) VALUES (1031, N'Organization', N'suji', 5125, N'krish21@gmail.com', N'', N'23', N'Admin', NULL, CAST(N'2024-02-23' AS Date), NULL, NULL, N'Active')
SET IDENTITY_INSERT [dbo].[User_Mgt] OFF
GO
ALTER TABLE [dbo].[C_Room] ADD  DEFAULT (getdate()) FOR [Created_Date]
GO
ALTER TABLE [dbo].[Event_Reg] ADD  DEFAULT (getdate()) FOR [E_Sdate]
GO
ALTER TABLE [dbo].[Event_Reg] ADD  DEFAULT (getdate()) FOR [E_Edate]
GO
ALTER TABLE [dbo].[Report] ADD  DEFAULT (getdate()) FOR [date_column]
GO
ALTER TABLE [dbo].[User_Mgt] ADD  DEFAULT (getdate()) FOR [Createdon]
GO
ALTER TABLE [dbo].[User_Mgt] ADD  DEFAULT (getdate()) FOR [Updatedon]
GO
/****** Object:  StoredProcedure [dbo].[createusers]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[createusers]
    @User_Id INT,
    @User_Name varchar(255),
    @Mobile_Number BIGINT,
    @Email varchar(255),
    @Password varchar(255), -- Assuming password is stored as NVARCHAR
    @Person_type varchar(255),
    @Per_status varchar(255)
as
begin
 UPDATE User_Mgt 
    SET 
        [User_Name] = @User_Name,
        Mobile_Number = @Mobile_Number,
        Email = @Email,
        [Password]= @Password,
        Person_type = @Person_type,
        Per_status = @Per_status
    WHERE
        [User_Id] = @User_Id;
  end;
GO
/****** Object:  StoredProcedure [dbo].[selectevent]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectevent]
@E_Id INT 
as 
begin 
select * from Event_Reg
where 
E_id=@E_Id
end;
GO
/****** Object:  StoredProcedure [dbo].[selecteventt]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selecteventt]
@E_Id INT 
as 
begin 
select * from Event_Reg
where 
E_Id=@E_Id
end;
GO
/****** Object:  StoredProcedure [dbo].[SelectRoom]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[SelectRoom]
 @Room_Id INT
 as 
 begin 
 select * from C_Room
 where 
   Room_ID=@Room_Id
   end;
GO
/****** Object:  StoredProcedure [dbo].[selectsponcers]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[selectsponcers]
   @S_Id INT
as
begin
  select * from sponcer
  where 
  S_Id=@S_Id;
end;
GO
/****** Object:  StoredProcedure [dbo].[selectusers]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectusers]
  @User_Id INT
  as 
  begin
 select * from User_Mgt
 where
 [User_id] =@User_id;
 end;
GO
/****** Object:  StoredProcedure [dbo].[updateevent]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateevent]
@E_Id int,
@E_Name varchar(255),
@E_Description varchar(255),
@E_SDate date,
@E_EDate date,
@E_Venue varchar(255),
@E_LocationLink varchar(255),
@E_Type varchar(255),
@E_Mode varchar(255),
@E_Seat int,
@E_RegisterLink varchar(255),
@E_BannerImg varchar(255),
@E_Icon varchar(255),
@E_FloorMap varchar(255)
as
begin 
update Event_Reg 
set 
E_Name=@E_Name,
E_Description=@E_Description,
E_Sdate=@E_SDate,
E_Edate=@E_EDate,
E_Venue=@E_Venue,
E_LocationLink=@E_LocationLink,
E_Type=@E_Type,
E_Seat=@E_Seat,
E_RegisterLink=@E_RegisterLink,
E_BannerImg=@E_BannerImg
where
E_Id=@E_Id
end;
GO
/****** Object:  StoredProcedure [dbo].[updateroom]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateroom]
@Room_ID INT ,
@Name varchar(255),
@Description varchar(255),
@Venue varchar(255),
@Location varchar(255),
@Type varchar(255),
@Equipment varchar(255),
@Seat int,
@Room_Img varchar(255)
as
begin
Update C_Room set
  [Name]=@Name,
  [Description]=@Description,
  Event_Venue =@Venue,
  Location_Link=@Location,
  Event_type=@Type,
  Equipment=@Equipment,
  Seat=@Seat,
  Room_Img=@Room_Img
  WHERE 
    Room_ID=@Room_ID
  END;
GO
/****** Object:  StoredProcedure [dbo].[updatesponcer]    Script Date: 26-02-2024 13:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updatesponcer]
 @S_Id INT,
 @First_name varchar(255),
 @Last_name varchar(255),
 @Description varchar(255),
 @Website varchar(255),
 @Em varchar(255),
 @Phone BIGINT, 
 @Logo varchar(255)
 as
 begin
 UPDATE sponcer 
   SET 
      First_name = @First_name,
	  Last_name = @Last_name, 
	  Description = @Description,
	  Website = @Website, 
	  Email = @Em, 
	  Phone = @Phone,
	  Logo = @Logo 
	  WHERE
	  S_Id = @S_Id;
	  end;
GO
USE [master]
GO
ALTER DATABASE [EventManagement] SET  READ_WRITE 
GO
