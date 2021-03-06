USE [master]
GO
/****** Object:  Database [ewe]    Script Date: 06.07.2018 09:50:50 ******/
CREATE DATABASE [ewe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ewe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ewe.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ewe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ewe_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ewe] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ewe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ewe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ewe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ewe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ewe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ewe] SET ARITHABORT OFF 
GO
ALTER DATABASE [ewe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ewe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ewe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ewe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ewe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ewe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ewe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ewe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ewe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ewe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ewe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ewe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ewe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ewe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ewe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ewe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ewe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ewe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ewe] SET  MULTI_USER 
GO
ALTER DATABASE [ewe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ewe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ewe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ewe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ewe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ewe]
GO
/****** Object:  User [EWE_DB_User]    Script Date: 06.07.2018 09:50:51 ******/
CREATE USER [EWE_DB_User] FOR LOGIN [EWE_DB_User] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EWE_DB_User]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [EWE_DB_User]
GO
/****** Object:  Table [dbo].[administration_login]    Script Date: 06.07.2018 09:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administration_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
 CONSTRAINT [PK_administration_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Business_Forum_2016_Anmeldungen]    Script Date: 06.07.2018 09:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business_Forum_2016_Anmeldungen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](max) NULL,
	[Unternehmen] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[Hausnummer] [varchar](50) NULL,
	[PLZ] [varchar](50) NULL,
	[Ort] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Location] [varchar](max) NULL,
	[IP_Adresse] [varchar](50) NULL,
	[Datum] [varchar](max) NULL,
	[gemeldet_von] [varchar](max) NULL,
	[Telefonnummer] [varchar](max) NULL,
 CONSTRAINT [PK_Business_Forum_2016_Anmeldungen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Business_Forum_2016_Reminder]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business_Forum_2016_Reminder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
 CONSTRAINT [PK_Business_Forum_2016_Reminder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[business_forum_administration]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[business_forum_administration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
 CONSTRAINT [PK_business_forum_administration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_2016_terminanfragen]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2016_terminanfragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Position] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefonnummer] [varchar](max) NULL,
	[Mobilfunknummer] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Termin] [bit] NULL,
	[Datum] [varchar](max) NULL,
	[Uhrzeit] [varchar](max) NULL,
	[Termin_Bemerkung] [text] NULL,
	[Tickets] [bit] NULL,
	[Anzahl] [int] NULL,
	[Tickets_Bemerkung] [text] NULL,
	[Zeitpunkt] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
 CONSTRAINT [PK_cebit_2016_terminanfragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_2016_tickets]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2016_tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[stadt] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[telefonnummer] [varchar](max) NULL,
	[firma] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[interne_ID] [varchar](max) NULL,
	[ticket] [varchar](max) NULL,
	[besitzer] [int] NULL,
	[oberbesitzer] [int] NULL,
	[datum_versendung] [varchar](max) NULL,
	[versendet] [bit] NOT NULL,
 CONSTRAINT [PK_cebit_2016_tickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_2016_tickets_login]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2016_tickets_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[passwort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_cebit_2016_tickets_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_2016_versendung]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2016_versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Firma] [varchar](max) NULL,
	[Kundenklasse] [varchar](50) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Besitzer] [varchar](max) NULL,
	[Oberbesitzer] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Link_genutzt] [bit] NULL,
	[Anzahl_Besuche] [int] NULL,
	[letzter_Besuch] [varchar](max) NULL,
 CONSTRAINT [PK_cebit_2016_versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_login]    Script Date: 06.07.2018 09:50:52 ******/
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
	[SKO_2016] [bit] NOT NULL,
	[SKO_2017] [bit] NOT NULL,
	[rueckblicke] [bit] NULL,
 CONSTRAINT [PK_enterprise_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[Vorname] [varchar](255) NULL,
	[Nachname] [varchar](255) NULL,
	[EMail] [varchar](255) NULL,
	[Abteilungsbezeichnung] [varchar](255) NULL,
	[Abteilungskuerzel] [varchar](255) NULL,
	[Teilnahme] [bit] NULL,
	[Zimmer] [bit] NULL,
	[Zimmerpartner] [varchar](255) NULL,
	[Bemerkung] [text] NULL,
	[Anmeldungszeitpunkt] [varchar](255) NULL,
	[Anmeldung_erfolgt] [bit] NULL,
	[Hotel] [varchar](255) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Feedback]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[GK_Portal] [int] NULL,
	[Portal_Nutzung] [int] NULL,
	[Portal_gefehlt] [text] NULL,
	[Portal_Anmerkung] [text] NULL,
	[Part1] [bit] NULL,
	[Veranstaltung_gefallen] [int] NULL,
	[Veranstaltung_Agenda] [int] NULL,
	[Veranstaltung_Informationsgehalt] [int] NULL,
	[Veranstaltung_Ort] [int] NULL,
	[Veranstaltung_Rahmen] [int] NULL,
	[Veranstaltung_Akustik] [int] NULL,
	[Veranstaltung_Verpflegung] [int] NULL,
	[Veranstaltung_Anmerkung] [text] NULL,
	[Part2] [bit] NULL,
	[Ludwig_Kohnen_Vortrag] [int] NULL,
	[Ludwig_Kohnen_Relevanz] [int] NULL,
	[Ludwig_Kohnen_Botschaft] [int] NULL,
	[Ludwig_Kohnen_Orientierung] [int] NULL,
	[Ludwig_Kohnen_gefehlt] [text] NULL,
	[Ludwig_Kohnen_Anmerkung] [text] NULL,
	[Part3] [bit] NULL,
	[Kay_Fruechtling_Vortrag] [int] NULL,
	[Kay_Fruechtling_Relevanz] [int] NULL,
	[Kay_Fruechtling_Botschaft] [int] NULL,
	[Kay_Fruechtling_Orientierung] [int] NULL,
	[Kay_Fruechtling_gefehlt] [text] NULL,
	[Kay_Fruechtling_Anmerkung] [text] NULL,
	[Part4] [bit] NULL,
	[Michael_Heidkamp_Vortrag] [int] NULL,
	[Michael_Heidkamp_Relevanz] [int] NULL,
	[Michael_Heidkamp_Botschaft] [int] NULL,
	[Michael_Heidkamp_Orientierung] [int] NULL,
	[Michael_Heidkamp_gefehlt] [text] NULL,
	[Michael_Heidkamp_Anmerkung] [text] NULL,
	[Part5] [bit] NULL,
	[Michael_Rossie_Vortrag] [int] NULL,
	[Michael_Rossie_Relevanz] [int] NULL,
	[Michael_Rossie_Mitnahme] [int] NULL,
	[Michael_Rossie_Anmerkung] [text] NULL,
	[Part6] [bit] NULL,
	[Abendveranstaltung_Location] [int] NULL,
	[Abendveranstaltung_Essen] [int] NULL,
	[Abendveranstaltung_Anmerkung] [text] NULL,
	[Part7] [bit] NULL,
	[Allgemeines_Organisation] [int] NULL,
	[Allgemeines_Steigenberger] [int] NULL,
	[Allgemeines_Swissotel] [int] NULL,
	[Allgemeines_Preise_gefehlt] [text] NULL,
	[Allgemeines_Anmerkung] [text] NULL,
	[Feedback_abgeschlossen] [bit] NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2017]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[Shuttle_HB_OB] [int] NULL,
	[Shuttle_HF_OS] [int] NULL,
	[Uebernachtung_Berechtigung] [int] NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Teilnahme] [varchar](50) NULL,
	[Rueckmeldung] [varchar](50) NULL,
	[Transfer] [varchar](50) NULL,
	[Bustransfer_ab] [varchar](50) NULL,
	[Uebernachtung] [varchar](50) NULL,
	[Datum] [varchar](50) NULL,
	[Grund_Absage] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2017_Feedback]    Script Date: 06.07.2018 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2017_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[GK_Portal] [int] NULL,
	[Portal_Nutzung] [int] NULL,
	[Portal_gefehlt] [text] NULL,
	[Portal_Anmerkung] [text] NULL,
	[Part1] [bit] NULL,
	[Veranstaltung_gefallen] [int] NULL,
	[Veranstaltung_Agenda] [int] NULL,
	[Veranstaltung_Informationsgehalt] [int] NULL,
	[Veranstaltung_Ort] [int] NULL,
	[Veranstaltung_Rahmen] [int] NULL,
	[Veranstaltung_Akustik] [int] NULL,
	[Veranstaltung_Verpflegung] [int] NULL,
	[Veranstaltung_Anmerkung] [text] NULL,
	[Part2] [bit] NULL,
	[Ludwig_Kohnen_Vortrag] [int] NULL,
	[Ludwig_Kohnen_Relevanz] [int] NULL,
	[Ludwig_Kohnen_Botschaft] [int] NULL,
	[Ludwig_Kohnen_Orientierung] [int] NULL,
	[Ludwig_Kohnen_gefehlt] [text] NULL,
	[Ludwig_Kohnen_Anmerkung] [text] NULL,
	[Part3] [bit] NULL,
	[Michael_Heidkamp_Vortrag] [int] NULL,
	[Michael_Heidkamp_Relevanz] [int] NULL,
	[Michael_Heidkamp_Botschaft] [int] NULL,
	[Michael_Heidkamp_Orientierung] [int] NULL,
	[Michael_Heidkamp_gefehlt] [text] NULL,
	[Michael_Heidkamp_Anmerkung] [text] NULL,
	[Part4] [bit] NULL,
	[Stefan_Gröner_Vortrag] [int] NULL,
	[Stefan_Gröner_Relevanz] [int] NULL,
	[Stefan_Gröner_Botschaft] [int] NULL,
	[Stefan_Gröner_Orientierung] [int] NULL,
	[Stefan_Gröner_gefehlt] [text] NULL,
	[Stefan_Gröner_Anmerkung] [text] NULL,
	[Part5] [bit] NULL,
	[Volker_Haesche_Vortrag] [int] NULL,
	[Volker_Haesche_Relevanz] [int] NULL,
	[Volker_Haesche_Botschaft] [int] NULL,
	[Volker_Haesche_Orientierung] [int] NULL,
	[Volker_Haesche_gefehlt] [text] NULL,
	[Volker_Haesche_Anmerkung] [text] NULL,
	[Part6] [bit] NULL,
	[Rudolf_Markschlaeger_Vortrag] [int] NULL,
	[Rudolf_Markschlaeger_Relevanz] [int] NULL,
	[Rudolf_Markschlaeger_Botschaft] [int] NULL,
	[Rudolf_Markschlaeger_Orientierung] [int] NULL,
	[Rudolf_Markschlaeger_gefehlt] [text] NULL,
	[Rudolf_Markschlaeger_Anmerkung] [text] NULL,
	[Part7] [bit] NULL,
	[Thorsten_Havener_Vortrag] [int] NULL,
	[Thorsten_Havener_Relevanz] [int] NULL,
	[Thorsten_Havener_Mitnahme] [int] NULL,
	[Thorsten_Havener_Anmerkung] [text] NULL,
	[Part8] [bit] NULL,
	[Abendveranstaltung_Location] [int] NULL,
	[Abendveranstaltung_Essen] [int] NULL,
	[Abendveranstaltung_Anmerkung] [text] NULL,
	[Part9] [bit] NULL,
	[Allgemeines_Organisation] [int] NULL,
	[Allgemeines_gefehlt] [text] NULL,
	[Allgemeines_Anmerkung] [text] NULL,
	[Feedback_abgeschlossen] [bit] NULL,
 CONSTRAINT [PK_Enterprise_SKO_2017_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_1_Kundenvertrieb_ME]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_1_Kundenvertrieb_ME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_1_Kundenvertrieb_ME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_2_VB_VS_AreaManager]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_2_VB_VS_AreaManager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_2_VB_VS_AreaManager_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kroatien_2015]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kroatien_2015](
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
	[eintrittskarte] [bit] NULL,
	[whatsapp] [bit] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[air_berlin] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Kroatien_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mauritius_2015]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mauritius_2015](
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
	[krankenversicherung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[eintrittskarte] [bit] NULL,
	[whatsapp] [bit] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[sitzplatz] [varchar](max) NULL,
	[flug_sitznachbar_vorname] [varchar](max) NULL,
	[flug_sitznachbar_nachname] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[chauffeur_service] [bit] NULL,
	[chauffeur_strasse] [varchar](max) NULL,
	[chauffeur_plz] [varchar](max) NULL,
	[chauffeur_ort] [varchar](max) NULL,
	[Zimmerbuchung_Dubai] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[programm_alternative] [varchar](max) NULL,
	[programm_auswahl_dubai] [varchar](max) NULL,
	[programm_alternative_dubai] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Mauritius_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sommerfest_Einladung]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sommerfest_Einladung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Unternehmen] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Anmeldung_Anrede] [varchar](50) NULL,
	[Anmeldung_Vorname] [varchar](max) NULL,
	[Anmeldung_Nachname] [varchar](max) NULL,
	[Anmeldung_EMail] [varchar](max) NULL,
	[Anmeldung_Unternehmen] [varchar](max) NULL,
	[Anmeldung_Abteilung] [varchar](max) NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Shuttle] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_Sommerfest_Einladung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[cebit_tickets_summe]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[cebit_tickets_summe]
