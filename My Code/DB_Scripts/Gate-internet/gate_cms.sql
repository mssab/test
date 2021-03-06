USE [master]
GO
/****** Object:  Database [gate_cms]    Script Date: 06.07.2018 11:02:54 ******/
CREATE DATABASE [gate_cms]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gate_cms', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_cms.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gate_cms_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_cms_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gate_cms] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gate_cms].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gate_cms] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gate_cms] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gate_cms] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gate_cms] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gate_cms] SET ARITHABORT OFF 
GO
ALTER DATABASE [gate_cms] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gate_cms] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gate_cms] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gate_cms] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gate_cms] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gate_cms] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gate_cms] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gate_cms] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gate_cms] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gate_cms] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gate_cms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gate_cms] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gate_cms] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gate_cms] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gate_cms] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gate_cms] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gate_cms] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gate_cms] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gate_cms] SET  MULTI_USER 
GO
ALTER DATABASE [gate_cms] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gate_cms] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gate_cms] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gate_cms] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gate_cms] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gate_cms]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 06.07.2018 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[account_id] [int] IDENTITY(0,1) NOT NULL,
	[username] [nvarchar](12) NOT NULL,
	[password] [nvarchar](12) NOT NULL,
	[role_id] [int] NOT NULL,
	[nickname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts_roles]    Script Date: 06.07.2018 11:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts_roles](
	[role_id] [int] IDENTITY(0,1) NOT NULL,
	[role_name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[events]    Script Date: 06.07.2018 11:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events](
	[event_id] [int] IDENTITY(0,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[event_name] [nvarchar](50) NOT NULL,
	[header] [bit] NOT NULL,
	[begrüßungstext] [bit] NOT NULL,
	[gastgeber] [bit] NOT NULL,
	[informationen] [bit] NOT NULL,
	[dreiblock] [bit] NOT NULL,
	[footer] [bit] NOT NULL,
	[url] [nvarchar](25) NOT NULL,
	[publish_id] [int] NOT NULL,
	[delete_flag] [bit] NOT NULL,
 CONSTRAINT [PK_events] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[events_modules]    Script Date: 06.07.2018 11:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events_modules](
	[module_id] [int] IDENTITY(0,1) NOT NULL,
	[module_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_events_modules] PRIMARY KEY CLUSTERED 
(
	[module_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[events_modules_data]    Script Date: 06.07.2018 11:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events_modules_data](
	[event_id] [int] NOT NULL,
	[module_id] [int] NOT NULL,
	[module_data] [nvarchar](max) NOT NULL,
	[module_data_order_id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[events_publish_status]    Script Date: 06.07.2018 11:02:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events_publish_status](
	[publish_id] [int] IDENTITY(0,1) NOT NULL,
	[publish_name] [nvarchar](25) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[accounts]  WITH CHECK ADD  CONSTRAINT [FK_accounts_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[accounts_roles] ([role_id])
GO
ALTER TABLE [dbo].[accounts] CHECK CONSTRAINT [FK_accounts_roles]
GO
ALTER TABLE [dbo].[events]  WITH CHECK ADD  CONSTRAINT [FK_events_accounts] FOREIGN KEY([account_id])
REFERENCES [dbo].[accounts] ([account_id])
GO
ALTER TABLE [dbo].[events] CHECK CONSTRAINT [FK_events_accounts]
GO
ALTER TABLE [dbo].[events]  WITH CHECK ADD  CONSTRAINT [FK_events_events] FOREIGN KEY([event_id])
REFERENCES [dbo].[events] ([event_id])
GO
ALTER TABLE [dbo].[events] CHECK CONSTRAINT [FK_events_events]
GO
USE [master]
GO
ALTER DATABASE [gate_cms] SET  READ_WRITE 
GO
