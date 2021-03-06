USE [master]
GO
/****** Object:  Database [commentor]    Script Date: 6/11/2015 3:28:20 PM ******/
CREATE DATABASE [commentor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'commentor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\commentor.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'commentor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\commentor_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [commentor] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [commentor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [commentor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [commentor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [commentor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [commentor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [commentor] SET ARITHABORT OFF 
GO
ALTER DATABASE [commentor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [commentor] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [commentor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [commentor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [commentor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [commentor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [commentor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [commentor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [commentor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [commentor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [commentor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [commentor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [commentor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [commentor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [commentor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [commentor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [commentor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [commentor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [commentor] SET RECOVERY FULL 
GO
ALTER DATABASE [commentor] SET  MULTI_USER 
GO
ALTER DATABASE [commentor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [commentor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [commentor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [commentor] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'commentor', N'ON'
GO
USE [commentor]
GO
/****** Object:  Table [dbo].[thread]    Script Date: 6/11/2015 3:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[thread](
	[threadID] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](20) NULL,
	[title] [varchar](500) NULL,
	[content] [text] NULL,
	[post_date] [date] NULL,
	[popularity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[threadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userComments]    Script Date: 6/11/2015 3:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userComments](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](20) NULL,
	[comment] [text] NULL,
	[post_date] [date] NULL,
	[threadID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/11/2015 3:28:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[user_name] [varchar](20) NOT NULL,
	[user_pass] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[thread] ON 

INSERT [dbo].[thread] ([threadID], [user_name], [title], [content], [post_date], [popularity]) VALUES (1, N'session.user_name', N'Form.title', N'Form.content', CAST(0x0D3A0B00 AS Date), 0)
INSERT [dbo].[thread] ([threadID], [user_name], [title], [content], [post_date], [popularity]) VALUES (2, N'mlemon', N'Test', N'this better work', CAST(0x0D3A0B00 AS Date), 0)
INSERT [dbo].[thread] ([threadID], [user_name], [title], [content], [post_date], [popularity]) VALUES (3, N'mlemon', N'vader', N'http://www.nooooooooooooooo.com/vader.jpg/', CAST(0x0D3A0B00 AS Date), 0)
INSERT [dbo].[thread] ([threadID], [user_name], [title], [content], [post_date], [popularity]) VALUES (4, N'mlemon', N'Luke Skywalker', N'http://cdnvideo.dolimg.com/cdn_assets/870b4153577cfe1d51a6a15976a101f3b4f77d9e.jpg/', CAST(0x0D3A0B00 AS Date), 0)
INSERT [dbo].[thread] ([threadID], [user_name], [title], [content], [post_date], [popularity]) VALUES (5, N'mlemon', N'r2d2', N'http://img2.wikia.nocookie.net/__cb20090524204255/starwars/images/1/1a/R2d2.jpg', CAST(0x0D3A0B00 AS Date), 0)
INSERT [dbo].[thread] ([threadID], [user_name], [title], [content], [post_date], [popularity]) VALUES (6, N'mlemon', N'C-3PO', N'http://cdn4.dualshockers.com/wp-content/uploads/2015/06/c3po.jpg', CAST(0x0D3A0B00 AS Date), 0)
INSERT [dbo].[thread] ([threadID], [user_name], [title], [content], [post_date], [popularity]) VALUES (7, N'', N'Hey', N'hacks', CAST(0x0D3A0B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[thread] OFF
INSERT [dbo].[users] ([user_name], [user_pass]) VALUES (N'sysadmin', N'SYSADMIN')
INSERT [dbo].[users] ([user_name], [user_pass]) VALUES (N'mlemon', N'1')
INSERT [dbo].[users] ([user_name], [user_pass]) VALUES (N'sc', N'1')
INSERT [dbo].[users] ([user_name], [user_pass]) VALUES (N'johnDoe', N'1')
ALTER TABLE [dbo].[userComments]  WITH CHECK ADD FOREIGN KEY([threadID])
REFERENCES [dbo].[thread] ([threadID])
GO
USE [master]
GO
ALTER DATABASE [commentor] SET  READ_WRITE 
GO
