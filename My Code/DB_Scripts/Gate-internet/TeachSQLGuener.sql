USE [master]
GO
/****** Object:  Database [TeachSQLGuener]    Script Date: 06.07.2018 11:21:21 ******/
CREATE DATABASE [TeachSQLGuener]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TeachSQLGuener', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\TeachSQLGuener.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TeachSQLGuener_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\TeachSQLGuener_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TeachSQLGuener] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TeachSQLGuener].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TeachSQLGuener] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET ARITHABORT OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TeachSQLGuener] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TeachSQLGuener] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TeachSQLGuener] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TeachSQLGuener] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TeachSQLGuener] SET  MULTI_USER 
GO
ALTER DATABASE [TeachSQLGuener] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TeachSQLGuener] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TeachSQLGuener] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TeachSQLGuener] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TeachSQLGuener] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TeachSQLGuener]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 06.07.2018 11:21:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BTest]    Script Date: 06.07.2018 11:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[jaodernein] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 06.07.2018 11:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](60) NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Genre] [nvarchar](30) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Rating] [nvarchar](5) NULL,
	[Dust] [bit] NULL,
 CONSTRAINT [PK_dbo.Movies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[standort]    Script Date: 06.07.2018 11:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[standort](
	[ID] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[subtitle] [nvarchar](max) NULL,
	[timelapse] [nvarchar](max) NOT NULL,
	[brand] [nvarchar](max) NULL,
	[type] [nvarchar](max) NULL,
	[latitude] [nvarchar](max) NOT NULL,
	[longitude] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[gallery] [nvarchar](max) NULL,
	[deeplink] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versandfirmen]    Script Date: 06.07.2018 11:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versandfirmen](
	[FirmenNr] [int] IDENTITY(1,1) NOT NULL,
	[Firma] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
 CONSTRAINT [PK_Versandfirmen] PRIMARY KEY CLUSTERED 
(
	[FirmenNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TeachSQLGuener] SET  READ_WRITE 
GO
