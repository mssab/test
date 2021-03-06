USE [master]
GO
/****** Object:  Database [skoda_fahrtenbuch]    Script Date: 06.07.2018 12:03:56 ******/
CREATE DATABASE [skoda_fahrtenbuch]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'skoda_fahrtenbuch', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\skoda_fahrtenbuch.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'skoda_fahrtenbuch_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\skoda_fahrtenbuch_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [skoda_fahrtenbuch] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [skoda_fahrtenbuch].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [skoda_fahrtenbuch] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET ARITHABORT OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET  DISABLE_BROKER 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET  MULTI_USER 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [skoda_fahrtenbuch] SET DB_CHAINING OFF 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [skoda_fahrtenbuch] SET QUERY_STORE = OFF
GO
USE [skoda_fahrtenbuch]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [skoda_fahrtenbuch]
GO
/****** Object:  User [Skoda_DB_Admin]    Script Date: 06.07.2018 12:03:56 ******/
CREATE USER [Skoda_DB_Admin] FOR LOGIN [Skoda_DB_Admin] WITH DEFAULT_SCHEMA=[db_datawriter]
GO
/****** Object:  User [Gate_Websites]    Script Date: 06.07.2018 12:03:56 ******/
CREATE USER [Gate_Websites] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_owner]
GO
/****** Object:  User [Gate_DB_Admin]    Script Date: 06.07.2018 12:03:56 ******/
CREATE USER [Gate_DB_Admin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Skoda_DB_Admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Skoda_DB_Admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Skoda_DB_Admin]
GO
ALTER ROLE [db_owner] ADD MEMBER [Gate_Websites]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Gate_Websites]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Gate_Websites]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Gate_Websites]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Gate_Websites]
GO
ALTER ROLE [db_owner] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Gate_DB_Admin]
GO
/****** Object:  Table [dbo].[Fahrtenbucheintrag_schaden_neu]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrtenbucheintrag_schaden_neu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fahrzeug_id] [int] NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Datum] [date] NULL,
	[Standort] [varchar](max) NULL,
	[KM_Stand] [int] NULL,
	[Beschreibung] [text] NULL,
	[Schaden_1] [text] NULL,
	[Schaden_2] [text] NULL,
	[Schaden_3] [text] NULL,
	[Schaden_4] [text] NULL,
	[Schaden1_behoben] [bit] NOT NULL,
	[Schaden2_behoben] [bit] NOT NULL,
	[Schaden3_behoben] [bit] NOT NULL,
	[Schaden4_behoben] [bit] NOT NULL,
	[Anzahl_Schaeden] [int] NULL,
 CONSTRAINT [PK_Fahrtenbucheintrag_schaden_neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Schadensuebersicht]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schadensuebersicht]
AS
SELECT        Fahrzeug_id, Vorname + ' ' + Nachname AS [gemeldet von], Datum, Standort, KM_Stand, Schaden_1, Schaden1_behoben, id, 'Schaden_1.jpg' AS bilddatei
FROM            dbo.Fahrtenbucheintrag_schaden_neu
WHERE        Anzahl_Schaeden =1
UNION ALL
SELECT        Fahrzeug_id, Vorname + ' ' + Nachname AS [gemeldet von], Datum, Standort, KM_Stand, Schaden_2, Schaden2_behoben, id, 'Schaden_2.jpg' AS bilddatei
FROM            dbo.Fahrtenbucheintrag_schaden_neu
WHERE        Anzahl_Schaeden =2
UNION ALL
SELECT        Fahrzeug_id, Vorname + ' ' + Nachname AS [gemeldet von], Datum, Standort, KM_Stand, Schaden_3, Schaden3_behoben, id, 'Schaden_3.jpg' AS bilddatei
FROM            dbo.Fahrtenbucheintrag_schaden_neu
WHERE        Anzahl_Schaeden =3
UNION ALL
SELECT        Fahrzeug_id, Vorname + ' ' + Nachname AS [gemeldet von], Datum, Standort, KM_Stand, Schaden_4, Schaden4_behoben, id, 'Schaden_4.jpg' AS bilddatei
FROM            dbo.Fahrtenbucheintrag_schaden_neu
WHERE        Anzahl_Schaeden = 4
GO
/****** Object:  Table [dbo].[fahrzeuge]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fahrzeuge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typ] [varchar](255) NOT NULL,
	[modell] [varchar](255) NOT NULL,
	[ausstattung] [varchar](255) NOT NULL,
	[lackierung] [varchar](255) NOT NULL,
	[ccm] [varchar](255) NOT NULL,
	[ps] [varchar](255) NOT NULL,
	[kennzeichen] [varchar](12) NOT NULL,
	[fahrgestell] [varchar](50) NOT NULL,
	[erstzulassung] [date] NOT NULL,
	[tuev] [date] NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[getriebe] [varchar](255) NOT NULL,
	[polster] [varchar](255) NOT NULL,
	[winterreifen] [smallint] NOT NULL,
	[warndreieck] [smallint] NOT NULL,
	[verbandskasten] [smallint] NOT NULL,
	[warnwester] [smallint] NOT NULL,
	[regenschirm] [smallint] NOT NULL,
	[serviceheft] [smallint] NOT NULL,
	[aktiv] [tinyint] NOT NULL,
	[ersteller] [int] NOT NULL,
	[angelegt] [datetime] NOT NULL,
	[lasteditor] [int] NOT NULL,
	[lastedit] [datetime] NOT NULL,
	[beklebung] [smallint] NULL,
	[beklebung_details] [varchar](max) NULL,
	[Kraftstoffart] [varchar](max) NULL,
	[Fahrzeugpool] [varchar](max) NULL,
 CONSTRAINT [PK_fahrzeuge] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[QR-Code-Export]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[QR-Code-Export]
AS
SELECT        id, modell, ausstattung, lackierung, ccm, ps, kennzeichen, fahrgestell, getriebe, Kraftstoffart
FROM            dbo.fahrzeuge
GO
/****** Object:  Table [dbo].[Fahrtenbucheintrag_neu]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrtenbucheintrag_neu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fahrzeug_id] [int] NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Datum_Uebernahme] [datetime] NULL,
	[Standort_Uebernahme] [varchar](max) NULL,
	[Fahrtziel] [varchar](max) NULL,
	[Fahrt_Art] [varchar](max) NULL,
	[Grund_der_Fahrt] [varchar](max) NULL,
	[Jobnummer] [bigint] NULL,
	[KM_Stand_Uebernahme] [bigint] NULL,
	[Bemerkung_Uebernahme] [text] NULL,
	[Datum_Rueckgabe] [datetime] NULL,
	[Standort_Rueckgabe] [varchar](max) NULL,
	[KM_Stand_Rueckgabe] [bigint] NULL,
	[Bemerkung_Rueckgabe] [text] NULL,
	[Fahrzeug_zurueck_gegeben] [bit] NOT NULL,
	[pkw_gewascht] [bit] NULL,
	[pkw_getankt] [bit] NULL,
	[schaden_melden] [bit] NULL,
 CONSTRAINT [PK_Fahrtenbucheintrag_neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[KM_Stand_Helfer]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KM_Stand_Helfer]
AS
SELECT        Fahrzeug_id, Datum_Uebernahme, KM_Stand_Uebernahme
FROM            dbo.Fahrtenbucheintrag_neu

union

SELECT        Fahrzeug_id, Datum_Rueckgabe, KM_Stand_Rueckgabe
FROM            dbo.Fahrtenbucheintrag_neu
GO
/****** Object:  View [dbo].[KM_Stand_Helfer_1]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KM_Stand_Helfer_1]
AS
SELECT        Fahrzeug_id, MAX(KM_Stand_Uebernahme) AS Expr1
FROM            dbo.KM_Stand_Helfer
GROUP BY Fahrzeug_id
GO
/****** Object:  View [dbo].[Letzter_km_stand]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Letzter_km_stand]
AS
SELECT        dbo.KM_Stand_Helfer_1.Fahrzeug_id, dbo.KM_Stand_Helfer_1.Expr1 AS km_stand, MAX(dbo.KM_Stand_Helfer.Datum_Uebernahme) AS datum
FROM            dbo.KM_Stand_Helfer INNER JOIN
                         dbo.KM_Stand_Helfer_1 ON dbo.KM_Stand_Helfer.Fahrzeug_id = dbo.KM_Stand_Helfer_1.Fahrzeug_id AND 
                         dbo.KM_Stand_Helfer.KM_Stand_Uebernahme = dbo.KM_Stand_Helfer_1.Expr1
GROUP BY dbo.KM_Stand_Helfer_1.Fahrzeug_id, dbo.KM_Stand_Helfer_1.Expr1
GO
/****** Object:  Table [db_owner].[fahrtbuch_admin_login]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[fahrtbuch_admin_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_fahrtbuch_admin_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fahrtenbucheintrag]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrtenbucheintrag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fahrzeug_id] [int] NULL,
	[Benutzer_id] [int] NULL,
	[Uebernahmegrund_id] [int] NULL,
	[Datum_Uebernahme] [date] NULL,
	[Standort_Uebernahme] [varchar](max) NULL,
	[KM_Stand_Uebernahme] [int] NULL,
	[Bemerkung_Uebernahme] [text] NULL,
	[Datum_Rueckgabe] [date] NULL,
	[Standort_Rueckgabe] [varchar](max) NULL,
	[KM_Stand_Rueckgabe] [int] NULL,
	[Bemerkung_Rueckgabe] [text] NULL,
	[Fahrzeug_zurueck_gegeben] [bit] NOT NULL,
	[Daten_abgeschlossen] [bit] NOT NULL,
 CONSTRAINT [PK_Fahrtenbucheintrag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fahrtenbucheintrag_Tankbeleg_neu]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrtenbucheintrag_Tankbeleg_neu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fahrzeug_id] [int] NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Datum] [date] NULL,
	[Standort] [varchar](max) NULL,
	[KM_Stand] [int] NULL,
	[Projektnummer] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
 CONSTRAINT [PK_Fahrtenbucheintrag_Tankbeleg_neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fahrzeug]    Script Date: 06.07.2018 12:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrzeug](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fahrzeugart_id] [int] NULL,
	[Hersteller] [varchar](max) NULL,
	[Modell] [varchar](max) NULL,
	[Kraftstoffart] [varchar](max) NULL,
	[KW] [int] NULL,
	[PS] [int] NULL,
	[Kennzeichen] [varchar](max) NULL,
	[Nutzung_ab] [date] NULL,
	[Nutzung_bis] [date] NULL,
 CONSTRAINT [PK_Fahrzeug] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fahrzeugmerkmale]    Script Date: 06.07.2018 12:03:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrzeugmerkmale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Typ] [varchar](50) NULL,
	[aktiv] [bit] NULL,
	[Marke] [varchar](max) NULL,
 CONSTRAINT [PK_Fahrzeugmerkmale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fahrzeugpools]    Script Date: 06.07.2018 12:03:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrzeugpools](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Poolname] [varchar](max) NULL,
 CONSTRAINT [PK_Fahrzeugpools] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 06.07.2018 12:03:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[aktiv] [bit] NOT NULL,
	[zuletzt_online] [varchar](max) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uebernahmegrund]    Script Date: 06.07.2018 12:03:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uebernahmegrund](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Grund] [varchar](max) NULL,
 CONSTRAINT [PK_Uebernahmegrund] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fahrtenbucheintrag] ADD  CONSTRAINT [DF_Fahrtenbucheintrag_Fahrzeug_zurueck_gegeben]  DEFAULT ((0)) FOR [Fahrzeug_zurueck_gegeben]
GO
ALTER TABLE [dbo].[Fahrtenbucheintrag] ADD  CONSTRAINT [DF_Fahrtenbucheintrag_Daten_abgeschlossen]  DEFAULT ((0)) FOR [Daten_abgeschlossen]
GO
ALTER TABLE [dbo].[Fahrtenbucheintrag_neu] ADD  CONSTRAINT [DF_Fahrtenbucheintrag_neu_Fahrzeug_zurueck_gegeben]  DEFAULT ((0)) FOR [Fahrzeug_zurueck_gegeben]
GO
ALTER TABLE [dbo].[Fahrtenbucheintrag_schaden_neu] ADD  CONSTRAINT [DF_Fahrtenbucheintrag_schaden_neu_Schaden1_behoben]  DEFAULT ((0)) FOR [Schaden1_behoben]
GO
ALTER TABLE [dbo].[Fahrtenbucheintrag_schaden_neu] ADD  CONSTRAINT [DF_Fahrtenbucheintrag_schaden_neu_Schaden2_behoben]  DEFAULT ((0)) FOR [Schaden2_behoben]
GO
ALTER TABLE [dbo].[Fahrtenbucheintrag_schaden_neu] ADD  CONSTRAINT [DF_Fahrtenbucheintrag_schaden_neu_Schaden3_behoben]  DEFAULT ((0)) FOR [Schaden3_behoben]
GO
ALTER TABLE [dbo].[Fahrtenbucheintrag_schaden_neu] ADD  CONSTRAINT [DF_Fahrtenbucheintrag_schaden_neu_Schaden4_behoben]  DEFAULT ((0)) FOR [Schaden4_behoben]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_fahrgestell]  DEFAULT ('2001-01-01') FOR [fahrgestell]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_tuev]  DEFAULT ('2001-01-01') FOR [tuev]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_winterreifen]  DEFAULT ((0)) FOR [winterreifen]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_warndreieck]  DEFAULT ((0)) FOR [warndreieck]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_verbandskasten]  DEFAULT ((0)) FOR [verbandskasten]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_warnwester]  DEFAULT ((0)) FOR [warnwester]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_regenschirm]  DEFAULT ((0)) FOR [regenschirm]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_serviceheft]  DEFAULT ((0)) FOR [serviceheft]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_aktiv]  DEFAULT ((0)) FOR [aktiv]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_angelegt]  DEFAULT ('2001-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[fahrzeuge] ADD  CONSTRAINT [DF_fahrzeuge_lastedit]  DEFAULT ('2001-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[Login] ADD  CONSTRAINT [DF_Login_aktiv]  DEFAULT ((1)) FOR [aktiv]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[3] 2[29] 3) )"
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
         Begin Table = "Fahrtenbucheintrag_neu"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 324
               Right = 272
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KM_Stand_Helfer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KM_Stand_Helfer'
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
         Begin Table = "KM_Stand_Helfer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 118
               Right = 269
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KM_Stand_Helfer_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KM_Stand_Helfer_1'
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
         Begin Table = "KM_Stand_Helfer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KM_Stand_Helfer_1"
            Begin Extent = 
               Top = 6
               Left = 291
               Bottom = 166
               Right = 458
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Letzter_km_stand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Letzter_km_stand'
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
         Begin Table = "fahrzeuge"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 341
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 13
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QR-Code-Export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QR-Code-Export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
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
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Schadensuebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Schadensuebersicht'
GO
USE [master]
GO
ALTER DATABASE [skoda_fahrtenbuch] SET  READ_WRITE 
GO
