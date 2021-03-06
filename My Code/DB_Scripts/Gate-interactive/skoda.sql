USE [master]
GO
/****** Object:  Database [skoda]    Script Date: 06.07.2018 12:02:34 ******/
CREATE DATABASE [skoda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'skoda', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\skoda.mdf' , SIZE = 15360KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'skoda_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\skoda_log.ldf' , SIZE = 12352KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [skoda] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [skoda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [skoda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [skoda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [skoda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [skoda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [skoda] SET ARITHABORT OFF 
GO
ALTER DATABASE [skoda] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [skoda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [skoda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [skoda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [skoda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [skoda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [skoda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [skoda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [skoda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [skoda] SET  DISABLE_BROKER 
GO
ALTER DATABASE [skoda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [skoda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [skoda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [skoda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [skoda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [skoda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [skoda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [skoda] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [skoda] SET  MULTI_USER 
GO
ALTER DATABASE [skoda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [skoda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [skoda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [skoda] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [skoda] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [skoda] SET QUERY_STORE = OFF
GO
USE [skoda]
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
USE [skoda]
GO
/****** Object:  User [Website_Skoda]    Script Date: 06.07.2018 12:02:34 ******/
CREATE USER [Website_Skoda] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_datareader]
GO
/****** Object:  User [Gate_DB_Admin]    Script Date: 06.07.2018 12:02:34 ******/
CREATE USER [Gate_DB_Admin] FOR LOGIN [Gate_DB_Admin] WITH DEFAULT_SCHEMA=[db_datareader]
GO
ALTER ROLE [db_owner] ADD MEMBER [Website_Skoda]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Website_Skoda]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Website_Skoda]
GO
ALTER ROLE [db_owner] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Gate_DB_Admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Gate_DB_Admin]
GO
/****** Object:  Table [dbo].[sk_personal]    Script Date: 06.07.2018 12:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_personal](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[mandant] [int] NOT NULL,
	[team] [int] NOT NULL,
	[teamleiter] [tinyint] NOT NULL,
	[promoter] [tinyint] NOT NULL,
	[moderator] [tinyint] NOT NULL,
	[kostuem] [tinyint] NOT NULL,
	[aufbau] [tinyint] NOT NULL,
	[kinderschminken] [tinyint] NOT NULL,
	[probefahrer] [tinyint] NOT NULL,
	[konvoi] [tinyint] NOT NULL,
	[sonstige] [tinyint] NOT NULL,
	[anrede] [varchar](50) NOT NULL,
	[firma] [varchar](255) NOT NULL,
	[vorname] [varchar](255) NOT NULL,
	[nachname] [varchar](255) NOT NULL,
	[strasse] [varchar](255) NOT NULL,
	[plz] [varchar](10) NOT NULL,
	[ort] [varchar](255) NOT NULL,
	[festnetz_alt] [varchar](255) NULL,
	[fax_alt] [varchar](255) NULL,
	[handy_alt] [varchar](255) NULL,
	[festnetz_vw] [varchar](50) NOT NULL,
	[festnetz_nr] [varchar](50) NOT NULL,
	[fax_vw] [varchar](10) NOT NULL,
	[fax_nr] [varchar](50) NOT NULL,
	[handy1_vw] [varchar](10) NOT NULL,
	[handy1_nr] [varchar](50) NOT NULL,
	[handy2_vw] [varchar](10) NOT NULL,
	[handy2_nr] [varchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[email2] [varchar](255) NOT NULL,
	[jeans] [varchar](100) NOT NULL,
	[konfektion] [varchar](100) NOT NULL,
	[konfektion_eu] [varchar](100) NULL,
	[schuhe] [varchar](100) NOT NULL,
	[geburtsdatum] [date] NOT NULL,
	[fuehrerschein] [varchar](20) NOT NULL,
	[gewerbeschein] [tinyint] NOT NULL,
	[rv] [tinyint] NOT NULL,
	[profibonus] [money] NOT NULL,
	[rahmenvertrag] [date] NOT NULL,
	[mehrwertsteuer] [tinyint] NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[passwort] [varchar](255) NULL,
	[ersteller] [int] NOT NULL,
	[angelegt] [datetime] NOT NULL,
	[lasteditor] [int] NOT NULL,
	[lastedit] [datetime] NOT NULL,
	[lastvisit] [datetime] NOT NULL,
	[aktiv] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_personal] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_benutzer]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_benutzer](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[mandant] [int] NOT NULL,
	[anrede] [varchar](4) NOT NULL,
	[vorname] [varchar](255) NOT NULL,
	[nachname] [varchar](255) NOT NULL,
	[firma] [varchar](255) NULL,
	[status] [varchar](255) NOT NULL,
	[anschrift] [varchar](255) NOT NULL,
	[plz] [varchar](10) NOT NULL,
	[ort] [varchar](255) NOT NULL,
	[telefon] [varchar](20) NULL,
	[telefax] [varchar](20) NULL,
	[handy] [varchar](20) NULL,
	[email] [varchar](255) NULL,
	[r1] [tinyint] NOT NULL,
	[r2] [tinyint] NOT NULL,
	[r3] [tinyint] NOT NULL,
	[r4] [tinyint] NOT NULL,
	[r5] [tinyint] NOT NULL,
	[r6] [tinyint] NOT NULL,
	[r7] [tinyint] NOT NULL,
	[r8] [tinyint] NOT NULL,
	[r9] [tinyint] NOT NULL,
	[r10] [tinyint] NOT NULL,
	[gl] [int] NULL,
	[lastvisit] [datetime] NOT NULL,
	[passwort] [varchar](20) NOT NULL,
	[aktiv] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_benutzer] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Zugang]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Zugang]
AS
SELECT        ident, vorname, nachname, r1, r2, passwort, aktiv
FROM            dbo.sk_benutzer
where aktiv=1

union

SELECT        ident, vorname, nachname, 0 as r1, 0 as r2, passwort, aktiv
FROM            dbo.sk_personal
where aktiv=1

GO
/****** Object:  Table [dbo].[sk_aktionsberichte]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_aktionsberichte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProjekt] [int] NOT NULL,
	[tl_standplatz] [varchar](max) NULL,
	[va_art] [varchar](max) NULL,
	[frequenz_va] [varchar](max) NULL,
	[frequenz_buehne] [varchar](max) NULL,
	[sofortgewinn] [varchar](max) NULL,
	[teilnahmekarten_ausgabe] [varchar](max) NULL,
	[teilnahmekarten_zurueck] [varchar](max) NULL,
	[beratungen] [varchar](20) NULL,
	[leads_clie] [varchar](20) NULL,
	[probefahrten_ausgabe] [varchar](20) NULL,
	[probefahrten_zurueck] [varchar](20) NULL,
	[mobile_showroom] [varchar](20) NULL,
	[eventbuehne] [tinyint] NULL,
	[grundmodul] [tinyint] NULL,
	[clevermodul] [tinyint] NULL,
	[elemente] [tinyint] NULL,
	[aktionsmodul_zusatz] [varchar](20) NULL,
	[aktionsmodul_zusatz_dabei] [tinyint] NULL,
	[kindermodul] [tinyint] NULL,
	[barbonesysteme] [tinyint] NULL,
	[probefahrtenmodul] [tinyint] NULL,
	[loungemodul] [tinyint] NULL,
	[twoinonemodul] [tinyint] NULL,
	[range_folder] [varchar](20) NULL,
	[range_folder_dabei] [tinyint] NULL,
	[gutschein_fsz] [varchar](20) NULL,
	[gutschein_fsz_dabei] [tinyint] NULL,
	[fahrerlebnis_broschuere] [varchar](20) NULL,
	[fahrerlebnis_broschuere_dabei] [tinyint] NULL,
	[eddy_fibel] [varchar](20) NULL,
	[eddy_fibel_dabei] [tinyint] NULL,
	[ausgabe_zusatz] [varchar](20) NULL,
	[ausgabe_zusatz_dabei] [tinyint] NULL,
	[ausgabe_zusatz_menge] [varchar](20) NULL,
	[gerolsteiner] [tinyint] NULL,
	[shell] [tinyint] NULL,
	[skodabank] [tinyint] NULL,
	[skodazubehoer] [tinyint] NULL,
	[kooperation1_partner] [varchar](20) NULL,
	[kooperation1_dabei] [tinyint] NULL,
	[kooperation2_partner] [varchar](20) NULL,
	[kooperation2_partner_dabei] [tinyint] NULL,
	[kooperation3_partner] [varchar](20) NULL,
	[kooperation3_partner_dabei] [tinyint] NULL,
	[chronograph] [varchar](20) NULL,
	[gutschein] [varchar](20) NULL,
	[pf_citigo] [varchar](20) NULL,
	[pf_rapid] [varchar](20) NULL,
	[pf_rapid_spaceback] [varchar](50) NULL,
	[pf_fabia_hdl] [varchar](20) NULL,
	[pf_fabia_sad] [varchar](20) NULL,
	[pf_fabia_combi_hdl] [varchar](20) NULL,
	[pf_fabia_combi_sad] [varchar](20) NULL,
	[pf_octavia_hdl] [varchar](20) NULL,
	[pf_octavia_sad] [varchar](20) NULL,
	[pf_octavia_combi_hdl] [varchar](20) NULL,
	[pf_octavia_combi_sad] [varchar](20) NULL,
	[pf_octavia_rs_hdl] [varchar](20) NULL,
	[pf_octavia_rs_sad] [varchar](20) NULL,
	[pf_octavia_scout_hdl] [varchar](20) NULL,
	[pf_octavia_scout_sad] [varchar](20) NULL,
	[pf_superb_hdl] [varchar](20) NULL,
	[pf_superb_sad] [varchar](20) NULL,
	[pf_roomster_hdl] [varchar](20) NULL,
	[pf_roomster_sad] [varchar](20) NULL,
	[pf_roomster_scout_hdl] [varchar](20) NULL,
	[pf_roomster_scout_sad] [varchar](20) NULL,
	[pf_yeti_hdl] [varchar](20) NULL,
	[pf_yeti_sad] [varchar](20) NULL,
	[pf_fzg_von_hdl] [tinyint] NULL,
	[pf_fzg_von_sad] [tinyint] NULL,
	[pf_fabia] [varchar](max) NULL,
	[pf_fabia_combi] [varchar](20) NULL,
	[pf_fabia_rs] [varchar](20) NULL,
	[pf_fabia_gl] [varchar](20) NULL,
	[pf_fabia_scout] [varchar](20) NULL,
	[pf_octavia] [varchar](20) NULL,
	[pf_octavia_combi] [varchar](20) NULL,
	[pf_octavia_rs] [varchar](20) NULL,
	[pf_octavia_gl] [varchar](20) NULL,
	[pf_octavia_scout] [varchar](20) NULL,
	[pf_suberb] [varchar](20) NULL,
	[pf_suberb_combi] [varchar](20) NULL,
	[pf_suberb_gl] [varchar](20) NULL,
	[pf_roomster] [varchar](20) NULL,
	[pf_roomster_scout] [varchar](20) NULL,
	[pf_yeti] [varchar](20) NULL,
	[pf_sonstige] [varchar](20) NULL,
	[pf_greenline] [varchar](20) NULL,
	[pf_rs] [varchar](20) NULL,
	[pf_scout] [varchar](20) NULL,
	[pf_gesamt] [varchar](20) NULL,
	[vk_greenline] [varchar](20) NULL,
	[vk_rs] [varchar](20) NULL,
	[vk_scout] [varchar](20) NULL,
	[vk_citigo] [varchar](20) NULL,
	[vk_rapid] [varchar](20) NULL,
	[vk_rapid_spaceback] [varchar](50) NULL,
	[vk_fabia] [varchar](20) NULL,
	[vk_fabia_combi] [varchar](20) NULL,
	[vk_fabia_rs] [varchar](20) NULL,
	[vk_fabia_gl] [varchar](20) NULL,
	[vk_fabia_scout] [varchar](20) NULL,
	[vk_octavia] [varchar](20) NULL,
	[vk_octavia_combi] [varchar](20) NULL,
	[vk_octavia_rs] [varchar](20) NULL,
	[vk_octavia_gl] [varchar](20) NULL,
	[vk_octavia_scout] [varchar](20) NULL,
	[vk_superb] [varchar](20) NULL,
	[vk_superb_combi] [varchar](20) NULL,
	[vk_superb_gl] [varchar](20) NULL,
	[vk_roomster] [varchar](20) NULL,
	[vk_roomster_scout] [varchar](50) NULL,
	[vk_yeti] [varchar](20) NULL,
	[vk_sonstige] [varchar](20) NULL,
	[vk_gesamt] [varchar](20) NULL,
	[mitbewerberaktionen] [text] NULL,
	[publikum] [text] NULL,
	[medienpraesenz] [text] NULL,
	[sonstige_anmerkungen] [text] NULL,
	[moderation] [tinyint] NULL,
	[buehnenteam] [tinyint] NULL,
	[beratungskompetenz] [tinyint] NULL,
	[standplatz] [tinyint] NULL,
	[sauberkeit_kfz] [tinyint] NULL,
	[sauberkeit_buehne] [tinyint] NULL,
	[zusammenarbeit] [tinyint] NULL,
	[teamwork] [tinyint] NULL,
	[resonanzen_auftritt] [text] NULL,
	[resonanzen_elemente] [text] NULL,
	[anmerkungen] [text] NULL,
	[nochmalige_teilnahme] [tinyint] NULL,
	[nochmalige_teilnahme_text] [text] NULL,
	[ersteller] [int] NULL,
	[eingang] [varchar](max) NULL,
	[freigabe] [varchar](255) NULL,
	[bilder] [varchar](max) NULL,
	[testsiegerflyer_dabei] [bit] NULL,
	[canton] [bit] NULL,
	[probefahrenkarte] [bit] NULL,
	[pf_superb] [varchar](max) NULL,
	[pf_superb_combi] [varchar](max) NULL,
	[Ansprechpartner_anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[Ansprechpartner_Mail] [varchar](max) NULL,
	[testsiegerflyer] [varchar](20) NULL,
	[pf_kodiaq] [varchar](max) NULL,
 CONSTRAINT [PK_sk_aktionsberichte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[offene_ab]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[offene_ab]
AS
SELECT     idProjekt
FROM         dbo.sk_aktionsberichte
WHERE     (freigabe = 'nein')
GO
/****** Object:  Table [dbo].[sk_teamleiterberichte]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_teamleiterberichte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProjekt] [int] NOT NULL,
	[aktionstag1_datum] [varchar](10) NULL,
	[aktionstag1_von] [varchar](5) NULL,
	[aktionstag1_bis] [varchar](5) NULL,
	[aktionstag2_datum] [varchar](10) NULL,
	[aktionstag2_von] [varchar](5) NULL,
	[aktionstag2_bis] [varchar](5) NULL,
	[aktionstag3_datum] [varchar](10) NULL,
	[aktionstag3_von] [varchar](5) NULL,
	[aktionstag3_bis] [varchar](5) NULL,
	[aktionstag4_datum] [varchar](10) NULL,
	[aktionstag4_von] [varchar](5) NULL,
	[aktionstag4_bis] [varchar](5) NULL,
	[nochmalige_teilnahme] [tinyint] NULL,
	[nochmalige_teilnahme_text] [text] NULL,
	[verbesserungsvorschlaege] [text] NULL,
	[hotel_name] [varchar](50) NULL,
	[hotel_ort] [varchar](50) NULL,
	[kennzeichen_zug] [varchar](20) NULL,
	[kmstand_zug] [varchar](20) NULL,
	[kennzeichen_modul] [varchar](20) NULL,
	[schaeden_zug] [text] NULL,
	[schaeden_modul] [text] NULL,
	[hotel_empfehlung] [tinyint] NULL,
	[schaeden_eddyterminal] [text] NULL,
	[schaeden_bremswegsimulator] [text] NULL,
	[schaeden_eddykostuem] [text] NULL,
	[schaeden_stehtisch] [text] NULL,
	[schaeden_kindermodul] [text] NULL,
	[schaeden_leuchtsaeule] [text] NULL,
	[schaeden_infocounter] [text] NULL,
	[schaeden_airdisplay] [text] NULL,
	[schaeden_paradox] [text] NULL,
	[schaeden_gluecksrad] [text] NULL,
	[schaeden_puzzle] [text] NULL,
	[schaeden_lps] [text] NULL,
	[schaeden_gehwegreiter] [text] NULL,
	[schaeden_loungsmodul] [text] NULL,
	[schaeden_verlosungstele] [text] NULL,
	[schaeden_2in1modul] [text] NULL,
	[schaeden_rauschbrille] [text] NULL,
	[aufbau_datum] [varchar](10) NULL,
	[aufbau_von] [varchar](5) NULL,
	[aufbau_bis] [varchar](5) NULL,
	[abbau_datum] [varchar](10) NULL,
	[abbau_von] [varchar](5) NULL,
	[abbau_bis] [varchar](5) NULL,
	[aufbau_anmerkungen] [text] NULL,
	[schaden_uebernahme] [varchar](4) NULL,
	[uebergabe_datum] [varchar](10) NULL,
	[uebergabe_von] [varchar](5) NULL,
	[uebergabe_bis] [varchar](5) NULL,
	[rueckgabe_datum] [varchar](10) NULL,
	[rueckgabe_von] [varchar](5) NULL,
	[rueckgabe_bis] [varchar](5) NULL,
	[uebergabe_anmerkungen] [text] NULL,
	[schaden_uebergabe] [varchar](4) NULL,
	[foto_autohaus] [tinyint] NULL,
	[foto_umgebung] [tinyint] NULL,
	[foto_mitbewerber] [tinyint] NULL,
	[foto_aktion] [tinyint] NULL,
	[foto_standort] [tinyint] NULL,
	[foto_konvoi] [tinyint] NULL,
	[presseartikel_text] [text] NULL,
	[foto_sonstiges] [varchar](20) NULL,
	[foto_freieingabe_wert] [varchar](50) NULL,
	[anmerkungen] [text] NULL,
	[ersteller] [int] NULL,
	[eingang] [varchar](50) NULL,
	[freigabe] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[presseartikel] [bit] NULL,
	[foto_sonstiges_text] [varchar](max) NULL,
 CONSTRAINT [PK_sk_teamleiterberichte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[offene_tb]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[offene_tb]
AS
SELECT     idProjekt
FROM         dbo.sk_teamleiterberichte
WHERE     (freigabe = 'nein')
GO
/****** Object:  Table [dbo].[sk_bilder]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_bilder](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[bilder] [varchar](max) NULL,
	[bild1] [varchar](max) NULL,
	[bild2] [varchar](max) NULL,
	[bild3] [varchar](max) NULL,
	[bild4] [varchar](max) NULL,
	[bild5] [varchar](max) NULL,
 CONSTRAINT [PK_sk_bilder] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[offene_bilder]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[offene_bilder]
AS
SELECT     id
FROM         dbo.sk_bilder
WHERE     (bilder <> 'uebermittelt')
GO
/****** Object:  Table [dbo].[sk_personalbuchungen]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_personalbuchungen](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[idPersonal] [int] NOT NULL,
	[idProjekt] [int] NOT NULL,
	[funktion] [varchar](50) NOT NULL,
	[abgerechnet] [int] NOT NULL,
	[status] [varchar](255) NOT NULL,
	[einsatzbeginn] [date] NOT NULL,
	[einsatzende] [date] NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[bucher] [int] NOT NULL,
	[buchungsdatum] [datetime] NOT NULL,
 CONSTRAINT [PK_sk_personalbuchungen] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_projekte]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_projekte](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[mandant] [int] NOT NULL,
	[projektnummer] [bigint] NOT NULL,
	[veranstaltung] [varchar](255) NOT NULL,
	[typ] [varchar](80) NOT NULL,
	[art] [varchar](80) NULL,
	[kategorie] [char](2) NULL,
	[prioritaet] [int] NOT NULL,
	[termin] [tinyint] NOT NULL,
	[projektleiter] [int] NOT NULL,
	[veranstalter] [varchar](255) NULL,
	[ansprechpartner] [varchar](255) NOT NULL,
	[va_telefon] [varchar](50) NOT NULL,
	[va_telefax] [varchar](50) NOT NULL,
	[va_email] [varchar](255) NOT NULL,
	[haendler1] [varchar](255) NOT NULL,
	[haendler2] [varchar](255) NOT NULL,
	[haendler3] [varchar](255) NOT NULL,
	[haendler4] [varchar](255) NOT NULL,
	[haendler5] [varchar](255) NOT NULL,
	[haendler6] [varchar](255) NOT NULL,
	[haendlernr1] [varchar](50) NULL,
	[haendlernr2] [varchar](50) NULL,
	[haendlernr3] [varchar](50) NULL,
	[haendlernr4] [varchar](50) NULL,
	[haendlernr5] [varchar](50) NULL,
	[haendlernr6] [varchar](50) NULL,
	[haendler1_ap] [varchar](255) NOT NULL,
	[haendler2_ap] [varchar](255) NOT NULL,
	[haendler3_ap] [varchar](255) NOT NULL,
	[haendler4_ap] [varchar](255) NOT NULL,
	[haendler5_ap] [varchar](255) NOT NULL,
	[haendler6_ap] [varchar](255) NOT NULL,
	[haendler1_telefon] [varchar](255) NOT NULL,
	[haendler2_telefon] [varchar](255) NOT NULL,
	[haendler3_telefon] [varchar](255) NOT NULL,
	[haendler4_telefon] [varchar](255) NOT NULL,
	[haendler5_telefon] [varchar](255) NOT NULL,
	[haendler6_telefon] [varchar](255) NOT NULL,
	[haendler1_email] [varchar](255) NOT NULL,
	[haendler2_email] [varchar](255) NOT NULL,
	[haendler3_email] [varchar](255) NOT NULL,
	[haendler4_email] [varchar](255) NOT NULL,
	[haendler5_email] [varchar](255) NOT NULL,
	[haendler6_email] [varchar](255) NOT NULL,
	[va_location] [varchar](255) NOT NULL,
	[va_strasse] [varchar](255) NOT NULL,
	[va_plz] [varchar](10) NULL,
	[va_ort] [varchar](255) NULL,
	[va_beginn] [date] NULL,
	[va_ende] [date] NULL,
	[va_tage] [varchar](255) NULL,
	[initiator] [varchar](80) NULL,
	[glvorschlag] [tinyint] NULL,
	[WunschStatus] [varchar](50) NOT NULL,
	[gebietsleiter] [int] NOT NULL,
	[va_frequenz_geplant] [varchar](80) NULL,
	[va_frequenz_verifiziert] [varchar](80) NULL,
	[modul] [varchar](80) NULL,
	[probefahrten] [tinyint] NOT NULL,
	[at_probefahrten] [int] NOT NULL,
	[bewachung] [tinyint] NOT NULL,
	[team_plan] [int] NOT NULL,
	[mod_plan] [int] NOT NULL,
	[comod_plan] [int] NOT NULL,
	[pp_moderatoren] [int] NOT NULL,
	[pp_comoderatoren] [int] NOT NULL,
	[pp_promotoren] [int] NOT NULL,
	[pp_teamleiter] [int] NOT NULL,
	[pp_tlprobefahrer] [int] NOT NULL,
	[pp_probefahrer] [int] NOT NULL,
	[pp_kostuem] [int] NOT NULL,
	[pp_aufbau] [int] NOT NULL,
	[pp_abbau] [int] NOT NULL,
	[pp_konvoi] [int] NOT NULL,
	[pp_gastro] [int] NOT NULL,
	[pp_sonstige] [int] NOT NULL,
	[aufbau_datum] [datetime] NULL,
	[abbau_datum] [datetime] NULL,
	[aufbauhinweise] [text] NULL,
	[status] [varchar](80) NULL,
	[deadlines] [varchar](255) NULL,
	[bemerkungen] [text] NULL,
	[elemente] [text] NULL,
	[standplatzkosten] [varchar](50) NULL,
	[ersteller] [int] NOT NULL,
	[angelegt] [datetime] NOT NULL,
	[lastedit] [datetime] NOT NULL,
	[lasteditor] [int] NULL,
	[personal] [int] NULL,
	[ausstattung] [int] NULL,
	[feedback] [int] NULL,
	[abrechnung] [int] NULL,
	[archiv] [tinyint] NOT NULL,
	[mark08] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_projekte] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[einzelauftrag]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[einzelauftrag]
AS
SELECT     dbo.sk_personalbuchungen.id, dbo.sk_personalbuchungen.idPersonal, dbo.sk_personalbuchungen.idProjekt, dbo.sk_personalbuchungen.funktion, 
                      dbo.sk_personalbuchungen.abgerechnet, dbo.sk_personalbuchungen.status, dbo.sk_personalbuchungen.einsatzbeginn, dbo.sk_personalbuchungen.einsatzende, 
                      dbo.sk_personalbuchungen.bemerkungen, dbo.sk_personalbuchungen.bucher, dbo.sk_personalbuchungen.buchungsdatum, dbo.sk_personal.vorname, 
                      dbo.sk_personal.nachname, dbo.sk_personal.strasse, dbo.sk_personal.plz, dbo.sk_personal.ort, dbo.sk_personal.rahmenvertrag, dbo.sk_personal.profibonus, 
                      dbo.sk_projekte.id AS Expr1, dbo.sk_projekte.veranstaltung, dbo.sk_projekte.projektnummer, dbo.sk_projekte.projektleiter, dbo.sk_projekte.typ, 
                      dbo.sk_projekte.kategorie, dbo.sk_projekte.prioritaet, dbo.sk_projekte.va_beginn, dbo.sk_projekte.va_ende, dbo.sk_benutzer.vorname AS pl_vorname, 
                      dbo.sk_benutzer.nachname AS pl_nachname
FROM         dbo.sk_personalbuchungen INNER JOIN
                      dbo.sk_personal ON dbo.sk_personalbuchungen.idPersonal = dbo.sk_personal.id INNER JOIN
                      dbo.sk_projekte ON dbo.sk_personalbuchungen.idProjekt = dbo.sk_projekte.id INNER JOIN
                      dbo.sk_benutzer ON dbo.sk_projekte.projektleiter = dbo.sk_benutzer.id
GO
/****** Object:  Table [dbo].[TWB_2018_Teilnehmer]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TWB_2018_Teilnehmer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Nickname] [varchar](max) NULL,
	[Minuten] [int] NULL,
	[Sekunden] [int] NULL,
	[Tausendstel] [int] NULL,
	[Datum] [date] NULL,
 CONSTRAINT [PK_TWB_2018_Teilnehmer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TWB_2018_Profi]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TWB_2018_Profi](
	[id] [int] NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Nickname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Minuten] [int] NULL,
	[Sekunden] [int] NULL,
	[Tausendstel] [int] NULL,
 CONSTRAINT [PK_TWB_2018_Profi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[TWB_2018_Ranking_Fahrer]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TWB_2018_Ranking_Fahrer]
AS
SELECT        'Fabian Kreim' AS Nickname, Minuten, Sekunden, Tausendstel, GETDATE() AS Datum, id
FROM            dbo.TWB_2018_Profi
union
select Nickname, Minuten, Sekunden, Tausendstel, Datum, id
from TWB_2018_Teilnehmer
GO
/****** Object:  Table [dbo].[sk_gebietsleiter]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_gebietsleiter](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[gl] [int] NOT NULL,
	[anrede] [varchar](10) NOT NULL,
	[vorname] [varchar](255) NOT NULL,
	[nachname] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[region] [varchar](10) NOT NULL,
	[anschrift] [varchar](255) NOT NULL,
	[plz] [varchar](5) NOT NULL,
	[ort] [varchar](255) NOT NULL,
	[mobil] [varchar](80) NULL,
	[telefon] [varchar](80) NULL,
	[telefax] [varchar](80) NULL,
	[aktiv] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_gebietsleiter] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[briefing]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[briefing]
AS
SELECT     dbo.sk_projekte.veranstaltung, dbo.sk_projekte.projektnummer, dbo.sk_projekte.projektleiter, dbo.sk_projekte.typ, dbo.sk_projekte.kategorie, 
                      dbo.sk_projekte.prioritaet, dbo.sk_projekte.va_beginn, dbo.sk_projekte.va_ende, dbo.sk_projekte.gebietsleiter, dbo.sk_projekte.va_location, 
                      dbo.sk_projekte.va_strasse, dbo.sk_projekte.va_plz, dbo.sk_projekte.va_ort, dbo.sk_projekte.bewachung, dbo.sk_projekte.modul, dbo.sk_projekte.aufbau_datum, 
                      dbo.sk_projekte.abbau_datum, dbo.sk_benutzer.vorname AS pl_vorname, dbo.sk_benutzer.nachname AS pl_nachname, dbo.sk_benutzer.telefon AS pl_telefon, 
                      dbo.sk_benutzer.handy AS pl_handy, dbo.sk_gebietsleiter.vorname AS gl_vorname, dbo.sk_gebietsleiter.nachname AS gl_nachname, 
                      dbo.sk_projekte.veranstalter AS veranstalter_name, dbo.sk_projekte.va_telefon AS veranstalter_telefon, dbo.sk_projekte.id
FROM         dbo.sk_projekte INNER JOIN
                      dbo.sk_gebietsleiter ON dbo.sk_projekte.gebietsleiter = dbo.sk_gebietsleiter.gl INNER JOIN
                      dbo.sk_benutzer ON dbo.sk_projekte.projektleiter = dbo.sk_benutzer.id
GO
/****** Object:  Table [dbo].[EMail_Tracking]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMail_Tracking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ziel] [varchar](max) NULL,
	[ip_adresse] [varchar](max) NULL,
	[zeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_EMail_Tracking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[E_Mail_Tracking_Ziel]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[E_Mail_Tracking_Ziel]
AS
SELECT     Ziel, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
GROUP BY Ziel
GO
/****** Object:  View [dbo].[E_Mail_Tracking_Tage]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[E_Mail_Tracking_Tage]
AS
SELECT     '28.11.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%28.11.2014%')

union

SELECT     '29.11.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%29.11.2014%')

union

SELECT     '30.11.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%30.11.2014%')

union

SELECT     '01.12.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%01.12.2014%')

union

SELECT     '02.12.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%02.12.2014%')

union

SELECT     '03.12.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%03.12.2014%')

union

SELECT     '04.12.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%04.12.2014%')

union

SELECT     '05.12.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%05.12.2014%')

union

SELECT     '06.12.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%06.12.2014%')

union

SELECT     '07.12.2014' AS Datum, COUNT(id) AS Zugriffe
FROM         dbo.EMail_Tracking
WHERE     (zeitpunkt LIKE '%07.12.2014%')




GO
/****** Object:  Table [dbo].[sk_module]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_module](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Art] [varchar](50) NULL,
	[tuev_faellig] [date] NULL,
	[maut_befreiung] [bit] NULL,
	[wochenendfahrgenehmigung] [bit] NULL,
	[kennzeichen] [varchar](50) NULL,
	[fahrgestellnummer] [varchar](max) NULL,
	[erstzulassung] [date] NULL,
	[aufbaubemerkungen] [text] NULL,
 CONSTRAINT [PK_sk_buehnen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_modulbuchungen]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_modulbuchungen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NULL,
	[buehnen_id] [int] NULL,
	[einsatzbeginn] [date] NULL,
	[einsatzende] [date] NULL,
	[bemerkungen] [text] NULL,
	[gebucht_von] [int] NULL,
	[gebucht_am] [date] NULL,
	[uebergabeort] [varchar](max) NULL,
	[rueckgabeort] [varchar](max) NULL,
 CONSTRAINT [PK_sk_buehnenbuchungen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Buehneneinsaetze]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Buehneneinsaetze]
AS
SELECT     dbo.sk_projekte.veranstaltung, dbo.sk_projekte.typ, dbo.sk_projekte.art, dbo.sk_module.Name, dbo.sk_modulbuchungen.einsatzbeginn, 
                      dbo.sk_modulbuchungen.einsatzende, '0' AS kw_beginn, '0' AS kw_ende, dbo.sk_modulbuchungen.buehnen_id, dbo.sk_projekte.id
FROM         dbo.sk_projekte INNER JOIN
                      dbo.sk_modulbuchungen ON dbo.sk_projekte.id = dbo.sk_modulbuchungen.projekt_id INNER JOIN
                      dbo.sk_module ON dbo.sk_modulbuchungen.buehnen_id = dbo.sk_module.id
GO
/****** Object:  Table [dbo].[sk_haendler]    Script Date: 06.07.2018 12:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_haendler](
	[BDKUNR] [int] NOT NULL,
	[AKTVTR] [varchar](4) NULL,
	[AKTSERVICE] [varchar](4) NULL,
	[BDKUNA] [varchar](255) NULL,
	[BDKUNB] [varchar](255) NULL,
	[BDSTR] [varchar](255) NULL,
	[BDPLZ] [varchar](5) NULL,
	[BDORT] [varchar](255) NULL,
	[BDTEL1] [varchar](255) NULL,
	[BDTELX] [varchar](255) NULL,
	[HZKVTR] [varchar](255) NULL,
	[HZTVTR] [varchar](255) NULL,
	[BDZA04] [varchar](255) NULL,
	[HZSEIT] [varchar](255) NULL,
 CONSTRAINT [PK_sk_haendler] PRIMARY KEY CLUSTERED 
(
	[BDKUNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Geaenderte_VA]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Geaenderte_VA]
AS
SELECT        TOP (100) PERCENT dbo.sk_projekte.typ, dbo.sk_projekte.termin, dbo.sk_projekte.bemerkungen, dbo.sk_projekte.veranstaltung, dbo.sk_projekte.va_plz, 
                         dbo.sk_projekte.va_ort, dbo.sk_projekte.va_beginn, dbo.sk_projekte.va_ende, dbo.sk_projekte.kategorie, dbo.sk_projekte.art, dbo.sk_projekte.gebietsleiter, 
                         dbo.sk_projekte.va_frequenz_geplant, dbo.sk_projekte.projektleiter, dbo.sk_projekte.team_plan, dbo.sk_projekte.prioritaet, 
                         '[' + CAST(sk_haendler_1.BDKUNR AS varchar) + '] ' + sk_haendler_1.BDKUNA AS Expr1, '[' + CAST(dbo.sk_haendler.BDKUNR AS varchar) 
                         + '] ' + dbo.sk_haendler.BDKUNA AS Expr2, '[' + CAST(sk_haendler_2.BDKUNR AS varchar) + '] ' + sk_haendler_2.BDKUNA AS Expr3, 
                         '[' + CAST(sk_haendler_3.BDKUNR AS varchar) + '] ' + sk_haendler_3.BDKUNA AS Expr4, '[' + CAST(sk_haendler_4.BDKUNR AS varchar) 
                         + '] ' + sk_haendler_4.BDKUNA AS Expr5, '[' + CAST(sk_haendler_5.BDKUNR AS varchar) + '] ' + sk_haendler_5.BDKUNA AS Expr6, dbo.sk_projekte.lastedit
FROM            dbo.sk_projekte LEFT OUTER JOIN
                         dbo.sk_haendler ON dbo.sk_projekte.haendler2 = dbo.sk_haendler.BDKUNR LEFT OUTER JOIN
                         dbo.sk_haendler AS sk_haendler_2 ON dbo.sk_projekte.haendler3 = sk_haendler_2.BDKUNR LEFT OUTER JOIN
                         dbo.sk_haendler AS sk_haendler_5 ON dbo.sk_projekte.haendler6 = sk_haendler_5.BDKUNR LEFT OUTER JOIN
                         dbo.sk_haendler AS sk_haendler_4 ON dbo.sk_projekte.haendler5 = sk_haendler_4.BDKUNR LEFT OUTER JOIN
                         dbo.sk_haendler AS sk_haendler_3 ON dbo.sk_projekte.haendler4 = sk_haendler_3.BDKUNR LEFT OUTER JOIN
                         dbo.sk_haendler AS sk_haendler_1 ON dbo.sk_projekte.haendler1 = sk_haendler_1.BDKUNR
WHERE        (dbo.sk_projekte.lastedit > CONVERT(DATETIME, '2018-04-21 00:00:00', 102))
ORDER BY dbo.sk_projekte.va_beginn
GO
/****** Object:  View [dbo].[Projektauswahl]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Projektauswahl]
AS
SELECT     dbo.sk_projekte.projektnummer, dbo.sk_projekte.veranstaltung, dbo.sk_projekte.va_location + ' ' + dbo.sk_projekte.va_plz + ' ' + dbo.sk_projekte.va_ort AS ort, 
                      dbo.sk_projekte.va_beginn, dbo.sk_projekte.va_ende, dbo.sk_projekte.typ, dbo.sk_projekte.kategorie, dbo.sk_projekte.prioritaet, dbo.sk_projekte.modul, 
                      dbo.sk_benutzer.vorname + ' ' + dbo.sk_benutzer.nachname AS Projektleiter, dbo.sk_projekte.gebietsleiter, dbo.sk_projekte.id
FROM         dbo.sk_projekte INNER JOIN
                      dbo.sk_benutzer ON dbo.sk_projekte.projektleiter = dbo.sk_benutzer.id
GO
/****** Object:  View [dbo].[PersonalEinsaetze]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PersonalEinsaetze]
AS
SELECT     dbo.sk_personalbuchungen.idPersonal, dbo.sk_personalbuchungen.idProjekt, dbo.sk_projekte.veranstaltung, dbo.sk_personalbuchungen.funktion, 
                      dbo.sk_personalbuchungen.einsatzbeginn, dbo.sk_personalbuchungen.einsatzende, dbo.sk_personalbuchungen.status, dbo.sk_personal.nachname
FROM         dbo.sk_personal INNER JOIN
                      dbo.sk_personalbuchungen ON dbo.sk_personal.id = dbo.sk_personalbuchungen.idPersonal INNER JOIN
                      dbo.sk_projekte ON dbo.sk_personalbuchungen.idProjekt = dbo.sk_projekte.id
GO
/****** Object:  Table [dbo].[Event_Gatekeeper]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Gatekeeper](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Teilnahmeart] [varchar](max) NULL,
	[Zugang] [varchar](max) NULL,
	[Anwesend] [bit] NULL,
	[Uhrzeit] [varchar](max) NULL,
 CONSTRAINT [PK_Event_Gatekeeper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fahrerlebnisse]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fahrerlebnisse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[erlebnis1] [varchar](max) NULL,
	[erlebnis2] [varchar](max) NULL,
	[erlebnis3] [varchar](max) NULL,
	[nachricht] [text] NULL,
	[eingang] [varchar](max) NULL,
	[schluessel] [varchar](max) NULL,
	[bestaetigt] [bit] NOT NULL,
 CONSTRAINT [PK_fahrerlebnisse] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fahrerlebnisse_anmeldungen]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fahrerlebnisse_anmeldungen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trainingsart] [varchar](max) NULL,
	[trainingsort] [varchar](max) NULL,
	[trainingstermin] [varchar](max) NULL,
	[anzahl_fahrer] [int] NULL,
	[fahrer1_anrede] [varchar](max) NULL,
	[fahrer1_vorname] [varchar](max) NULL,
	[fahrer1_strasse] [varchar](max) NULL,
	[fahrer1_plz_ort] [varchar](max) NULL,
	[fahrer1_email] [varchar](max) NULL,
	[fahrer1_mobil] [varchar](max) NULL,
	[fahrer1_geburtsdatum] [varchar](max) NULL,
	[fahrer1_nordschleife] [varchar](max) NULL,
	[fahrer1_teilnahme_mit] [varchar](max) NULL,
	[fahrer1_teilnahme_pkw_art] [varchar](max) NULL,
	[fahrer2_anrede] [varchar](max) NULL,
	[fahrer2_vorname] [varchar](max) NULL,
	[fahrer2_nachname] [varchar](max) NULL,
	[fahrer2_strasse] [varchar](max) NULL,
	[fahrer2_plz_ort] [varchar](max) NULL,
	[fahrer2_mobil] [varchar](max) NULL,
	[fahrer2_geburtsdatum] [varchar](max) NULL,
	[fahrer2_nordschleife] [varchar](max) NULL,
	[beifahrer_anzahl] [int] NULL,
	[beifahrer1_anrede] [varchar](max) NULL,
	[beifahrer1_vorname] [varchar](max) NULL,
	[beifahrer1_nachname] [varchar](max) NULL,
	[beifahrer1_email] [varchar](max) NULL,
	[beifahrer1_mobil] [varchar](max) NULL,
	[beifahrer1_geburtsdatum] [varchar](max) NULL,
	[beifahrer1_nordschleife] [varchar](max) NULL,
	[beifahrer2_anrede] [varchar](max) NULL,
	[beifahrer2_vorname] [varchar](max) NULL,
	[beifahrer2_nachname] [varchar](max) NULL,
	[beifahrer2_email] [varchar](max) NULL,
	[beifahrer2_mobil] [varchar](max) NULL,
	[beifahrer2_geburtsdatum] [varchar](max) NULL,
	[beifahrer2_nordschleife] [varchar](max) NULL,
	[rechnung_anrede] [varchar](max) NULL,
	[rechnung_vorname] [varchar](max) NULL,
	[rechnung_nachname] [varchar](max) NULL,
	[rechnung_strasse] [varchar](max) NULL,
	[rechnung_plz_ort] [varchar](max) NULL,
	[rechnung_email] [varchar](max) NULL,
	[rechnung_mobil] [varchar](max) NULL,
	[rechnung_geburtsdatum] [varchar](max) NULL,
	[gutschein_einloesen] [varchar](max) NULL,
	[gutschein_code] [varchar](max) NULL,
	[training_verschenken] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[eingang] [varchar](max) NULL,
	[ip] [varchar](max) NULL,
	[code] [varchar](max) NULL,
	[bestaetigt] [bit] NOT NULL,
 CONSTRAINT [PK_fahrerlebnisse_anmeldungen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fahrzeugmerkmale]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fahrzeugmerkmale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Typ] [varchar](50) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fristen]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fristen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projektart_id] [int] NOT NULL,
	[Frist1] [varchar](max) NULL,
	[Frist2] [varchar](max) NULL,
	[Frist3] [varchar](max) NULL,
	[Frist4] [varchar](max) NULL,
	[Frist5] [varchar](max) NULL,
	[Frist6] [varchar](max) NULL,
	[Frist7] [varchar](max) NULL,
	[Frist8] [varchar](max) NULL,
	[Frist9] [varchar](max) NULL,
	[Frist10] [varchar](max) NULL,
	[Frist11] [varchar](max) NULL,
	[Frist12] [varchar](max) NULL,
	[Frist13] [varchar](max) NULL,
	[Frist14] [varchar](max) NULL,
	[Frist15] [varchar](max) NULL,
	[Frist16] [varchar](max) NULL,
	[Frist17] [varchar](max) NULL,
	[Frist18] [varchar](max) NULL,
	[Frist19] [varchar](max) NULL,
	[Frist20] [varchar](max) NULL,
	[Frist21] [varchar](max) NULL,
	[Frist22] [varchar](max) NULL,
	[Frist23] [varchar](max) NULL,
	[Frist24] [varchar](max) NULL,
	[Frist25] [varchar](max) NULL,
	[Frist26] [varchar](max) NULL,
	[Frist27] [varchar](max) NULL,
	[Frist28] [varchar](max) NULL,
	[Frist29] [varchar](max) NULL,
	[Frist30] [varchar](max) NULL,
	[Frist31] [varchar](max) NULL,
	[Frist32] [varchar](max) NULL,
	[Frist33] [varchar](max) NULL,
	[Frist34] [varchar](max) NULL,
	[Frist35] [varchar](max) NULL,
	[Frist36] [varchar](max) NULL,
	[Frist37] [varchar](max) NULL,
	[Frist38] [varchar](max) NULL,
	[Frist39] [varchar](max) NULL,
	[Frist40] [varchar](max) NULL,
	[Frist41] [varchar](max) NULL,
	[Frist42] [varchar](max) NULL,
	[Frist43] [varchar](max) NULL,
	[Frist44] [varchar](max) NULL,
	[Frist45] [varchar](max) NULL,
	[Frist46] [varchar](max) NULL,
	[Frist47] [varchar](max) NULL,
	[Frist48] [varchar](max) NULL,
	[Frist49] [varchar](max) NULL,
	[Frist50] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fristenstand]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fristenstand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Frist1] [bit] NOT NULL,
	[Frist2] [bit] NOT NULL,
	[Frist3] [bit] NOT NULL,
	[Frist4] [bit] NOT NULL,
	[Frist5] [bit] NOT NULL,
	[Frist6] [bit] NOT NULL,
	[Frist7] [bit] NOT NULL,
	[Frist8] [bit] NOT NULL,
	[Frist9] [bit] NOT NULL,
	[Frist10] [bit] NOT NULL,
	[Frist11] [bit] NOT NULL,
	[Frist12] [bit] NOT NULL,
	[Frist13] [bit] NOT NULL,
	[Frist14] [bit] NOT NULL,
	[Frist15] [bit] NOT NULL,
	[Frist16] [bit] NOT NULL,
	[Frist17] [bit] NOT NULL,
	[Frist18] [bit] NOT NULL,
	[Frist19] [bit] NOT NULL,
	[Frist20] [bit] NOT NULL,
	[Frist21] [bit] NOT NULL,
	[Frist22] [bit] NOT NULL,
	[Frist23] [bit] NOT NULL,
	[Frist24] [bit] NOT NULL,
	[Frist25] [bit] NOT NULL,
	[Frist26] [bit] NOT NULL,
	[Frist27] [bit] NOT NULL,
	[Frist28] [bit] NOT NULL,
	[Frist29] [bit] NOT NULL,
	[Frist30] [bit] NOT NULL,
	[Frist31] [bit] NOT NULL,
	[Frist32] [bit] NOT NULL,
	[Frist33] [bit] NOT NULL,
	[Frist34] [bit] NOT NULL,
	[Frist35] [bit] NOT NULL,
	[Frist36] [bit] NOT NULL,
	[Frist37] [bit] NOT NULL,
	[Frist38] [bit] NOT NULL,
	[Frist39] [bit] NOT NULL,
	[Frist40] [bit] NOT NULL,
	[Frist41] [bit] NOT NULL,
	[Frist42] [bit] NOT NULL,
	[Frist43] [bit] NOT NULL,
	[Frist44] [bit] NOT NULL,
	[Frist45] [bit] NOT NULL,
	[Frist46] [bit] NOT NULL,
	[Frist47] [bit] NOT NULL,
	[Frist48] [bit] NOT NULL,
	[Frist49] [bit] NOT NULL,
	[Frist50] [bit] NOT NULL,
 CONSTRAINT [PK_Fristenstand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fristenverzug]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fristenverzug](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fristen_id] [int] NOT NULL,
	[Verzug1] [int] NULL,
	[Verzug2] [int] NULL,
	[Verzug3] [int] NULL,
	[Verzug4] [int] NULL,
	[Verzug5] [int] NULL,
	[Verzug6] [int] NULL,
	[Verzug7] [int] NULL,
	[Verzug8] [int] NULL,
	[Verzug9] [int] NULL,
	[Verzug10] [int] NULL,
	[Verzug11] [int] NULL,
	[Verzug12] [int] NULL,
	[Verzug13] [int] NULL,
	[Verzug14] [int] NULL,
	[Verzug15] [int] NULL,
	[Verzug16] [int] NULL,
	[Verzug17] [int] NULL,
	[Verzug18] [int] NULL,
	[Verzug19] [int] NULL,
	[Verzug20] [int] NULL,
	[Verzug21] [int] NULL,
	[Verzug22] [int] NULL,
	[Verzug23] [int] NULL,
	[Verzug24] [int] NULL,
	[Verzug25] [int] NULL,
	[Verzug26] [int] NULL,
	[Verzug27] [int] NULL,
	[Verzug28] [int] NULL,
	[Verzug29] [int] NULL,
	[Verzug30] [int] NULL,
	[Verzug31] [int] NULL,
	[Verzug32] [int] NULL,
	[Verzug33] [int] NULL,
	[Verzug34] [int] NULL,
	[Verzug35] [int] NULL,
	[Verzug36] [int] NULL,
	[Verzug37] [int] NULL,
	[Verzug38] [int] NULL,
	[Verzug39] [int] NULL,
	[Verzug40] [int] NULL,
	[Verzug41] [int] NULL,
	[Verzug42] [int] NULL,
	[Verzug43] [int] NULL,
	[Verzug44] [int] NULL,
	[Verzug45] [int] NULL,
	[Verzug46] [int] NULL,
	[Verzug47] [int] NULL,
	[Verzug48] [int] NULL,
	[Verzug49] [int] NULL,
	[Verzug50] [int] NULL,
 CONSTRAINT [PK_Fristenverzug] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gewinner]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gewinner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[gluecksnummer] [varchar](max) NULL,
	[nachricht] [text] NULL,
	[eingang] [varchar](max) NULL,
 CONSTRAINT [PK_gewinner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gluecksnummern]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gluecksnummern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gluecksnummer] [bigint] NULL,
	[aktiv] [bit] NOT NULL,
 CONSTRAINT [PK_gluecksnummern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Graphische_Planung]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Graphische_Planung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Modul] [varchar](max) NULL,
	[KW1] [varchar](max) NULL,
	[KW2] [varchar](max) NULL,
	[KW3] [varchar](max) NULL,
	[KW4] [varchar](max) NULL,
	[KW5] [varchar](max) NULL,
	[KW6] [varchar](max) NULL,
	[KW7] [varchar](max) NULL,
	[KW8] [varchar](max) NULL,
	[KW9] [varchar](max) NULL,
	[KW10] [varchar](max) NULL,
	[KW11] [varchar](max) NULL,
	[KW12] [varchar](max) NULL,
	[KW13] [varchar](max) NULL,
	[KW14] [varchar](max) NULL,
	[KW15] [varchar](max) NULL,
	[KW16] [varchar](max) NULL,
	[KW17] [varchar](max) NULL,
	[KW18] [varchar](max) NULL,
	[KW19] [varchar](max) NULL,
	[KW20] [varchar](max) NULL,
	[KW21] [varchar](max) NULL,
	[KW22] [varchar](max) NULL,
	[KW23] [varchar](max) NULL,
	[KW24] [varchar](max) NULL,
	[KW25] [varchar](max) NULL,
	[KW26] [varchar](max) NULL,
	[KW27] [varchar](max) NULL,
	[KW28] [varchar](max) NULL,
	[KW29] [varchar](max) NULL,
	[KW30] [varchar](max) NULL,
	[KW31] [varchar](max) NULL,
	[KW32] [varchar](max) NULL,
	[KW33] [varchar](max) NULL,
	[KW34] [varchar](max) NULL,
	[KW35] [varchar](max) NULL,
	[KW36] [varchar](max) NULL,
	[KW37] [varchar](max) NULL,
	[KW38] [varchar](max) NULL,
	[KW39] [varchar](max) NULL,
	[KW40] [varchar](max) NULL,
	[KW41] [varchar](max) NULL,
	[KW42] [varchar](max) NULL,
	[KW43] [varchar](max) NULL,
	[KW44] [varchar](max) NULL,
	[KW45] [varchar](max) NULL,
	[KW46] [varchar](max) NULL,
	[KW47] [varchar](max) NULL,
	[KW48] [varchar](max) NULL,
	[KW49] [varchar](max) NULL,
	[KW50] [varchar](max) NULL,
	[KW51] [varchar](max) NULL,
	[KW52] [varchar](max) NULL,
	[KW53] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[informationsverwaltung]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[informationsverwaltung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[beschreibung] [varchar](max) NULL,
	[link] [varchar](max) NULL,
 CONSTRAINT [PK_informationsverwaltung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jahresplanung]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jahresplanung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kalenderwoche] [varchar](max) NULL,
	[New Mobile Showroom] [varchar](max) NULL,
	[Eventbühne] [varchar](max) NULL,
	[Clever-Modul] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[position] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_aktionszeiten]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_aktionszeiten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProjekt] [int] NOT NULL,
	[tag] [date] NULL,
	[von] [time](7) NULL,
	[bis] [time](7) NULL,
	[eingang] [datetime] NULL,
 CONSTRAINT [PK_sk_aktionszeiten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_ausstattung]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_ausstattung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typ] [varchar](50) NOT NULL,
	[bezeichnung] [varchar](50) NOT NULL,
	[menge_eh] [varchar](50) NOT NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_sk_ausstattung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_ausstattungsbuchungen]    Script Date: 06.07.2018 12:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_ausstattungsbuchungen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProjekt] [int] NOT NULL,
	[idElement] [int] NOT NULL,
	[menge] [float] NOT NULL,
 CONSTRAINT [PK_sk_ausstattungsbuchungen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_bewerbungen]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_bewerbungen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](10) NOT NULL,
	[firma] [varchar](255) NOT NULL,
	[vorname] [varchar](255) NOT NULL,
	[nachname] [varchar](255) NOT NULL,
	[strasse] [varchar](255) NOT NULL,
	[plz] [varchar](10) NOT NULL,
	[ort] [varchar](255) NOT NULL,
	[festnetz] [varchar](255) NOT NULL,
	[fax] [varchar](255) NOT NULL,
	[handy] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[geburtsdatum] [date] NOT NULL,
	[nationalitaet] [varchar](255) NOT NULL,
	[koerpergroesse] [char](3) NOT NULL,
	[konfektionsgroesse] [char](3) NOT NULL,
	[schuhgroesse] [varchar](50) NOT NULL,
	[haarfarbe] [varchar](255) NOT NULL,
	[teamfaehig] [char](1) NOT NULL,
	[zuverlaessig] [char](1) NOT NULL,
	[automobilaffin] [char](1) NOT NULL,
	[verkaufsberatend] [char](1) NOT NULL,
	[technikversiert] [char](1) NOT NULL,
	[spontan] [char](1) NOT NULL,
	[lebenslauf] [text] NOT NULL,
	[moderator] [tinyint] NOT NULL,
	[promoter] [tinyint] NOT NULL,
	[fachberater] [tinyint] NOT NULL,
	[probefahrer] [tinyint] NOT NULL,
	[walkingact] [tinyint] NOT NULL,
	[hostess] [tinyint] NOT NULL,
	[kinderschminken] [tinyint] NOT NULL,
	[auftraggeber1] [varchar](255) NOT NULL,
	[promotion1] [varchar](255) NOT NULL,
	[taetigkeit1] [varchar](255) NOT NULL,
	[auftraggeber2] [varchar](255) NOT NULL,
	[promotion2] [varchar](255) NOT NULL,
	[taetigkeit2] [varchar](255) NOT NULL,
	[auftraggeber3] [varchar](255) NOT NULL,
	[promotion3] [varchar](255) NOT NULL,
	[taetigkeit3] [varchar](255) NOT NULL,
	[auftraggeber4] [varchar](255) NOT NULL,
	[promotion4] [varchar](255) NOT NULL,
	[taetigkeit4] [varchar](255) NOT NULL,
	[fuehrerschein_pkw] [tinyint] NOT NULL,
	[pkw_lassen] [varchar](255) NOT NULL,
	[fuehrerschein_lkw] [tinyint] NOT NULL,
	[lkw_klassen] [varchar](255) NOT NULL,
	[eigenes_fahrzeug] [tinyint] NOT NULL,
	[gewerbeschein] [tinyint] NOT NULL,
	[mwstbescheinigung] [tinyint] NOT NULL,
	[ustbefreiung] [tinyint] NOT NULL,
	[ortseinsatz] [tinyint] NOT NULL,
	[regionaleinsatz] [tinyint] NOT NULL,
	[reisseeinsatz] [tinyint] NOT NULL,
	[ganzjaehrig] [tinyint] NOT NULL,
	[einsatzzeitraum] [varchar](255) NOT NULL,
	[einsatztage] [varchar](255) NOT NULL,
	[einsatzmonate] [varchar](255) NOT NULL,
	[deutsch] [tinyint] NOT NULL,
	[englisch] [tinyint] NOT NULL,
	[franzoesisch] [tinyint] NOT NULL,
	[italienisch] [tinyint] NOT NULL,
	[tuerkisch] [tinyint] NOT NULL,
	[sonstige_sprachen] [varchar](255) NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[angelegt] [datetime] NOT NULL,
 CONSTRAINT [PK_sk_bewerbungen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_deadlines]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_deadlines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[deadline] [smallint] NOT NULL,
	[alarm] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_deadlines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_fahrtenbuch]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_fahrtenbuch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[art] [varchar](10) NOT NULL,
	[idFahrzeug] [int] NOT NULL,
	[idFahrer] [int] NOT NULL,
	[kmstand] [varchar](15) NOT NULL,
	[startort] [varchar](255) NOT NULL,
	[zielort] [varchar](255) NOT NULL,
	[fahrtgrund] [varchar](255) NOT NULL,
	[eingang] [datetime] NOT NULL,
 CONSTRAINT [PK_sk_fahrtenbuch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_fahrzeugbelegung]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_fahrzeugbelegung](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[idFahrzeug] [int] NOT NULL,
	[idFahrer] [int] NULL,
	[idProjekt] [int] NOT NULL,
	[uebergabedatum] [date] NOT NULL,
	[rueckgabedatum] [date] NOT NULL,
	[uebergabeort] [varchar](max) NOT NULL,
	[rueckgabeort] [varchar](max) NOT NULL,
	[rueckgabe] [tinyint] NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[bucher] [int] NOT NULL,
	[buchungsdatum] [datetime] NOT NULL,
	[lasteditor] [int] NOT NULL,
	[lastedit] [datetime] NOT NULL,
 CONSTRAINT [PK_sk_fahrzeugbelegung] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_fahrzeuge]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_fahrzeuge](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
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
 CONSTRAINT [PK_sk_fahrzeuge] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_haendlerzuordnung]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_haendlerzuordnung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NULL,
	[haendler_id] [int] NULL,
	[haendler_ap] [varchar](max) NULL,
	[haendler_telefon_ap] [varchar](max) NULL,
	[haendler_email_ap] [varchar](max) NULL,
 CONSTRAINT [PK_sk_haendlerzuordnung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_log]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBenutzer] [int] NOT NULL,
	[ipadresse] [varchar](20) NOT NULL,
	[logintime] [datetime] NOT NULL,
 CONSTRAINT [PK_sk_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_mandanten]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_mandanten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[firma] [varchar](255) NOT NULL,
	[strasse] [varchar](255) NOT NULL,
	[plz] [varchar](10) NOT NULL,
	[ort] [varchar](255) NOT NULL,
	[telefon] [varchar](50) NOT NULL,
	[telefax] [varchar](50) NOT NULL,
	[stylesheet] [varchar](255) NOT NULL,
	[angelegt] [timestamp] NOT NULL,
 CONSTRAINT [PK_sk_mandanten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_personal_neu]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_personal_neu](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[mandant] [int] NOT NULL,
	[team] [int] NOT NULL,
	[teamleiter] [tinyint] NOT NULL,
	[promoter] [tinyint] NOT NULL,
	[moderator] [tinyint] NOT NULL,
	[kostuem] [tinyint] NOT NULL,
	[aufbau] [tinyint] NOT NULL,
	[kinderschminken] [tinyint] NOT NULL,
	[probefahrer] [tinyint] NOT NULL,
	[konvoi] [tinyint] NOT NULL,
	[sonstige] [tinyint] NOT NULL,
	[anrede] [varchar](50) NOT NULL,
	[firma] [varchar](255) NOT NULL,
	[vorname] [varchar](255) NOT NULL,
	[nachname] [varchar](255) NOT NULL,
	[strasse] [varchar](255) NOT NULL,
	[plz] [varchar](10) NOT NULL,
	[ort] [varchar](255) NOT NULL,
	[festnetz_alt] [varchar](255) NULL,
	[fax_alt] [varchar](255) NULL,
	[handy_alt] [varchar](255) NULL,
	[festnetz_vw] [varchar](50) NOT NULL,
	[festnetz_nr] [varchar](50) NOT NULL,
	[fax_vw] [varchar](10) NOT NULL,
	[fax_nr] [varchar](50) NOT NULL,
	[handy1_vw] [varchar](10) NOT NULL,
	[handy1_nr] [varchar](50) NOT NULL,
	[handy2_vw] [varchar](10) NOT NULL,
	[handy2_nr] [varchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[email2] [varchar](255) NOT NULL,
	[jeans] [varchar](100) NOT NULL,
	[konfektion] [varchar](100) NOT NULL,
	[konfektion_eu] [varchar](100) NULL,
	[schuhe] [varchar](100) NOT NULL,
	[geburtsdatum] [date] NOT NULL,
	[fuehrerschein] [varchar](20) NOT NULL,
	[gewerbeschein] [tinyint] NOT NULL,
	[rv] [tinyint] NOT NULL,
	[profibonus] [money] NOT NULL,
	[rahmenvertrag] [date] NOT NULL,
	[mehrwertsteuer] [tinyint] NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[passwort] [varchar](255) NULL,
	[ersteller] [int] NOT NULL,
	[angelegt] [datetime] NOT NULL,
	[lasteditor] [int] NOT NULL,
	[lastedit] [datetime] NOT NULL,
	[lastvisit] [datetime] NOT NULL,
	[aktiv] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_personal_neu] PRIMARY KEY CLUSTERED 
(
	[ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_personaldaten]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_personaldaten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](255) NOT NULL,
	[Vorname] [varchar](255) NOT NULL,
	[Nachname] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
 CONSTRAINT [PK_sk_personaldaten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_projekte2013]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_projekte2013](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mandant] [int] NOT NULL,
	[projektnummer] [int] NOT NULL,
	[veranstaltung] [varchar](255) NOT NULL,
	[typ] [varchar](80) NOT NULL,
	[art] [varchar](80) NULL,
	[kategorie] [char](2) NULL,
	[prioritaet] [int] NOT NULL,
	[termin] [tinyint] NOT NULL,
	[projektleiter] [int] NOT NULL,
	[veranstalter] [varchar](255) NULL,
	[ansprechpartner] [varchar](255) NOT NULL,
	[va_telefon] [varchar](50) NOT NULL,
	[va_telefax] [varchar](50) NOT NULL,
	[va_email] [varchar](255) NOT NULL,
	[haendler1] [varchar](255) NOT NULL,
	[haendler2] [varchar](255) NOT NULL,
	[haendler3] [varchar](255) NOT NULL,
	[haendler4] [varchar](255) NOT NULL,
	[haendler5] [varchar](255) NOT NULL,
	[haendler6] [varchar](255) NOT NULL,
	[haendlernr1] [varchar](50) NOT NULL,
	[haendlernr2] [varchar](50) NOT NULL,
	[haendlernr3] [varchar](50) NOT NULL,
	[haendlernr4] [varchar](50) NOT NULL,
	[haendlernr5] [varchar](50) NOT NULL,
	[haendlernr6] [varchar](50) NOT NULL,
	[haendler1_ap] [varchar](255) NOT NULL,
	[haendler2_ap] [varchar](255) NOT NULL,
	[haendler3_ap] [varchar](255) NOT NULL,
	[haendler4_ap] [varchar](255) NOT NULL,
	[haendler5_ap] [varchar](255) NOT NULL,
	[haendler6_ap] [varchar](255) NOT NULL,
	[haendler1_telefon] [varchar](255) NOT NULL,
	[haendler2_telefon] [varchar](255) NOT NULL,
	[haendler3_telefon] [varchar](255) NOT NULL,
	[haendler4_telefon] [varchar](255) NOT NULL,
	[haendler5_telefon] [varchar](255) NOT NULL,
	[haenlder6_telefon] [varchar](255) NOT NULL,
	[haendler1_email] [varchar](255) NOT NULL,
	[haendler2_email] [varchar](255) NOT NULL,
	[haendler3_email] [varchar](255) NOT NULL,
	[haendler4_email] [varchar](255) NOT NULL,
	[haendler5_email] [varchar](255) NOT NULL,
	[haendler6_email] [varchar](255) NOT NULL,
	[va_location] [varchar](255) NOT NULL,
	[va_strasse] [varchar](255) NOT NULL,
	[va_plz] [varchar](10) NULL,
	[va_ort] [varchar](255) NULL,
	[va_beginn] [date] NULL,
	[va_ende] [date] NULL,
	[va_tage] [varchar](255) NULL,
	[initiator] [varchar](80) NULL,
	[glvorschlag] [tinyint] NULL,
	[WunschStatus] [varchar](50) NOT NULL,
	[gebietsleiter] [int] NOT NULL,
	[va_frequenz_geplant] [varchar](80) NULL,
	[va_frequenz_verifiziert] [varchar](80) NULL,
	[modul] [varchar](80) NULL,
	[probefahrten] [tinyint] NOT NULL,
	[at_probefahrten] [int] NOT NULL,
	[bewachung] [tinyint] NOT NULL,
	[team_plan] [int] NOT NULL,
	[mod_plan] [int] NOT NULL,
	[comod_plan] [int] NOT NULL,
	[pp_moderatoren] [int] NOT NULL,
	[pp_comoderatoren] [int] NOT NULL,
	[pp_promotoren] [int] NOT NULL,
	[pp_teamleiter] [int] NOT NULL,
	[pp_tlprobefahrer] [int] NOT NULL,
	[pp_probefahrer] [int] NOT NULL,
	[pp_kostuem] [int] NOT NULL,
	[pp_aufbau] [int] NOT NULL,
	[pp_abbau] [int] NOT NULL,
	[pp_konvoi] [int] NOT NULL,
	[pp_gastro] [int] NOT NULL,
	[pp_sonstige] [int] NOT NULL,
	[aufbau_datum] [datetime] NOT NULL,
	[abbau_datum] [datetime] NOT NULL,
	[aufbauhinweise] [text] NOT NULL,
	[status] [varchar](80) NOT NULL,
	[deadlines] [varchar](255) NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[elemente] [text] NOT NULL,
	[standplatzkosten] [varchar](50) NOT NULL,
	[ersteller] [int] NOT NULL,
	[angelegt] [datetime] NULL,
	[lastedit] [datetime] NULL,
	[lasteditor] [int] NULL,
	[personal] [int] NULL,
	[ausstattung] [int] NULL,
	[feedback] [int] NULL,
	[abrechnung] [int] NULL,
	[archiv] [tinyint] NOT NULL,
	[mark08] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_projekte2013] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_projekte2014]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_projekte2014](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mandant] [int] NOT NULL,
	[projektnummer] [int] NOT NULL,
	[veranstaltung] [varchar](255) NOT NULL,
	[typ] [varchar](80) NOT NULL,
	[art] [varchar](80) NULL,
	[kategorie] [char](2) NULL,
	[prioritaet] [int] NOT NULL,
	[termin] [tinyint] NOT NULL,
	[projektleiter] [int] NOT NULL,
	[veranstalter] [varchar](255) NULL,
	[ansprechpartner] [varchar](255) NOT NULL,
	[va_telefon] [varchar](50) NOT NULL,
	[va_telefax] [varchar](50) NOT NULL,
	[va_email] [varchar](255) NOT NULL,
	[haendler1] [varchar](255) NOT NULL,
	[haendler2] [varchar](255) NOT NULL,
	[haendler3] [varchar](255) NOT NULL,
	[haendler4] [varchar](255) NOT NULL,
	[haendler5] [varchar](255) NOT NULL,
	[haendler6] [varchar](255) NOT NULL,
	[haendlernr1] [varchar](50) NOT NULL,
	[haendlernr2] [varchar](50) NOT NULL,
	[haendlernr3] [varchar](50) NOT NULL,
	[haendlernr4] [varchar](50) NOT NULL,
	[haendlernr5] [varchar](50) NOT NULL,
	[haendlernr6] [varchar](50) NOT NULL,
	[haendler1_ap] [varchar](255) NOT NULL,
	[haendler2_ap] [varchar](255) NOT NULL,
	[haendler3_ap] [varchar](255) NOT NULL,
	[haendler4_ap] [varchar](255) NOT NULL,
	[haendler5_ap] [varchar](255) NOT NULL,
	[haendler6_ap] [varchar](255) NOT NULL,
	[haendler1_telefon] [varchar](255) NOT NULL,
	[haendler2_telefon] [varchar](255) NOT NULL,
	[haendler3_telefon] [varchar](255) NOT NULL,
	[haendler4_telefon] [varchar](255) NOT NULL,
	[haendler5_telefon] [varchar](255) NOT NULL,
	[haendler6_telefon] [varchar](255) NOT NULL,
	[haendler1_email] [varchar](255) NOT NULL,
	[haendler2_email] [varchar](255) NOT NULL,
	[haendler3_email] [varchar](255) NOT NULL,
	[haendler4_email] [varchar](255) NOT NULL,
	[haendler5_email] [varchar](255) NOT NULL,
	[haendler6_email] [varchar](255) NOT NULL,
	[va_location] [varchar](255) NOT NULL,
	[va_strasse] [varchar](255) NOT NULL,
	[va_plz] [varchar](10) NULL,
	[va_ort] [varchar](255) NULL,
	[va_beginn] [date] NULL,
	[va_ende] [date] NULL,
	[va_tage] [varchar](255) NULL,
	[initiator] [varchar](80) NULL,
	[glvorschlag] [tinyint] NULL,
	[WunschStatus] [varchar](50) NOT NULL,
	[gebietsleiter] [int] NOT NULL,
	[va_frequenz_geplant] [varchar](80) NULL,
	[va_frequenz_verifiziert] [varchar](80) NULL,
	[modul] [varchar](80) NULL,
	[probefahrten] [tinyint] NOT NULL,
	[at_probefahrten] [int] NOT NULL,
	[bewachung] [tinyint] NOT NULL,
	[team_plan] [int] NOT NULL,
	[mod_plan] [int] NOT NULL,
	[comod_plan] [int] NOT NULL,
	[pp_moderatoren] [int] NOT NULL,
	[pp_comoderatoren] [int] NOT NULL,
	[pp_promotoren] [int] NOT NULL,
	[pp_teamleiter] [int] NOT NULL,
	[pp_tlprobefahrer] [int] NOT NULL,
	[pp_probefahrer] [int] NOT NULL,
	[pp_kostuem] [int] NOT NULL,
	[pp_aufbau] [int] NOT NULL,
	[pp_abbau] [int] NOT NULL,
	[pp_konvoi] [int] NOT NULL,
	[pp_gastro] [int] NOT NULL,
	[pp_sonstige] [int] NOT NULL,
	[aufbau_datum] [datetime] NOT NULL,
	[abbau_datum] [datetime] NOT NULL,
	[aufbauhinweise] [text] NOT NULL,
	[status] [varchar](80) NOT NULL,
	[deadlines] [varchar](255) NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[elemente] [text] NOT NULL,
	[standplatzkosten] [varchar](50) NOT NULL,
	[ersteller] [int] NOT NULL,
	[angelegt] [datetime] NULL,
	[lastedit] [datetime] NULL,
	[lasteditor] [int] NULL,
	[personal] [int] NULL,
	[ausstattung] [int] NULL,
	[feedback] [int] NULL,
	[abrechnung] [int] NULL,
	[archiv] [tinyint] NOT NULL,
	[mark08] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_projekte2014] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_projektevorschlaege]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_projektevorschlaege](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mandant] [int] NOT NULL,
	[projektnummer] [int] NOT NULL,
	[veranstaltung] [varchar](255) NOT NULL,
	[typ] [varchar](80) NOT NULL,
	[art] [varchar](80) NULL,
	[kategorie] [char](2) NULL,
	[prioritaet] [int] NOT NULL,
	[termin] [tinyint] NOT NULL,
	[projektleiter] [int] NOT NULL,
	[veranstalter] [varchar](255) NULL,
	[ansprechpartner] [varchar](255) NOT NULL,
	[va_telefon] [varchar](50) NOT NULL,
	[va_telefax] [varchar](50) NOT NULL,
	[va_email] [varchar](255) NOT NULL,
	[haendler1] [varchar](255) NOT NULL,
	[haendler2] [varchar](255) NOT NULL,
	[haendler3] [varchar](255) NOT NULL,
	[haendler4] [varchar](255) NOT NULL,
	[haendler5] [varchar](255) NOT NULL,
	[haendlernr1] [varchar](50) NOT NULL,
	[haendlernr2] [varchar](50) NOT NULL,
	[haendlernr3] [varchar](50) NOT NULL,
	[haendlernr4] [varchar](50) NOT NULL,
	[haendlernr5] [varchar](50) NOT NULL,
	[haendler1_ap] [varchar](255) NOT NULL,
	[haendler2_ap] [varchar](255) NOT NULL,
	[haendler3_ap] [varchar](255) NOT NULL,
	[haendler4_ap] [varchar](255) NOT NULL,
	[haendler5_ap] [varchar](255) NOT NULL,
	[haendler1_telefon] [varchar](255) NOT NULL,
	[haendler2_telefon] [varchar](255) NOT NULL,
	[haendler3_telefon] [varchar](255) NOT NULL,
	[haendler4_telefon] [varchar](255) NOT NULL,
	[haendler5_telefon] [varchar](255) NOT NULL,
	[haendler1_email] [varchar](255) NOT NULL,
	[haendler2_email] [varchar](255) NOT NULL,
	[haendler3_email] [varchar](255) NOT NULL,
	[haendler4_email] [varchar](255) NOT NULL,
	[haendler5_email] [varchar](255) NOT NULL,
	[va_location] [varchar](255) NOT NULL,
	[va_strasse] [varchar](255) NOT NULL,
	[va_plz] [varchar](10) NULL,
	[va_ort] [varchar](255) NULL,
	[va_beginn] [date] NULL,
	[va_ende] [date] NULL,
	[va_tage] [varchar](255) NULL,
	[initiator] [varchar](80) NULL,
	[glvorschlag] [tinyint] NULL,
	[WunschStatus] [varchar](50) NOT NULL,
	[gebietsleiter] [int] NOT NULL,
	[va_frequenz_geplant] [varchar](80) NULL,
	[va_frequenz_verifiziert] [varchar](80) NULL,
	[modul] [varchar](80) NULL,
	[probefahrten] [tinyint] NOT NULL,
	[at_probefahrten] [int] NOT NULL,
	[bewachung] [tinyint] NOT NULL,
	[team_plan] [int] NOT NULL,
	[mod_plan] [int] NOT NULL,
	[comod_plan] [int] NOT NULL,
	[pp_moderatoren] [int] NOT NULL,
	[pp_comoderatoren] [int] NOT NULL,
	[pp_promotoren] [int] NOT NULL,
	[pp_teamleiter] [int] NOT NULL,
	[pp_tlprobefahrer] [int] NOT NULL,
	[pp_probefahrer] [int] NOT NULL,
	[pp_kostuem] [int] NOT NULL,
	[pp_aufbau] [int] NOT NULL,
	[pp_abbau] [int] NOT NULL,
	[pp_konvoi] [int] NOT NULL,
	[pp_gastro] [int] NOT NULL,
	[pp_sonstige] [int] NOT NULL,
	[aufbau_datum] [datetime] NOT NULL,
	[abbau_datum] [datetime] NOT NULL,
	[aufbauhinweise] [text] NOT NULL,
	[status] [varchar](80) NOT NULL,
	[deadlines] [varchar](255) NOT NULL,
	[bemerkungen] [text] NOT NULL,
	[elemente] [text] NOT NULL,
	[standplatzkosten] [varchar](50) NOT NULL,
	[ersteller] [int] NOT NULL,
	[angelegt] [datetime] NULL,
	[lastedit] [datetime] NULL,
	[lasteditor] [int] NULL,
	[personal] [int] NULL,
	[ausstattung] [int] NULL,
	[feedback] [int] NULL,
	[abrechnung] [int] NULL,
	[archiv] [tinyint] NOT NULL,
	[uebtragen] [tinyint] NOT NULL,
 CONSTRAINT [PK_sk_projektevorschlaege] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sk_vertragsdaten]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sk_vertragsdaten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taetigkeit] [varchar](50) NOT NULL,
	[beschreibung] [text] NOT NULL,
	[honorar] [decimal](5, 2) NOT NULL,
	[bonus] [decimal](5, 2) NOT NULL,
	[reisekosten_pkwprivat] [decimal](5, 2) NOT NULL,
	[reisekosten_pkwteam] [decimal](5, 2) NOT NULL,
	[reisekosten_lkw] [decimal](5, 2) NOT NULL,
	[hotelkosten] [decimal](5, 2) NOT NULL,
	[aufbau_eventbuehne] [decimal](5, 2) NOT NULL,
	[aufbau_clevermodul] [decimal](5, 2) NOT NULL,
	[aufbau_new_mobile_showroom] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_sk_vertragsdaten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[skoda_ip]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skoda_ip](
	[id] [int] NULL,
	[adresse] [varchar](max) NULL,
	[Team] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wortspiel]    Script Date: 06.07.2018 12:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wortspiel](
	[Spalte1] [varchar](50) NULL,
	[Spalte11] [varchar](50) NULL,
	[Spalte12] [varchar](50) NULL,
	[Spalte13] [varchar](50) NULL,
	[Spalte14] [varchar](50) NULL,
	[Spalte15] [varchar](50) NULL,
	[Spalte16] [varchar](50) NULL,
	[Spalte17] [varchar](50) NULL,
	[Spalte18] [varchar](50) NULL,
	[Spalte19] [varchar](50) NULL,
	[Spalte110] [varchar](50) NULL,
	[Spalte111] [varchar](50) NULL,
	[Spalte112] [varchar](50) NULL,
	[Spalte113] [varchar](50) NULL,
	[Spalte114] [varchar](50) NULL,
	[Spalte115] [varchar](50) NULL,
	[Spalte116] [varchar](50) NULL,
	[Spalte117] [varchar](50) NULL,
	[Spalte118] [varchar](50) NULL,
	[Spalte119] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_sk_aktionsberichte]    Script Date: 06.07.2018 12:02:38 ******/
CREATE NONCLUSTERED INDEX [IX_sk_aktionsberichte] ON [dbo].[sk_aktionsberichte]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_sk_aktionsberichte_1]    Script Date: 06.07.2018 12:02:38 ******/
CREATE NONCLUSTERED INDEX [IX_sk_aktionsberichte_1] ON [dbo].[sk_aktionsberichte]
(
	[beratungen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[fahrerlebnisse] ADD  CONSTRAINT [DF_fahrerlebnisse_bestaetigt]  DEFAULT ((0)) FOR [bestaetigt]
GO
ALTER TABLE [dbo].[fahrerlebnisse_anmeldungen] ADD  CONSTRAINT [DF_fahrerlebnisse_anmeldungen_bestaetigt]  DEFAULT ((0)) FOR [bestaetigt]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist1]  DEFAULT ((0)) FOR [Frist1]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist2]  DEFAULT ((0)) FOR [Frist2]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist3]  DEFAULT ((0)) FOR [Frist3]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist4]  DEFAULT ((0)) FOR [Frist4]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist5]  DEFAULT ((0)) FOR [Frist5]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist6]  DEFAULT ((0)) FOR [Frist6]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist7]  DEFAULT ((0)) FOR [Frist7]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist8]  DEFAULT ((0)) FOR [Frist8]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist9]  DEFAULT ((0)) FOR [Frist9]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist10]  DEFAULT ((0)) FOR [Frist10]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist11]  DEFAULT ((0)) FOR [Frist11]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist12]  DEFAULT ((0)) FOR [Frist12]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist13]  DEFAULT ((0)) FOR [Frist13]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist14]  DEFAULT ((0)) FOR [Frist14]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist15]  DEFAULT ((0)) FOR [Frist15]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist16]  DEFAULT ((0)) FOR [Frist16]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist17]  DEFAULT ((0)) FOR [Frist17]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist18]  DEFAULT ((0)) FOR [Frist18]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist19]  DEFAULT ((0)) FOR [Frist19]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist20]  DEFAULT ((0)) FOR [Frist20]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist21]  DEFAULT ((0)) FOR [Frist21]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist22]  DEFAULT ((0)) FOR [Frist22]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist23]  DEFAULT ((0)) FOR [Frist23]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist24]  DEFAULT ((0)) FOR [Frist24]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist25]  DEFAULT ((0)) FOR [Frist25]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist26]  DEFAULT ((0)) FOR [Frist26]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist27]  DEFAULT ((0)) FOR [Frist27]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist28]  DEFAULT ((0)) FOR [Frist28]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist29]  DEFAULT ((0)) FOR [Frist29]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist30]  DEFAULT ((0)) FOR [Frist30]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist31]  DEFAULT ((0)) FOR [Frist31]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist32]  DEFAULT ((0)) FOR [Frist32]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist33]  DEFAULT ((0)) FOR [Frist33]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist34]  DEFAULT ((0)) FOR [Frist34]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist35]  DEFAULT ((0)) FOR [Frist35]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist36]  DEFAULT ((0)) FOR [Frist36]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist37]  DEFAULT ((0)) FOR [Frist37]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist38]  DEFAULT ((0)) FOR [Frist38]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist39]  DEFAULT ((0)) FOR [Frist39]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist40]  DEFAULT ((0)) FOR [Frist40]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist41]  DEFAULT ((0)) FOR [Frist41]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist42]  DEFAULT ((0)) FOR [Frist42]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist43]  DEFAULT ((0)) FOR [Frist43]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist44]  DEFAULT ((0)) FOR [Frist44]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist45]  DEFAULT ((0)) FOR [Frist45]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist46]  DEFAULT ((0)) FOR [Frist46]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist47]  DEFAULT ((0)) FOR [Frist47]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist48]  DEFAULT ((0)) FOR [Frist48]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist49]  DEFAULT ((0)) FOR [Frist49]
GO
ALTER TABLE [dbo].[Fristenstand] ADD  CONSTRAINT [DF_Fristenstand_Frist50]  DEFAULT ((0)) FOR [Frist50]
GO
ALTER TABLE [dbo].[gluecksnummern] ADD  CONSTRAINT [DF_gluecksnummern_aktiv]  DEFAULT ((0)) FOR [aktiv]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_Table_1_idPRojekt]  DEFAULT ((0)) FOR [idProjekt]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_va_art]  DEFAULT ('sonstige') FOR [va_art]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_eventbuehne]  DEFAULT ((0)) FOR [eventbuehne]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_grundmodul]  DEFAULT ((0)) FOR [grundmodul]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_clevermodul]  DEFAULT ((0)) FOR [clevermodul]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_elemente]  DEFAULT ((0)) FOR [elemente]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_aktionsmodul_zusatz_dabei]  DEFAULT ((0)) FOR [aktionsmodul_zusatz_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_kindermodul]  DEFAULT ((0)) FOR [kindermodul]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_barbonesysteme]  DEFAULT ((0)) FOR [barbonesysteme]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_probefahrtenmodul]  DEFAULT ((0)) FOR [probefahrtenmodul]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_loungemodul]  DEFAULT ((0)) FOR [loungemodul]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_twoinonemodul]  DEFAULT ((0)) FOR [twoinonemodul]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_range_folder_dabei]  DEFAULT ((0)) FOR [range_folder_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_gutschein_fsz_dabei]  DEFAULT ((0)) FOR [gutschein_fsz_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_fahrerlebnis_broschuere_dabei]  DEFAULT ((0)) FOR [fahrerlebnis_broschuere_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_eddy_fibel_dabei]  DEFAULT ((0)) FOR [eddy_fibel_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_ausgabe_zusatz_dabei]  DEFAULT ((0)) FOR [ausgabe_zusatz_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_gerolsteiner]  DEFAULT ((0)) FOR [gerolsteiner]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_shell]  DEFAULT ((0)) FOR [shell]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_skodabank]  DEFAULT ((0)) FOR [skodabank]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_skodazubehoer]  DEFAULT ((0)) FOR [skodazubehoer]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_kooperation1_dabei]  DEFAULT ((0)) FOR [kooperation1_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_kooperation2_partner_dabei]  DEFAULT ((0)) FOR [kooperation2_partner_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_kooperation3_partner_dabei]  DEFAULT ((0)) FOR [kooperation3_partner_dabei]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_pf_fzg_von_hdl]  DEFAULT ((0)) FOR [pf_fzg_von_hdl]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_pf_fzg_von_sad]  DEFAULT ((0)) FOR [pf_fzg_von_sad]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_moderation]  DEFAULT ((0)) FOR [moderation]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_buehnenteam]  DEFAULT ((0)) FOR [buehnenteam]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_beratungskompetenz]  DEFAULT ((0)) FOR [beratungskompetenz]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_standplatz]  DEFAULT ((0)) FOR [standplatz]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_sauberkeit_kfz]  DEFAULT ((0)) FOR [sauberkeit_kfz]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_sauberkeit_buehne]  DEFAULT ((0)) FOR [sauberkeit_buehne]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_zusammenarbeit]  DEFAULT ((0)) FOR [zusammenarbeit]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_teamwork]  DEFAULT ((0)) FOR [teamwork]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_nochmalige_teilnahme]  DEFAULT ((0)) FOR [nochmalige_teilnahme]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_aktionsberichte] ADD  CONSTRAINT [DF_sk_aktionsberichte_eingang]  DEFAULT ('2000-01-01 00:00:00') FOR [eingang]
GO
ALTER TABLE [dbo].[sk_aktionszeiten] ADD  CONSTRAINT [DF_sk_aktionszeiten_idProjekt]  DEFAULT ((0)) FOR [idProjekt]
GO
ALTER TABLE [dbo].[sk_aktionszeiten] ADD  CONSTRAINT [DF_sk_aktionszeiten_tag]  DEFAULT ('2000-01-01') FOR [tag]
GO
ALTER TABLE [dbo].[sk_aktionszeiten] ADD  CONSTRAINT [DF_sk_aktionszeiten_von]  DEFAULT ('00:00:00') FOR [von]
GO
ALTER TABLE [dbo].[sk_aktionszeiten] ADD  CONSTRAINT [DF_sk_aktionszeiten_bis]  DEFAULT ('00:00:00') FOR [bis]
GO
ALTER TABLE [dbo].[sk_aktionszeiten] ADD  CONSTRAINT [DF_sk_aktionszeiten_eingang]  DEFAULT ('2000-01-01 00:00:00') FOR [eingang]
GO
ALTER TABLE [dbo].[sk_ausstattungsbuchungen] ADD  CONSTRAINT [DF_sk_ausstattungsbuchungen_idProjekt]  DEFAULT ((0)) FOR [idProjekt]
GO
ALTER TABLE [dbo].[sk_ausstattungsbuchungen] ADD  CONSTRAINT [DF_sk_ausstattungsbuchungen_idElement]  DEFAULT ((0)) FOR [idElement]
GO
ALTER TABLE [dbo].[sk_ausstattungsbuchungen] ADD  CONSTRAINT [DF_sk_ausstattungsbuchungen_menge]  DEFAULT ((0)) FOR [menge]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_mandant]  DEFAULT ((0)) FOR [mandant]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r1]  DEFAULT ((0)) FOR [r1]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r2]  DEFAULT ((0)) FOR [r2]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r3]  DEFAULT ((0)) FOR [r3]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r4]  DEFAULT ((0)) FOR [r4]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r5]  DEFAULT ((0)) FOR [r5]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r6]  DEFAULT ((0)) FOR [r6]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r7]  DEFAULT ((0)) FOR [r7]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r8]  DEFAULT ((0)) FOR [r8]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r9]  DEFAULT ((0)) FOR [r9]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_r10]  DEFAULT ((0)) FOR [r10]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_gl]  DEFAULT ((0)) FOR [gl]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_lastvisit]  DEFAULT ('2001-01-01 00:00:00') FOR [lastvisit]
GO
ALTER TABLE [dbo].[sk_benutzer] ADD  CONSTRAINT [DF_sk_benutzer_aktiv]  DEFAULT ((0)) FOR [aktiv]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_geburtsdatum]  DEFAULT ('2001-01-01') FOR [geburtsdatum]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_moderator]  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_promoter]  DEFAULT ((0)) FOR [promoter]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_fachberater]  DEFAULT ((0)) FOR [fachberater]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_probefahrer]  DEFAULT ((0)) FOR [probefahrer]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_walkingact]  DEFAULT ((0)) FOR [walkingact]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_hostess]  DEFAULT ((0)) FOR [hostess]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_kinderschminken]  DEFAULT ((0)) FOR [kinderschminken]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_fuehrerschein_pkw]  DEFAULT ((0)) FOR [fuehrerschein_pkw]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_fuehrerschein_lkw]  DEFAULT ((0)) FOR [fuehrerschein_lkw]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_eigenes_fahrzeug]  DEFAULT ((0)) FOR [eigenes_fahrzeug]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_gewerbeschein]  DEFAULT ((0)) FOR [gewerbeschein]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_mwstbescheinigung]  DEFAULT ((0)) FOR [mwstbescheinigung]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_ustbefreiung]  DEFAULT ((0)) FOR [ustbefreiung]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_ortseinsatz]  DEFAULT ((0)) FOR [ortseinsatz]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_regionaleinsatz]  DEFAULT ((0)) FOR [regionaleinsatz]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_reisseeinsatz]  DEFAULT ((0)) FOR [reisseeinsatz]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_ganzjaehrig]  DEFAULT ((0)) FOR [ganzjaehrig]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_deutsch]  DEFAULT ((0)) FOR [deutsch]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_englisch]  DEFAULT ((0)) FOR [englisch]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_franzoesisch]  DEFAULT ((0)) FOR [franzoesisch]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_italienisch]  DEFAULT ((0)) FOR [italienisch]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_tuerkisch]  DEFAULT ((0)) FOR [tuerkisch]
GO
ALTER TABLE [dbo].[sk_bewerbungen] ADD  CONSTRAINT [DF_sk_bewerbungen_angelegt]  DEFAULT ('2001-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_deadlines] ADD  CONSTRAINT [DF_sk_deadlines_deadline]  DEFAULT ((0)) FOR [deadline]
GO
ALTER TABLE [dbo].[sk_deadlines] ADD  CONSTRAINT [DF_sk_deadlines_alarm]  DEFAULT ((0)) FOR [alarm]
GO
ALTER TABLE [dbo].[sk_fahrtenbuch] ADD  CONSTRAINT [DF_sk_fahrtenbuch_idFahrzeug]  DEFAULT ((0)) FOR [idFahrzeug]
GO
ALTER TABLE [dbo].[sk_fahrtenbuch] ADD  CONSTRAINT [DF_sk_fahrtenbuch_idFahrer]  DEFAULT ((0)) FOR [idFahrer]
GO
ALTER TABLE [dbo].[sk_fahrtenbuch] ADD  CONSTRAINT [DF_sk_fahrtenbuch_eingang]  DEFAULT ('2001-01-01 00:00:00') FOR [eingang]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_idFahrzeug]  DEFAULT ((0)) FOR [idFahrzeug]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_idFahrer]  DEFAULT ((0)) FOR [idFahrer]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_idProjekt]  DEFAULT ((0)) FOR [idProjekt]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_uebergabedatum]  DEFAULT ('2001-01-01') FOR [uebergabedatum]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_rueckgabedatum]  DEFAULT ('2001-01-01') FOR [rueckgabedatum]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_rueckgabe]  DEFAULT ((0)) FOR [rueckgabe]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_bucher]  DEFAULT ((0)) FOR [bucher]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_buchungsdatum]  DEFAULT ('2001-01-01 00:00:00') FOR [buchungsdatum]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_fahrzeugbelegung] ADD  CONSTRAINT [DF_sk_fahrzeugbelegung_lastedit]  DEFAULT ('2001-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_fahrgestell]  DEFAULT ('2001-01-01') FOR [fahrgestell]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_tuev]  DEFAULT ('2001-01-01') FOR [tuev]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_winterreifen]  DEFAULT ((0)) FOR [winterreifen]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_warndreieck]  DEFAULT ((0)) FOR [warndreieck]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_verbandskasten]  DEFAULT ((0)) FOR [verbandskasten]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_warnwester]  DEFAULT ((0)) FOR [warnwester]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_regenschirm]  DEFAULT ((0)) FOR [regenschirm]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_serviceheft]  DEFAULT ((0)) FOR [serviceheft]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_aktiv]  DEFAULT ((0)) FOR [aktiv]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_angelegt]  DEFAULT ('2001-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_fahrzeuge] ADD  CONSTRAINT [DF_sk_fahrzeuge_lastedit]  DEFAULT ('2001-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_gebietsleiter] ADD  CONSTRAINT [DF_sk_gebietsleiter_gl]  DEFAULT ((0)) FOR [gl]
GO
ALTER TABLE [dbo].[sk_gebietsleiter] ADD  CONSTRAINT [DF_sk_gebietsleiter_aktiv]  DEFAULT ((0)) FOR [aktiv]
GO
ALTER TABLE [dbo].[sk_haendler] ADD  CONSTRAINT [DF_sk_haendler_BDKUNR]  DEFAULT ((0)) FOR [BDKUNR]
GO
ALTER TABLE [dbo].[sk_log] ADD  CONSTRAINT [DF_sk_log_idBenutzer]  DEFAULT ((0)) FOR [idBenutzer]
GO
ALTER TABLE [dbo].[sk_log] ADD  CONSTRAINT [DF_sk_log_logintime]  DEFAULT ('2001-01-01 00:00:00') FOR [logintime]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_mandant]  DEFAULT ((0)) FOR [mandant]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_team]  DEFAULT ((0)) FOR [team]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_teamleiter]  DEFAULT ((0)) FOR [teamleiter]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_promoter]  DEFAULT ((0)) FOR [promoter]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_moderator]  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_kostuem]  DEFAULT ((0)) FOR [kostuem]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_aufbau]  DEFAULT ((0)) FOR [aufbau]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_kinderschminken]  DEFAULT ((0)) FOR [kinderschminken]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_probefahrer]  DEFAULT ((0)) FOR [probefahrer]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_konvoi]  DEFAULT ((0)) FOR [konvoi]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_sonstige]  DEFAULT ((0)) FOR [sonstige]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_geburtsdatum]  DEFAULT ('1900-01-01') FOR [geburtsdatum]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_gewerbeschein]  DEFAULT ((0)) FOR [gewerbeschein]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_rv]  DEFAULT ((0)) FOR [rv]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_profibonus]  DEFAULT ((0.00)) FOR [profibonus]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_rahmenvertrag]  DEFAULT ('2001-01-01') FOR [rahmenvertrag]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_mehrwertsteuer]  DEFAULT ((0)) FOR [mehrwertsteuer]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_angelegt]  DEFAULT ('1900-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_lastedit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_lastvisit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastvisit]
GO
ALTER TABLE [dbo].[sk_personal] ADD  CONSTRAINT [DF_sk_personal_aktiv]  DEFAULT ((0)) FOR [aktiv]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_mandant]  DEFAULT ((0)) FOR [mandant]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_team]  DEFAULT ((0)) FOR [team]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_teamleiter]  DEFAULT ((0)) FOR [teamleiter]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_promoter]  DEFAULT ((0)) FOR [promoter]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_moderator]  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_kostuem]  DEFAULT ((0)) FOR [kostuem]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_aufbau]  DEFAULT ((0)) FOR [aufbau]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_kinderschminken]  DEFAULT ((0)) FOR [kinderschminken]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_probefahrer]  DEFAULT ((0)) FOR [probefahrer]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_konvoi]  DEFAULT ((0)) FOR [konvoi]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_sonstige]  DEFAULT ((0)) FOR [sonstige]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_geburtsdatum]  DEFAULT ('1900-01-01') FOR [geburtsdatum]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_gewerbeschein]  DEFAULT ((0)) FOR [gewerbeschein]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_rv]  DEFAULT ((0)) FOR [rv]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_profibonus]  DEFAULT ((0.00)) FOR [profibonus]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_rahmenvertrag]  DEFAULT ('2001-01-01') FOR [rahmenvertrag]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_mehrwertsteuer]  DEFAULT ((0)) FOR [mehrwertsteuer]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_angelegt]  DEFAULT ('1900-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_lastedit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_lastvisit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastvisit]
GO
ALTER TABLE [dbo].[sk_personal_neu] ADD  CONSTRAINT [DF_sk_personal_neu_aktiv]  DEFAULT ((0)) FOR [aktiv]
GO
ALTER TABLE [dbo].[sk_personalbuchungen] ADD  CONSTRAINT [DF_sk_personalbuchungen_idPersonal]  DEFAULT ((0)) FOR [idPersonal]
GO
ALTER TABLE [dbo].[sk_personalbuchungen] ADD  CONSTRAINT [DF_sk_personalbuchungen_idProjekt]  DEFAULT ((0)) FOR [idProjekt]
GO
ALTER TABLE [dbo].[sk_personalbuchungen] ADD  CONSTRAINT [DF_sk_personalbuchungen_abgerechnet]  DEFAULT ((0)) FOR [abgerechnet]
GO
ALTER TABLE [dbo].[sk_personalbuchungen] ADD  CONSTRAINT [DF_sk_personalbuchungen_einsatzbeginn]  DEFAULT ('1900-01-01') FOR [einsatzbeginn]
GO
ALTER TABLE [dbo].[sk_personalbuchungen] ADD  CONSTRAINT [DF_sk_personalbuchungen_einsatzende]  DEFAULT ('1900-01-01') FOR [einsatzende]
GO
ALTER TABLE [dbo].[sk_personalbuchungen] ADD  CONSTRAINT [DF_sk_personalbuchungen_bucher]  DEFAULT ((0)) FOR [bucher]
GO
ALTER TABLE [dbo].[sk_personalbuchungen] ADD  CONSTRAINT [DF_sk_personalbuchungen_buchungsdatum]  DEFAULT ('1900-01-01 00:00:00') FOR [buchungsdatum]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_mandant]  DEFAULT ((0)) FOR [mandant]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_projektnummer]  DEFAULT ((0)) FOR [projektnummer]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_prioritaet]  DEFAULT ((0)) FOR [prioritaet]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_projektleiter]  DEFAULT ((0)) FOR [projektleiter]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_va_beginn]  DEFAULT ('1900-01-01') FOR [va_beginn]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_va_ende]  DEFAULT ('1900-01-01') FOR [va_ende]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_glvorschlag]  DEFAULT ((0)) FOR [glvorschlag]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_gebietsleiter]  DEFAULT ((0)) FOR [gebietsleiter]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_probefahrten]  DEFAULT ((0)) FOR [probefahrten]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_at_probefahrten]  DEFAULT ((0)) FOR [at_probefahrten]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_bewachung]  DEFAULT ((0)) FOR [bewachung]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_team_plan]  DEFAULT ((0)) FOR [team_plan]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_mod_plan]  DEFAULT ((0)) FOR [mod_plan]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_comod_plan]  DEFAULT ((0)) FOR [comod_plan]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_moderatoren]  DEFAULT ((0)) FOR [pp_moderatoren]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_comoderatoren]  DEFAULT ((0)) FOR [pp_comoderatoren]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_promotoren]  DEFAULT ((0)) FOR [pp_promotoren]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_teamleiter]  DEFAULT ((0)) FOR [pp_teamleiter]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_tlprobefahrer]  DEFAULT ((0)) FOR [pp_tlprobefahrer]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_probefahrer]  DEFAULT ((0)) FOR [pp_probefahrer]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_kostuem]  DEFAULT ((0)) FOR [pp_kostuem]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_aufbau]  DEFAULT ((0)) FOR [pp_aufbau]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_abbau]  DEFAULT ((0)) FOR [pp_abbau]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_konvoi]  DEFAULT ((0)) FOR [pp_konvoi]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_gastro]  DEFAULT ((0)) FOR [pp_gastro]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_pp_sonstige]  DEFAULT ((0)) FOR [pp_sonstige]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_angelegt]  DEFAULT ('1900-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_lastedit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_personal]  DEFAULT ((0)) FOR [personal]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_ausstattung]  DEFAULT ((0)) FOR [ausstattung]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_feedback]  DEFAULT ((0)) FOR [feedback]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_abrechnung]  DEFAULT ((0)) FOR [abrechnung]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_archiv]  DEFAULT ((0)) FOR [archiv]
GO
ALTER TABLE [dbo].[sk_projekte] ADD  CONSTRAINT [DF_sk_projekte_mark08]  DEFAULT ((0)) FOR [mark08]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_mandant]  DEFAULT ((0)) FOR [mandant]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_projektnummer]  DEFAULT ((0)) FOR [projektnummer]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_prioritaet]  DEFAULT ((0)) FOR [prioritaet]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_projektleiter]  DEFAULT ((0)) FOR [projektleiter]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_va_beginn]  DEFAULT ('1900-01-01') FOR [va_beginn]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_va_ende]  DEFAULT ('1900-01-01') FOR [va_ende]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_glvorschlag]  DEFAULT ((0)) FOR [glvorschlag]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_gebietsleiter]  DEFAULT ((0)) FOR [gebietsleiter]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_probefahrten]  DEFAULT ((0)) FOR [probefahrten]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_at_probefahrten]  DEFAULT ((0)) FOR [at_probefahrten]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_bewachung]  DEFAULT ((0)) FOR [bewachung]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_team_plan]  DEFAULT ((0)) FOR [team_plan]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_mod_plan]  DEFAULT ((0)) FOR [mod_plan]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_comod_plan]  DEFAULT ((0)) FOR [comod_plan]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_moderatoren]  DEFAULT ((0)) FOR [pp_moderatoren]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_comoderatoren]  DEFAULT ((0)) FOR [pp_comoderatoren]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_promotoren]  DEFAULT ((0)) FOR [pp_promotoren]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_teamleiter]  DEFAULT ((0)) FOR [pp_teamleiter]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_tlprobefahrer]  DEFAULT ((0)) FOR [pp_tlprobefahrer]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_probefahrer]  DEFAULT ((0)) FOR [pp_probefahrer]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_kostuem]  DEFAULT ((0)) FOR [pp_kostuem]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_aufbau]  DEFAULT ((0)) FOR [pp_aufbau]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_abbau]  DEFAULT ((0)) FOR [pp_abbau]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_konvoi]  DEFAULT ((0)) FOR [pp_konvoi]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_gastro]  DEFAULT ((0)) FOR [pp_gastro]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_pp_sonstige]  DEFAULT ((0)) FOR [pp_sonstige]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_aufbau_datum]  DEFAULT ('1900-01-01 00:00:00') FOR [aufbau_datum]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_abbau_datum]  DEFAULT ('1900-01-01 00:00:00') FOR [abbau_datum]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_angelegt]  DEFAULT ('1900-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_lastedit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_personal]  DEFAULT ((0)) FOR [personal]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_ausstattung]  DEFAULT ((0)) FOR [ausstattung]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_feedback]  DEFAULT ((0)) FOR [feedback]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_abrechnung]  DEFAULT ((0)) FOR [abrechnung]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_archiv]  DEFAULT ((0)) FOR [archiv]
GO
ALTER TABLE [dbo].[sk_projekte2013] ADD  CONSTRAINT [DF_sk_projekte2013_mark08]  DEFAULT ((0)) FOR [mark08]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_mandant]  DEFAULT ((0)) FOR [mandant]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_projektnummer]  DEFAULT ((0)) FOR [projektnummer]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_prioritaet]  DEFAULT ((0)) FOR [prioritaet]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_projektleiter]  DEFAULT ((0)) FOR [projektleiter]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_va_beginn]  DEFAULT ('1900-01-01') FOR [va_beginn]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_va_ende]  DEFAULT ('1900-01-01') FOR [va_ende]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_glvorschlag]  DEFAULT ((0)) FOR [glvorschlag]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_gebietsleiter]  DEFAULT ((0)) FOR [gebietsleiter]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_probefahrten]  DEFAULT ((0)) FOR [probefahrten]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_at_probefahrten]  DEFAULT ((0)) FOR [at_probefahrten]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_bewachung]  DEFAULT ((0)) FOR [bewachung]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_team_plan]  DEFAULT ((0)) FOR [team_plan]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_mod_plan]  DEFAULT ((0)) FOR [mod_plan]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_comod_plan]  DEFAULT ((0)) FOR [comod_plan]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_moderatoren]  DEFAULT ((0)) FOR [pp_moderatoren]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_comoderatoren]  DEFAULT ((0)) FOR [pp_comoderatoren]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_promotoren]  DEFAULT ((0)) FOR [pp_promotoren]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_teamleiter]  DEFAULT ((0)) FOR [pp_teamleiter]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_tlprobefahrer]  DEFAULT ((0)) FOR [pp_tlprobefahrer]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_probefahrer]  DEFAULT ((0)) FOR [pp_probefahrer]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_kostuem]  DEFAULT ((0)) FOR [pp_kostuem]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_aufbau]  DEFAULT ((0)) FOR [pp_aufbau]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_abbau]  DEFAULT ((0)) FOR [pp_abbau]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_konvoi]  DEFAULT ((0)) FOR [pp_konvoi]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_gastro]  DEFAULT ((0)) FOR [pp_gastro]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_pp_sonstige]  DEFAULT ((0)) FOR [pp_sonstige]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_aufbau_datum]  DEFAULT ('1900-01-01 00:00:00') FOR [aufbau_datum]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_abbau_datum]  DEFAULT ('1900-01-01 00:00:00') FOR [abbau_datum]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_angelegt]  DEFAULT ('1900-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_lastedit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_personal]  DEFAULT ((0)) FOR [personal]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_ausstattung]  DEFAULT ((0)) FOR [ausstattung]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_feedback]  DEFAULT ((0)) FOR [feedback]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_abrechnung]  DEFAULT ((0)) FOR [abrechnung]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_archiv]  DEFAULT ((0)) FOR [archiv]
GO
ALTER TABLE [dbo].[sk_projekte2014] ADD  CONSTRAINT [DF_sk_projekte2014_mark08]  DEFAULT ((0)) FOR [mark08]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_mandant]  DEFAULT ((0)) FOR [mandant]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_projektnummer]  DEFAULT ((0)) FOR [projektnummer]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_prioritaet]  DEFAULT ((0)) FOR [prioritaet]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_projektleiter]  DEFAULT ((0)) FOR [projektleiter]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_va_beginn]  DEFAULT ('1900-01-01') FOR [va_beginn]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_va_ende]  DEFAULT ('1900-01-01') FOR [va_ende]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_glvorschlag]  DEFAULT ((0)) FOR [glvorschlag]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_gebietsleiter]  DEFAULT ((0)) FOR [gebietsleiter]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_probefahrten]  DEFAULT ((0)) FOR [probefahrten]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_at_probefahrten]  DEFAULT ((0)) FOR [at_probefahrten]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_bewachung]  DEFAULT ((0)) FOR [bewachung]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_team_plan]  DEFAULT ((0)) FOR [team_plan]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_mod_plan]  DEFAULT ((0)) FOR [mod_plan]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_comod_plan]  DEFAULT ((0)) FOR [comod_plan]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_moderatoren]  DEFAULT ((0)) FOR [pp_moderatoren]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_comoderatoren]  DEFAULT ((0)) FOR [pp_comoderatoren]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_promotoren]  DEFAULT ((0)) FOR [pp_promotoren]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_teamleiter]  DEFAULT ((0)) FOR [pp_teamleiter]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_tlprobefahrer]  DEFAULT ((0)) FOR [pp_tlprobefahrer]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_probefahrer]  DEFAULT ((0)) FOR [pp_probefahrer]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_kostuem]  DEFAULT ((0)) FOR [pp_kostuem]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_aufbau]  DEFAULT ((0)) FOR [pp_aufbau]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_abbau]  DEFAULT ((0)) FOR [pp_abbau]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_konvoi]  DEFAULT ((0)) FOR [pp_konvoi]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_gastro]  DEFAULT ((0)) FOR [pp_gastro]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_pp_sonstige]  DEFAULT ((0)) FOR [pp_sonstige]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_aufbau_datum]  DEFAULT ('1900-01-01 00:00:00') FOR [aufbau_datum]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_abbau_datum]  DEFAULT ('1900-01-01 00:00:00') FOR [abbau_datum]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_angelegt]  DEFAULT ('1900-01-01 00:00:00') FOR [angelegt]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_lastedit]  DEFAULT ('1900-01-01 00:00:00') FOR [lastedit]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_lasteditor]  DEFAULT ((0)) FOR [lasteditor]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_personal]  DEFAULT ((0)) FOR [personal]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_ausstattung]  DEFAULT ((0)) FOR [ausstattung]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_feedback]  DEFAULT ((0)) FOR [feedback]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_abrechnung]  DEFAULT ((0)) FOR [abrechnung]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_archiv]  DEFAULT ((0)) FOR [archiv]
GO
ALTER TABLE [dbo].[sk_projektevorschlaege] ADD  CONSTRAINT [DF_sk_projektevorschlaege_mark08]  DEFAULT ((0)) FOR [uebtragen]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_idProjekt]  DEFAULT ((0)) FOR [idProjekt]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_nochmalige_teilnahme]  DEFAULT ((0)) FOR [nochmalige_teilnahme]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_hotel_empfehlung]  DEFAULT ((0)) FOR [hotel_empfehlung]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_foto_autohaus]  DEFAULT ((0)) FOR [foto_autohaus]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_foto_umgebung]  DEFAULT ((0)) FOR [foto_umgebung]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_foto_mitbewerber]  DEFAULT ((0)) FOR [foto_mitbewerber]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_foto_aktion]  DEFAULT ((0)) FOR [foto_aktion]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_foto_standort]  DEFAULT ((0)) FOR [foto_standort]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_foto_konvoi]  DEFAULT ((0)) FOR [foto_konvoi]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_ersteller]  DEFAULT ((0)) FOR [ersteller]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_eingang]  DEFAULT ('1900-01-01 00:00:00') FOR [eingang]
GO
ALTER TABLE [dbo].[sk_teamleiterberichte] ADD  CONSTRAINT [DF_sk_teamleiterberichte_freigabe]  DEFAULT ('nein') FOR [freigabe]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_honorar]  DEFAULT ((0.00)) FOR [honorar]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_bonus]  DEFAULT ((0.00)) FOR [bonus]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_reisekosten_pkwprivat]  DEFAULT ((0.00)) FOR [reisekosten_pkwprivat]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_reisekosten_pkwteam]  DEFAULT ((0.00)) FOR [reisekosten_pkwteam]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_reisekosten_lkw]  DEFAULT ((0.00)) FOR [reisekosten_lkw]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_hotelkosten]  DEFAULT ((0.00)) FOR [hotelkosten]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_aufbau_eventbuehne]  DEFAULT ((0.00)) FOR [aufbau_eventbuehne]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_aufbau_clevermodul]  DEFAULT ((0.00)) FOR [aufbau_clevermodul]
GO
ALTER TABLE [dbo].[sk_vertragsdaten] ADD  CONSTRAINT [DF_sk_vertragsdaten_aufbau_new_mobile_showroom]  DEFAULT ((0.00)) FOR [aufbau_new_mobile_showroom]
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
         Begin Table = "sk_projekte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 204
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_gebietsleiter"
            Begin Extent = 
               Top = 6
               Left = 277
               Bottom = 215
               Right = 439
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_benutzer"
            Begin Extent = 
               Top = 6
               Left = 477
               Bottom = 216
               Right = 639
            End
            DisplayFlags = 280
            TopColumn = 5
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'briefing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'briefing'
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
         Begin Table = "sk_projekte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 311
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_modulbuchungen"
            Begin Extent = 
               Top = 6
               Left = 287
               Bottom = 275
               Right = 441
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_module"
            Begin Extent = 
               Top = 7
               Left = 526
               Bottom = 258
               Right = 746
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
         Width = 3600
         Width = 3045
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Buehneneinsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Buehneneinsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[9] 3) )"
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
         Begin Table = "EMail_Tracking"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 192
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'E_Mail_Tracking_Tage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'E_Mail_Tracking_Tage'
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
         Begin Table = "EMail_Tracking"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 168
               Right = 192
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'E_Mail_Tracking_Ziel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'E_Mail_Tracking_Ziel'
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
         Begin Table = "sk_personalbuchungen"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "sk_personal"
            Begin Extent = 
               Top = 25
               Left = 245
               Bottom = 210
               Right = 412
            End
            DisplayFlags = 280
            TopColumn = 38
         End
         Begin Table = "sk_projekte"
            Begin Extent = 
               Top = 6
               Left = 446
               Bottom = 125
               Right = 647
            End
            DisplayFlags = 280
            TopColumn = 51
         End
         Begin Table = "sk_benutzer"
            Begin Extent = 
               Top = 85
               Left = 461
               Bottom = 204
               Right = 623
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'einzelauftrag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'einzelauftrag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[7] 3) )"
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
         Begin Table = "sk_projekte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 244
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "sk_haendler_1"
            Begin Extent = 
               Top = 0
               Left = 284
               Bottom = 129
               Right = 454
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_haendler"
            Begin Extent = 
               Top = 0
               Left = 509
               Bottom = 129
               Right = 679
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_haendler_2"
            Begin Extent = 
               Top = 6
               Left = 697
               Bottom = 135
               Right = 867
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_haendler_3"
            Begin Extent = 
               Top = 142
               Left = 298
               Bottom = 271
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_haendler_4"
            Begin Extent = 
               Top = 138
               Left = 489
               Bottom = 267
               Right = 659
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_haendler_5"
            Begin Extent = 
               Top = 138
               Left = 697
               Bottom = 267
               Right = 867
            E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Geaenderte_VA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
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
      Begin ColumnWidths = 23
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Geaenderte_VA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Geaenderte_VA'
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
         Begin Table = "sk_aktionsberichte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 253
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 127
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_ab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_ab'
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
         Begin Table = "sk_bilder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 244
               Right = 192
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_bilder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_bilder'
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
         Begin Table = "sk_teamleiterberichte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 263
            End
            DisplayFlags = 280
            TopColumn = 67
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_tb'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_tb'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[28] 2[10] 3) )"
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
         Begin Table = "sk_personal"
            Begin Extent = 
               Top = 17
               Left = 539
               Bottom = 866
               Right = 706
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_personalbuchungen"
            Begin Extent = 
               Top = 19
               Left = 277
               Bottom = 275
               Right = 508
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "sk_projekte"
            Begin Extent = 
               Top = 22
               Left = 45
               Bottom = 1118
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
         Width = 4035
         Width = 1500
         Width = 1500
         Width = 75
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2760
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 2385
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PersonalEinsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PersonalEinsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[79] 4[3] 2[10] 3) )"
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
         Begin Table = "sk_projekte"
            Begin Extent = 
               Top = 9
               Left = 530
               Bottom = 584
               Right = 723
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sk_benutzer"
            Begin Extent = 
               Top = 6
               Left = 752
               Bottom = 509
               Right = 906
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
      Begin ColumnWidths = 15
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Projektauswahl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Projektauswahl'
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
         Begin Table = "TWB_2018_Profi"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 202
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TWB_2018_Ranking_Fahrer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TWB_2018_Ranking_Fahrer'
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
         Begin Table = "sk_benutzer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 251
               Right = 361
            End
            DisplayFlags = 280
            TopColumn = 19
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zugang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zugang'
GO
USE [master]
GO
ALTER DATABASE [skoda] SET  READ_WRITE 
GO