AS
SELECT     besitzer, COUNT(id) AS Expr1
FROM         cebit_2016_tickets
GROUP BY besitzer

GO
/****** Object:  View [dbo].[SKO_2017_Export]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SKO_2017_Export]
AS
SELECT        TOP (100) PERCENT dbo.enterprise_login.vorname, dbo.enterprise_login.nachname, dbo.enterprise_login.email, dbo.enterprise_login.abteilung, 
                         dbo.Enterprise_SKO_2017.Shuttle_HB_OB, dbo.Enterprise_SKO_2017.Shuttle_HF_OS, dbo.Enterprise_SKO_2017.Uebernachtung_Berechtigung, 
                         dbo.Enterprise_SKO_2017.Vorname AS Expr1, dbo.Enterprise_SKO_2017.Nachname AS Expr2, dbo.Enterprise_SKO_2017.EMail AS Expr3, 
                         dbo.Enterprise_SKO_2017.Abteilung AS Expr4, dbo.Enterprise_SKO_2017.Teilnahme, dbo.Enterprise_SKO_2017.Rueckmeldung, dbo.Enterprise_SKO_2017.Transfer, 
                         dbo.Enterprise_SKO_2017.Bustransfer_ab, dbo.Enterprise_SKO_2017.Uebernachtung, dbo.Enterprise_SKO_2017.Grund_Absage
FROM            dbo.enterprise_login INNER JOIN
                         dbo.Enterprise_SKO_2017 ON dbo.enterprise_login.id = dbo.Enterprise_SKO_2017.enterprise_id
WHERE        (dbo.enterprise_login.SKO_2017 = 1) AND (dbo.enterprise_login.id > 3)
ORDER BY dbo.enterprise_login.nachname
GO
/****** Object:  View [dbo].[Sommerfest_doppler]    Script Date: 06.07.2018 09:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sommerfest_doppler]
AS
SELECT     TOP (100) PERCENT COUNT(id) AS anzahl, EMail
FROM         dbo.Sommerfest_Einladung
GROUP BY EMail
ORDER BY anzahl
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2015]  DEFAULT ((0)) FOR [SKO_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2017]  DEFAULT ((0)) FOR [SKO_2017]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Sommerfest_Einladung] ADD  CONSTRAINT [DF_Sommerfest_Einladung_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Sommerfest_Einladung] ADD  CONSTRAINT [DF_Sommerfest_Einladung_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
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
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 246
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Enterprise_SKO_2017"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 249
               Right = 493
            End
            DisplayFlags = 280
            TopColumn = 6
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO_2017_Export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO_2017_Export'
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
         Begin Table = "Sommerfest_Einladung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 268
               Right = 251
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Sommerfest_doppler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Sommerfest_doppler'
GO
USE [master]
GO
ALTER DATABASE [ewe] SET  READ_WRITE 
GO
