USE [master]
GO
/****** Object:  Database [gatekeeper]    Script Date: 06.07.2018 11:06:56 ******/
CREATE DATABASE [gatekeeper]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gatekeeper', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gatekeeper.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gatekeeper_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gatekeeper_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gatekeeper] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gatekeeper].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gatekeeper] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gatekeeper] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gatekeeper] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gatekeeper] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gatekeeper] SET ARITHABORT OFF 
GO
ALTER DATABASE [gatekeeper] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gatekeeper] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gatekeeper] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gatekeeper] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gatekeeper] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gatekeeper] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gatekeeper] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gatekeeper] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gatekeeper] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gatekeeper] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gatekeeper] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gatekeeper] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gatekeeper] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gatekeeper] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gatekeeper] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gatekeeper] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gatekeeper] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gatekeeper] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gatekeeper] SET  MULTI_USER 
GO
ALTER DATABASE [gatekeeper] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gatekeeper] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gatekeeper] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gatekeeper] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gatekeeper] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gatekeeper]
GO
/****** Object:  Table [dbo].[dortmunder_kreis]    Script Date: 06.07.2018 11:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dortmunder_kreis](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma] [varchar](max) NULL,
	[filiale] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[pate] [varchar](max) NULL,
	[tischnummer] [varchar](max) NULL,
	[platznummer] [varchar](max) NULL,
	[code] [varchar](max) NULL,
	[anwesend] [bit] NOT NULL,
	[check_in] [varchar](max) NULL,
 CONSTRAINT [PK_dortmunder_kreis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[dortmunder_kreis] ADD  CONSTRAINT [DF_dortmunder_kreis_anwesend]  DEFAULT ((0)) FOR [anwesend]
GO
USE [master]
GO
ALTER DATABASE [gatekeeper] SET  READ_WRITE 
GO
