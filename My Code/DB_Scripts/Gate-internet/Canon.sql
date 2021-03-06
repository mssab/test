USE [master]
GO
/****** Object:  Database [Canon]    Script Date: 06.07.2018 09:43:30 ******/
CREATE DATABASE [Canon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Canon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Canon.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Canon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Canon_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Canon] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Canon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Canon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Canon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Canon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Canon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Canon] SET ARITHABORT OFF 
GO
ALTER DATABASE [Canon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Canon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Canon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Canon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Canon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Canon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Canon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Canon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Canon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Canon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Canon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Canon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Canon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Canon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Canon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Canon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Canon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Canon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Canon] SET  MULTI_USER 
GO
ALTER DATABASE [Canon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Canon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Canon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Canon] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Canon] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Canon]
GO
/****** Object:  Table [dbo].[administration]    Script Date: 06.07.2018 09:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NOT NULL,
	[nachname] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
 CONSTRAINT [PK_administration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Canon_Einladung]    Script Date: 06.07.2018 09:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canon_Einladung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Anmeldung_Anrede] [varchar](50) NULL,
	[Anmeldung_Vorname] [varchar](max) NULL,
	[Anmeldung_Nachname] [varchar](max) NULL,
	[Anmeldung_Firma] [varchar](max) NULL,
	[Anmeldung_Bereich] [varchar](max) NULL,
	[Anmeldung_Strasse] [varchar](max) NULL,
	[Anmeldung_Strasse_Nummer] [varchar](max) NULL,
	[Anmeldung_PLZ] [varchar](max) NULL,
	[Anmeldung_Ort] [varchar](max) NULL,
	[Anmeldung_Telefon] [varchar](max) NULL,
	[Anmeldung_Fax] [varchar](max) NULL,
	[Anmeldung_Mobil] [varchar](max) NULL,
	[Anmeldung_EMail] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Versendet] [bit] NOT NULL,
	[Reiseplanung] [varchar](max) NOT NULL,
	[Reiseplanung_Abreiseort] [varchar](max) NULL,
	[Reiseplanung_Rueckreiseort] [varchar](max) NULL,
	[Reiseplanung_Transportmittel] [varchar](max) NULL,
	[Hotel_Bedarf] [varchar](max) NULL,
	[Hotel_von] [varchar](max) NULL,
	[Hotel_bis] [varchar](max) NULL,
	[Shuttle] [varchar](max) NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
	[Einladung_Quelle] [varchar](max) NULL,
	[Code_vergeben] [bit] NULL,
	[Terminal_Ankunft] [varchar](max) NULL,
	[Transfernummer_Ankunft] [varchar](max) NULL,
	[Transferzeit_Ankunft] [varchar](max) NULL,
	[Terminal_Abflug] [varchar](max) NULL,
	[Transfernummer_Abflug] [varchar](max) NULL,
	[Transferzeit_Abflug] [varchar](max) NULL,
 CONSTRAINT [PK_Canon_Einladung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Canon_Feedback]    Script Date: 06.07.2018 09:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canon_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Einladung_id] [int] NULL,
	[Ablauf] [int] NULL,
	[Inhalte] [int] NULL,
	[Inhalte_business] [int] NULL,
	[Neuheiten] [int] NULL,
	[Rahmenprogramm] [int] NULL,
	[Catering] [int] NULL,
	[Reiseorga] [int] NULL,
	[Veranstaltungen] [int] NULL,
	[Verbesserungsvorschlag] [text] NULL,
	[Feedback_erfogreich] [varchar](max) NULL,
	[Feedback_datum] [datetime] NULL,
 CONSTRAINT [PK_Canon_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_login]    Script Date: 06.07.2018 09:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[Personalnummer] [varchar](50) NULL,
	[Kostenstelle] [varchar](50) NULL,
	[JWB_2012_2013_alt] [bit] NULL,
	[SKO_2013] [bit] NULL,
	[rueckblick_sko_2013] [bit] NULL,
	[ibiza_2013] [bit] NULL,
	[las_vegas_2013] [bit] NULL,
	[JWB_2013_2014] [bit] NULL,
	[JWB_2012_2013] [bit] NULL,
	[SKO_2014] [bit] NOT NULL,
	[JWB_2014_2015] [bit] NOT NULL,
	[Rueckblicke] [bit] NOT NULL,
	[club_2014] [bit] NOT NULL,
	[topteam_2014] [bit] NOT NULL,
	[SKO_2015] [bit] NOT NULL,
	[club_2015] [bit] NOT NULL,
	[topteam_2015] [bit] NOT NULL,
	[JWB_2015_2016] [bit] NOT NULL,
	[SKO_2016] [bit] NOT NULL,
	[club_2016] [bit] NOT NULL,
	[topteam_2016] [bit] NOT NULL,
	[JWB_2016_2017] [bit] NOT NULL,
 CONSTRAINT [PK_enterprise_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versendung_STD]    Script Date: 06.07.2018 09:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versendung_STD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
 CONSTRAINT [PK_Versendung_STD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Canon_Einladung] ADD  CONSTRAINT [DF_Canon_Einladung_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Canon_Einladung] ADD  CONSTRAINT [DF_Canon_Einladung_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[Canon_Einladung] ADD  CONSTRAINT [DF_Canon_Einladung_Absage]  DEFAULT ((0)) FOR [Versendet]
GO
ALTER TABLE [dbo].[Canon_Einladung] ADD  CONSTRAINT [DF_Canon_Einladung_Warteliste]  DEFAULT ((0)) FOR [Reiseplanung]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2014]  DEFAULT ((0)) FOR [SKO_2014]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_JWB_2014_2015]  DEFAULT ((0)) FOR [JWB_2014_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_Rueckblicke]  DEFAULT ((0)) FOR [Rueckblicke]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_club_2014]  DEFAULT ((0)) FOR [club_2014]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_topteam_2014]  DEFAULT ((0)) FOR [topteam_2014]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2015]  DEFAULT ((0)) FOR [SKO_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_club_2015]  DEFAULT ((0)) FOR [club_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_topteam_2015]  DEFAULT ((0)) FOR [topteam_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_JWB_2015_2016]  DEFAULT ((0)) FOR [JWB_2015_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2016]  DEFAULT ((0)) FOR [SKO_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_club_2016]  DEFAULT ((0)) FOR [club_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_topteam_2016]  DEFAULT ((0)) FOR [topteam_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_JWB_2016_2017]  DEFAULT ((0)) FOR [JWB_2016_2017]
GO
USE [master]
GO
ALTER DATABASE [Canon] SET  READ_WRITE 
GO
