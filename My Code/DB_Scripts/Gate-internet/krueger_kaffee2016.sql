USE [master]
GO
/****** Object:  Database [KruegerGruppe]    Script Date: 06.07.2018 11:11:04 ******/
CREATE DATABASE [KruegerGruppe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ludwigschokolade2017', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Ludwigschokolade2017.mdf' , SIZE = 16384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ludwigschokolade2017_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Ludwigschokolade2017_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [KruegerGruppe] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KruegerGruppe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KruegerGruppe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KruegerGruppe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KruegerGruppe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KruegerGruppe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KruegerGruppe] SET ARITHABORT OFF 
GO
ALTER DATABASE [KruegerGruppe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KruegerGruppe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KruegerGruppe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KruegerGruppe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KruegerGruppe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KruegerGruppe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KruegerGruppe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KruegerGruppe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KruegerGruppe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KruegerGruppe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KruegerGruppe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KruegerGruppe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KruegerGruppe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KruegerGruppe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KruegerGruppe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KruegerGruppe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KruegerGruppe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KruegerGruppe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KruegerGruppe] SET  MULTI_USER 
GO
ALTER DATABASE [KruegerGruppe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KruegerGruppe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KruegerGruppe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KruegerGruppe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KruegerGruppe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [KruegerGruppe]
GO
/****** Object:  Table [dbo].[Absprache_produkte]    Script Date: 06.07.2018 11:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Absprache_produkte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NULL,
	[Karton_Produkt1] [int] NULL,
	[Karton_Produkt2] [int] NULL,
	[Karton_Produkt3] [int] NULL,
	[Karton_Produkt4] [int] NULL,
	[Karton_Produkt5] [int] NULL,
	[Karton_Produkt6] [int] NULL,
	[Karton_Produkt7] [int] NULL,
	[Karton_Produkt8] [int] NULL,
	[Karton_Produkt9] [int] NULL,
	[Karton_Produkt10] [int] NULL,
	[Karton_Produkt11] [int] NULL,
	[Karton_Produkt12] [int] NULL,
	[Karton_Produkt13] [int] NULL,
	[Karton_Produkt14] [int] NULL,
	[Karton_Produkt15] [int] NULL,
	[Karton_Produkt16] [int] NULL,
	[Karton_Produkt17] [int] NULL,
	[Karton_Produkt18] [int] NULL,
	[Karton_Produkt19] [int] NULL,
	[Karton_Produkt20] [int] NULL,
	[Karton_Produkt21] [int] NULL,
	[Karton_Produkt22] [int] NULL,
	[Karton_Produkt23] [int] NULL,
	[Karton_Produkt24] [int] NULL,
	[Karton_Produkt25] [int] NULL,
	[Palette_Produkt1] [int] NULL,
	[Palette_Produkt2] [int] NULL,
	[Palette_Produkt3] [int] NULL,
	[Palette_Produkt4] [int] NULL,
	[Palette_Produkt5] [int] NULL,
	[Palette_Produkt6] [int] NULL,
	[Palette_Produkt7] [int] NULL,
	[Palette_Produkt8] [int] NULL,
	[Palette_Produkt9] [int] NULL,
	[Palette_Produkt10] [int] NULL,
	[Palette_Produkt11] [int] NULL,
	[Palette_Produkt12] [int] NULL,
	[Palette_Produkt13] [int] NULL,
	[Palette_Produkt14] [int] NULL,
	[Palette_Produkt15] [int] NULL,
	[Palette_Produkt16] [int] NULL,
	[Palette_Produkt17] [int] NULL,
	[Palette_Produkt18] [int] NULL,
	[Palette_Produkt19] [int] NULL,
	[Palette_Produkt20] [int] NULL,
	[Palette_Produkt21] [int] NULL,
	[Palette_Produkt22] [int] NULL,
	[Palette_Produkt23] [int] NULL,
	[Palette_Produkt24] [int] NULL,
	[Palette_Produkt25] [int] NULL,
	[Sonstiges_Name] [varchar](max) NULL,
	[Sonstiges_Palette] [int] NULL,
	[Sonstiges_Karton] [int] NULL,
 CONSTRAINT [PK_einsaetze_produkt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aktionen]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aktionen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Unternehmen] [varchar](max) NULL,
	[Jahr] [int] NULL,
	[Beginn] [date] NULL,
	[Ende] [date] NULL,
	[Einsatztage] [int] NULL,
	[Gebiet1] [int] NULL,
	[Gebiet2] [int] NULL,
	[Gebiet3] [int] NULL,
	[Gebiet4] [int] NULL,
 CONSTRAINT [PK_Aktionen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aktionsequipment]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aktionsequipment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
 CONSTRAINT [PK_Aktionsequipment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bezirke]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bezirke](
	[ID_bezirk] [int] IDENTITY(1,1) NOT NULL,
	[VL] [nchar](10) NULL,
	[BEZ] [nvarchar](255) NULL,
	[Anrede] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[PLZ] [nvarchar](50) NULL,
	[Ort] [nvarchar](255) NULL,
	[Strasse] [nvarchar](255) NULL,
	[Telefon] [nvarchar](255) NULL,
	[kurz] [float] NULL,
	[Mobil] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL,
	[ID] [int] NOT NULL,
	[email_krueger] [nvarchar](50) NULL,
	[email_ludwig] [nvarchar](50) NULL,
 CONSTRAINT [PK_bezirke] PRIMARY KEY CLUSTERED 
(
	[ID_bezirk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bilder]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bilder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[einsatz_id] [int] NULL,
 CONSTRAINT [PK_Bilder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Einsaetze]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Einsaetze](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aktion] [int] NOT NULL,
	[VL] [int] NOT NULL,
	[VL_Nummer] [varchar](50) NULL,
	[VL_Name] [varchar](50) NULL,
	[VL_Telefon] [varchar](max) NULL,
	[BVL] [int] NOT NULL,
	[BVL_Nummer] [varchar](50) NULL,
	[BVL_Name] [varchar](50) NULL,
	[BVL_Telefon] [varchar](max) NULL,
	[HZ] [varchar](max) NULL,
	[Markt_TDLinqx] [int] NULL,
	[Typ] [varchar](max) NULL,
	[Markt_Vertriebslinie] [varchar](max) NULL,
	[Markt_Name] [varchar](max) NULL,
	[Markt_PLZ] [varchar](max) NULL,
	[Markt_Ort] [varchar](max) NULL,
	[Markt_Strasse] [varchar](max) NULL,
	[Markt_Leiter] [varchar](max) NULL,
	[Markt_AP] [varchar](max) NULL,
	[Markt_Telefon] [varchar](max) NULL,
	[Markt_Fax] [varchar](max) NULL,
	[KW] [int] NULL,
	[aktion_beginn] [datetime] NULL,
	[aktion_ende] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstag2_von] [varchar](max) NULL,
	[aktionstag2_bis] [varchar](max) NULL,
	[aktionstag3_von] [nchar](10) NULL,
	[aktionstag3_bis] [nchar](10) NULL,
	[aktionstag4_von] [nchar](10) NULL,
	[aktionstag4_bis] [nchar](10) NULL,
	[aktionstag5_von] [nchar](10) NULL,
	[aktionstag5_bis] [nchar](10) NULL,
	[aktionstag6_von] [nchar](10) NULL,
	[aktionstag6_bis] [nchar](10) NULL,
	[aktionstage] [int] NULL,
	[Projektleiter] [int] NULL,
	[Verkostungsaktion] [varchar](max) NULL,
	[Standplatz_qm] [varchar](max) NULL,
	[abteilung] [varchar](max) NULL,
	[abteilung_sonstige] [varchar](max) NULL,
	[standort] [varchar](max) NULL,
	[standort_sonstige] [varchar](max) NULL,
	[Verkostungsware] [varchar](max) NULL,
	[Anlieferung_Datum] [varchar](max) NULL,
	[Anlieferung_Zeit] [varchar](max) NULL,
	[Abholung_Datum] [varchar](max) NULL,
	[Abholung_Zeit] [varchar](max) NULL,
	[anmerkungen] [text] NULL,
	[teamleiter_anzahl] [int] NULL,
	[promotor_anzahl] [int] NULL,
	[promotor_wunsch] [int] NULL,
	[Promotor_durchfuehrend] [int] NULL,
	[anlagedatum] [varchar](max) NULL,
	[anleger] [int] NULL,
	[eingangsdatum] [varchar](max) NULL,
	[Storno] [bit] NOT NULL,
	[Storno_Grund] [varchar](max) NULL,
	[Storno_Beschreibung] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[einsatz_id] [int] NOT NULL,
	[Beurteilung_Aktionsstandort] [varchar](50) NULL,
	[Grund_Beurteilung_Aktionsstandort] [text] NULL,
	[Standort_Abteilung] [varchar](50) NULL,
	[Sonstige_Abteilung] [text] NULL,
	[Aktionsstandort] [varchar](50) NULL,
	[Sonstiger_Aktionsstandort] [text] NULL,
	[Ware_vorhanden] [varchar](50) NULL,
	[Frequenzbeurteilung] [varchar](50) NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NOT NULL,
	[Sachets_Tag1] [int] NULL,
	[Sachets_Tag2] [int] NULL,
	[Sachets_Tag3] [int] NULL,
	[Sachets_Tag4] [int] NULL,
	[Sachets_Tag5] [int] NULL,
	[Sachets_Tag6] [int] NULL,
	[topschild_einsetzbar] [varchar](50) NULL,
	[topschild_einsetzbar_grund] [text] NULL,
	[KundenAnregungAktion] [text] NULL,
	[bemerkung_intern] [text] NULL,
	[wettbewerber_aktiv] [varchar](50) NULL,
	[wettbewerber_verkostung] [bit] NULL,
	[wettbewerber_sampling] [bit] NULL,
	[wettbewerber_sonstige] [bit] NULL,
	[wettbewerber_sonstige_text] [text] NULL,
	[wettbewerber_platzierung] [varchar](50) NULL,
	[wettbewerber_platzierung_text] [text] NULL,
	[verkauf_aktionspreis] [bit] NULL,
	[sorte_beliebteste] [varchar](max) NULL,
	[sorte_sonstiges] [varchar](max) NULL,
	[anlagedatum] [varchar](50) NULL,
	[Freigabe] [bit] NOT NULL,
	[Ersteller] [int] NULL,
 CONSTRAINT [PK_einsatzbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_produkte]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_produkte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[einsatz_id] [int] NULL,
	[Tagnummer] [int] NULL,
	[Aktionspreis] [bit] NULL,
	[Preis_Produkt1] [decimal](18, 2) NULL,
	[Preis_Produkt2] [decimal](18, 2) NULL,
	[Preis_Produkt3] [decimal](18, 2) NULL,
	[Preis_Produkt4] [decimal](18, 2) NULL,
	[Preis_Produkt5] [decimal](18, 2) NULL,
	[Preis_Produkt6] [decimal](18, 2) NULL,
	[Preis_Produkt7] [decimal](18, 2) NULL,
	[Preis_Produkt8] [decimal](18, 2) NULL,
	[Preis_Produkt9] [decimal](18, 2) NULL,
	[Preis_Produkt10] [decimal](18, 2) NULL,
	[Preis_Produkt11] [decimal](18, 2) NULL,
	[Preis_Produkt12] [decimal](18, 2) NULL,
	[Preis_Produkt13] [decimal](18, 2) NULL,
	[Preis_Produkt14] [decimal](18, 2) NULL,
	[Preis_Produkt15] [decimal](18, 2) NULL,
	[Preis_Produkt16] [decimal](18, 2) NULL,
	[Preis_Produkt17] [decimal](18, 2) NULL,
	[Preis_Produkt18] [decimal](18, 2) NULL,
	[Preis_Produkt19] [decimal](18, 2) NULL,
	[Preis_Produkt20] [decimal](18, 2) NULL,
	[Preis_Produkt21] [decimal](18, 2) NULL,
	[Preis_Produkt22] [decimal](18, 2) NULL,
	[Preis_Produkt23] [decimal](18, 2) NULL,
	[Preis_Produkt24] [decimal](18, 2) NULL,
	[Preis_Produkt25] [decimal](18, 2) NULL,
	[Verkauf_Produkt1] [int] NULL,
	[Verkauf_Produkt2] [int] NULL,
	[Verkauf_Produkt3] [int] NULL,
	[Verkauf_Produkt4] [int] NULL,
	[Verkauf_Produkt5] [int] NULL,
	[Verkauf_Produkt6] [int] NULL,
	[Verkauf_Produkt7] [int] NULL,
	[Verkauf_Produkt8] [int] NULL,
	[Verkauf_Produkt9] [int] NULL,
	[Verkauf_Produkt10] [int] NULL,
	[Verkauf_Produkt11] [int] NULL,
	[Verkauf_Produkt12] [int] NULL,
	[Verkauf_Produkt13] [int] NULL,
	[Verkauf_Produkt14] [int] NULL,
	[Verkauf_Produkt15] [int] NULL,
	[Verkauf_Produkt16] [int] NULL,
	[Verkauf_Produkt17] [int] NULL,
	[Verkauf_Produkt18] [int] NULL,
	[Verkauf_Produkt19] [int] NULL,
	[Verkauf_Produkt20] [int] NULL,
	[Verkauf_Produkt21] [int] NULL,
	[Verkauf_Produkt22] [int] NULL,
	[Verkauf_Produkt23] [int] NULL,
	[Verkauf_Produkt24] [int] NULL,
	[Verkauf_Produkt25] [int] NULL,
	[Verkostung_Produkt1] [int] NULL,
	[Verkostung_Produkt2] [int] NULL,
	[Verkostung_Produkt3] [int] NULL,
	[Verkostung_Produkt4] [int] NULL,
	[Verkostung_Produkt5] [int] NULL,
	[Verkostung_Produkt6] [int] NULL,
	[Verkostung_Produkt7] [int] NULL,
	[Verkostung_Produkt8] [int] NULL,
	[Verkostung_Produkt9] [int] NULL,
	[Verkostung_Produkt10] [int] NULL,
	[Verkostung_Produkt11] [int] NULL,
	[Verkostung_Produkt12] [int] NULL,
	[Verkostung_Produkt13] [int] NULL,
	[Verkostung_Produkt14] [int] NULL,
	[Verkostung_Produkt15] [int] NULL,
	[Verkostung_Produkt16] [int] NULL,
	[Verkostung_Produkt17] [int] NULL,
	[Verkostung_Produkt18] [int] NULL,
	[Verkostung_Produkt19] [int] NULL,
	[Verkostung_Produkt20] [int] NULL,
	[Verkostung_Produkt21] [int] NULL,
	[Verkostung_Produkt22] [int] NULL,
	[Verkostung_Produkt23] [int] NULL,
	[Verkostung_Produkt24] [int] NULL,
	[Verkostung_Produkt25] [int] NULL,
	[Eingetragen] [bit] NOT NULL,
 CONSTRAINT [PK_einsatzbericht_produkte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Einsatzbogen_parts]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Einsatzbogen_parts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aktion_id] [int] NULL,
	[ware_vorhanden] [bit] NOT NULL,
	[frequenz_im_markt] [bit] NOT NULL,
	[ausgabe_sachets] [bit] NOT NULL,
	[topschild_einsetzbar] [bit] NOT NULL,
	[anregungen_kunde] [bit] NOT NULL,
	[fragen_zu_wettbewerbern] [bit] NOT NULL,
	[produktverkostung_lt_absprache] [bit] NOT NULL,
	[beliebteste_sorte] [bit] NOT NULL,
 CONSTRAINT [PK_Einsatzbogen_parts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment_Absprache]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment_Absprache](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[einsatz_id] [int] NULL,
	[Menge] [int] NULL,
	[Equipment_id] [int] NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Equipment_Absprache] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fragebogen]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fragebogen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[einsatz_id] [int] NOT NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_fragebogen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 06.07.2018 11:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[bez] [varchar](max) NULL,
	[vl] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
	[rolle] [varchar](max) NULL,
	[werbedamen_id] [int] NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maerkte]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maerkte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ID_bezirk] [int] NULL,
	[BVL] [nvarchar](255) NULL,
	[AD] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[PLZ] [nvarchar](max) NULL,
	[Ort] [nvarchar](255) NULL,
	[Strasse] [nvarchar](255) NULL,
	[APMarkt] [nvarchar](255) NULL,
	[Telefon] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL,
	[Marktleiter] [nvarchar](255) NULL,
	[Handelszentrale] [nvarchar](255) NULL,
	[Typ] [nvarchar](255) NULL,
 CONSTRAINT [PK_maerkte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aktion] [int] NULL,
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[Verkauf] [bit] NULL,
	[Verkostung] [bit] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Produkte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_Absprache]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_Absprache](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aktion] [int] NULL,
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[Verkauf] [bit] NULL,
	[Verkostung] [bit] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Produkte_Absprache] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verkostungsart]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verkostungsart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aktions_id] [int] NULL,
	[Name] [varchar](max) NULL,
	[Einsatztage] [int] NULL,
	[Gebiet1] [int] NULL,
	[Gebiet2] [int] NULL,
	[Gebiet3] [int] NULL,
	[Gebiet4] [int] NULL,
 CONSTRAINT [PK_verkostungsart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Personal_Ansicht]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Personal_Ansicht]
AS
SELECT        TOP (100) PERCENT vorname + ' ' + nachname AS name, id, strasse, plz, ort
FROM            gate_personal.dbo.personal
ORDER BY nachname
GO
/****** Object:  View [dbo].[Exportgenerator]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Exportgenerator]
AS
SELECT        dbo.Einsaetze.BVL_Nummer AS BEZ, dbo.Einsaetze.BVL_Name AS AD, dbo.Einsaetze.Markt_Name AS Name, dbo.Einsaetze.Markt_PLZ AS PLZ, 
                         dbo.Einsaetze.Markt_Ort AS Ort, dbo.Einsaetze.Markt_Strasse AS Strasse, dbo.Einsaetze.Markt_AP AS APMarkt, dbo.Einsaetze.KW, 
                         dbo.Einsaetze.aktion_beginn AS aktionstag1, dbo.Einsaetze.aktion_ende AS aktionstag2, dbo.Einsaetze.aktionstage AS ET, dbo.Aktionen.Unternehmen, 
                         dbo.Aktionen.Name AS Aktion, dbo.Einsaetze.Verkostungsaktion, dbo.Einsaetze.Typ, dbo.Personal_Ansicht.name AS Werbedame, dbo.Einsaetze.anlagedatum
FROM            dbo.Einsaetze INNER JOIN
                         dbo.Aktionen ON dbo.Einsaetze.aktion = dbo.Aktionen.id LEFT OUTER JOIN
                         dbo.Personal_Ansicht ON dbo.Einsaetze.Promotor_durchfuehrend = dbo.Personal_Ansicht.id
GO
/****** Object:  View [dbo].[Einsatztage_je_Outlet_und_Promoter]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Einsatztage_je_Outlet_und_Promoter]
AS
SELECT        TOP (100) PERCENT dbo.Einsaetze.HZ, dbo.Einsaetze.Markt_TDLinqx, dbo.Einsaetze.Typ, dbo.Einsaetze.Markt_Vertriebslinie, dbo.Einsaetze.Markt_Name, 
                         dbo.Einsaetze.Markt_Strasse, dbo.Einsaetze.Markt_PLZ, dbo.Einsaetze.Markt_Ort, SUM(dbo.Einsaetze.aktionstage) AS Einsatztage, dbo.Personal_Ansicht.name, 
                         dbo.Personal_Ansicht.strasse, dbo.Personal_Ansicht.plz, dbo.Personal_Ansicht.ort
FROM            dbo.Einsaetze INNER JOIN
                         dbo.Personal_Ansicht ON dbo.Einsaetze.Promotor_durchfuehrend = dbo.Personal_Ansicht.id
WHERE        (dbo.Einsaetze.aktion_beginn < CONVERT(DATETIME, '2017-07-01 00:00:00', 102)) AND (dbo.Einsaetze.Storno = 0)
GROUP BY dbo.Einsaetze.HZ, dbo.Einsaetze.Markt_TDLinqx, dbo.Einsaetze.Typ, dbo.Einsaetze.Markt_Vertriebslinie, dbo.Einsaetze.Markt_Name, 
                         dbo.Einsaetze.Markt_Strasse, dbo.Einsaetze.Markt_PLZ, dbo.Einsaetze.Markt_Ort, dbo.Personal_Ansicht.name, dbo.Personal_Ansicht.strasse, 
                         dbo.Personal_Ansicht.plz, dbo.Personal_Ansicht.ort
ORDER BY dbo.Einsaetze.Markt_TDLinqx
GO
/****** Object:  View [dbo].[Export_Stornos]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Stornos]
AS
SELECT        TOP (100) PERCENT dbo.Einsaetze.VL_Nummer, dbo.Einsaetze.BVL_Nummer, dbo.Einsaetze.HZ, dbo.Einsaetze.Typ, dbo.Einsaetze.VL_Name, 
                         dbo.Einsaetze.Markt_Name, dbo.Einsaetze.Markt_PLZ, dbo.Einsaetze.Markt_Ort, dbo.Einsaetze.Markt_Strasse, dbo.Einsaetze.Markt_AP, 
                         dbo.Einsaetze.aktion_beginn, dbo.Einsaetze.aktion_ende, dbo.Einsaetze.aktionstage, dbo.Einsaetze.KW, dbo.Personal_Ansicht.name, dbo.Einsaetze.Storno, 
                         dbo.Einsaetze.Storno_Grund, dbo.Einsaetze.Storno_Beschreibung, dbo.Aktionen.Name AS Expr1, dbo.Einsaetze.Verkostungsaktion
FROM            dbo.Einsaetze INNER JOIN
                         dbo.Aktionen ON dbo.Einsaetze.aktion = dbo.Aktionen.id LEFT OUTER JOIN
                         dbo.Personal_Ansicht ON dbo.Einsaetze.Promotor_durchfuehrend = dbo.Personal_Ansicht.id
WHERE        (dbo.Einsaetze.Storno = 1)
ORDER BY dbo.Einsaetze.aktion_beginn
GO
/****** Object:  View [dbo].[zusammenfassung_preise]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[zusammenfassung_preise]
AS
SELECT        einsatz_id, Preis_Produkt1, Preis_Produkt2, Preis_Produkt3, Preis_Produkt4, Preis_Produkt5, Preis_Produkt6, Preis_Produkt7, Preis_Produkt8, Preis_Produkt9, 
                         Preis_Produkt10, Preis_Produkt11, Preis_Produkt12, Preis_Produkt13, Preis_Produkt14, Preis_Produkt15, Preis_Produkt16, Preis_Produkt17, Preis_Produkt18, 
                         Preis_Produkt19, Preis_Produkt20, Preis_Produkt21, Preis_Produkt22, Preis_Produkt23, Preis_Produkt24, Preis_Produkt25
FROM            dbo.einsatzbericht_produkte
WHERE        (Tagnummer = 1)
GO
/****** Object:  View [dbo].[zusammenfassung_verkauf]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[zusammenfassung_verkauf]
AS
SELECT        einsatz_id, SUM(Verkauf_Produkt1) AS Expr1, SUM(Verkauf_Produkt2) AS Expr2, SUM(Verkauf_Produkt3) AS Expr3, SUM(Verkauf_Produkt4) AS Expr4, 
                         SUM(Verkauf_Produkt5) AS Expr5, SUM(Verkauf_Produkt6) AS Expr6, SUM(Verkauf_Produkt7) AS Expr7, SUM(Verkauf_Produkt8) AS Expr8, SUM(Verkauf_Produkt9) 
                         AS Expr9, SUM(Verkauf_Produkt10) AS Expr10, SUM(Verkauf_Produkt11) AS Expr11, SUM(Verkauf_Produkt12) AS Expr12, SUM(Verkauf_Produkt13) AS Expr13, 
                         SUM(Verkauf_Produkt14) AS Expr14, SUM(Verkauf_Produkt15) AS Expr15, SUM(Verkauf_Produkt16) AS Expr16, SUM(Verkauf_Produkt17) AS Expr17, 
                         SUM(Verkauf_Produkt18) AS Expr18, SUM(Verkauf_Produkt19) AS Expr19, SUM(Verkauf_Produkt20) AS Expr20, SUM(Verkauf_Produkt21) AS Expr21, 
                         SUM(Verkauf_Produkt22) AS Expr22, SUM(Verkauf_Produkt23) AS Expr23, SUM(Verkauf_Produkt24) AS Expr24, SUM(Verkauf_Produkt25) AS Expr25
FROM            dbo.einsatzbericht_produkte
GROUP BY einsatz_id
GO
/****** Object:  View [dbo].[zusammenfassung_verkostung]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[zusammenfassung_verkostung]
AS
SELECT        einsatz_id, SUM(Verkostung_Produkt1) AS Expr1, SUM(Verkostung_Produkt2) AS Expr2, SUM(Verkostung_Produkt3) AS Expr3, SUM(Verkostung_Produkt4) AS Expr4, 
                         SUM(Verkostung_Produkt5) AS Expr5, SUM(Verkostung_Produkt6) AS Expr6, SUM(Verkostung_Produkt7) AS Expr7, SUM(Verkostung_Produkt8) AS Expr8, 
                         SUM(Verkostung_Produkt9) AS Expr9, SUM(Verkostung_Produkt10) AS Expr10, SUM(Verkostung_Produkt11) AS Expr11, SUM(Verkostung_Produkt12) AS Expr12, 
                         SUM(Verkostung_Produkt13) AS Expr13, SUM(Verkostung_Produkt14) AS Expr14, SUM(Verkostung_Produkt15) AS Expr15, SUM(Verkostung_Produkt16) AS Expr16, 
                         SUM(Verkostung_Produkt17) AS Expr17, SUM(Verkostung_Produkt18) AS Expr18, SUM(Verkostung_Produkt19) AS Expr19, SUM(Verkostung_Produkt20) AS Expr20, 
                         SUM(Verkostung_Produkt21) AS Expr21, SUM(Verkostung_Produkt22) AS Expr22, SUM(Verkostung_Produkt23) AS Expr23, SUM(Verkostung_Produkt24) AS Expr24, 
                         SUM(Verkostung_Produkt25) AS Expr25
FROM            dbo.einsatzbericht_produkte
GROUP BY einsatz_id
GO
/****** Object:  View [dbo].[Zusammenfassung]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Zusammenfassung]
AS
SELECT        dbo.zusammenfassung_preise.einsatz_id, dbo.zusammenfassung_preise.Preis_Produkt1 as Produkt1, dbo.zusammenfassung_preise.Preis_Produkt2 as Produkt2, 
                         dbo.zusammenfassung_preise.Preis_Produkt3 as Produkt3, dbo.zusammenfassung_preise.Preis_Produkt4 as Produkt4, dbo.zusammenfassung_preise.Preis_Produkt5 as Produkt5, 
                         dbo.zusammenfassung_preise.Preis_Produkt6 as Produkt6, dbo.zusammenfassung_preise.Preis_Produkt7 as Produkt7, dbo.zusammenfassung_preise.Preis_Produkt8 as Produkt8, 
                         dbo.zusammenfassung_preise.Preis_Produkt9 as Produkt9, dbo.zusammenfassung_preise.Preis_Produkt10 as Produkt10, dbo.zusammenfassung_preise.Preis_Produkt11 as Produkt11, 
                         dbo.zusammenfassung_preise.Preis_Produkt12 as Produkt12, dbo.zusammenfassung_preise.Preis_Produkt13 as Produkt13, dbo.zusammenfassung_preise.Preis_Produkt14 as Produkt14, 
                         dbo.zusammenfassung_preise.Preis_Produkt15 as Produkt15, dbo.zusammenfassung_preise.Preis_Produkt16 as Produkt16, dbo.zusammenfassung_preise.Preis_Produkt17 as Produkt17, 
                         dbo.zusammenfassung_preise.Preis_Produkt18 as Produkt18, dbo.zusammenfassung_preise.Preis_Produkt19 as Produkt19, dbo.zusammenfassung_preise.Preis_Produkt20 as Produkt20, 
                         dbo.zusammenfassung_preise.Preis_Produkt21 as Produkt21, dbo.zusammenfassung_preise.Preis_Produkt22 as Produkt22, dbo.zusammenfassung_preise.Preis_Produkt23 as Produkt23, 
                         dbo.zusammenfassung_preise.Preis_Produkt24 as Produkt24, dbo.zusammenfassung_preise.Preis_Produkt25 as Produkt25, '1' as Position
FROM            dbo.zusammenfassung_preise 

union

SELECT        einsatz_id, Expr1, Expr2, 
                         Expr3, Expr4, Expr5, 
                         Expr6, Expr7, Expr8, 
                         Expr9, Expr10, Expr11, 
                         Expr12, Expr13, Expr14, 
                         Expr15, Expr16, Expr17, 
                         Expr18, Expr19, Expr20, 
                         Expr21, Expr22, Expr23, 
                         Expr24, Expr25, '2' as Position
FROM            dbo.zusammenfassung_verkauf 

union

SELECT        einsatz_id, Expr1, Expr2, 
                         Expr3, Expr4, Expr5, 
                         Expr6, Expr7, Expr8, 
                         Expr9, Expr10, Expr11, 
                         Expr12, Expr13, Expr14, 
                         Expr15, Expr16, Expr17, 
                         Expr18, Expr19, Expr20, 
                         Expr21, Expr22, Expr23, 
                         Expr24, Expr25, '3' as Position
FROM            dbo.zusammenfassung_verkostung 
GO
/****** Object:  View [dbo].[Zusammenfassung_Verkauf_und_Verkostung]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Zusammenfassung_Verkauf_und_Verkostung]
AS
SELECT        dbo.zusammenfassung_verkauf.einsatz_id, 
                         dbo.zusammenfassung_verkauf.Expr1 + dbo.zusammenfassung_verkauf.Expr2 + dbo.zusammenfassung_verkauf.Expr3 + dbo.zusammenfassung_verkauf.Expr4 + dbo.zusammenfassung_verkauf.Expr5
                          + dbo.zusammenfassung_verkauf.Expr6 + dbo.zusammenfassung_verkauf.Expr7 + dbo.zusammenfassung_verkauf.Expr8 + dbo.zusammenfassung_verkauf.Expr9 +
                          dbo.zusammenfassung_verkauf.Expr10 + dbo.zusammenfassung_verkauf.Expr11 + dbo.zusammenfassung_verkauf.Expr12 + dbo.zusammenfassung_verkauf.Expr13
                          + dbo.zusammenfassung_verkauf.Expr14 + dbo.zusammenfassung_verkauf.Expr15 + dbo.zusammenfassung_verkauf.Expr16 + dbo.zusammenfassung_verkauf.Expr17
                          + dbo.zusammenfassung_verkauf.Expr18 + dbo.zusammenfassung_verkauf.Expr19 + dbo.zusammenfassung_verkauf.Expr20 + dbo.zusammenfassung_verkauf.Expr21
                          + dbo.zusammenfassung_verkauf.Expr22 + dbo.zusammenfassung_verkauf.Expr23 + dbo.zusammenfassung_verkauf.Expr24 + dbo.zusammenfassung_verkauf.Expr25
                          AS Verkauf, 
                         dbo.zusammenfassung_verkostung.Expr1 + dbo.zusammenfassung_verkostung.Expr2 + dbo.zusammenfassung_verkostung.Expr3 + dbo.zusammenfassung_verkostung.Expr4
                          + dbo.zusammenfassung_verkostung.Expr5 + dbo.zusammenfassung_verkostung.Expr6 + dbo.zusammenfassung_verkostung.Expr7 + dbo.zusammenfassung_verkostung.Expr8
                          + dbo.zusammenfassung_verkostung.Expr9 + dbo.zusammenfassung_verkostung.Expr10 + dbo.zusammenfassung_verkostung.Expr11 + dbo.zusammenfassung_verkostung.Expr12
                          + dbo.zusammenfassung_verkostung.Expr13 + dbo.zusammenfassung_verkostung.Expr14 + dbo.zusammenfassung_verkostung.Expr15 + dbo.zusammenfassung_verkostung.Expr16
                          + dbo.zusammenfassung_verkostung.Expr17 + dbo.zusammenfassung_verkostung.Expr18 + dbo.zusammenfassung_verkostung.Expr19 + dbo.zusammenfassung_verkostung.Expr20
                          + dbo.zusammenfassung_verkostung.Expr21 + dbo.zusammenfassung_verkostung.Expr22 + dbo.zusammenfassung_verkostung.Expr23 + dbo.zusammenfassung_verkostung.Expr24
                          + dbo.zusammenfassung_verkostung.Expr25 AS Verkostung
FROM            dbo.zusammenfassung_verkauf INNER JOIN
                         dbo.zusammenfassung_verkostung ON dbo.zusammenfassung_verkauf.einsatz_id = dbo.zusammenfassung_verkostung.einsatz_id
GO
/****** Object:  View [dbo].[Kunden_Zusammenfassung_Overview]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kunden_Zusammenfassung_Overview]
AS
SELECT        dbo.Einsaetze.aktionstage, dbo.einsatzbericht.Aktionsstandort, dbo.einsatzbericht.ZweitplatzierungPaletten, dbo.einsatzbericht.ZweitplatzierungDisplays, 
                         dbo.einsatzbericht.KundenkontakteOhneBeratung, dbo.einsatzbericht.KundenkontakteMitBeratung, dbo.einsatzbericht.KundenkontakteGesamt, 
                         dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkostung AS VerkostungGesamt, dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkauf AS VerkaufGesamt, 
                         dbo.einsatzbericht.wettbewerber_aktiv AS aktivitaeten, dbo.Einsaetze.id
FROM            dbo.Einsaetze INNER JOIN
                         dbo.einsatzbericht ON dbo.Einsaetze.id = dbo.einsatzbericht.einsatz_id INNER JOIN
                         dbo.Zusammenfassung_Verkauf_und_Verkostung ON dbo.einsatzbericht.einsatz_id = dbo.Zusammenfassung_Verkauf_und_Verkostung.einsatz_id
GO
/****** Object:  View [dbo].[kunde_auswertung_einsatz_verkauf]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[kunde_auswertung_einsatz_verkauf]
AS
SELECT        dbo.Einsaetze.id, dbo.Einsaetze.VL_Nummer AS VL, dbo.Einsaetze.BVL_Nummer AS BEZ, dbo.Einsaetze.HZ, dbo.Einsaetze.Typ, dbo.Einsaetze.aktion_beginn, dbo.Einsaetze.aktion_ende, dbo.Einsaetze.KW, 
                         dbo.Einsaetze.aktionstage, dbo.Personal_Ansicht.name AS Promotor, dbo.Einsaetze.Markt_Name AS Name, dbo.Einsaetze.Markt_Ort AS Ort, dbo.Einsaetze.aktion, 
                         dbo.zusammenfassung_verkauf.Expr1 AS Produkt1, dbo.zusammenfassung_verkauf.Expr2 AS Produkt2, dbo.zusammenfassung_verkauf.Expr3 AS Produkt3, dbo.zusammenfassung_verkauf.Expr4 AS Produkt4, 
                         dbo.zusammenfassung_verkauf.Expr5 AS Produkt5, dbo.zusammenfassung_verkauf.Expr6 AS Produkt6, dbo.zusammenfassung_verkauf.Expr7 AS Produkt7, dbo.zusammenfassung_verkauf.Expr8 AS Produkt8, 
                         dbo.zusammenfassung_verkauf.Expr9 AS Produkt9, dbo.zusammenfassung_verkauf.Expr10 AS Produkt10, dbo.zusammenfassung_verkauf.Expr11 AS Produkt11, 
                         dbo.zusammenfassung_verkauf.Expr12 AS Produkt12, dbo.zusammenfassung_verkauf.Expr13 AS Produkt13, dbo.zusammenfassung_verkauf.Expr14 AS Produkt14, 
                         dbo.zusammenfassung_verkauf.Expr15 AS Produkt15, dbo.zusammenfassung_verkauf.Expr16 AS Produkt16, dbo.zusammenfassung_verkauf.Expr17 AS Produkt17, 
                         dbo.zusammenfassung_verkauf.Expr18 AS Produkt18, dbo.zusammenfassung_verkauf.Expr19 AS Produkt19, dbo.zusammenfassung_verkauf.Expr20 AS Produkt20, 
                         dbo.zusammenfassung_verkauf.Expr21 AS Produkt21, dbo.zusammenfassung_verkauf.Expr22 AS Produkt22, dbo.zusammenfassung_verkauf.Expr23 AS Produkt23, 
                         dbo.zusammenfassung_verkauf.Expr24 AS Produkt24, dbo.zusammenfassung_verkauf.Expr25 AS Produkt25, dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkauf AS Summe, 
                         dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkauf / dbo.Einsaetze.aktionstage AS Durchschnitt, dbo.Einsaetze.Verkostungsaktion, dbo.Einsaetze.Markt_Vertriebslinie
FROM            dbo.Einsaetze INNER JOIN
                         dbo.zusammenfassung_verkauf ON dbo.Einsaetze.id = dbo.zusammenfassung_verkauf.einsatz_id INNER JOIN
                         dbo.Zusammenfassung_Verkauf_und_Verkostung ON dbo.Einsaetze.id = dbo.Zusammenfassung_Verkauf_und_Verkostung.einsatz_id INNER JOIN
                         dbo.Personal_Ansicht ON dbo.Einsaetze.Promotor_durchfuehrend = dbo.Personal_Ansicht.id
GO
/****** Object:  View [dbo].[kunde_auswertung_einsatz_verkostung]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[kunde_auswertung_einsatz_verkostung]
AS
SELECT        dbo.Einsaetze.id, dbo.Einsaetze.VL_Nummer AS VL, dbo.Einsaetze.BVL_Nummer AS BEZ, dbo.Einsaetze.HZ, dbo.Einsaetze.Typ, dbo.Einsaetze.aktion_beginn, dbo.Einsaetze.aktion_ende, dbo.Einsaetze.KW, 
                         dbo.Einsaetze.aktionstage, dbo.Personal_Ansicht.name AS Promotor, dbo.Einsaetze.Markt_Name AS Name, dbo.Einsaetze.Markt_Ort AS Ort, dbo.Einsaetze.aktion, 
                         dbo.zusammenfassung_verkostung.Expr1 AS Produkt1, dbo.zusammenfassung_verkostung.Expr2 AS Produkt2, dbo.zusammenfassung_verkostung.Expr3 AS Produkt3, 
                         dbo.zusammenfassung_verkostung.Expr4 AS Produkt4, dbo.zusammenfassung_verkostung.Expr5 AS Produkt5, dbo.zusammenfassung_verkostung.Expr6 AS Produkt6, 
                         dbo.zusammenfassung_verkostung.Expr7 AS Produkt7, dbo.zusammenfassung_verkostung.Expr8 AS Produkt8, dbo.zusammenfassung_verkostung.Expr9 AS Produkt9, 
                         dbo.zusammenfassung_verkostung.Expr10 AS Produkt10, dbo.zusammenfassung_verkostung.Expr11 AS Produkt11, dbo.zusammenfassung_verkostung.Expr12 AS Produkt12, 
                         dbo.zusammenfassung_verkostung.Expr13 AS Produkt13, dbo.zusammenfassung_verkostung.Expr14 AS Produkt14, dbo.zusammenfassung_verkostung.Expr15 AS Produkt15, 
                         dbo.zusammenfassung_verkostung.Expr16 AS Produkt16, dbo.zusammenfassung_verkostung.Expr17 AS Produkt17, dbo.zusammenfassung_verkostung.Expr18 AS Produkt18, 
                         dbo.zusammenfassung_verkostung.Expr19 AS Produkt19, dbo.zusammenfassung_verkostung.Expr20 AS Produkt20, dbo.zusammenfassung_verkostung.Expr21 AS Produkt21, 
                         dbo.zusammenfassung_verkostung.Expr22 AS Produkt22, dbo.zusammenfassung_verkostung.Expr23 AS Produkt23, dbo.zusammenfassung_verkostung.Expr24 AS Produkt24, 
                         dbo.zusammenfassung_verkostung.Expr25 AS Produkt25, dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkostung AS Summe, 
                         dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkostung / dbo.Einsaetze.aktionstage AS Durchschnitt, dbo.Einsaetze.Verkostungsaktion, dbo.Einsaetze.Markt_Vertriebslinie
FROM            dbo.Einsaetze INNER JOIN
                         dbo.zusammenfassung_verkostung ON dbo.Einsaetze.id = dbo.zusammenfassung_verkostung.einsatz_id INNER JOIN
                         dbo.Zusammenfassung_Verkauf_und_Verkostung ON dbo.Einsaetze.id = dbo.Zusammenfassung_Verkauf_und_Verkostung.einsatz_id INNER JOIN
                         dbo.Personal_Ansicht ON dbo.Einsaetze.Promotor_durchfuehrend = dbo.Personal_Ansicht.id
GO
/****** Object:  View [dbo].[kunde_auswertung_vk]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[kunde_auswertung_vk]
AS
SELECT        dbo.Zusammenfassung_Verkauf_und_Verkostung.einsatz_id, dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkostung, 
                         CAST(dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkostung AS float) / dbo.Einsaetze.aktionstage AS schnitt_verkostung, 
                         dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkauf, CAST(dbo.Zusammenfassung_Verkauf_und_Verkostung.Verkauf AS float) 
                         / dbo.Einsaetze.aktionstage AS schnitt_verkauf
FROM            dbo.Zusammenfassung_Verkauf_und_Verkostung INNER JOIN
                         dbo.Einsaetze ON dbo.Zusammenfassung_Verkauf_und_Verkostung.einsatz_id = dbo.Einsaetze.id
GO
/****** Object:  View [dbo].[kunde_auswertung_gesamtuebersicht]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[kunde_auswertung_gesamtuebersicht]
AS
SELECT        dbo.Einsaetze.id, dbo.Einsaetze.aktion, dbo.Einsaetze.VL_Nummer AS VL, dbo.Einsaetze.BVL_Nummer AS BEZ, dbo.Einsaetze.HZ, dbo.Einsaetze.Typ, dbo.Einsaetze.aktion_beginn, dbo.Einsaetze.aktion_ende, 
                         dbo.Einsaetze.KW, dbo.Einsaetze.aktionstage, dbo.Einsaetze.Markt_Name, dbo.Einsaetze.Markt_Ort, dbo.einsatzbericht.Beurteilung_Aktionsstandort, dbo.einsatzbericht.ZweitplatzierungPaletten, 
                         dbo.einsatzbericht.ZweitplatzierungDisplays, dbo.einsatzbericht.KundenkontakteOhneBeratung, dbo.einsatzbericht.KundenkontakteMitBeratung, dbo.einsatzbericht.KundenkontakteGesamt, 
                         dbo.einsatzbericht.KundenkontakteGesamt / dbo.Einsaetze.aktionstage AS Kontakte_pro_ET, dbo.kunde_auswertung_vk.Verkostung, dbo.kunde_auswertung_vk.schnitt_verkostung, 
                         dbo.kunde_auswertung_vk.Verkauf, dbo.kunde_auswertung_vk.schnitt_verkauf, dbo.Personal_Ansicht.name AS Promotor, dbo.Einsaetze.Verkostungsaktion, dbo.Einsaetze.Markt_Vertriebslinie
FROM            dbo.Einsaetze INNER JOIN
                         dbo.einsatzbericht ON dbo.Einsaetze.id = dbo.einsatzbericht.einsatz_id INNER JOIN
                         dbo.kunde_auswertung_vk ON dbo.einsatzbericht.einsatz_id = dbo.kunde_auswertung_vk.einsatz_id LEFT OUTER JOIN
                         dbo.Personal_Ansicht ON dbo.Einsaetze.Promotor_durchfuehrend = dbo.Personal_Ansicht.id
GO
/****** Object:  View [dbo].[Gesamtexport]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtexport]
AS
SELECT        TOP (100) PERCENT dbo.kunde_auswertung_einsatz_verkauf.VL, dbo.kunde_auswertung_einsatz_verkauf.BEZ, dbo.kunde_auswertung_einsatz_verkauf.HZ, 
                         dbo.kunde_auswertung_einsatz_verkauf.Typ, dbo.kunde_auswertung_einsatz_verkauf.aktion_beginn, dbo.kunde_auswertung_einsatz_verkauf.aktion_ende, 
                         dbo.kunde_auswertung_einsatz_verkauf.KW, dbo.kunde_auswertung_einsatz_verkauf.aktionstage, dbo.kunde_auswertung_einsatz_verkauf.Name, 
                         dbo.kunde_auswertung_einsatz_verkauf.Ort, dbo.einsatzbericht.Beurteilung_Aktionsstandort, dbo.einsatzbericht.Grund_Beurteilung_Aktionsstandort, 
                         dbo.einsatzbericht.KundenkontakteMitBeratung, dbo.einsatzbericht.KundenkontakteOhneBeratung, dbo.einsatzbericht.KundenkontakteGesamt, 
                         dbo.einsatzbericht.ZweitplatzierungPaletten, dbo.einsatzbericht.ZweitplatzierungDisplays, dbo.einsatzbericht.wettbewerber_aktiv, 
                         dbo.einsatzbericht.wettbewerber_sonstige_text, dbo.einsatzbericht_produkte.Preis_Produkt1, dbo.kunde_auswertung_einsatz_verkauf.Produkt1, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt1 AS Expr1, dbo.einsatzbericht_produkte.Preis_Produkt2, dbo.kunde_auswertung_einsatz_verkauf.Produkt2, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt2 AS Expr2, dbo.einsatzbericht_produkte.Preis_Produkt3, dbo.kunde_auswertung_einsatz_verkauf.Produkt3, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt3 AS Expr3, dbo.einsatzbericht_produkte.Preis_Produkt4, dbo.kunde_auswertung_einsatz_verkauf.Produkt4, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt4 AS Expr4, dbo.einsatzbericht_produkte.Preis_Produkt5, dbo.kunde_auswertung_einsatz_verkauf.Produkt5, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt5 AS Expr5, dbo.einsatzbericht_produkte.Preis_Produkt6, dbo.kunde_auswertung_einsatz_verkauf.Produkt6, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt6 AS Expr6, dbo.einsatzbericht_produkte.Preis_Produkt7, dbo.kunde_auswertung_einsatz_verkauf.Produkt7, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt7 AS Expr7, dbo.einsatzbericht_produkte.Preis_Produkt8, dbo.kunde_auswertung_einsatz_verkauf.Produkt8, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt8 AS Expr8, dbo.einsatzbericht_produkte.Preis_Produkt9, dbo.kunde_auswertung_einsatz_verkauf.Produkt9, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt9 AS Expr9, dbo.einsatzbericht_produkte.Preis_Produkt10, dbo.kunde_auswertung_einsatz_verkauf.Produkt10, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt10 AS Expr10, dbo.einsatzbericht_produkte.Preis_Produkt11, dbo.kunde_auswertung_einsatz_verkauf.Produkt11,
                          dbo.kunde_auswertung_einsatz_verkostung.Produkt11 AS Expr11, dbo.einsatzbericht_produkte.Preis_Produkt12, 
                         dbo.kunde_auswertung_einsatz_verkauf.Produkt12, dbo.kunde_auswertung_einsatz_verkostung.Produkt12 AS Expr12, dbo.einsatzbericht_produkte.Preis_Produkt13,
                          dbo.kunde_auswertung_einsatz_verkauf.Produkt13, dbo.kunde_auswertung_einsatz_verkostung.Produkt13 AS Expr13, 
                         dbo.einsatzbericht_produkte.Preis_Produkt14, dbo.kunde_auswertung_einsatz_verkauf.Produkt14, dbo.kunde_auswertung_einsatz_verkostung.Produkt14 AS Expr14,
                          dbo.einsatzbericht_produkte.Preis_Produkt15, dbo.kunde_auswertung_einsatz_verkauf.Produkt15, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt15 AS Expr15, dbo.einsatzbericht_produkte.Preis_Produkt16, dbo.kunde_auswertung_einsatz_verkauf.Produkt16,
                          dbo.kunde_auswertung_einsatz_verkostung.Produkt16 AS Expr16, dbo.einsatzbericht_produkte.Preis_Produkt17, 
                         dbo.kunde_auswertung_einsatz_verkauf.Produkt17, dbo.kunde_auswertung_einsatz_verkostung.Produkt17 AS Expr17, dbo.einsatzbericht_produkte.Preis_Produkt18,
                          dbo.kunde_auswertung_einsatz_verkauf.Produkt18, dbo.kunde_auswertung_einsatz_verkostung.Produkt18 AS Expr18, 
                         dbo.einsatzbericht_produkte.Preis_Produkt19, dbo.kunde_auswertung_einsatz_verkauf.Produkt19, dbo.kunde_auswertung_einsatz_verkostung.Produkt19 AS Expr19,
                          dbo.einsatzbericht_produkte.Preis_Produkt20, dbo.kunde_auswertung_einsatz_verkauf.Produkt20, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt20 AS Expr20, dbo.einsatzbericht_produkte.Preis_Produkt21, dbo.kunde_auswertung_einsatz_verkauf.Produkt21,
                          dbo.kunde_auswertung_einsatz_verkostung.Produkt21 AS Expr21, dbo.einsatzbericht_produkte.Preis_Produkt22, 
                         dbo.kunde_auswertung_einsatz_verkauf.Produkt22, dbo.kunde_auswertung_einsatz_verkostung.Produkt22 AS Expr22, dbo.einsatzbericht_produkte.Preis_Produkt23,
                          dbo.kunde_auswertung_einsatz_verkauf.Produkt23, dbo.kunde_auswertung_einsatz_verkostung.Produkt23 AS Expr23, 
                         dbo.einsatzbericht_produkte.Preis_Produkt24, dbo.kunde_auswertung_einsatz_verkauf.Produkt24, dbo.kunde_auswertung_einsatz_verkostung.Produkt24 AS Expr24,
                          dbo.einsatzbericht_produkte.Preis_Produkt25, dbo.kunde_auswertung_einsatz_verkauf.Produkt25, 
                         dbo.kunde_auswertung_einsatz_verkostung.Produkt25 AS Expr25, dbo.kunde_auswertung_einsatz_verkauf.Verkostungsaktion
FROM            dbo.kunde_auswertung_einsatz_verkauf INNER JOIN
                         dbo.kunde_auswertung_einsatz_verkostung ON dbo.kunde_auswertung_einsatz_verkauf.id = dbo.kunde_auswertung_einsatz_verkostung.id INNER JOIN
                         dbo.einsatzbericht ON dbo.kunde_auswertung_einsatz_verkauf.id = dbo.einsatzbericht.einsatz_id INNER JOIN
                         dbo.einsatzbericht_produkte ON dbo.kunde_auswertung_einsatz_verkauf.id = dbo.einsatzbericht_produkte.id
ORDER BY dbo.kunde_auswertung_einsatz_verkauf.aktion_beginn
GO
/****** Object:  View [dbo].[Produktvorlage]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Produktvorlage]
AS
SELECT        dbo.verkostungsart.id, dbo.verkostungsart.Name, dbo.Aktionen.Unternehmen
FROM            dbo.Aktionen INNER JOIN
                         dbo.verkostungsart ON dbo.Aktionen.id = dbo.verkostungsart.Aktions_id
GO
/****** Object:  View [dbo].[VL_AD_Uebersicht]    Script Date: 06.07.2018 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VL_AD_Uebersicht]
AS
SELECT        dbo.bezirke.ID, dbo.bezirke.VL, dbo.bezirke.Name + ', ' + dbo.bezirke.Vorname AS vl_name, dbo.bezirke.Telefon, bezirke_1.ID AS Expr1, bezirke_1.BEZ AS Expr2, 
                         bezirke_1.Name + ', ' + bezirke_1.Vorname AS ad_name, bezirke_1.Telefon AS Expr3
FROM            dbo.bezirke INNER JOIN
                         dbo.bezirke AS bezirke_1 ON dbo.bezirke.BEZ = bezirke_1.VL
GO
ALTER TABLE [dbo].[Einsaetze] ADD  CONSTRAINT [DF_Einsaetze_aktion]  DEFAULT ((0)) FOR [aktion]
GO
ALTER TABLE [dbo].[Einsaetze] ADD  CONSTRAINT [DF_Einsaetze_Storno]  DEFAULT ((0)) FOR [Storno]
GO
ALTER TABLE [dbo].[einsatzbericht] ADD  CONSTRAINT [DF_einsatzbericht_Freigabe]  DEFAULT ((0)) FOR [Freigabe]
GO
ALTER TABLE [dbo].[einsatzbericht_produkte] ADD  CONSTRAINT [DF_einsatzbericht_produkte_Eingetragen]  DEFAULT ((0)) FOR [Eingetragen]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Einsatzbogen_parts_ware_vorhanden]  DEFAULT ((0)) FOR [ware_vorhanden]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Table_1_frequenz_zufriedenheit]  DEFAULT ((0)) FOR [frequenz_im_markt]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Einsatzbogen_parts_ausgabe_sachets]  DEFAULT ((0)) FOR [ausgabe_sachets]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Einsatzbogen_parts_topschild_einsetzbar]  DEFAULT ((0)) FOR [topschild_einsetzbar]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Einsatzbogen_parts_anregungen_kunde]  DEFAULT ((0)) FOR [anregungen_kunde]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Einsatzbogen_parts_fragen_zu_wettbewerbern]  DEFAULT ((0)) FOR [fragen_zu_wettbewerbern]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Einsatzbogen_parts_produktverkostung_lt_absprache]  DEFAULT ((0)) FOR [produktverkostung_lt_absprache]
GO
ALTER TABLE [dbo].[Einsatzbogen_parts] ADD  CONSTRAINT [DF_Einsatzbogen_parts_beliebteste_sorte]  DEFAULT ((0)) FOR [beliebteste_sorte]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[16] 3) )"
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
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 237
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 51
         End
         Begin Table = "Personal_Ansicht"
            Begin Extent = 
               Top = 27
               Left = 578
               Bottom = 210
               Right = 748
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
      Begin ColumnWidths = 14
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Einsatztage_je_Outlet_und_Promoter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Einsatztage_je_Outlet_und_Promoter'
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
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 19
               Left = 423
               Bottom = 261
               Right = 647
            End
            DisplayFlags = 280
            TopColumn = 32
         End
         Begin Table = "Personal_Ansicht"
            Begin Extent = 
               Top = 15
               Left = 730
               Bottom = 210
               Right = 900
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Aktionen"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 21
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
         Or = 1350
         Or = 1350
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Stornos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Stornos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Stornos'
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
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 4
               Left = 557
               Bottom = 271
               Right = 781
            End
            DisplayFlags = 280
            TopColumn = 46
         End
         Begin Table = "Personal_Ansicht"
            Begin Extent = 
               Top = 18
               Left = 873
               Bottom = 233
               Right = 1043
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Aktionen"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 244
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Exportgenerator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Exportgenerator'
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
         Begin Table = "kunde_auswertung_einsatz_verkauf"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 254
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 31
         End
         Begin Table = "kunde_auswertung_einsatz_verkostung"
            Begin Extent = 
               Top = 6
               Left = 269
               Bottom = 260
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 28
         End
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 0
               Left = 484
               Bottom = 232
               Right = 761
            End
            DisplayFlags = 280
            TopColumn = 28
         End
         Begin Table = "einsatzbericht_produkte"
            Begin Extent = 
               Top = 6
               Left = 799
               Bottom = 261
               Right = 1007
            End
            DisplayFlags = 280
            TopColumn = 20
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 96
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
         Width = 1500
         Width ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[14] 2[27] 3) )"
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
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 249
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "zusammenfassung_verkauf"
            Begin Extent = 
               Top = 157
               Left = 561
               Bottom = 400
               Right = 731
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zusammenfassung_Verkauf_und_Verkostung"
            Begin Extent = 
               Top = 0
               Left = 397
               Bottom = 112
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Personal_Ansicht"
            Begin Extent = 
               Top = 6
               Left = 716
               Bottom = 101
               Right = 886
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
      Begin ColumnWidths = 41
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
         Width = 1500
         Width = 1500
         Wid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_einsatz_verkauf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'th = 1500
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
         Column = 3735
         Alias = 1770
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_einsatz_verkauf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_einsatz_verkauf'
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
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 344
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "zusammenfassung_verkostung"
            Begin Extent = 
               Top = 6
               Left = 300
               Bottom = 135
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zusammenfassung_Verkauf_und_Verkostung"
            Begin Extent = 
               Top = 6
               Left = 508
               Bottom = 118
               Right = 678
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Personal_Ansicht"
            Begin Extent = 
               Top = 6
               Left = 716
               Bottom = 101
               Right = 886
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
      Begin ColumnWidths = 41
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
         Width = 1500
         Width = 1500
         Wid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_einsatz_verkostung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'th = 1500
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
         Column = 3150
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_einsatz_verkostung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_einsatz_verkostung'
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
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 334
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 300
               Bottom = 246
               Right = 577
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "kunde_auswertung_vk"
            Begin Extent = 
               Top = 6
               Left = 615
               Bottom = 218
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Personal_Ansicht"
            Begin Extent = 
               Top = 6
               Left = 842
               Bottom = 102
               Right = 1009
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
      Begin ColumnWidths = 25
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_gesamtuebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_gesamtuebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_gesamtuebersicht'
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
         Begin Table = "Zusammenfassung_Verkauf_und_Verkostung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 228
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 222
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 32
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
         Column = 3150
         Alias = 2580
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_vk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kunde_auswertung_vk'
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
         Begin Table = "Einsaetze"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 240
               Right = 262
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 0
               Left = 298
               Bottom = 240
               Right = 575
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "Zusammenfassung_Verkauf_und_Verkostung"
            Begin Extent = 
               Top = 6
               Left = 615
               Bottom = 243
               Right = 785
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
         Column = 3705
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kunden_Zusammenfassung_Overview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kunden_Zusammenfassung_Overview'
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
         Begin Table = "personal (gate_personal.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 268
               Right = 234
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Personal_Ansicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Personal_Ansicht'
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
         Begin Table = "Aktionen"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 261
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "verkostungsart"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 221
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
         Width = 3120
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Produktvorlage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Produktvorlage'
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
         Begin Table = "bezirke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 204
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "bezirke_1"
            Begin Extent = 
               Top = 0
               Left = 372
               Bottom = 204
               Right = 542
            End
            DisplayFlags = 280
            TopColumn = 8
         End
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VL_AD_Uebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VL_AD_Uebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
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
         Begin Table = "zusammenfassung_preise"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 249
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "zusammenfassung_verkauf"
            Begin Extent = 
               Top = 6
               Left = 249
               Bottom = 135
               Right = 419
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "zusammenfassung_verkostung"
            Begin Extent = 
               Top = 6
               Left = 457
               Bottom = 135
               Right = 627
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
      Begin ColumnWidths = 28
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zusammenfassung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Append = 1400
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zusammenfassung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zusammenfassung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[2] 3) )"
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
         Begin Table = "einsatzbericht_produkte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 231
               Right = 246
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zusammenfassung_preise'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zusammenfassung_preise'
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
         Begin Table = "einsatzbericht_produkte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 249
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 44
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zusammenfassung_verkauf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zusammenfassung_verkauf'
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
         Begin Table = "zusammenfassung_verkauf"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 209
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "zusammenfassung_verkostung"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 135
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zusammenfassung_Verkauf_und_Verkostung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zusammenfassung_Verkauf_und_Verkostung'
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
         Begin Table = "einsatzbericht_produkte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 262
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zusammenfassung_verkostung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zusammenfassung_verkostung'
GO
USE [master]
GO
ALTER DATABASE [KruegerGruppe] SET  READ_WRITE 
GO
