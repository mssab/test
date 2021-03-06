USE [master]
GO
/****** Object:  Database [admin_eplus]    Script Date: 06.07.2018 09:40:41 ******/
CREATE DATABASE [admin_eplus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'admin_gate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\admin_eplus.mdf' , SIZE = 8448KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'admin_gate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\admin_eplus_log.LDF' , SIZE = 3200KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [admin_eplus] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [admin_eplus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [admin_eplus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [admin_eplus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [admin_eplus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [admin_eplus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [admin_eplus] SET ARITHABORT OFF 
GO
ALTER DATABASE [admin_eplus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [admin_eplus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [admin_eplus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [admin_eplus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [admin_eplus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [admin_eplus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [admin_eplus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [admin_eplus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [admin_eplus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [admin_eplus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [admin_eplus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [admin_eplus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [admin_eplus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [admin_eplus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [admin_eplus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [admin_eplus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [admin_eplus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [admin_eplus] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [admin_eplus] SET  MULTI_USER 
GO
ALTER DATABASE [admin_eplus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [admin_eplus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [admin_eplus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [admin_eplus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [admin_eplus] SET DELAYED_DURABILITY = DISABLED 
GO
USE [admin_eplus]
GO
/****** Object:  User [GateMaster]    Script Date: 06.07.2018 09:40:42 ******/
CREATE USER [GateMaster] FOR LOGIN [GateMaster] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [daedalus]    Script Date: 06.07.2018 09:40:42 ******/
CREATE USER [daedalus] FOR LOGIN [daedalus] WITH DEFAULT_SCHEMA=[daedalus]
GO
ALTER ROLE [db_owner] ADD MEMBER [GateMaster]
GO
ALTER ROLE [db_owner] ADD MEMBER [daedalus]
GO
/****** Object:  Schema [daedalus]    Script Date: 06.07.2018 09:40:43 ******/
CREATE SCHEMA [daedalus]
GO
/****** Object:  Table [dbo].[einsatzbericht]    Script Date: 06.07.2018 09:40:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[aufkleber_grohe_logo] [int] NULL,
	[aufkleber_grohe_logo_note] [int] NULL,
	[aufkleber_allure] [int] NULL,
	[aufkleber_allure_note] [int] NULL,
	[aufkleber_qr] [int] NULL,
	[aufkleber_qr_note] [int] NULL,
	[banner_power_and_soul] [int] NULL,
	[banner_power_and_soul_note] [int] NULL,
	[banner_woman] [int] NULL,
	[banner_woman_note] [int] NULL,
	[banner_grandera] [int] NULL,
	[banner_grandera_note] [int] NULL,
	[wuerfel_millieu] [int] NULL,
	[wuerfel_millieu_note] [int] NULL,
	[wuerfel_germany] [int] NULL,
	[wuerfel_germany_note] [int] NULL,
	[aufsteller_garantie] [int] NULL,
	[aufsteller_garantie_note] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_mit_beleuchtung_note] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung_note] [int] NULL,
	[schwamm] [int] NULL,
	[schwamm_note] [int] NULL,
	[duschgel] [int] NULL,
	[duschgel_note] [int] NULL,
	[bilderrahmen] [int] NULL,
	[bilderrahmen_note] [int] NULL,
	[anzahl_banner] [int] NULL,
	[stromanschluss_vorhanden] [varchar](50) NULL,
	[stromanschluss_gelegt] [varchar](50) NULL,
	[anzahl_mehrfachsteckdosen] [int] NULL,
	[schaufensterhoehe] [int] NULL,
	[attraktivitaet] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
	[aufbau] [varchar](50) NULL,
	[verlaengerungskabel] [varchar](50) NULL,
	[kein_aufbau] [varchar](50) NULL,
	[bemerkungen] [text] NULL,
	[aufbau_teppich] [varchar](50) NULL,
	[aufbau_stehle] [varchar](50) NULL,
	[bemerkungen_kunde] [text] NULL,
	[kein_aufbau_moeglich] [varchar](50) NULL,
	[kein_aufbau_erwuenscht] [varchar](50) NULL,
	[menge_2m_kabel] [int] NULL,
	[menge_5m_kabel] [int] NULL,
	[menge_3er_stecker] [int] NULL,
 CONSTRAINT [PK_einsatzbericht_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_enjoy]    Script Date: 06.07.2018 09:40:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[aufkleber_grohe_logo] [int] NULL,
	[aufkleber_grohe_logo_note] [int] NULL,
	[aufkleber_tempesta] [int] NULL,
	[aufkleber_tempesta_note] [int] NULL,
	[aufkleber_qr] [int] NULL,
	[aufkleber_qr_note] [int] NULL,
	[banner_eurocube] [int] NULL,
	[banner_eurocube_note] [int] NULL,
	[banner_kind] [int] NULL,
	[banner_kind_note] [int] NULL,
	[banner_grohtherm] [int] NULL,
	[banner_grotherm_note] [int] NULL,
	[wuerfel_millieu] [int] NULL,
	[wuerfel_millieu_note] [int] NULL,
	[wuerfel_germany] [int] NULL,
	[wuerfel_germany_note] [int] NULL,
	[aufsteller_garantie] [int] NULL,
	[aufsteller_garantie_note] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_mit_beleuchtung_note] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung_note] [int] NULL,
	[quitsche_ente] [int] NULL,
	[quitsche_ente_note] [int] NULL,
	[anzahl_banner] [int] NULL,
	[stromanschluss_vorhanden] [varchar](50) NULL,
	[stromanschluss_gelegt] [varchar](50) NULL,
	[anzahl_mehrfachsteckdosen] [int] NULL,
	[schaufensterhoehe] [int] NULL,
	[attraktivitaet] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_einsatzbericht_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_zubehoerwand]    Script Date: 06.07.2018 09:40:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_zubehoerwand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[90013292_Zubehoerwand_Retour] [int] NULL,
	[90013292_Zubehoerwand_Lieferung] [int] NULL,
	[90013292_Zubehoerwand_Vorhanden] [int] NULL,
	[90013292_Zubehoerwand_Bemerkung] [text] NULL,
	[90013293_Postermodul_Retour] [int] NULL,
	[90013293_Postermodul_Lieferung] [int] NULL,
	[90013293_Postermodul_Vorhanden] [int] NULL,
	[90013293_Postermodul_Bemerkung] [text] NULL,
	[90013261_Glasvitrine_Retour] [int] NULL,
	[90013261_Glasvitrine_Lieferung] [int] NULL,
	[90013261_Glasvitrine_Vorhanden] [int] NULL,
	[90013261_Glasvitrine_Bemerkung] [text] NULL,
	[90014313_Base_Mega_Wand_Retour] [int] NULL,
	[90014313_Base_Mega_Wand_Lieferung] [int] NULL,
	[90014313_Base_Mega_Wand_Vorhanden] [int] NULL,
	[90014313_Base_Mega_Wand_Bemerkung] [text] NULL,
	[90019061_MultiMedia_Tisch_Retour] [int] NULL,
	[90019061_MultiMedia_Tisch_Lieferung] [int] NULL,
	[90019061_MultiMedia_Tisch_Vorhanden] [int] NULL,
	[90019061_MultiMedia_Tisch_Bemerkung] [text] NULL,
	[90019062_MultiMedia_Board_Retour] [int] NULL,
	[90019062_MultiMedia_Board_Lieferung] [int] NULL,
	[90019062_MultiMedia_Board_Vorhanden] [int] NULL,
	[90019062_MultiMedia_Board_Bemerkung] [text] NULL,
	[90019063_Endgeraete_Praesenter_Retour] [int] NULL,
	[90019063_Endgeraete_Praesenter_Lieferung] [int] NULL,
	[90019063_Endgeraete_Praesenter_Vorhanden] [int] NULL,
	[90019063_Endgeraete_Praesenter_Bemerkung] [text] NULL,
	[90013260_Einhaengewand_Retour] [int] NULL,
	[90013260_Einhaengewand_Lieferung] [int] NULL,
	[90013260_Einhaengewand_Vorhanden] [int] NULL,
	[90013260_Einhaengewand_Bemerkung] [text] NULL,
	[90013264_Sitzkissen_Retour] [int] NULL,
	[90013264_Sitzkissen_Lieferung] [int] NULL,
	[90013264_Sitzkissen_Vorhanden] [int] NULL,
	[90013264_Sitzkissen_Bemerkung] [text] NULL,
	[bemerkungen] [text] NULL,
	[eingang] [varchar](50) NULL,
 CONSTRAINT [PK_einsatzbericht_zubehoerwand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eplus_berichte]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eplus_berichte](
	[shopart] [nvarchar](max) NULL,
	[Summevonmenge_5m_kabel] [float] NULL,
	[Summevonmenge_3er_stecker] [float] NULL,
	[Summevonmenge_2m_kabel] [float] NULL,
	[suKAmoeglich] [float] NULL,
	[suKAerwuenscht] [float] NULL,
	[suTeppich] [float] NULL,
	[suStehle] [float] NULL,
	[suKeinAufbau] [float] NULL,
	[suAufbau] [float] NULL,
	[SummevonAnzShops] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gsp]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gsp](
	[id] [int] NOT NULL,
	[GSP] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
	[Bemerkungen] [text] NULL,
	[Eingangsdatum] [date] NULL,
	[Fertigstellungsdtum] [date] NULL,
	[Monat] [varchar](50) NULL,
	[Jahr] [varchar](50) NULL,
	[Reihenfolge] [int] NULL,
	[Monat_Jahresuebergreifend] [varchar](max) NULL,
	[CRM_Nummer] [int] NULL,
	[Kunde] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](50) NULL,
	[Ort] [varchar](max) NULL,
	[Ansprechpartner] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Mail] [varchar](max) NULL,
	[implementiert_2012] [varchar](max) NULL,
	[Plan_2012] [varchar](max) NULL,
	[Plan_2011] [varchar](max) NULL,
	[Plan_2010] [varchar](max) NULL,
	[FC_2012] [varchar](max) NULL,
	[FC_2011] [varchar](max) NULL,
	[NL] [varchar](max) NULL,
	[GVL] [varchar](max) NULL,
	[GLH] [varchar](max) NULL,
	[KD_H5] [int] NULL,
	[KD_H5_Name] [varchar](max) NULL,
	[KD_H4] [int] NULL,
	[KD_H4_Name] [varchar](max) NULL,
	[KD_H3] [int] NULL,
	[KD_H3_Name] [varchar](max) NULL,
	[Eingang_Auftrag] [date] NULL,
	[Dekodatum] [date] NULL,
	[Regalmeter] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gsp_auftraege]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gsp_auftraege](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Team] [int] NULL,
	[JobNr] [int] NULL,
	[GSP] [varchar](max) NULL,
	[Umruestung] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
	[Bemerkungen] [text] NULL,
	[Eingangsdatum] [date] NULL,
	[Fertigstelldatum] [date] NULL,
	[Kunde] [int] NULL,
	[Regalmeter] [varchar](max) NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_gsp_auftraege] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gsp_shops]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gsp_shops](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kunde] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](50) NULL,
	[Ort] [varchar](max) NULL,
	[Ansprechpartner] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Mail] [varchar](max) NULL,
	[CRM] [varchar](max) NULL,
	[Regalmeter] [varchar](50) NULL,
	[StoreCheck] [varchar](max) NULL,
	[GVL] [varchar](max) NULL,
	[Handy_GVL] [varchar](max) NULL,
	[GLH] [varchar](max) NULL,
	[Handy_GLH] [varchar](max) NULL,
 CONSTRAINT [PK_gsp_shops] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[aufkleber_grohe_logo] [int] NULL,
	[aufkleber_allure] [int] NULL,
	[aufkleber_qr] [int] NULL,
	[banner_power_and_soul] [int] NULL,
	[banner_woman] [int] NULL,
	[banner_grandera] [int] NULL,
	[wuerfel_millieu] [int] NULL,
	[wuerfel_germany] [int] NULL,
	[aufsteller_garantie] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
	[schwamm] [int] NULL,
	[duschgel] [int] NULL,
	[bilderrahmen] [int] NULL,
 CONSTRAINT [PK_material_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material_enjoy]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[aufkleber_grohe_logo] [int] NULL,
	[aufkleber_tempesta] [int] NULL,
	[aufkleber_qr] [int] NULL,
	[banner_eurocube] [int] NULL,
	[banner_kind] [int] NULL,
	[banner_grohtherm] [int] NULL,
	[wuerfel_millieu] [int] NULL,
	[wuerfel_germany] [int] NULL,
	[aufsteller_garantie] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
	[quitsche_ente] [int] NULL,
 CONSTRAINT [PK_material_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[email_2] [varchar](max) NULL,
	[geburtsdatum] [date] NULL,
	[telefon] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[mobil_1] [varchar](50) NULL,
	[mobil_2] [varchar](50) NULL,
	[jeans] [varchar](50) NULL,
	[konfektion] [varchar](50) NULL,
	[konfektion_eu] [varchar](50) NULL,
	[schuhe] [varchar](50) NULL,
	[firma] [varchar](50) NULL,
	[lastvisit] [varchar](50) NULL,
	[aktiv] [bit] NULL,
	[passwort] [varchar](50) NULL,
 CONSTRAINT [PK_personal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal_einsatzarten]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal_einsatzarten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personal_id] [int] NULL,
	[team] [int] NOT NULL,
	[teamleiter] [int] NOT NULL,
	[promotor] [int] NOT NULL,
	[moderator] [int] NOT NULL,
	[kostuem] [int] NOT NULL,
	[aufbau] [int] NOT NULL,
	[kinderschminken] [int] NOT NULL,
	[probefahrer] [int] NOT NULL,
	[konvoi] [int] NOT NULL,
	[dekorateur] [int] NOT NULL,
	[moebelbauer] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_login]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotion_login](
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
/****** Object:  Table [dbo].[stammdaten]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GP_ID] [bigint] NULL,
	[typ] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[name2] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[dekoration] [varchar](50) NULL,
	[anzahl_banner] [int] NULL,
	[stroanschluss] [varchar](50) NULL,
	[GPC] [varchar](50) NULL,
	[vl] [varchar](max) NULL,
	[gvl] [varchar](max) NULL,
	[glh] [varchar](max) NULL,
	[mitarbeiter] [int] NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
	[bemerkungen] [text] NULL,
	[kabellaenge] [text] NULL,
	[rueckbau] [text] NULL,
	[KW2] [varchar](2) NULL,
	[KW] [int] NULL,
	[SAP] [text] NULL,
	[bemerkungen_intern] [text] NULL,
	[menge_2m_kabel] [int] NULL,
	[menge_5m_kabel] [int] NULL,
	[menger_3er_stecker] [int] NULL,
	[datum] [varchar](50) NULL,
	[kein_aufbau_moeglich] [varchar](50) NULL,
	[kein_aufbau_gewuenscht] [varchar](50) NULL,
	[shopart] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten__neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_zubehoer]    Script Date: 06.07.2018 09:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_zubehoer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mitarbeiter] [int] NULL,
	[KW] [int] NULL,
	[KSt] [bigint] NULL,
	[SAP_NR] [bigint] NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[geplantes_Datum] [varchar](50) NULL,
	[Ladenbau] [varchar](max) NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten_zubehoer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vakanz]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vakanz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grund] [varchar](50) NULL,
	[bis] [varchar](50) NULL,
	[neue_adresse] [varchar](max) NULL,
	[eingang] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[datum] [varchar](50) NULL,
	[stammdaten_id] [int] NULL,
	[freigabe_intern] [varchar](50) NULL,
 CONSTRAINT [PK_vakanz1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[einsaetze]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[einsaetze]
AS
SELECT     id, stammdaten_id, datum
FROM         einsatzbericht_enjoy
UNION
SELECT     id, stammdaten_id, datum
FROM         einsatzbericht
GO
/****** Object:  View [dbo].[uebersicht_deko_2013]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[uebersicht_deko_2013]
AS
SELECT     TOP (100) PERCENT dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, 
                      dbo.stammdaten.dekoration, dbo.einsaetze.datum, dbo.stammdaten.vl, dbo.stammdaten.gvl, dbo.stammdaten.glh, dbo.stammdaten.id, dbo.stammdaten.shopart, 
                      dbo.promotion_login.nachname + ', ' + dbo.promotion_login.vorname AS mitarbeiter, dbo.stammdaten.KW, dbo.stammdaten.datum AS Expr1
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN
                      dbo.einsaetze ON dbo.stammdaten.id = dbo.einsaetze.stammdaten_id
ORDER BY dbo.stammdaten.KW, Expr1 DESC
GO
/****** Object:  View [dbo].[stammdaten_enjoy]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stammdaten_enjoy]
AS
SELECT     dbo.stammdaten.id, dbo.stammdaten.GP_ID, dbo.stammdaten.typ, dbo.stammdaten.name, dbo.stammdaten.name2, dbo.stammdaten.strasse, dbo.stammdaten.plz, 
                      dbo.stammdaten.ort, dbo.stammdaten.telefon, dbo.stammdaten.email, dbo.stammdaten.dekoration, dbo.stammdaten.vl, dbo.stammdaten.gvl, dbo.stammdaten.glh, 
                      dbo.stammdaten.mitarbeiter, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, 
                      dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.neu, dbo.einsatzbericht_enjoy.datum, dbo.einsatzbericht_enjoy.anzahl_banner, 
                      dbo.einsatzbericht_enjoy.stromanschluss_vorhanden, dbo.einsatzbericht_enjoy.stromanschluss_gelegt, dbo.einsatzbericht_enjoy.attraktivitaet, 
                      dbo.einsatzbericht_enjoy.aktivitaet, dbo.einsatzbericht_enjoy.aktivitaet_bemerkung, dbo.einsatzbericht_enjoy.telefonische_ankuendigung, 
                      dbo.einsatzbericht_enjoy.zweitanfahrt, dbo.einsatzbericht_enjoy.eingang
FROM         dbo.stammdaten INNER JOIN
                      dbo.einsatzbericht_enjoy ON dbo.stammdaten.id = dbo.einsatzbericht_enjoy.stammdaten_id
GO
/****** Object:  View [dbo].[stammdaten_mtv]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stammdaten_mtv]
AS
SELECT     dbo.stammdaten.id, dbo.stammdaten.GP_ID, dbo.stammdaten.typ, dbo.stammdaten.name, dbo.stammdaten.name2, dbo.stammdaten.strasse, dbo.stammdaten.plz, 
                      dbo.stammdaten.ort, dbo.stammdaten.telefon, dbo.stammdaten.email, dbo.stammdaten.dekoration, dbo.stammdaten.mitarbeiter, 
                      dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, 
                      dbo.einsatzbericht.datum, dbo.stammdaten.shopart, dbo.einsatzbericht.menge_2m_kabel, dbo.einsatzbericht.menge_5m_kabel, 
                      dbo.einsatzbericht.kein_aufbau_erwuenscht, dbo.einsatzbericht.kein_aufbau_moeglich, dbo.einsatzbericht.menge_3er_stecker, dbo.einsatzbericht.aufbau_stehle, 
                      dbo.einsatzbericht.aufbau_teppich, dbo.einsatzbericht.kein_aufbau, dbo.einsatzbericht.aufbau
FROM         dbo.stammdaten INNER JOIN
                      dbo.einsatzbericht ON dbo.stammdaten.id = dbo.einsatzbericht.stammdaten_id
GO
/****** Object:  View [dbo].[stammdaten_deko]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stammdaten_deko]
AS
SELECT     *
FROM         dbo.stammdaten_enjoy
UNION
SELECT     *
FROM         dbo.stammdaten_mtv
GO
/****** Object:  View [dbo].[standard_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[standard_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.dekoration = 'Standard Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id
GO
/****** Object:  View [dbo].[standard_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[standard_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.dekoration = 'Standard Deko') AND (dbo.stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id
GO
/****** Object:  View [dbo].[materialsicht_standard]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[materialsicht_standard]
AS
SELECT     dbo.standard_deko_nach_dekorateur_gesamt.anmeldename, dbo.standard_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                      dbo.standard_deko_nach_dekorateur_neu.Anzahl AS Neu, dbo.material_enjoy.aufkleber_grohe_logo, dbo.material_enjoy.aufkleber_tempesta, 
                      dbo.material_enjoy.aufkleber_qr, dbo.material_enjoy.banner_eurocube, dbo.material_enjoy.banner_kind, dbo.material_enjoy.banner_grohtherm, 
                      dbo.material_enjoy.wuerfel_millieu, dbo.material_enjoy.wuerfel_germany, dbo.material_enjoy.aufsteller_garantie, dbo.material_enjoy.display_mit_beleuchtung, 
                      dbo.material_enjoy.display_ohne_beleuchtung, dbo.material_enjoy.quitsche_ente, dbo.standard_deko_nach_dekorateur_gesamt.id, 
                      dbo.standard_deko_nach_dekorateur_gesamt.projektleiter
FROM         dbo.standard_deko_nach_dekorateur_gesamt LEFT OUTER JOIN
                      dbo.material_enjoy ON dbo.standard_deko_nach_dekorateur_gesamt.id = dbo.material_enjoy.promotion_id LEFT OUTER JOIN
                      dbo.standard_deko_nach_dekorateur_neu ON dbo.standard_deko_nach_dekorateur_gesamt.id = dbo.standard_deko_nach_dekorateur_neu.id
GO
/****** Object:  View [dbo].[deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.dekoration = 'SPA Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id
GO
/****** Object:  View [dbo].[deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.dekoration = 'SPA Deko') AND (dbo.stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id
GO
/****** Object:  View [dbo].[materialsicht]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[materialsicht]
AS
SELECT     dbo.deko_nach_dekorateur_gesamt.anmeldename, dbo.deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, dbo.deko_nach_dekorateur_neu.Anzahl AS Neu, 
                      dbo.material.aufkleber_grohe_logo, dbo.material.aufkleber_allure, dbo.material.aufkleber_qr, dbo.material.banner_power_and_soul, dbo.material.banner_woman, 
                      dbo.material.banner_grandera, dbo.material.wuerfel_millieu, dbo.material.wuerfel_germany, dbo.material.aufsteller_garantie, dbo.material.display_mit_beleuchtung, 
                      dbo.material.display_ohne_beleuchtung, dbo.material.schwamm, dbo.material.duschgel, dbo.material.bilderrahmen, dbo.deko_nach_dekorateur_gesamt.id, 
                      dbo.deko_nach_dekorateur_gesamt.projektleiter
FROM         dbo.deko_nach_dekorateur_gesamt LEFT OUTER JOIN
                      dbo.deko_nach_dekorateur_neu ON dbo.deko_nach_dekorateur_gesamt.id = dbo.deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                      dbo.material ON dbo.deko_nach_dekorateur_gesamt.id = dbo.material.promotion_id
GO
/****** Object:  View [dbo].[bericht_besuchte_partner]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_besuchte_partner]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[bericht_telefonische_absage]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_telefonische_absage]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[bericht_zweitanfahrten]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_zweitanfahrten]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GO
/****** Object:  View [dbo].[bericht_deko_durchgefuehrt]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_deko_durchgefuehrt]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GO
/****** Object:  View [dbo].[bericht_abgabe]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_abgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Werbemittel abgegeben')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Werbemittel abgegeben')
GO
/****** Object:  View [dbo].[bericht_nicht_deko]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_nicht_deko]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[bericht_keine_deko_moeglich]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_keine_deko_moeglich]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoaration möglich') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoaration möglich') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[bericht_keine_deko_gewuenscht]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_keine_deko_gewuenscht]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoaration gewünscht')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoaration gewünscht')
GO
/****** Object:  View [dbo].[bericht_anzahl_banner_1]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_anzahl_banner_1]
AS
SELECT     COUNT(id) AS anzahl, 'Shop' AS art
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Nein') AND (freigabe_bericht_intern = 'Nein') AND shopart='Shop'
UNION
SELECT     COUNT(id) AS anzahl, 'Partner-Shop' AS art
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Nein') AND (freigabe_bericht_intern = 'Nein') AND shopart='PS'
GO
/****** Object:  View [dbo].[bericht_anzahl_banner_2]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_anzahl_banner_2]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner = 2
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner = 2
GO
/****** Object:  View [dbo].[bericht_anzahl_banner_3]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_anzahl_banner_3]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner = 3
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner = 3
GO
/****** Object:  View [dbo].[bericht_attraktivitaet]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_attraktivitaet]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet NOT IN ('keine Angabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet NOT IN ('keine Angabe')
GO
/****** Object:  View [dbo].[bericht_schaufenster_a]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_a]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet IN ('A')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet IN ('A')
GO
/****** Object:  View [dbo].[bericht_schaufenster_b]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_b]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet IN ('B')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet IN ('B')
GO
/****** Object:  View [dbo].[bericht_schaufenster_c]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_c]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet IN ('C')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet IN ('C')
GO
/****** Object:  View [dbo].[bericht_stromanschluss]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_stromanschluss]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND stromanschluss_vorhanden IN ('ja')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND stromanschluss_vorhanden IN ('ja')
GO
/****** Object:  View [dbo].[bericht_schaufenster_angaben]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_angaben]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner IN (1, 2, 3)
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner IN (1, 2, 3)
GO
/****** Object:  View [dbo].[bericht_nicht_angetroffen]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_nicht_angetroffen]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht angetroffen')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht angetroffen')
GO
/****** Object:  View [dbo].[bericht_betriebsferien]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_betriebsferien]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Betriebsferien')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Betriebsferien')
GO
/****** Object:  View [dbo].[bericht_umzug]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_umzug]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umzug')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umzug')
GO
/****** Object:  View [dbo].[bericht_umbau]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_umbau]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umbau')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umbau')
GO
/****** Object:  View [dbo].[bericht_geschaeftsaufgabe]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_geschaeftsaufgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('baldige Geschäftsaufgabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('baldige Geschäftsaufgabe')
GO
/****** Object:  View [dbo].[bericht_nicht_existent]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_nicht_existent]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht existent')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht existent')
GO
/****** Object:  View [dbo].[bericht_keine_schaufenster]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_keine_schaufenster]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('keine Schaufenster')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('keine Schaufenster')
GO
/****** Object:  View [dbo].[deko_nach mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_nach mitarbeiter]
AS
SELECT     aktivitaet, aktivitaet_bemerkung, mitarbeiter
FROM         dbo.stammdaten_enjoy
UNION
SELECT     aktivitaet, aktivitaet_bemerkung, mitarbeiter
FROM         dbo.stammdaten_mtv
GO
/****** Object:  View [dbo].[bericht_zweitanfahrten_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_zweitanfahrten_mitarbeiter]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GROUP BY mitarbeiter
UNION
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[anzahl_dekorationen]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_dekorationen]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
UNION ALL
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[anzahl_dekorationen_pro_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_dekorationen_pro_mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.anzahl_dekorationen
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[anzahl_zweitanfahrten nach mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_zweitanfahrten nach mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.bericht_zweitanfahrten_mitarbeiter
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[offene_shops]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[offene_shops]
AS
SELECT     COUNT(id) AS Anzahl, mitarbeiter
FROM         dbo.stammdaten
WHERE     (id NOT IN
                          (SELECT     id
                            FROM          dbo.stammdaten_deko)) AND (freigabe_bilder_extern = 'nein') AND (freigabe_bericht_extern = 'nein')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[offene_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[offene_shops_nach_mitarbeiter]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.offene_shops.Anzahl
FROM         dbo.promotion_login INNER JOIN
                      dbo.offene_shops ON dbo.promotion_login.id = dbo.offene_shops.mitarbeiter
GO
/****** Object:  View [dbo].[gesamte_outlets_pro_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[gesamte_outlets_pro_mitarbeiter]
AS
SELECT     COUNT(id) AS Expr1, mitarbeiter
FROM         dbo.stammdaten
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[gesamte_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[gesamte_shops_nach_mitarbeiter]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.gesamte_outlets_pro_mitarbeiter.Expr1 AS Anzahl
FROM         dbo.gesamte_outlets_pro_mitarbeiter INNER JOIN
                      dbo.promotion_login ON dbo.gesamte_outlets_pro_mitarbeiter.mitarbeiter = dbo.promotion_login.id
GO
/****** Object:  View [dbo].[Gesamtuebersicht_hilfe]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtuebersicht_hilfe]
AS
SELECT     stammdaten_id, datum, anzahl_banner, stromanschluss_vorhanden, stromanschluss_gelegt, anzahl_mehrfachsteckdosen, schaufensterhoehe, attraktivitaet, 
                      aktivitaet, aktivitaet_bemerkung, bemerkung, telefonische_ankuendigung, keine_deko_generell, kuenftige_dekos, versand_gewuenscht, zweitanfahrt
FROM         dbo.einsatzbericht_enjoy
UNION ALL
SELECT     stammdaten_id, datum, anzahl_banner, stromanschluss_vorhanden, stromanschluss_gelegt, anzahl_mehrfachsteckdosen, schaufensterhoehe, attraktivitaet, 
                      aktivitaet, aktivitaet_bemerkung, bemerkung, telefonische_ankuendigung, keine_deko_generell, kuenftige_dekos, versand_gewuenscht, zweitanfahrt
FROM         dbo.einsatzbericht
GO
/****** Object:  View [dbo].[Gesamtuebersicht]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtuebersicht]
AS
SELECT     dbo.stammdaten.GP_ID, dbo.stammdaten.typ, dbo.stammdaten.name, dbo.stammdaten.name2, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, 
                      dbo.stammdaten.telefon, dbo.stammdaten.email, dbo.stammdaten.dekoration, dbo.Gesamtuebersicht_hilfe.datum, dbo.promotion_login.anmeldename AS Dekorateur, 
                      dbo.einsatzbericht_enjoy.aufkleber_grohe_logo AS [Standard Aufkleber Grohe Logo], dbo.einsatzbericht_enjoy.aufkleber_tempesta AS [Standard Aufkleber Tempesta], 
                      dbo.einsatzbericht_enjoy.aufkleber_qr AS [Standard Aufkleber QR], dbo.einsatzbericht_enjoy.banner_eurocube AS [Standard Banner Eurocube], 
                      dbo.einsatzbericht_enjoy.banner_kind AS [Standard Banner Kind], dbo.einsatzbericht_enjoy.banner_grohtherm AS [Standard Banner Grohtherm], 
                      dbo.einsatzbericht_enjoy.wuerfel_millieu AS [Standard Würfel Milleu], dbo.einsatzbericht_enjoy.wuerfel_germany AS [Standard Würfel Germany], 
                      dbo.einsatzbericht_enjoy.aufsteller_garantie AS [Standard Aufsteller Garantie], 
                      dbo.einsatzbericht_enjoy.display_mit_beleuchtung AS [Standard Display mit Beleuchtung], 
                      dbo.einsatzbericht_enjoy.display_ohne_beleuchtung AS [Standard Display ohne Beleuchtung], dbo.einsatzbericht_enjoy.quitsche_ente AS [Standard Quitsche Ente], 
                      dbo.einsatzbericht.aufkleber_grohe_logo AS [SPA Aufkleber Grohe Logo], dbo.einsatzbericht.aufkleber_allure AS [SPA Aufkleber Allure], 
                      dbo.einsatzbericht.aufkleber_qr AS [SPA Aufkleber QR], dbo.einsatzbericht.banner_power_and_soul AS [SPA Banner Power and Soul], 
                      dbo.einsatzbericht.banner_woman AS [SPA Banner Woman], dbo.einsatzbericht.banner_grandera AS [SPA Banner Grandera], 
                      dbo.einsatzbericht.wuerfel_millieu AS [SPA Würfel Millieu], dbo.einsatzbericht.wuerfel_germany AS [SPA Würfel Germany], 
                      dbo.einsatzbericht.aufsteller_garantie AS [SPA Aufsteller Garantie], dbo.einsatzbericht.display_mit_beleuchtung AS [SPA Display mit Beleuchtung], 
                      dbo.einsatzbericht.display_ohne_beleuchtung AS [SPA Display ohne Beleuchtung], dbo.einsatzbericht.schwamm AS [SPA Schwamm], 
                      dbo.einsatzbericht.duschgel AS [SPA Duschgel], dbo.einsatzbericht.bilderrahmen AS [SPA Bilderrahmen], dbo.Gesamtuebersicht_hilfe.anzahl_banner, 
                      dbo.Gesamtuebersicht_hilfe.stromanschluss_vorhanden, dbo.Gesamtuebersicht_hilfe.stromanschluss_gelegt, 
                      dbo.Gesamtuebersicht_hilfe.anzahl_mehrfachsteckdosen, dbo.Gesamtuebersicht_hilfe.schaufensterhoehe, dbo.Gesamtuebersicht_hilfe.attraktivitaet, 
                      dbo.Gesamtuebersicht_hilfe.aktivitaet, dbo.Gesamtuebersicht_hilfe.aktivitaet_bemerkung, dbo.Gesamtuebersicht_hilfe.bemerkung, 
                      dbo.Gesamtuebersicht_hilfe.telefonische_ankuendigung, dbo.Gesamtuebersicht_hilfe.keine_deko_generell, dbo.Gesamtuebersicht_hilfe.kuenftige_dekos, 
                      dbo.Gesamtuebersicht_hilfe.versand_gewuenscht, dbo.Gesamtuebersicht_hilfe.zweitanfahrt, dbo.einsatzbericht.aufbau, 
                      dbo.einsatzbericht.verlaengerungskabel
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN
                      dbo.Gesamtuebersicht_hilfe ON dbo.stammdaten.id = dbo.Gesamtuebersicht_hilfe.stammdaten_id LEFT OUTER JOIN
                      dbo.einsatzbericht ON dbo.stammdaten.id = dbo.einsatzbericht.stammdaten_id LEFT OUTER JOIN
                      dbo.einsatzbericht_enjoy ON dbo.stammdaten.id = dbo.einsatzbericht_enjoy.stammdaten_id
GO
/****** Object:  View [dbo].[summen_einsaetze]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[summen_einsaetze]
AS
SELECT     COUNT(GP_ID) AS anzShops, mitarbeiter, shopart
FROM         dbo.stammdaten
GROUP BY mitarbeiter, shopart
GO
/****** Object:  View [dbo].[View_2]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT     dbo.promotion_login.id, dbo.stammdaten.mitarbeiter, dbo.stammdaten.id AS Expr1, dbo.einsatzbericht.menge_5m_kabel, dbo.einsatzbericht.menge_3er_stecker, 
                      dbo.einsatzbericht.menge_2m_kabel, dbo.einsatzbericht.kein_aufbau_erwuenscht, dbo.einsatzbericht.kein_aufbau_moeglich, dbo.einsatzbericht.aufbau_stehle, 
                      dbo.einsatzbericht.aufbau_teppich, dbo.einsatzbericht.kein_aufbau, dbo.einsatzbericht.aufbau, dbo.summen_einsaetze.anzShops, 
                      dbo.summen_einsaetze.shopart
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id INNER JOIN
                      dbo.einsatzbericht ON dbo.stammdaten.id = dbo.einsatzbericht.id INNER JOIN
                      dbo.summen_einsaetze ON dbo.promotion_login.id = dbo.summen_einsaetze.mitarbeiter
GROUP BY dbo.promotion_login.id, dbo.stammdaten.mitarbeiter, dbo.stammdaten.id, dbo.einsatzbericht.menge_5m_kabel, dbo.einsatzbericht.menge_3er_stecker, 
                      dbo.einsatzbericht.menge_2m_kabel, dbo.einsatzbericht.kein_aufbau_erwuenscht, dbo.einsatzbericht.kein_aufbau_moeglich, dbo.einsatzbericht.aufbau_stehle, 
                      dbo.einsatzbericht.aufbau_teppich, dbo.einsatzbericht.kein_aufbau, dbo.einsatzbericht.aufbau, dbo.summen_einsaetze.anzShops, dbo.summen_einsaetze.shopart
GO
/****** Object:  View [dbo].[eplus_anzahl_shops]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_anzahl_shops]
AS
SELECT     COUNT(id) AS anzahl, 'Shop' AS art
FROM         dbo.stammdaten_mtv
WHERE    (freigabe_bilder_intern='Ja' and freigabe_bilder_intern='Ja' and freigabe_bericht_extern='Ja' and freigabe_bilder_extern='Ja')  and shopart = 'Shop'
UNION
SELECT     COUNT(id) AS anzahl, 'Partner-Shop' AS art
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern='Ja' and freigabe_bilder_intern='Ja' and freigabe_bericht_extern='Ja' and freigabe_bilder_extern='Ja') and  shopart = 'PS'
GO
/****** Object:  View [dbo].[eplus_anzahl_shops_pro_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_anzahl_shops_pro_mitarbeiter]
AS
SELECT     COUNT(dbo.stammdaten_mtv.id) AS anzahl, 'Shop' AS art, dbo.promotion_login.anmeldename
FROM         dbo.stammdaten_mtv INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten_mtv.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten_mtv.freigabe_bilder_intern = 'Ja') AND (dbo.stammdaten_mtv.freigabe_bilder_intern = 'Ja') AND 
                      (dbo.stammdaten_mtv.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten_mtv.freigabe_bilder_extern = 'Ja')
GROUP BY dbo.promotion_login.anmeldename
GO
/****** Object:  View [dbo].[eplus_berichte_anzahl_shops_pro_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_berichte_anzahl_shops_pro_mitarbeiter]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter AS mitarbeiter_id, shopart
FROM         dbo.stammdaten_mtv
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_extern = 'Ja') AND (freigabe_bilder_extern = 'Ja')
GROUP BY mitarbeiter, shopart
GO
/****** Object:  View [dbo].[anzahl_besuche_gesamt]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_besuche_gesamt]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[Anzahl_pro_Mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Anzahl_pro_Mitarbeiter]
AS
SELECT     COUNT(id) AS AnzShops, mitarbeiter
FROM         dbo.stammdaten
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[anzahl_spa]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_spa]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja') AND (dekoration = 'SPA Deko')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[anzahl_standard]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_standard]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja') AND (dekoration = 'Standard Deko')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[ausgabe_nach_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ausgabe_nach_mitarbeiter]
AS
SELECT     dbo.stammdaten.mitarbeiter, SUM(dbo.einsatzbericht.aufkleber_grohe_logo) AS Logo, SUM(dbo.einsatzbericht.aufkleber_allure) AS Allure, 
                      SUM(dbo.einsatzbericht.aufkleber_qr) AS QR, SUM(dbo.einsatzbericht.banner_power_and_soul) AS [Power&Soul], SUM(dbo.einsatzbericht.banner_woman) AS Woman, 
                      SUM(dbo.einsatzbericht.banner_grandera) AS Grandera, SUM(dbo.einsatzbericht.wuerfel_millieu) AS Millieu, SUM(dbo.einsatzbericht.wuerfel_germany) AS Germany, 
                      SUM(dbo.einsatzbericht.aufsteller_garantie) AS Garantie, SUM(dbo.einsatzbericht.display_mit_beleuchtung) AS displa_mit_beleuchtung, 
                      SUM(dbo.einsatzbericht.display_ohne_beleuchtung) AS display_ohne_beleuchtung, SUM(dbo.einsatzbericht.schwamm) AS Schwamm, 
                      SUM(dbo.einsatzbericht.duschgel) AS Duschgel, SUM(dbo.einsatzbericht.bilderrahmen) AS Bilderrahmen
FROM         dbo.stammdaten LEFT OUTER JOIN
                      dbo.einsatzbericht ON dbo.stammdaten.id = dbo.einsatzbericht.stammdaten_id
GROUP BY dbo.stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[ausgabe_standard_nach_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ausgabe_standard_nach_mitarbeiter]
AS
SELECT     dbo.stammdaten.mitarbeiter, SUM(dbo.einsatzbericht_enjoy.aufkleber_grohe_logo) AS Logo, SUM(dbo.einsatzbericht_enjoy.aufkleber_tempesta) AS Tempera, 
                      SUM(dbo.einsatzbericht_enjoy.aufkleber_qr) AS QR, SUM(dbo.einsatzbericht_enjoy.banner_eurocube) AS Eurocube, SUM(dbo.einsatzbericht_enjoy.banner_kind) 
                      AS Kind, SUM(dbo.einsatzbericht_enjoy.banner_grohtherm) AS Grotherm, SUM(dbo.einsatzbericht_enjoy.wuerfel_millieu) AS Millieu, 
                      SUM(dbo.einsatzbericht_enjoy.wuerfel_germany) AS Germany, SUM(dbo.einsatzbericht_enjoy.aufsteller_garantie) AS Garantie, 
                      SUM(dbo.einsatzbericht_enjoy.display_mit_beleuchtung) AS [Disp. mit Beleuchtung], SUM(dbo.einsatzbericht_enjoy.display_ohne_beleuchtung) 
                      AS [Displ. ohne Beleuchtung], SUM(dbo.einsatzbericht_enjoy.quitsche_ente) AS [Quitsche Ente]
FROM         dbo.stammdaten LEFT OUTER JOIN
                      dbo.einsatzbericht_enjoy ON dbo.stammdaten.id = dbo.einsatzbericht_enjoy.stammdaten_id
GROUP BY dbo.stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[Auswertung_Zubehoerwand]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Zubehoerwand]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.stammdaten_zubehoer.KW, dbo.stammdaten_zubehoer.KSt, dbo.stammdaten_zubehoer.SAP_NR, 
                      dbo.stammdaten_zubehoer.name, dbo.stammdaten_zubehoer.strasse, dbo.stammdaten_zubehoer.plz, dbo.stammdaten_zubehoer.ort, 
                      dbo.stammdaten_zubehoer.Ladenbau, dbo.stammdaten_zubehoer.freigabe_bericht_extern, dbo.stammdaten_zubehoer.freigabe_bilder_extern, 
                      dbo.stammdaten_zubehoer.freigabe_bericht_intern, dbo.stammdaten_zubehoer.freigabe_bilder_intern, dbo.einsatzbericht_zubehoerwand.datum, 
                      dbo.einsatzbericht_zubehoerwand.[90013292_Zubehoerwand_Retour], dbo.einsatzbericht_zubehoerwand.[90013292_Zubehoerwand_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90013292_Zubehoerwand_Vorhanden], dbo.einsatzbericht_zubehoerwand.[90013292_Zubehoerwand_Bemerkung], 
                      dbo.einsatzbericht_zubehoerwand.[90013293_Postermodul_Retour], dbo.einsatzbericht_zubehoerwand.[90013293_Postermodul_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90013293_Postermodul_Vorhanden], dbo.einsatzbericht_zubehoerwand.[90013293_Postermodul_Bemerkung], 
                      dbo.einsatzbericht_zubehoerwand.[90013261_Glasvitrine_Retour], dbo.einsatzbericht_zubehoerwand.[90013261_Glasvitrine_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90013261_Glasvitrine_Vorhanden], dbo.einsatzbericht_zubehoerwand.[90013261_Glasvitrine_Bemerkung], 
                      dbo.einsatzbericht_zubehoerwand.[90014313_Base_Mega_Wand_Retour], 
                      dbo.einsatzbericht_zubehoerwand.[90014313_Base_Mega_Wand_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90014313_Base_Mega_Wand_Vorhanden], 
                      dbo.einsatzbericht_zubehoerwand.[90014313_Base_Mega_Wand_Bemerkung], 
                      dbo.einsatzbericht_zubehoerwand.[90019061_MultiMedia_Tisch_Retour], dbo.einsatzbericht_zubehoerwand.[90019061_MultiMedia_Tisch_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90019061_MultiMedia_Tisch_Vorhanden], 
                      dbo.einsatzbericht_zubehoerwand.[90019061_MultiMedia_Tisch_Bemerkung], 
                      dbo.einsatzbericht_zubehoerwand.[90019062_MultiMedia_Board_Retour], 
                      dbo.einsatzbericht_zubehoerwand.[90019062_MultiMedia_Board_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90019062_MultiMedia_Board_Vorhanden], 
                      dbo.einsatzbericht_zubehoerwand.[90019062_MultiMedia_Board_Bemerkung], 
                      dbo.einsatzbericht_zubehoerwand.[90019063_Endgeraete_Praesenter_Retour], 
                      dbo.einsatzbericht_zubehoerwand.[90019063_Endgeraete_Praesenter_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90019063_Endgeraete_Praesenter_Vorhanden], 
                      dbo.einsatzbericht_zubehoerwand.[90019063_Endgeraete_Praesenter_Bemerkung], 
                      dbo.einsatzbericht_zubehoerwand.[90013260_Einhaengewand_Retour], dbo.einsatzbericht_zubehoerwand.[90013260_Einhaengewand_Lieferung], 
                      dbo.einsatzbericht_zubehoerwand.[90013260_Einhaengewand_Vorhanden], 
                      dbo.einsatzbericht_zubehoerwand.[90013260_Einhaengewand_Bemerkung], dbo.einsatzbericht_zubehoerwand.[90013264_Sitzkissen_Retour], 
                      dbo.einsatzbericht_zubehoerwand.[90013264_Sitzkissen_Lieferung], dbo.einsatzbericht_zubehoerwand.[90013264_Sitzkissen_Vorhanden], 
                      dbo.einsatzbericht_zubehoerwand.[90013264_Sitzkissen_Bemerkung], dbo.einsatzbericht_zubehoerwand.bemerkungen, 
                      dbo.einsatzbericht_zubehoerwand.eingang
FROM         dbo.stammdaten_zubehoer INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten_zubehoer.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN
                      dbo.einsatzbericht_zubehoerwand ON dbo.stammdaten_zubehoer.id = dbo.einsatzbericht_zubehoerwand.stammdaten_id
GO
/****** Object:  View [dbo].[bericht_gemeldete_partner]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_gemeldete_partner]
AS
SELECT     COUNT(id) AS anzahl, dekoration
FROM         dbo.stammdaten
GROUP BY dekoration
GO
/****** Object:  View [dbo].[eplus_3er_stecker]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_3er_stecker]
AS
SELECT     SUM(dbo.einsatzbericht.menge_3er_stecker) AS menge_3er, COUNT(dbo.einsatzbericht.id) AS id, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, 
                      dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
HAVING      (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'Ja') AND (dbo.stammdaten.freigabe_bericht_intern = 'Ja') AND 
                      (dbo.stammdaten.freigabe_bilder_intern = 'Ja')
GO
/****** Object:  View [dbo].[eplus_anzahl_shops_gesamt]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_anzahl_shops_gesamt]
AS
SELECT     COUNT(id) AS anzahl, 'Shop' AS art
FROM         dbo.stammdaten
WHERE     shopart = 'Shop'
UNION
SELECT     COUNT(id) AS anzahl, 'Partner-Shop' AS art
FROM         dbo.stammdaten
WHERE    shopart = 'PS'
GO
/****** Object:  View [dbo].[eplus_anzahl_shops_gesamt_pro_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_anzahl_shops_gesamt_pro_mitarbeiter]
AS
SELECT     COUNT(dbo.stammdaten.id) AS Expr1, dbo.promotion_login.anmeldename, dbo.promotion_login.id, dbo.stammdaten.shopart
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.id, dbo.stammdaten.shopart
GO
/****** Object:  View [dbo].[eplus_aufbau_erfolgt]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_aufbau_erfolgt]
AS
SELECT     dbo.einsatzbericht.aufbau AS Auf_erf, COUNT(dbo.einsatzbericht.id) AS anz, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.einsatzbericht.aufbau, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, 
                      dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
HAVING      (dbo.einsatzbericht.aufbau = 'Ja') AND (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'Ja') AND 
                      (dbo.stammdaten.freigabe_bericht_intern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_intern = 'Ja')
GO
/****** Object:  View [dbo].[eplus_aufbau_stehle]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_aufbau_stehle]
AS
SELECT     COUNT(dbo.einsatzbericht.aufbau_stehle) AS aufbau_stehle, COUNT(dbo.einsatzbericht.id) AS anz, dbo.stammdaten.shopart, 
                      dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, 
                      dbo.stammdaten.mitarbeiter, dbo.einsatzbericht.aufbau_stehle AS Expr1
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, 
                      dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter, dbo.einsatzbericht.aufbau_stehle
HAVING      (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'Ja') AND (dbo.stammdaten.freigabe_bericht_intern = 'Ja') AND 
                      (dbo.stammdaten.freigabe_bilder_intern = 'Ja') AND (dbo.einsatzbericht.aufbau_stehle = 'Ja')
GO
/****** Object:  View [dbo].[eplus_aufbau_teppich]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_aufbau_teppich]
AS
SELECT     COUNT(dbo.einsatzbericht.aufbau_teppich) AS Expr1, COUNT(dbo.einsatzbericht.id) AS id, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter, 
                      dbo.einsatzbericht.aufbau_teppich
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
WHERE     (dbo.einsatzbericht.aufbau_teppich = 'Ja')
GROUP BY dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, 
                      dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter, dbo.einsatzbericht.aufbau_teppich
HAVING      (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'JA') AND (dbo.stammdaten.freigabe_bericht_intern = 'JA') AND 
                      (dbo.stammdaten.freigabe_bilder_intern = 'Ja')
GO
/****** Object:  View [dbo].[eplus_berichte_pro_mitarbeiter]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_berichte_pro_mitarbeiter]
AS
SELECT     COUNT(dbo.stammdaten.id) AS anzahl, dbo.promotion_login.anmeldename
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
GROUP BY dbo.promotion_login.anmeldename
GO
/****** Object:  View [dbo].[eplus_kein_aufbau]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_kein_aufbau]
AS
SELECT     dbo.einsatzbericht.kein_aufbau, COUNT(dbo.einsatzbericht.id) AS anz, dbo.stammdaten.shopart, dbo.stammdaten.mitarbeiter
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.einsatzbericht.kein_aufbau, dbo.stammdaten.shopart, dbo.stammdaten.mitarbeiter
HAVING      (dbo.einsatzbericht.kein_aufbau = 'Ja')
GO
/****** Object:  View [dbo].[eplus_kein_aufbau_erwünscht]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_kein_aufbau_erwünscht]
AS
SELECT     dbo.einsatzbericht.kein_aufbau_erwuenscht, COUNT(dbo.einsatzbericht.id) AS anz, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.einsatzbericht.kein_aufbau_erwuenscht, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, 
                      dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
HAVING      (dbo.einsatzbericht.kein_aufbau_erwuenscht = 'Ja') AND (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'Ja') AND 
                      (dbo.stammdaten.freigabe_bericht_intern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_intern = 'Ja')
GO
/****** Object:  View [dbo].[eplus_kein_aufbau_moeglich]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_kein_aufbau_moeglich]
AS
SELECT     dbo.einsatzbericht.kein_aufbau_moeglich, COUNT(dbo.einsatzbericht.id) AS anz, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.einsatzbericht.kein_aufbau_moeglich, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, 
                      dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
HAVING      (dbo.einsatzbericht.kein_aufbau_moeglich = 'Ja') AND (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'Ja') AND 
                      (dbo.stammdaten.freigabe_bericht_intern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_intern = 'Ja')
GO
/****** Object:  View [dbo].[eplus_menge_2m_kabel]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_menge_2m_kabel]
AS
SELECT     SUM(dbo.einsatzbericht.menge_2m_kabel) AS menge_2m, COUNT(dbo.einsatzbericht.id) AS id, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, 
                      dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
HAVING      (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'Ja') AND (dbo.stammdaten.freigabe_bericht_intern = 'Ja') AND 
                      (dbo.stammdaten.freigabe_bilder_intern = 'Ja')
GO
/****** Object:  View [dbo].[eplus_menge_5m_kabel]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[eplus_menge_5m_kabel]
AS
SELECT     SUM(dbo.einsatzbericht.menge_5m_kabel) AS menge_5m, COUNT(dbo.einsatzbericht.id) AS id, dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
GROUP BY dbo.stammdaten.shopart, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, 
                      dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.mitarbeiter
HAVING      (dbo.stammdaten.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten.freigabe_bilder_extern = 'Ja') AND (dbo.stammdaten.freigabe_bericht_intern = 'Ja') AND 
                      (dbo.stammdaten.freigabe_bilder_intern = 'Ja')
GO
/****** Object:  View [dbo].[Mehrfach_Anfahrten_und_Offene]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Mehrfach_Anfahrten_und_Offene]
AS
SELECT     dbo.stammdaten.GP_ID, dbo.stammdaten.typ, dbo.stammdaten.name, dbo.stammdaten.name2, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, 
                      dbo.stammdaten.telefon, dbo.stammdaten.email, dbo.stammdaten.dekoration, dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, 
                      dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, 
                      dbo.vakanz.grund, dbo.vakanz.bis, dbo.vakanz.neue_adresse, dbo.vakanz.eingang, dbo.vakanz.bemerkung, dbo.vakanz.datum
FROM         dbo.vakanz INNER JOIN
                      dbo.stammdaten ON dbo.vakanz.stammdaten_id = dbo.stammdaten.id INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
GO
/****** Object:  View [dbo].[offene_Shops_detail]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[offene_Shops_detail]
AS
SELECT     dbo.stammdaten.GP_ID, dbo.stammdaten.typ, dbo.stammdaten.name, dbo.stammdaten.name2, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, 
                      dbo.stammdaten.telefon, dbo.stammdaten.email, dbo.stammdaten.dekoration, dbo.promotion_login.anmeldename
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.freigabe_bericht_extern = 'nein') AND (dbo.stammdaten.freigabe_bilder_extern = 'nein')
GO
/****** Object:  View [dbo].[Offene_Shops_Mitarbeiter_und_PL]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Offene_Shops_Mitarbeiter_und_PL]
AS
SELECT     dbo.stammdaten.GP_ID, dbo.stammdaten.typ, dbo.stammdaten.name, dbo.stammdaten.name2, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, 
                      dbo.stammdaten.telefon, dbo.stammdaten.email, dbo.stammdaten.dekoration, dbo.promotion_login.anmeldename, dbo.stammdaten.freigabe_bericht_extern, 
                      dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.promotion_login.projektleiter
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.freigabe_bericht_extern = 'nein') OR
                      (dbo.stammdaten.freigabe_bilder_extern = 'nein') OR
                      (dbo.stammdaten.freigabe_bericht_intern = 'nein') OR
                      (dbo.stammdaten.freigabe_bilder_intern = 'nein')
GO
/****** Object:  View [dbo].[stammdaten_personal]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stammdaten_personal]
AS
SELECT     dbo.stammdaten.*, dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
GO
/****** Object:  View [dbo].[Zubehoerwand_Auswertung]    Script Date: 06.07.2018 09:40:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Zubehoerwand_Auswertung]
AS
SELECT     SUM(dbo.einsatzbericht_zubehoerwand.[90013292_Zubehoerwand_Retour]) AS [90013292_Zubehoerwand_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013292_Zubehoerwand_Lieferung]) AS [90013292_Zubehoerwand_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013293_Postermodul_Retour]) AS [90013293_Postermodul_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013293_Postermodul_Lieferung]) AS [90013293_Postermodul_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013261_Glasvitrine_Retour]) AS [90013261_Glasvitrine_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013261_Glasvitrine_Lieferung]) AS [90013261_Glasvitrine_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90014313_Base_Mega_Wand_Retour]) AS [90014313_Base_Mega_Wand_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90014313_Base_Mega_Wand_Lieferung]) AS [90014313_Base_Mega_Wand_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90019061_MultiMedia_Tisch_Retour]) AS [90019061_MultiMedia_Tisch_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90019061_MultiMedia_Tisch_Lieferung]) AS [90019061_MultiMedia_Tisch_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90019062_MultiMedia_Board_Retour]) AS [90019062_MultiMedia_Board_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90019062_MultiMedia_Board_Lieferung]) AS [90019062_MultiMedia_Board_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90019063_Endgeraete_Praesenter_Retour]) AS [90019063_Endgeraete_Praesenter_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90019063_Endgeraete_Praesenter_Lieferung]) AS [90019063_Endgeraete_Praesenter_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013260_Einhaengewand_Retour]) AS [90013260_Einhaengewand_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013260_Einhaengewand_Lieferung]) AS [90013260_Einhaengewand_Lieferung], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013264_Sitzkissen_Retour]) AS [90013264_Sitzkissen_Retour], 
                      SUM(dbo.einsatzbericht_zubehoerwand.[90013264_Sitzkissen_Lieferung]) AS [90013264_Sitzkissen_Lieferung]
FROM         dbo.einsatzbericht_zubehoerwand INNER JOIN
                      dbo.stammdaten_zubehoer ON dbo.einsatzbericht_zubehoerwand.stammdaten_id = dbo.stammdaten_zubehoer.id
WHERE     (dbo.stammdaten_zubehoer.freigabe_bericht_extern = 'Ja') AND (dbo.stammdaten_zubehoer.freigabe_bericht_intern = 'Ja')
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_team]  DEFAULT ((0)) FOR [team]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_teamleiter]  DEFAULT ((0)) FOR [teamleiter]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_promotor]  DEFAULT ((0)) FOR [promotor]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_moderator]  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_kostuem]  DEFAULT ((0)) FOR [kostuem]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_aufbau]  DEFAULT ((0)) FOR [aufbau]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_kinderschminken]  DEFAULT ((0)) FOR [kinderschminken]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_probefahrer]  DEFAULT ((0)) FOR [probefahrer]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_konvoi]  DEFAULT ((0)) FOR [konvoi]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_dekorateur]  DEFAULT ((0)) FOR [dekorateur]
GO
ALTER TABLE [dbo].[personal_einsatzarten] ADD  CONSTRAINT [DF_personal_einsatzarten_moebelbauer]  DEFAULT ((0)) FOR [moebelbauer]
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 293
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 3
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_besuche_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_besuche_gesamt'
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
         Top = -96
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_dekorationen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_dekorationen'
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
         Begin Table = "anzahl_dekorationen"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 84
               Right = 189
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_dekorationen_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_dekorationen_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[20] 3) )"
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 266
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_pro_Mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Anzahl_pro_Mitarbeiter'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 235
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_spa'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 235
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_standard'
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
         Begin Table = "bericht_zweitanfahrten_mitarbeiter"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 84
               Right = 189
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_zweitanfahrten nach mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_zweitanfahrten nach mitarbeiter'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 281
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 125
               Right = 534
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
      Begin ColumnWidths = 16
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ausgabe_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ausgabe_nach_mitarbeiter'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 221
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "einsatzbericht_enjoy"
            Begin Extent = 
               Top = 0
               Left = 289
               Bottom = 231
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 14
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ausgabe_standard_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ausgabe_standard_nach_mitarbeiter'
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
         Begin Table = "stammdaten_zubehoer"
            Begin Extent = 
               Top = 7
               Left = 265
               Bottom = 194
               Right = 463
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "einsatzbericht_zubehoerwand"
            Begin Extent = 
               Top = 8
               Left = 506
               Bottom = 210
               Right = 815
            End
            DisplayFlags = 280
            TopColumn = 32
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 191
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
      Begin ColumnWidths = 53
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Zubehoerwand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Zubehoerwand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Zubehoerwand'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_abgabe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_abgabe'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_anzahl_banner_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_anzahl_banner_1'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_anzahl_banner_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_anzahl_banner_2'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_anzahl_banner_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_anzahl_banner_3'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_attraktivitaet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_attraktivitaet'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_besuchte_partner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_besuchte_partner'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_betriebsferien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_betriebsferien'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_deko_durchgefuehrt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_deko_durchgefuehrt'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 235
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_gemeldete_partner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_gemeldete_partner'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_geschaeftsaufgabe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_geschaeftsaufgabe'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_keine_deko_gewuenscht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_keine_deko_gewuenscht'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_keine_deko_moeglich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_keine_deko_moeglich'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_keine_schaufenster'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_keine_schaufenster'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_nicht_angetroffen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_nicht_angetroffen'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_nicht_deko'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_nicht_deko'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_nicht_existent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_nicht_existent'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_a'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_a'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_angaben'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_angaben'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_b'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_b'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_schaufenster_c'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_stromanschluss'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_stromanschluss'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_telefonische_absage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_telefonische_absage'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_umbau'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_umbau'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_umzug'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_umzug'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_zweitanfahrten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_zweitanfahrten'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_zweitanfahrten_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'bericht_zweitanfahrten_mitarbeiter'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_nach mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_nach mitarbeiter'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 114
               Right = 456
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_nach_dekorateur_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_nach_dekorateur_gesamt'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 114
               Right = 456
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_nach_dekorateur_neu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_nach_dekorateur_neu'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'einsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'einsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[8] 3) )"
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 125
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 16
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
         Alias = 2670
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_3er_stecker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_3er_stecker'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops_gesamt'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 250
            End
            DisplayFlags = 280
            TopColumn = 32
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 288
               Bottom = 125
               Right = 450
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops_gesamt_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops_gesamt_pro_mitarbeiter'
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
         Begin Table = "stammdaten_mtv"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 286
               Bottom = 125
               Right = 448
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_anzahl_shops_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[35] 2[20] 3) )"
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 283
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 321
               Bottom = 125
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 15
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_aufbau_erfolgt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_aufbau_erfolgt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[11] 3) )"
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 52
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 125
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 15
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_aufbau_stehle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_aufbau_stehle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[8] 3) )"
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 52
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 125
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 18
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_aufbau_teppich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_aufbau_teppich'
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
         Begin Table = "stammdaten_mtv"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 264
            End
            DisplayFlags = 280
            TopColumn = 16
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_berichte_anzahl_shops_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_berichte_anzahl_shops_pro_mitarbeiter'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 304
               Bottom = 125
               Right = 482
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_berichte_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_berichte_pro_mitarbeiter'
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 125
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 16
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_kein_aufbau'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_kein_aufbau'
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 125
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 18
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_kein_aufbau_erwünscht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_kein_aufbau_erwünscht'
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 125
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 18
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_kein_aufbau_moeglich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_kein_aufbau_moeglich'
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 31
               Left = 314
               Bottom = 150
               Right = 575
            End
            DisplayFlags = 280
            TopColumn = 34
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 18
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_menge_2m_kabel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_menge_2m_kabel'
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
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 44
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 125
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 18
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
         Alias = 2355
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_menge_5m_kabel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'eplus_menge_5m_kabel'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 284
               Right = 235
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'gesamte_outlets_pro_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'gesamte_outlets_pro_mitarbeiter'
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
         Begin Table = "gesamte_outlets_pro_mitarbeiter"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 112
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 259
               Right = 378
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'gesamte_shops_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'gesamte_shops_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[34] 2[9] 3) )"
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 301
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 0
               Left = 627
               Bottom = 253
               Right = 778
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Gesamtuebersicht_hilfe"
            Begin Extent = 
               Top = 36
               Left = 848
               Bottom = 275
               Right = 1064
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "einsatzbericht_enjoy"
            Begin Extent = 
               Top = 69
               Left = 288
               Bottom = 342
               Right = 523
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 125
               Right = 518
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
      Begin ColumnWidths = 11
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Column = 2655
         Alias = 6750
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
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht'
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
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht_hilfe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht_hilfe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[3] 2[37] 3) )"
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
         Begin Table = "material"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 255
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 6
               Left = 293
               Bottom = 125
               Right = 455
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 6
               Left = 493
               Bottom = 125
               Right = 655
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
      Begin ColumnWidths = 20
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
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'materialsicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'materialsicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'materialsicht'
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
         Begin Table = "standard_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 220
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "standard_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 171
               Left = 387
               Bottom = 279
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "material_enjoy"
            Begin Extent = 
               Top = 9
               Left = 639
               Bottom = 317
               Right = 847
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
      Begin ColumnWidths = 17
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'materialsicht_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'materialsicht_standard'
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
         Begin Table = "vakanz"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 227
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 269
               Right = 427
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 465
               Bottom = 225
               Right = 616
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Mehrfach_Anfahrten_und_Offene'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Mehrfach_Anfahrten_und_Offene'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 245
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 11
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_shops'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_shops'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 255
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 208
               Right = 424
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
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_Shops_detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_Shops_detail'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 280
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 220
               Right = 424
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
      Begin ColumnWidths = 17
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Offene_Shops_Mitarbeiter_und_PL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Offene_Shops_Mitarbeiter_und_PL'
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
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 203
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "offene_shops"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 136
               Right = 378
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_shops_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'offene_shops_nach_mitarbeiter'
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
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 30
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_deko'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_deko'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 280
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "einsatzbericht_enjoy"
            Begin Extent = 
               Top = 8
               Left = 291
               Bottom = 290
               Right = 527
            End
            DisplayFlags = 280
            TopColumn = 27
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 30
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_enjoy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_enjoy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[15] 2[20] 3) )"
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 295
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 125
               Right = 518
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
      Begin ColumnWidths = 31
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
En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_mtv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_mtv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_mtv'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 282
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 246
               Right = 424
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_personal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_personal'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 284
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 114
               Right = 424
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'standard_deko_nach_dekorateur_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'standard_deko_nach_dekorateur_gesamt'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 114
               Right = 456
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'standard_deko_nach_dekorateur_neu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'standard_deko_nach_dekorateur_neu'
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
         Configuration = "(H (1[50] 4[25] 3) )"
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 250
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
         Width = 3690
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'summen_einsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'summen_einsaetze'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 0
               Left = 36
               Bottom = 254
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 23
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 66
               Left = 495
               Bottom = 185
               Right = 657
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "einsaetze"
            Begin Extent = 
               Top = 8
               Left = 312
               Bottom = 101
               Right = 465
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
      Begin ColumnWidths = 16
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'uebersicht_deko_2013'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'uebersicht_deko_2013'
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
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 10
               Left = 2
               Bottom = 129
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 288
               Bottom = 125
               Right = 450
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "einsatzbericht"
            Begin Extent = 
               Top = 126
               Left = 303
               Bottom = 245
               Right = 548
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "summen_einsaetze"
            Begin Extent = 
               Top = 6
               Left = 488
               Bottom = 110
               Right = 650
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
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         S' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
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
         Begin Table = "einsatzbericht_zubehoerwand"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 259
               Right = 355
            End
            DisplayFlags = 280
            TopColumn = 28
         End
         Begin Table = "stammdaten_zubehoer"
            Begin Extent = 
               Top = 10
               Left = 523
               Bottom = 254
               Right = 729
            End
            DisplayFlags = 280
            TopColumn = 3
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zubehoerwand_Auswertung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Zubehoerwand_Auswertung'
GO
USE [master]
GO
ALTER DATABASE [admin_eplus] SET  READ_WRITE 
GO
