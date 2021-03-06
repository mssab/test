USE [master]
GO
/****** Object:  Database [gate_lager]    Script Date: 06.07.2018 11:05:08 ******/
CREATE DATABASE [gate_lager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gate_lager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_lager.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gate_lager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_lager_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gate_lager] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gate_lager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gate_lager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gate_lager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gate_lager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gate_lager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gate_lager] SET ARITHABORT OFF 
GO
ALTER DATABASE [gate_lager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gate_lager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gate_lager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gate_lager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gate_lager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gate_lager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gate_lager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gate_lager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gate_lager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gate_lager] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gate_lager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gate_lager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gate_lager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gate_lager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gate_lager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gate_lager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gate_lager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gate_lager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gate_lager] SET  MULTI_USER 
GO
ALTER DATABASE [gate_lager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gate_lager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gate_lager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gate_lager] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gate_lager] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gate_lager]
GO
/****** Object:  Table [dbo].[artikel]    Script Date: 06.07.2018 11:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[artikel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Version] [varchar](50) NULL,
	[Gewicht] [money] NULL,
	[Verpackungseinheit] [varchar](50) NULL,
	[Groesse] [varchar](255) NULL,
	[Art] [varchar](255) NULL,
	[MHD] [date] NULL,
	[Zusatz] [varchar](255) NULL,
	[Stellplatz] [varchar](255) NULL,
	[Kunden_id] [int] NULL,
 CONSTRAINT [PK_ls_artikel_1__118] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kunden]    Script Date: 06.07.2018 11:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kunde] [varchar](max) NULL,
	[Kunden_Nr] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](50) NULL,
	[Ort] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lieferschein]    Script Date: 06.07.2018 11:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lieferschein](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](50) NULL,
	[Ort] [varchar](max) NULL,
	[Land] [varchar](max) NULL,
	[versand_geplant] [date] NULL,
	[versand_erfolgt] [date] NULL,
	[Kunde] [int] NULL,
	[Projektnummer] [varchar](max) NULL,
	[Jobnummer] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[eingang] [date] NULL,
	[angelegt_durch] [varchar](max) NULL,
 CONSTRAINT [PK_lieferschein] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lieferschein_position]    Script Date: 06.07.2018 11:05:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lieferschein_position](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lieferschein_id] [int] NULL,
	[artikel_id] [int] NULL,
	[menge] [int] NULL,
 CONSTRAINT [PK_lieferschein_position] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [gate_lager] SET  READ_WRITE 
GO
