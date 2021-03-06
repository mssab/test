USE [master]
GO
/****** Object:  Database [gate_grafik]    Script Date: 06.07.2018 11:03:40 ******/
CREATE DATABASE [gate_grafik]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gate_grafik', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_grafik.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gate_grafik_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_grafik_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gate_grafik] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gate_grafik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gate_grafik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gate_grafik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gate_grafik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gate_grafik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gate_grafik] SET ARITHABORT OFF 
GO
ALTER DATABASE [gate_grafik] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gate_grafik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gate_grafik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gate_grafik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gate_grafik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gate_grafik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gate_grafik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gate_grafik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gate_grafik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gate_grafik] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gate_grafik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gate_grafik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gate_grafik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gate_grafik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gate_grafik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gate_grafik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gate_grafik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gate_grafik] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gate_grafik] SET  MULTI_USER 
GO
ALTER DATABASE [gate_grafik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gate_grafik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gate_grafik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gate_grafik] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gate_grafik] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gate_grafik]
GO
/****** Object:  Table [dbo].[angebotsstatus]    Script Date: 06.07.2018 11:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[angebotsstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[angebot] [varchar](max) NULL,
 CONSTRAINT [PK_angebotsstatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deadlines]    Script Date: 06.07.2018 11:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deadlines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Bezeichnung] [varchar](max) NULL,
	[Deadline] [date] NULL,
	[Erledigt] [bit] NOT NULL,
	[Projekt_id] [int] NULL,
 CONSTRAINT [PK_Deadlines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kunden]    Script Date: 06.07.2018 11:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kunde] [varchar](max) NULL,
 CONSTRAINT [PK_Kunden] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 06.07.2018 11:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[passwort] [varchar](50) NULL,
	[rolle] [varchar](50) NULL,
	[last_login] [date] NULL,
	[anmeldename] [varchar](50) NULL,
	[projektleiter] [varchar](50) NULL,
 CONSTRAINT [PK_promotion_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mitarbeiter]    Script Date: 06.07.2018 11:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mitarbeiter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Mitarbeiter] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projekte]    Script Date: 06.07.2018 11:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projekte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kunde] [varchar](max) NULL,
	[Projektname] [varchar](max) NULL,
	[Beschreibung] [text] NULL,
	[Auftraggeber] [varchar](max) NULL,
	[Bearbeiter] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
	[Angebotsstatus] [varchar](max) NULL,
	[Verteiler] [varchar](max) NULL,
	[angelegt] [date] NULL,
	[Archiv] [bit] NOT NULL,
 CONSTRAINT [PK_projekte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 06.07.2018 11:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verteilerstatus]    Script Date: 06.07.2018 11:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verteilerstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[verteiler] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Deadlines] ADD  CONSTRAINT [DF_Deadlines_Erledigt]  DEFAULT ((0)) FOR [Erledigt]
GO
ALTER TABLE [dbo].[projekte] ADD  CONSTRAINT [DF_projekte_Archiv]  DEFAULT ((0)) FOR [Archiv]
GO
USE [master]
GO
ALTER DATABASE [gate_grafik] SET  READ_WRITE 
GO
