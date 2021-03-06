USE [master]
GO
/****** Object:  Database [Ducati]    Script Date: 06.07.2018 09:45:33 ******/
CREATE DATABASE [Ducati]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ducati', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Ducati.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ducati_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Ducati_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ducati] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ducati].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ducati] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ducati] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ducati] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ducati] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ducati] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ducati] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ducati] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ducati] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ducati] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ducati] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ducati] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ducati] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ducati] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ducati] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ducati] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ducati] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ducati] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ducati] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ducati] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ducati] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ducati] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ducati] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ducati] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ducati] SET  MULTI_USER 
GO
ALTER DATABASE [Ducati] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ducati] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ducati] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ducati] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Ducati] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Ducati]
GO
/****** Object:  Table [dbo].[Almeria_2018_Versendung]    Script Date: 06.07.2018 09:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almeria_2018_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
 CONSTRAINT [PK_Almeria_2018_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almeria_2018_Versendung_alle]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almeria_2018_Versendung_alle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Haendler] [varchar](max) NULL,
	[Haendler_Strasse] [varchar](max) NULL,
	[Haendler_PLZ] [varchar](max) NULL,
	[Haendler_Ort] [varchar](max) NULL,
	[Haendler_Bundesland] [varchar](max) NULL,
	[Haendler_Land] [varchar](max) NULL,
	[Haendler_Telefon] [varchar](max) NULL,
	[Haendler_Fax] [varchar](max) NULL,
	[Haendler_EMail] [varchar](max) NULL,
 CONSTRAINT [PK_Almeria_2018_Versendung_alle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almeria_2018_Versendung_Testfahrt]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almeria_2018_Versendung_Testfahrt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Testfahrzeug] [varchar](max) NULL,
	[Haendler] [varchar](max) NULL,
	[Haendler_Strasse] [varchar](max) NULL,
	[Haendler_PLZ] [varchar](max) NULL,
	[Haendler_Ort] [varchar](max) NULL,
	[Haendler_Bundesland] [varchar](max) NULL,
	[Haendler_Land] [varchar](max) NULL,
	[Haendler_Telefon] [varchar](max) NULL,
	[Haendler_Fax] [varchar](max) NULL,
	[Haendler_EMail] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
 CONSTRAINT [PK_Almeria_2018_Versendung_Testfahrt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almeria_2019_Warteliste]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almeria_2019_Warteliste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Rennstrecke] [varchar](max) NULL,
	[Gruppe] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Zeitpunkt] [varchar](max) NULL,
	[Datenschutz] [bit] NULL,
	[Einwilligung] [bit] NULL,
	[per_EMail] [bit] NULL,
	[per_Telefon] [bit] NULL,
 CONSTRAINT [PK_Almeria_2019_Warteliste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buchung]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buchung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Haendler_id] [int] NULL,
	[Datum] [date] NULL,
	[Bemerkung] [varchar](max) NULL,
	[Ansprechpartner] [varchar](max) NULL,
	[EMail] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buchung_intern]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buchung_intern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Haendler_ID] [int] NULL,
	[Trainings_ID] [int] NULL,
	[Plaetze] [int] NULL,
	[Status] [varchar](max) NULL,
 CONSTRAINT [PK_Buchung_intern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buchung_Positionen]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buchung_Positionen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Buchung_ID] [int] NULL,
	[Trainings_ID] [int] NULL,
	[Plaetze] [int] NULL,
	[Reserviert] [int] NULL,
	[Gebucht] [int] NULL,
 CONSTRAINT [PK_Buchung_Positionen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ducati_Haendler]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ducati_Haendler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Haendlernummer] [int] NULL,
	[Name] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Bundesland] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Fax] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[abgefragt] [bit] NOT NULL,
	[Passwort] [varchar](50) NULL,
 CONSTRAINT [PK_Ducati_Haendler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ducati_Haendler_Abgleichsliste]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ducati_Haendler_Abgleichsliste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Haendlernummer] [int] NULL,
	[Name] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Bundesland] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Fax] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
 CONSTRAINT [PK_Ducati_Haendler_Abgleichsliste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ducati_Kontakt]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ducati_Kontakt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Kommentar] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Zeitpunkt] [varchar](max) NULL,
	[Datenschutz] [bit] NULL,
	[Einwilligung] [bit] NULL,
	[per_EMail] [bit] NULL,
	[per_Telefon] [bit] NULL,
 CONSTRAINT [PK_Ducati_Kontakt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ducati_Redbull]    Script Date: 06.07.2018 09:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ducati_Redbull](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[gutscheincode] [varchar](max) NULL,
 CONSTRAINT [PK_Ducati_Redbull] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMails_Shop]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMails_Shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_EMails_Shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haendler_Rennstrecke]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haendler_Rennstrecke](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[rennstrecke] [varchar](max) NULL,
	[rennstrecke2] [varchar](max) NULL,
 CONSTRAINT [PK_Haendler_Rennstrecke] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletter]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newsletter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entity_id] [int] NULL,
	[email] [varchar](max) NULL,
	[abgemeldet] [bit] NULL,
	[hash] [varchar](max) NULL,
	[shop] [bit] NOT NULL,
 CONSTRAINT [PK_Newsletter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[newsletter_ducati4u]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newsletter_ducati4u](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_newsletter_ducati4u] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rennstreckenvoting]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rennstreckenvoting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Rennstrecke] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
 CONSTRAINT [PK_Rennstreckenvoting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rennstreckenvoting_Warteliste]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rennstreckenvoting_Warteliste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Hockenheim] [bit] NULL,
	[Nuerburgring] [bit] NULL,
	[Sachsenring] [bit] NULL,
	[Bilster_Berg] [bit] NULL,
	[Oschersleben] [bit] NULL,
	[Lausitzring] [bit] NULL,
	[Almeria] [bit] NULL,
 CONSTRAINT [PK_Rennstreckenvoting_Warteliste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainings]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Veranstaltung] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Preis] [varchar](max) NULL,
	[Gruppe] [varchar](max) NULL,
	[Plaetze] [int] NULL,
	[Ablauf] [date] NULL,
 CONSTRAINT [PK_Trainings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warteliste_Nuernburgring]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warteliste_Nuernburgring](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EMail] [varchar](max) NULL,
 CONSTRAINT [PK_Warteliste_Nuernburgring] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Anzahl_Anfragen]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Anzahl_Anfragen]
AS
SELECT        SUM(dbo.Buchung_Positionen.Plaetze) AS Anfrage_Menge, dbo.Buchung.Haendler_id, dbo.Buchung_Positionen.Trainings_ID
FROM            dbo.Buchung_Positionen INNER JOIN
                         dbo.Buchung ON dbo.Buchung_Positionen.Buchung_ID = dbo.Buchung.id
GROUP BY dbo.Buchung.Haendler_id, dbo.Buchung_Positionen.Trainings_ID
GO
/****** Object:  View [dbo].[Anzahl_Gebucht]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Anzahl_Gebucht]
AS
SELECT        SUM(Plaetze) AS Anzahl_Gebucht, Haendler_ID, Trainings_ID
FROM            dbo.Buchung_intern
GROUP BY Haendler_ID, Trainings_ID, Status
HAVING        (Status = 'Gebucht')
GO
/****** Object:  View [dbo].[Anzahl_Reservierungen]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Anzahl_Reservierungen]
AS
SELECT        SUM(Plaetze) AS Anzahl_Reservierungen, Haendler_ID, Trainings_ID
FROM            dbo.Buchung_intern
GROUP BY Haendler_ID, Trainings_ID, Status
HAVING        (Status = 'Reserviert')
GO
/****** Object:  View [dbo].[Gesamtuebersicht]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtuebersicht]
AS
SELECT        dbo.Anzahl_Anfragen.Anfrage_Menge, dbo.Anzahl_Reservierungen.Anzahl_Reservierungen, dbo.Anzahl_Gebucht.Anzahl_Gebucht, 
                         dbo.Anzahl_Anfragen.Anfrage_Menge - dbo.Anzahl_Reservierungen.Anzahl_Reservierungen - dbo.Anzahl_Gebucht.Anzahl_Gebucht AS Rest, 
                         dbo.Anzahl_Anfragen.Haendler_id, dbo.Anzahl_Anfragen.Trainings_ID
FROM            dbo.Anzahl_Anfragen LEFT OUTER JOIN
                         dbo.Anzahl_Gebucht ON dbo.Anzahl_Anfragen.Haendler_id = dbo.Anzahl_Gebucht.Haendler_ID AND 
                         dbo.Anzahl_Anfragen.Trainings_ID = dbo.Anzahl_Gebucht.Trainings_ID LEFT OUTER JOIN
                         dbo.Anzahl_Reservierungen ON dbo.Anzahl_Anfragen.Haendler_id = dbo.Anzahl_Reservierungen.Haendler_ID AND 
                         dbo.Anzahl_Anfragen.Trainings_ID = dbo.Anzahl_Reservierungen.Trainings_ID
GO
/****** Object:  View [dbo].[Admin_Tool_Gebucht]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Admin_Tool_Gebucht]
AS
SELECT        SUM(Plaetze) AS Gebucht, Trainings_ID
FROM            dbo.Buchung_intern
WHERE        (Status = 'Gebucht')
GROUP BY Trainings_ID
GO
/****** Object:  View [dbo].[Admin_Tool_Reservierungen]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Admin_Tool_Reservierungen]
AS
SELECT        SUM(Plaetze) AS Reservierungen, Trainings_ID
FROM            dbo.Buchung_intern
WHERE        (Status = 'Reserviert')
GROUP BY Trainings_ID
GO
/****** Object:  View [dbo].[Anzahl_Buchungen]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Anzahl_Buchungen]
AS
SELECT        COUNT(id) AS Buchungen, Trainings_ID
FROM            dbo.Buchung_Positionen
GROUP BY Trainings_ID
GO
/****** Object:  View [dbo].[Haendler_Export]    Script Date: 06.07.2018 09:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Haendler_Export]
AS
SELECT        dbo.Ducati_Haendler.Haendlernummer, dbo.Ducati_Haendler.Name, dbo.Trainings.Veranstaltung, dbo.Trainings.Datum, dbo.Trainings.Preis, dbo.Trainings.Gruppe, 
                         dbo.Buchung_Positionen.Plaetze, dbo.Buchung.Bemerkung, dbo.Buchung.Ansprechpartner, dbo.Buchung.EMail
FROM            dbo.Buchung INNER JOIN
                         dbo.Buchung_Positionen ON dbo.Buchung.id = dbo.Buchung_Positionen.Buchung_ID INNER JOIN
                         dbo.Ducati_Haendler ON dbo.Buchung.Haendler_id = dbo.Ducati_Haendler.id INNER JOIN
                         dbo.Trainings ON dbo.Buchung_Positionen.Trainings_ID = dbo.Trainings.id
WHERE        (dbo.Buchung.id > 25)
GO
ALTER TABLE [dbo].[Ducati_Haendler] ADD  CONSTRAINT [DF_Ducati_Haendler_abgefragt]  DEFAULT ((0)) FOR [abgefragt]
GO
ALTER TABLE [dbo].[Newsletter] ADD  CONSTRAINT [DF_Newsletter_shop]  DEFAULT ((0)) FOR [shop]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Buchung_intern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Admin_Tool_Gebucht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Admin_Tool_Gebucht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Buchung_intern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 217
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Admin_Tool_Reservierungen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Admin_Tool_Reservierungen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Buchung_Positionen"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 217
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buchung"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 118
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Anfragen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Anfragen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Buchung_Positionen"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 209
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Buchungen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Buchungen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Buchung_intern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Gebucht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Gebucht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Buchung_intern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 207
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Reservierungen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_Reservierungen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Anzahl_Anfragen"
            Begin Extent = 
               Top = 16
               Left = 272
               Bottom = 128
               Right = 445
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Anzahl_Gebucht"
            Begin Extent = 
               Top = 15
               Left = 18
               Bottom = 127
               Right = 193
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Anzahl_Reservierungen"
            Begin Extent = 
               Top = 14
               Left = 546
               Bottom = 126
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Buchung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 233
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buchung_Positionen"
            Begin Extent = 
               Top = 16
               Left = 482
               Bottom = 243
               Right = 652
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ducati_Haendler"
            Begin Extent = 
               Top = 17
               Left = 273
               Bottom = 256
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Trainings"
            Begin Extent = 
               Top = 6
               Left = 682
               Bottom = 239
               Right = 852
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Haendler_Export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Haendler_Export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Haendler_Export'
GO
USE [master]
GO
ALTER DATABASE [Ducati] SET  READ_WRITE 
GO
