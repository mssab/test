USE [master]
GO
/****** Object:  Database [gate]    Script Date: 06.07.2018 09:58:25 ******/
CREATE DATABASE [gate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gate] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gate] SET ARITHABORT OFF 
GO
ALTER DATABASE [gate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gate] SET  MULTI_USER 
GO
ALTER DATABASE [gate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gate] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gate] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gate]
GO
/****** Object:  User [webuser]    Script Date: 06.07.2018 09:58:26 ******/
CREATE USER [webuser] FOR LOGIN [webuser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [gaties]    Script Date: 06.07.2018 09:58:26 ******/
CREATE USER [gaties] FOR LOGIN [gaties] WITH DEFAULT_SCHEMA=[db_owner]
GO
/****** Object:  User [GateMaster]    Script Date: 06.07.2018 09:58:26 ******/
CREATE USER [GateMaster] FOR LOGIN [GateMaster] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [gaties]
GO
ALTER ROLE [db_owner] ADD MEMBER [GateMaster]
GO
/****** Object:  Table [dbo].[gate_login]    Script Date: 06.07.2018 09:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gate_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_gate_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gate_test_login]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gate_test_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Passwort] [varchar](50) NULL,
	[hash] [varchar](50) NULL,
 CONSTRAINT [PK_gate_test_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kunden]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kunden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kunde] [varchar](max) NULL,
 CONSTRAINT [PK_kunden] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mitarbeiter_Urlaub]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mitarbeiter_Urlaub](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Mitarbeiter] [int] NULL,
	[Urlaub_Beginn] [date] NULL,
	[Urlaub_Ende] [date] NULL,
	[Grund] [varchar](max) NULL,
	[genehmigt] [bit] NOT NULL,
 CONSTRAINT [PK_Mitarbeiter_Urlaub] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[festnetz] [varchar](max) NULL,
	[fax] [varchar](max) NULL,
	[handy] [varchar](max) NULL,
	[handy_2] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[geburtsdatum] [date] NULL,
	[nationalitaet] [varchar](max) NULL,
	[koerpergroeße] [int] NULL,
	[konfektionsgroesse] [varchar](max) NULL,
	[schuhgroesse] [varchar](max) NULL,
	[haarfarbe] [varchar](max) NULL,
	[typ] [varchar](max) NULL,
	[teamfaehigkeit] [int] NOT NULL,
	[zuverlaessigkeit] [int] NOT NULL,
	[automobilaffin] [int] NOT NULL,
	[verkaufsberatung] [int] NOT NULL,
	[technikversiert] [int] NOT NULL,
	[spontan] [int] NOT NULL,
	[lebenslauf] [text] NULL,
	[moderator] [bit] NOT NULL,
	[verkaufsberater] [bit] NOT NULL,
	[promotor] [bit] NOT NULL,
	[fachberater] [bit] NOT NULL,
	[probefahrer] [bit] NOT NULL,
	[walkingact] [bit] NOT NULL,
	[hostess] [bit] NOT NULL,
	[kinderschminken] [bit] NOT NULL,
	[auftraggeber1] [varchar](max) NULL,
	[promotion1] [varchar](max) NULL,
	[taetigkeit1] [varchar](max) NULL,
	[auftraggeber2] [varchar](max) NULL,
	[promotion2] [varchar](max) NULL,
	[taetigkeit2] [varchar](max) NULL,
	[auftraggeber3] [varchar](max) NULL,
	[promotion3] [varchar](max) NULL,
	[taetigkeit3] [varchar](max) NULL,
	[auftraggeber4] [varchar](max) NULL,
	[promotion4] [varchar](max) NULL,
	[taetigkeit4] [varchar](max) NULL,
	[fuehrerschein_pkw] [bit] NOT NULL,
	[pkw_klassen] [varchar](max) NULL,
	[fuehrerschein_lkw] [bit] NOT NULL,
	[lkw_klassen] [varchar](max) NULL,
	[eigenes_fahrzeug] [bit] NOT NULL,
	[gewerbeschein] [bit] NOT NULL,
	[mwstbescheinigung] [bit] NOT NULL,
	[ustbefreiung] [bit] NOT NULL,
	[ortseinsatz] [bit] NOT NULL,
	[regionaleinsatz] [bit] NOT NULL,
	[reiseeinsatz] [bit] NOT NULL,
	[ganzjaehrig] [bit] NOT NULL,
	[einsatzzeitraum] [varchar](max) NULL,
	[einsatztage] [varchar](max) NULL,
	[deutsch] [bit] NOT NULL,
	[englisch] [bit] NOT NULL,
	[franzoesisch] [bit] NOT NULL,
	[italienisch] [bit] NOT NULL,
	[spanisch] [bit] NOT NULL,
	[tuerkisch] [bit] NOT NULL,
	[sonstige_sprachen] [varchar](max) NULL,
	[bemerkungen] [text] NULL,
	[sperre] [bit] NOT NULL,
	[gesperrt_durch] [int] NOT NULL,
	[angelegt] [varchar](max) NULL,
 CONSTRAINT [PK_personal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalbuchungen]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalbuchungen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personal_id] [int] NULL,
	[kunde_id] [int] NULL,
	[von] [date] NULL,
	[bis] [date] NULL,
	[gebucht_von] [int] NULL,
	[eintrag] [varchar](max) NULL,
 CONSTRAINT [PK_personalbuchungen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[se_eigenbeleg]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[se_eigenbeleg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projektnummer] [int] NOT NULL,
	[von] [datetime] NOT NULL,
	[bis] [datetime] NOT NULL,
	[belegdatum] [datetime] NOT NULL,
 CONSTRAINT [PK_se_eigenbeleg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[se_personal]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[se_personal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[team] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[passwort] [varchar](20) NOT NULL,
 CONSTRAINT [PK_se_personal_1__194] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[se_projekt]    Script Date: 06.07.2018 09:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[se_projekt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kunde] [varchar](200) NULL,
	[Kundennummer] [varchar](50) NULL,
	[projektnummer] [bigint] NOT NULL,
	[jobnummer] [bigint] NULL,
	[projektbeschreibung] [text] NOT NULL,
	[Deadline] [date] NULL,
	[Budget] [varchar](max) NULL,
	[projektname] [varchar](50) NOT NULL,
	[angelegt] [datetime] NULL,
	[angelegt_durch] [int] NOT NULL,
	[Webservices] [bit] NULL,
	[Grafik] [bit] NULL,
	[Werkstatt] [bit] NULL,
	[Status] [varchar](max) NULL,
	[aktiv] [bit] NOT NULL,
 CONSTRAINT [PK_se_projekt_1__153] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[se_stunden]    Script Date: 06.07.2018 09:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[se_stunden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[personal_id] [int] NOT NULL,
	[anzahl_minuten] [int] NOT NULL,
	[taetigkeit] [text] NULL,
	[datum] [smalldatetime] NULL,
	[berechnet] [bit] NULL,
	[abrechnungsbasis] [int] NULL,
	[belegnummer] [int] NULL,
 CONSTRAINT [PK_se_stunden_1__120] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weihnachten_2016]    Script Date: 06.07.2018 09:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weihnachten_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Anmeldung_Anrede] [varchar](50) NULL,
	[Anmeldung_Vorname] [varchar](max) NULL,
	[Anmeldung_Nachname] [varchar](max) NULL,
	[Anmeldung_EMail] [varchar](max) NULL,
	[Anmeldung_Handy] [varchar](max) NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Shuttle] [bit] NOT NULL,
	[Shuttle_Name] [varchar](max) NULL,
	[Shuttle_Strasse] [varchar](max) NULL,
	[Shuttle_PLZ] [varchar](max) NULL,
	[Shuttle_Ort] [varchar](max) NULL,
	[Vegetarier] [bit] NOT NULL,
	[Veganer] [bit] NOT NULL,
	[Schweinefleisch] [bit] NOT NULL,
	[Bemerkung] [text] NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_Sommerfest_Einladung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weihnachten_2017]    Script Date: 06.07.2018 09:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weihnachten_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Shuttle] [bit] NOT NULL,
	[Shuttle_Name] [varchar](max) NULL,
	[Shuttle_Strasse] [varchar](max) NULL,
	[Shuttle_PLZ] [varchar](max) NULL,
	[Shuttle_Ort] [varchar](max) NULL,
	[Vegetarier] [bit] NOT NULL,
	[Veganer] [bit] NOT NULL,
	[Bemerkung] [varchar](max) NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_Weihnachten_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[se_gesamtstunden]    Script Date: 06.07.2018 09:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[se_gesamtstunden]
AS
SELECT        projekt_id, SUM(anzahl_minuten) AS gesamt
FROM            dbo.se_stunden
GROUP BY projekt_id
GO
ALTER TABLE [dbo].[Mitarbeiter_Urlaub] ADD  CONSTRAINT [DF_Mitarbeiter_Urlaub_genehmigt]  DEFAULT ((0)) FOR [genehmigt]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_teamfaehigkeit]  DEFAULT ((0)) FOR [teamfaehigkeit]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_zuverlaessigkeit]  DEFAULT ((0)) FOR [zuverlaessigkeit]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_automobilaffin]  DEFAULT ((0)) FOR [automobilaffin]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_verkaufsberatung]  DEFAULT ((0)) FOR [verkaufsberatung]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_technikversiert]  DEFAULT ((0)) FOR [technikversiert]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_spontan]  DEFAULT ((0)) FOR [spontan]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_moderator]  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_verkaufsberater]  DEFAULT ((0)) FOR [verkaufsberater]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_promotor]  DEFAULT ((0)) FOR [promotor]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_fachberater]  DEFAULT ((0)) FOR [fachberater]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_probefahrer]  DEFAULT ((0)) FOR [probefahrer]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_walkingact]  DEFAULT ((0)) FOR [walkingact]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_hostess]  DEFAULT ((0)) FOR [hostess]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_kinderschminken]  DEFAULT ((0)) FOR [kinderschminken]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_fuehrerschein_pkw]  DEFAULT ((0)) FOR [fuehrerschein_pkw]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_fuehrerschein_lkw]  DEFAULT ((0)) FOR [fuehrerschein_lkw]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_eigenes_fahrzeug]  DEFAULT ((0)) FOR [eigenes_fahrzeug]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_gewerbeschein]  DEFAULT ((0)) FOR [gewerbeschein]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_mwstbescheinigung]  DEFAULT ((0)) FOR [mwstbescheinigung]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_ustbefreiung]  DEFAULT ((0)) FOR [ustbefreiung]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_ortseinsatz]  DEFAULT ((0)) FOR [ortseinsatz]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_regionaleinsatz]  DEFAULT ((0)) FOR [regionaleinsatz]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_reiseeinsatz]  DEFAULT ((0)) FOR [reiseeinsatz]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_ganzjaehrig]  DEFAULT ((0)) FOR [ganzjaehrig]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_deutsch]  DEFAULT ((0)) FOR [deutsch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_englisch]  DEFAULT ((0)) FOR [englisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_franzoesisch]  DEFAULT ((0)) FOR [franzoesisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_italienisch]  DEFAULT ((0)) FOR [italienisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_spanisch]  DEFAULT ((0)) FOR [spanisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_tuerkisch]  DEFAULT ((0)) FOR [tuerkisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_sperre]  DEFAULT ((0)) FOR [sperre]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_gesperrt_durch]  DEFAULT ((0)) FOR [gesperrt_durch]
GO
ALTER TABLE [dbo].[se_projekt] ADD  CONSTRAINT [DF_se_projekt_aktiv_1__84]  DEFAULT ((1)) FOR [aktiv]
GO
ALTER TABLE [dbo].[Weihnachten_2016] ADD  CONSTRAINT [DF_Weihnachten_2016_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Weihnachten_2016] ADD  CONSTRAINT [DF_Weihnachten_2016_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[Weihnachten_2016] ADD  CONSTRAINT [DF_Weihnachten_2016_Shuttle]  DEFAULT ((0)) FOR [Shuttle]
GO
ALTER TABLE [dbo].[Weihnachten_2016] ADD  CONSTRAINT [DF_Weihnachten_2016_Vegetarier]  DEFAULT ((0)) FOR [Vegetarier]
GO
ALTER TABLE [dbo].[Weihnachten_2016] ADD  CONSTRAINT [DF_Weihnachten_2016_Veganer]  DEFAULT ((0)) FOR [Veganer]
GO
ALTER TABLE [dbo].[Weihnachten_2016] ADD  CONSTRAINT [DF_Weihnachten_2016_Schweinefleisch]  DEFAULT ((0)) FOR [Schweinefleisch]
GO
ALTER TABLE [dbo].[Weihnachten_2017] ADD  CONSTRAINT [DF_Weihnachten_2017_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Weihnachten_2017] ADD  CONSTRAINT [DF_Weihnachten_2017_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[Weihnachten_2017] ADD  CONSTRAINT [DF_Weihnachten_2017_Shuttle]  DEFAULT ((0)) FOR [Shuttle]
GO
ALTER TABLE [dbo].[Weihnachten_2017] ADD  CONSTRAINT [DF_Weihnachten_2017_Vegetarier]  DEFAULT ((0)) FOR [Vegetarier]
GO
ALTER TABLE [dbo].[Weihnachten_2017] ADD  CONSTRAINT [DF_Weihnachten_2017_Veganer]  DEFAULT ((0)) FOR [Veganer]
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
         Begin Table = "se_stunden"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 255
               Right = 238
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'se_gesamtstunden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'se_gesamtstunden'
GO
USE [master]
GO
ALTER DATABASE [gate] SET  READ_WRITE 
GO
