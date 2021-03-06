USE [master]
GO
/****** Object:  Database [kabeldeutschland]    Script Date: 06.07.2018 11:08:54 ******/
CREATE DATABASE [kabeldeutschland]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kabeldeutschland', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kabeldeutschland.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kabeldeutschland_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kabeldeutschland_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kabeldeutschland] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kabeldeutschland].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kabeldeutschland] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kabeldeutschland] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kabeldeutschland] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kabeldeutschland] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kabeldeutschland] SET ARITHABORT OFF 
GO
ALTER DATABASE [kabeldeutschland] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kabeldeutschland] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kabeldeutschland] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kabeldeutschland] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kabeldeutschland] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kabeldeutschland] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kabeldeutschland] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kabeldeutschland] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kabeldeutschland] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kabeldeutschland] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kabeldeutschland] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kabeldeutschland] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kabeldeutschland] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kabeldeutschland] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kabeldeutschland] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kabeldeutschland] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kabeldeutschland] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kabeldeutschland] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kabeldeutschland] SET  MULTI_USER 
GO
ALTER DATABASE [kabeldeutschland] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kabeldeutschland] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kabeldeutschland] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kabeldeutschland] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [kabeldeutschland] SET DELAYED_DURABILITY = DISABLED 
GO
USE [kabeldeutschland]
GO
/****** Object:  Table [dbo].[enterprise_login]    Script Date: 06.07.2018 11:08:54 ******/
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
/****** Object:  Table [dbo].[Enterprise_SKO_2016]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[tagung] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[Ausweisart] [varchar](255) NULL,
	[Ausweisnummer] [varchar](255) NULL,
	[gueltig_bis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [bit] NULL,
	[handicap_text] [text] NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[absage_grund] [text] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[flugnummer_ankunft] [varchar](255) NULL,
	[flugnummer_abflug] [varchar](255) NULL,
	[bahnhof] [varchar](255) NULL,
	[ankunftszeit] [varchar](255) NULL,
	[abfahrtszeit] [varchar](255) NULL,
	[shuttle_01_06_2015] [varchar](255) NULL,
	[shuttle_02_06_2015] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[boarding] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[Hotel] [varchar](max) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[anmeldung_frei] [bit] NULL,
	[TeilnahmeTyp] [varchar](max) NULL,
	[Zimmerwert] [decimal](2, 1) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Hotelkontingente]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Hotelkontingente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hotel] [varchar](max) NULL,
	[Plaetze] [int] NULL,
	[Reserve] [int] NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016_Hotelkontingente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_1_VL_SME]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_1_VL_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_1_VL_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_2_Account_Manager_SME]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_2_Account_Manager_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_2_Account_Manager_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_3_Account_Manager_New_Business_SME]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_3_Account_Manager_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_3_Account_Manager_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_4_VL_Fachvertrieb_SME]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_4_VL_Fachvertrieb_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_4_VL_Fachvertrieb_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_York_2016]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_York_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[ESTA] [bit] NULL,
	[Riesenrad] [bit] NULL,
	[whatsapp] [bit] NULL,
	[whatsappnummer] [varchar](max) NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl_1] [varchar](max) NULL,
	[programm_auswahl_1_alternative] [varchar](max) NULL,
	[programm_auswahl_2] [varchar](max) NULL,
	[programm_auswahl_2_alternative] [varchar](max) NULL,
	[programm_auswahl_3] [varchar](max) NULL,
	[programm_auswahl_3_alternative] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_New_York_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_York_2016_Plaetze]    Script Date: 06.07.2018 11:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_York_2016_Plaetze](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Programm] [varchar](max) NULL,
	[Plaetze] [int] NULL,
 CONSTRAINT [PK_New_York_2016_Plaetze] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wien_2016]    Script Date: 06.07.2018 11:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wien_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[schiffstauglich] [bit] NULL,
	[Riesenrad] [bit] NULL,
	[whatsapp] [bit] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Wien_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
USE [master]
GO
ALTER DATABASE [kabeldeutschland] SET  READ_WRITE 
GO
