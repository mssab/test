USE [master]
GO
/****** Object:  Database [admin_gate]    Script Date: 06.07.2018 09:41:57 ******/
CREATE DATABASE [admin_gate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'admin_gate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\admin_gate.mdf' , SIZE = 14592KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'admin_gate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\admin_gate_log.LDF' , SIZE = 3200KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [admin_gate] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [admin_gate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [admin_gate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [admin_gate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [admin_gate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [admin_gate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [admin_gate] SET ARITHABORT OFF 
GO
ALTER DATABASE [admin_gate] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [admin_gate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [admin_gate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [admin_gate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [admin_gate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [admin_gate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [admin_gate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [admin_gate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [admin_gate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [admin_gate] SET  ENABLE_BROKER 
GO
ALTER DATABASE [admin_gate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [admin_gate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [admin_gate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [admin_gate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [admin_gate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [admin_gate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [admin_gate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [admin_gate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [admin_gate] SET  MULTI_USER 
GO
ALTER DATABASE [admin_gate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [admin_gate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [admin_gate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [admin_gate] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [admin_gate] SET DELAYED_DURABILITY = DISABLED 
GO
USE [admin_gate]
GO
/****** Object:  User [GateMaster]    Script Date: 06.07.2018 09:41:58 ******/
CREATE USER [GateMaster] FOR LOGIN [GateMaster] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [daedalus]    Script Date: 06.07.2018 09:41:58 ******/
CREATE USER [daedalus] FOR LOGIN [daedalus] WITH DEFAULT_SCHEMA=[daedalus]
GO
ALTER ROLE [db_owner] ADD MEMBER [GateMaster]
GO
ALTER ROLE [db_owner] ADD MEMBER [daedalus]
GO
/****** Object:  Schema [daedalus]    Script Date: 06.07.2018 09:41:58 ******/
CREATE SCHEMA [daedalus]
GO
/****** Object:  Table [dbo].[deko_2014_einsatzbericht_enjoy]    Script Date: 06.07.2018 09:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2014_einsatzbericht_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[aufkleber_grohe_logo] [int] NULL,
	[aufkleber_grohe_logo_note] [int] NULL,
	[aufkleber_wasser] [int] NULL,
	[aufkleber_wasser_note] [int] NULL,
	[banner_kubistisch] [int] NULL,
	[banner_kubistisch_note] [int] NULL,
	[banner_kind_neu] [int] NULL,
	[banner_kind_neu_note] [int] NULL,
	[banner_minta_touch] [int] NULL,
	[banner_minta_touch_note] [int] NULL,
	[mobile_icon_flower] [int] NULL,
	[mobile_icon_flower_note] [int] NULL,
	[aufkleber_icon_flower] [int] NULL,
	[aufkleber_icon_flower_note] [int] NULL,
	[wuerfel_made_in_germany] [int] NULL,
	[wuerfel_made_in_germany_note] [int] NULL,
	[aufkleber_qr_code] [int] NULL,
	[aufkleber_qr_code_note] [int] NULL,
	[aufsteller_5_jahre_garantie] [int] NULL,
	[aufsteller_5_jahre_garantie_note] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_mit_beleuchtung_note] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung_note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[winterdeko_erhalten] [varchar](50) NULL,
	[winterdeko_genutzt] [varchar](50) NULL,
	[bewertung_winterdeko] [int] NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2014_einsatzbericht_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2014_einsatzbericht_spa]    Script Date: 06.07.2018 09:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2014_einsatzbericht_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[aufkleber_f_digital] [int] NULL,
	[aufkleber_f_digital_note] [int] NULL,
	[banner_f_digital_deluxe] [int] NULL,
	[banner_f_digital_deluxe_note] [int] NULL,
	[banner_p_s_ncc] [int] NULL,
	[banner_p_s_ncc_note] [int] NULL,
	[wuerfel_made_in_germany] [int] NULL,
	[wuerfel_made_in_germany_note] [int] NULL,
	[hot_stones] [int] NULL,
	[hot_stones_note] [int] NULL,
	[neue_slideshow_sd_card] [int] NULL,
	[neue_slideshow_sd_card_note] [int] NULL,
	[aufkleber_grohe_spa_logo] [int] NULL,
	[aufkleber_grohe_spa_logo_note] [int] NULL,
	[aufkleber_qr_code] [int] NULL,
	[aufkleber_qr_code_note] [int] NULL,
	[banner_grandera] [int] NULL,
	[banner_grandera_note] [int] NULL,
	[aufsteller_5_jahre_garantie] [int] NULL,
	[aufsteller_5_jahre_garantie_note] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_mit_beleuchtung_note] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung_note] [int] NULL,
	[buerste] [int] NULL,
	[buerste_note] [int] NULL,
	[duschgel] [int] NULL,
	[duschgel_note] [int] NULL,
	[handtuch] [int] NULL,
	[handtuch_note] [int] NULL,
	[schwamm] [int] NULL,
	[schwamm_note] [int] NULL,
	[dig_bilderrahmen] [int] NULL,
	[dig_bilderrahmen_note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[winterdeko_erhalten] [varchar](50) NULL,
	[winterdeko_genutzt] [varchar](50) NULL,
	[bewertung_winterdeko] [int] NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2014_einsatzbericht_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2014_material_enjoy]    Script Date: 06.07.2018 09:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2014_material_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[aufkleber_grohe_logo] [int] NULL,
	[aufkleber_wasser] [int] NULL,
	[banner_kubistisch] [int] NULL,
	[banner_kind_neu] [int] NULL,
	[banner_minta_touch] [int] NULL,
	[mobile_icon_flower] [int] NULL,
	[aufkleber_icon_flower] [int] NULL,
	[wuerfel_made_in_germany] [int] NULL,
	[aufkleber_qr_code] [int] NULL,
	[aufsteller_5_jahre_garantie] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
 CONSTRAINT [PK_deko_2014_material_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2014_material_spa]    Script Date: 06.07.2018 09:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2014_material_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[aufkleber_f_digital] [int] NULL,
	[banner_f_digital_deluxe] [int] NULL,
	[banner_p_s_ncc] [int] NULL,
	[wuerfel_made_in_germany] [int] NULL,
	[hot_stones] [int] NULL,
	[neue_slideshow_sd_card] [int] NULL,
	[aufkleber_grohe_spa_logo] [int] NULL,
	[aufkleber_qr_code] [int] NULL,
	[banner_grandera] [int] NULL,
	[aufsteller_5_jahre_garantie] [int] NULL,
	[display_mit_beleuchtung] [int] NULL,
	[display_ohne_beleuchtung] [int] NULL,
	[buerste] [int] NULL,
	[duschgel] [int] NULL,
	[handtuch] [int] NULL,
	[schwamm] [int] NULL,
	[dig_bilderrahmen] [int] NULL,
 CONSTRAINT [PK_deko_2014_material_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2014_stammdaten]    Script Date: 06.07.2018 09:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2014_stammdaten](
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
	[neu] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2014_stammdaten__neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2014_vakanz]    Script Date: 06.07.2018 09:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2014_vakanz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grund] [varchar](50) NULL,
	[bis] [varchar](50) NULL,
	[neue_adresse] [varchar](max) NULL,
	[eingang] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[datum] [varchar](50) NULL,
	[stammdaten_id] [int] NULL,
	[freigabe_intern] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2014_vakanz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2015_einsatzbericht_enjoy]    Script Date: 06.07.2018 09:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2015_einsatzbericht_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[Banner kubistisches Design] [int] NULL,
	[Banner kubistisches Design Note] [int] NULL,
	[Banner Livestyle] [int] NULL,
	[Banner Livestyle Note] [int] NULL,
	[Banner Armaturen] [int] NULL,
	[Banner Armaturen Note] [int] NULL,
	[Deko Saeule SML Standard] [int] NULL,
	[Deko Saeule SML Standard Note] [int] NULL,
	[Vase] [int] NULL,
	[Vase Note] [int] NULL,
	[Orchideen] [int] NULL,
	[Orchideen Note] [int] NULL,
	[Badetuch] [int] NULL,
	[Badetuch Note] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufkleber QR Code Note] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
	[Aufsteller 5 Jahre Garantie Note] [int] NULL,
	[Aufkleber Wasser Splash] [int] NULL,
	[Aufkleber Wasser Splash Note] [int] NULL,
	[Aufkleber Logo] [int] NULL,
	[Aufkleber Logo Note] [int] NULL,
	[Deko Saeule Logo Standard] [int] NULL,
	[Deko Saeule Logo Standard Note] [int] NULL,
	[Mobile Icon Flower] [int] NULL,
	[Mobile Icon Flower Note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[winterdeko_erhalten] [varchar](50) NULL,
	[winterdeko_genutzt] [varchar](50) NULL,
	[bewertung_winterdeko] [int] NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2015_einsatzbericht_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2015_einsatzbericht_spa]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2015_einsatzbericht_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[Banner F Digital Deluxe] [int] NULL,
	[Banner F Digital  Deluxe Note] [int] NULL,
	[Banner Essence] [int] NULL,
	[Banner Essence Note] [int] NULL,
	[Banner Grandera] [int] NULL,
	[Banner Grandera Note] [int] NULL,
	[Aufkleber F Digital Bluetooth] [int] NULL,
	[Aufkleber F Digital Bluetooth Note] [int] NULL,
	[Deko Wuerfel Essence] [int] NULL,
	[Deko Wuerfel Essence Note] [int] NULL,
	[Aufkleber Grohe SPA Logo] [int] NULL,
	[Aufkleber Grohe SPA  Logo Note] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufkleber QR Code Note] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
	[Aufsteller 5 Jahre Garantie Note] [int] NULL,
	[Deko Saeule SPA Logo] [int] NULL,
	[Deko Saeule SPA Logo Note] [int] NULL,
	[Body Lotion] [int] NULL,
	[Body Lotion Note] [int] NULL,
	[Handtuch 50x100] [int] NULL,
	[Handtuch 50x100 Note] [int] NULL,
	[Handtuch 30x50] [int] NULL,
	[Handtuch 30x50 Note] [int] NULL,
	[Schwamm] [int] NULL,
	[Schwamm Note] [int] NULL,
	[Duschgel] [int] NULL,
	[Duschgel Note] [int] NULL,
	[Dig Bilderrahmen] [int] NULL,
	[Dig Bilderrahmen Note] [int] NULL,
	[Deko Steine Hot Stones] [int] NULL,
	[Deko Steine Hot Stones Note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[winterdeko_erhalten] [varchar](50) NULL,
	[winterdeko_genutzt] [varchar](50) NULL,
	[bewertung_winterdeko] [int] NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2015_einsatzbericht_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2015_material_enjoy]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2015_material_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[Banner kubistisches Design] [int] NULL,
	[Banner Livestyle] [int] NULL,
	[Banner Armaturen] [int] NULL,
	[Deko Saeule SML Standard] [int] NULL,
	[Vase] [int] NULL,
	[Orchideen] [int] NULL,
	[Badetuch] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
	[Aufkleber Wasser Splash] [int] NULL,
	[Aufkleber Logo] [int] NULL,
	[Deko Saeule Logo Standard] [int] NULL,
	[Mobile Icon Flower] [int] NULL,
 CONSTRAINT [PK_deko_2015_material_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2015_material_spa]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2015_material_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[Banner F Digital Deluxe] [int] NULL,
	[Banner Essence] [int] NULL,
	[Banner Grandera] [int] NULL,
	[Aufkleber F Digital Bluetooth] [int] NULL,
	[Deko Wuerfel Essence] [int] NULL,
	[Aufkleber Grohe SPA Logo] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
	[Deko Saeule SPA Logo] [int] NULL,
	[Body Lotion] [int] NULL,
	[Handtuch 50x100] [int] NULL,
	[Handtuch 30x50] [int] NULL,
	[Schwamm] [int] NULL,
	[Duschgel] [int] NULL,
	[Dig Bilderrahmen] [int] NULL,
	[Deko Steine Hot Stones] [int] NULL,
 CONSTRAINT [PK_deko_2015_material_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2015_stammdaten]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2015_stammdaten](
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
	[neu] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2015_stammdaten__neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2015_vakanz]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2015_vakanz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grund] [varchar](50) NULL,
	[bis] [varchar](50) NULL,
	[neue_adresse] [varchar](max) NULL,
	[eingang] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[datum] [varchar](50) NULL,
	[stammdaten_id] [int] NULL,
	[freigabe_intern] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2015_vakanz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2016_einsatzbericht_enjoy]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2016_einsatzbericht_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[Banner Eurostyle] [int] NULL,
	[Banner Eurostyle Note] [int] NULL,
	[Banner Livestyle] [int] NULL,
	[Banner Livestyle Note] [int] NULL,
	[Banner Essence] [int] NULL,
	[Banner Essence Note] [int] NULL,
	[Aufkleber Aquatunes] [int] NULL,
	[Aufkleber Aquatunes Note] [int] NULL,
	[Dekosäule Aquatunes] [int] NULL,
	[Dekosäule Aquatunes Note] [int] NULL,
	[Dekowürfel Nachhaltigkeit] [int] NULL,
	[Dekowürfel Nachhaltigkeit Note] [int] NULL,
	[Dekowürfel Made in Germany] [int] NULL,
	[Dekowürfel Made in Germany Note] [int] NULL,
	[Dekowürfel Essence] [int] NULL,
	[Dekowürfel Essence Note] [int] NULL,
	[Dekosäule Logo Standard] [int] NULL,
	[Dekosäule Logo Standard Note] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
	[Aufsteller 5 Jahre Garantie Note] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufkleber QR Code Note] [int] NULL,
	[Aufkleber Logo] [int] NULL,
	[Aufkleber Logo Note] [int] NULL,
	[Badetuch] [int] NULL,
	[Badetuch Note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NOT NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2016_einsatzbericht_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2016_einsatzbericht_spa]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2016_einsatzbericht_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[Banner Rainshower SmartControl] [int] NULL,
	[Banner Rainshower SmartControl Note] [int] NULL,
	[Banner SPA-Welt] [int] NULL,
	[Banner SPA-Welt Note] [int] NULL,
	[Banner Grandera] [int] NULL,
	[Banner Grandera Note] [int] NULL,
	[Banner Sensia Arena] [int] NULL,
	[Banner Sensia Arena Note] [int] NULL,
	[Dekosäule Rainshower Smart] [int] NULL,
	[Dekosäule Rainshower Smart Note] [int] NULL,
	[Dekowürfel Arena Set 3 Stk.] [int] NULL,
	[Dekowürfel Arena Set 3 Stk.Note] [int] NULL,
	[Dekowürfel Nachhaltigkeit] [int] NULL,
	[Dekowürfel Nachhaltigkeit Note] [int] NULL,
	[Mobilee SPA-Welt] [int] NULL,
	[Mobilee SPA-Welt Note] [int] NULL,
	[Dekokörbchen (Set klein/groß)] [int] NULL,
	[Dekobörbchen (Set klein/groß) Note] [int] NULL,
	[Handtuch 50x100] [int] NULL,
	[Handtuch 50x100 Note] [int] NULL,
	[Handtuch 30x50] [int] NULL,
	[Handtuch 30x50 Note] [int] NULL,
	[Bürste] [int] NULL,
	[Bürste Note] [int] NULL,
	[Seife] [int] NULL,
	[Seife Note] [int] NULL,
	[Raumspray] [int] NULL,
	[Raumspray Note] [int] NULL,
	[Dig Bilderrahmen] [int] NULL,
	[Dig Bilderrahmen Note] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufkleber QR Code Note] [int] NULL,
	[Aufkleber Grohe SPA Logo] [int] NULL,
	[Aufkleber Grohe SPA  Logo Note] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
	[Aufsteller 5 Jahre Garantie Note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2016_einsatzbericht_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2016_material_enjoy]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2016_material_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[Banner Eurostyle] [int] NULL,
	[Banner Livestyle] [int] NULL,
	[Banner Essence] [int] NULL,
	[Aufkleber Aquatunes] [int] NULL,
	[Dekosäule Aquatunes] [int] NULL,
	[Dekowürfel Nachhaltigkeit] [int] NULL,
	[Dekowürfel Made in Germany] [int] NULL,
	[Dekowürfel Essence] [int] NULL,
	[Dekosäule Logo Standard] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufkleber Logo] [int] NULL,
	[Badetuch] [int] NULL,
 CONSTRAINT [PK_deko_2016_material_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2016_material_spa]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2016_material_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[Banner Rainshower SmartControl] [int] NULL,
	[Banner SPA-Welt] [int] NULL,
	[Banner Grandera] [int] NULL,
	[Banner Sensia Arena] [int] NULL,
	[Dekosäule Rainshower Smart] [int] NULL,
	[Dekowürfel Arena Set 3 Stk.] [int] NULL,
	[Dekowürfel Nachhaltigkeit] [int] NULL,
	[Mobilee SPA-Welt] [int] NULL,
	[Dekokörbchen (Set klein/groß)] [int] NULL,
	[Handtuch 50x100] [int] NULL,
	[Handtuch 30x50] [int] NULL,
	[Bürste] [int] NULL,
	[Seife] [int] NULL,
	[Raumspray] [int] NULL,
	[Dig Bilderrahmen] [int] NULL,
	[Aufkleber QR Code] [int] NULL,
	[Aufkleber Grohe SPA Logo] [int] NULL,
	[Aufsteller 5 Jahre Garantie] [int] NULL,
 CONSTRAINT [PK_deko_2016_material_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2016_stammdaten]    Script Date: 06.07.2018 09:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2016_stammdaten](
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
	[neu] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2016_stammdaten__neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2016_vakanz]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2016_vakanz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grund] [varchar](50) NULL,
	[bis] [varchar](50) NULL,
	[neue_adresse] [varchar](max) NULL,
	[eingang] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[datum] [varchar](50) NULL,
	[stammdaten_id] [int] NULL,
	[freigabe_intern] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2016_vakanz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2017_einsatzbericht_enjoy]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2017_einsatzbericht_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[Banner Sense1] [int] NULL,
	[Banner Sense1 Note] [int] NULL,
	[Banner Sense2] [int] NULL,
	[Banner Sense2 Note] [int] NULL,
	[Banner Sense3] [int] NULL,
	[Banner Sense3 Note] [int] NULL,
	[Display Lineares] [int] NULL,
	[Display Lineares Note] [int] NULL,
	[Dekowürfel Blue Home] [int] NULL,
	[Dekowürfel Blue Home Note] [int] NULL,
	[Aufkleber Mehr unter] [int] NULL,
	[Aufkleber Mehr unter Note] [int] NULL,
	[Aufkleber Logo] [int] NULL,
	[Aufkleber Logo Note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NOT NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2017_einsatzbericht_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2017_einsatzbericht_spa]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2017_einsatzbericht_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[datum] [varchar](50) NULL,
	[Banner Aquasymphony1] [int] NULL,
	[Banner Aquasymphony1 Note] [int] NULL,
	[Banner Aquasymphony2] [int] NULL,
	[Banner Aquasymphony2 Note] [int] NULL,
	[Banner Aquasymphony3] [int] NULL,
	[Banner Aquasymphony3 Note] [int] NULL,
	[Display Essence Colors] [int] NULL,
	[Display Essence Colors Note] [int] NULL,
	[Dekowürfel Smart Control] [int] NULL,
	[Dekowürfel Smart Control Note] [int] NULL,
	[Aufkleber Made in Ger] [int] NULL,
	[Aufkleber Made in Ger Note] [int] NULL,
	[Aufkleber mehr unter] [int] NULL,
	[Aufkleber mehr unter Note] [int] NULL,
	[Aufkleber SPA Logo] [int] NULL,
	[Aufkleber SPA  Logo Note] [int] NULL,
	[anzahl_möglicher_banner] [int] NULL,
	[schaufenster_stromanschluss_vorhanden] [varchar](50) NULL,
	[attraktivitaet_der_fenster] [varchar](50) NULL,
	[aktivitaet] [varchar](50) NULL,
	[aktivitaet_bemerkung] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[telefonische_ankuendigung] [varchar](50) NULL,
	[eingang] [varchar](50) NULL,
	[keine_deko_generell] [varchar](50) NULL,
	[kuenftige_dekos] [varchar](50) NULL,
	[versand_gewuenscht] [varchar](50) NULL,
	[zweitanfahrt] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2017_einsatzbericht_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2017_material_enjoy]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2017_material_enjoy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[Banner Sense1] [int] NULL,
	[Banner Sense2] [int] NULL,
	[Banner Sense3] [int] NULL,
	[Display Lineares] [int] NULL,
	[Dekowürfel Blue Home] [int] NULL,
	[Aufkleber Mehr unter] [int] NULL,
	[Aufkleber Logo] [int] NULL,
 CONSTRAINT [PK_deko_2017_material_enjoy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2017_material_spa]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2017_material_spa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion_id] [int] NULL,
	[Banner Aquasymphony1] [int] NULL,
	[Banner Aquasymphony2] [int] NULL,
	[Banner Aquasymphony3] [int] NULL,
	[Display Essence Colors] [int] NULL,
	[Dekowürfel Smart Control] [int] NULL,
	[Aufkleber Made in Ger] [int] NULL,
	[Aufkleber mehr unter] [int] NULL,
	[Aufkleber SPA Logo] [int] NULL,
 CONSTRAINT [PK_deko_2017_material_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2017_stammdaten]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2017_stammdaten](
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
	[neu] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2017_stammdaten__neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deko_2017_vakanz]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deko_2017_vakanz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grund] [varchar](50) NULL,
	[bis] [varchar](50) NULL,
	[neue_adresse] [varchar](max) NULL,
	[eingang] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[datum] [varchar](50) NULL,
	[stammdaten_id] [int] NULL,
	[freigabe_intern] [varchar](50) NULL,
 CONSTRAINT [PK_deko_2017_vakanz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_enjoy]    Script Date: 06.07.2018 09:42:01 ******/
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
/****** Object:  Table [dbo].[einsatzbericht_spa]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_spa](
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
 CONSTRAINT [PK_einsatzbericht_spa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gsp]    Script Date: 06.07.2018 09:42:01 ******/
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
/****** Object:  Table [dbo].[gsp_auftraege]    Script Date: 06.07.2018 09:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gsp_auftraege](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Team] [int] NULL,
	[JobNr] [int] NULL,
	[GSP] [varchar](max) NOT NULL,
	[Umruestung] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
	[Bemerkungen] [text] NULL,
	[Eingangsdatum] [date] NULL,
	[Fertigstelldatum] [date] NULL,
	[Kunde] [int] NULL,
	[Regalmeter] [varchar](max) NULL,
	[Regallaenge] [varchar](max) NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
	[angenommen] [varchar](max) NULL,
	[abgerechnet] [varchar](max) NULL,
	[anfragedatum] [date] NULL,
	[unterstuetzung_gate] [varchar](max) NULL,
	[top_schilder] [varchar](max) NULL,
	[gsp_flyer] [varchar](max) NULL,
	[gesamt_regalmeter] [varchar](max) NULL,
 CONSTRAINT [PK_gsp_auftraege] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gsp_shops]    Script Date: 06.07.2018 09:42:02 ******/
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
	[Regallaenge] [varchar](max) NULL,
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
/****** Object:  Table [dbo].[material_enjoy]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  Table [dbo].[material_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_spa](
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
/****** Object:  Table [dbo].[personal]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  Table [dbo].[personal_einsatzarten]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  Table [dbo].[promotion_login]    Script Date: 06.07.2018 09:42:02 ******/
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
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_promotion_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten]    Script Date: 06.07.2018 09:42:02 ******/
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
	[neu] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten__neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vakanz]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[deko_2017_einsaetze]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_einsaetze]
AS
SELECT        id, stammdaten_id, datum
FROM            deko_2017_einsatzbericht_enjoy
UNION
SELECT        id, stammdaten_id, datum
FROM            deko_2017_einsatzbericht_spa

GO
/****** Object:  View [dbo].[uebersicht_deko_2017]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[uebersicht_deko_2017]
AS
SELECT        dbo.deko_2017_stammdaten.GP_ID, dbo.deko_2017_stammdaten.name, dbo.deko_2017_stammdaten.strasse, dbo.deko_2017_stammdaten.plz, 
                         dbo.deko_2017_stammdaten.ort, dbo.deko_2017_stammdaten.dekoration, dbo.deko_2017_einsaetze.datum, dbo.deko_2017_stammdaten.vl, 
                         dbo.deko_2017_stammdaten.gvl, dbo.deko_2017_stammdaten.glh, dbo.deko_2017_stammdaten.id, dbo.deko_2017_stammdaten.mitarbeiter
FROM            dbo.deko_2017_stammdaten LEFT OUTER JOIN
                         dbo.deko_2017_einsaetze ON dbo.deko_2017_stammdaten.id = dbo.deko_2017_einsaetze.stammdaten_id

GO
/****** Object:  View [dbo].[deko_2017_stammdaten_enjoy]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_stammdaten_enjoy]
AS
SELECT     dbo.deko_2017_stammdaten.id, dbo.deko_2017_stammdaten.GP_ID, dbo.deko_2017_stammdaten.typ, dbo.deko_2017_stammdaten.name, dbo.deko_2017_stammdaten.name2, dbo.deko_2017_stammdaten.strasse, dbo.deko_2017_stammdaten.plz, 
                      dbo.deko_2017_stammdaten.ort, dbo.deko_2017_stammdaten.telefon, dbo.deko_2017_stammdaten.email, dbo.deko_2017_stammdaten.dekoration, dbo.deko_2017_stammdaten.vl, dbo.deko_2017_stammdaten.gvl, dbo.deko_2017_stammdaten.glh, 
                      dbo.deko_2017_stammdaten.mitarbeiter, dbo.deko_2017_stammdaten.freigabe_bericht_extern, dbo.deko_2017_stammdaten.freigabe_bilder_extern, dbo.deko_2017_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2017_stammdaten.freigabe_bilder_intern, dbo.deko_2017_stammdaten.neu, dbo.deko_2017_einsatzbericht_enjoy.datum, dbo.deko_2017_einsatzbericht_enjoy.anzahl_möglicher_banner, 
                      dbo.deko_2017_einsatzbericht_enjoy.attraktivitaet_der_fenster, 
                      dbo.deko_2017_einsatzbericht_enjoy.aktivitaet, dbo.deko_2017_einsatzbericht_enjoy.aktivitaet_bemerkung, dbo.deko_2017_einsatzbericht_enjoy.telefonische_ankuendigung, 
                      dbo.deko_2017_einsatzbericht_enjoy.zweitanfahrt, dbo.deko_2017_einsatzbericht_enjoy.eingang
FROM         dbo.deko_2017_stammdaten INNER JOIN
                      dbo.deko_2017_einsatzbericht_enjoy ON dbo.deko_2017_stammdaten.id = dbo.deko_2017_einsatzbericht_enjoy.stammdaten_id



GO
/****** Object:  View [dbo].[deko_2017_stammdaten_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_stammdaten_spa]
AS
SELECT     dbo.deko_2017_stammdaten.id, dbo.deko_2017_stammdaten.GP_ID, dbo.deko_2017_stammdaten.typ, dbo.deko_2017_stammdaten.name, dbo.deko_2017_stammdaten.name2, dbo.deko_2017_stammdaten.strasse, dbo.deko_2017_stammdaten.plz, 
                      dbo.deko_2017_stammdaten.ort, dbo.deko_2017_stammdaten.telefon, dbo.deko_2017_stammdaten.email, dbo.deko_2017_stammdaten.dekoration, dbo.deko_2017_stammdaten.vl, dbo.deko_2017_stammdaten.gvl, dbo.deko_2017_stammdaten.glh, 
                      dbo.deko_2017_stammdaten.mitarbeiter, dbo.deko_2017_stammdaten.freigabe_bericht_extern, dbo.deko_2017_stammdaten.freigabe_bilder_extern, dbo.deko_2017_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2017_stammdaten.freigabe_bilder_intern, dbo.deko_2017_stammdaten.neu, dbo.deko_2017_einsatzbericht_spa.datum, dbo.deko_2017_einsatzbericht_spa.anzahl_möglicher_banner, 
                      dbo.deko_2017_einsatzbericht_spa.attraktivitaet_der_fenster, 
                      dbo.deko_2017_einsatzbericht_spa.aktivitaet, dbo.deko_2017_einsatzbericht_spa.aktivitaet_bemerkung, dbo.deko_2017_einsatzbericht_spa.telefonische_ankuendigung, 
                      dbo.deko_2017_einsatzbericht_spa.zweitanfahrt, dbo.deko_2017_einsatzbericht_spa.eingang
FROM         dbo.deko_2017_stammdaten INNER JOIN
                      dbo.deko_2017_einsatzbericht_spa ON dbo.deko_2017_stammdaten.id = dbo.deko_2017_einsatzbericht_spa.stammdaten_id




GO
/****** Object:  View [dbo].[deko_2017_bericht_zweitanfahrten_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_zweitanfahrten_mitarbeiter]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GROUP BY mitarbeiter
UNION
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2017_bericht_zweitanfahrten]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_zweitanfahrten]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')

GO
/****** Object:  View [dbo].[deko_2017_bericht_umzug]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_bericht_umzug]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2017_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umzug')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2017_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umzug')




GO
/****** Object:  View [dbo].[deko_2017_bericht_umbau]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_umbau]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umbau')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umbau')

GO
/****** Object:  View [dbo].[deko_2017_bericht_telefonische_absage]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_telefonische_absage]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[deko_2017_bericht_schaufenster_c]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_schaufenster_c]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('C')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('C')

GO
/****** Object:  View [dbo].[deko_2017_anzahl_dekorationen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_anzahl_dekorationen]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2017_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
UNION All
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2017_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter



GO
/****** Object:  View [dbo].[deko_2017_bericht_besuchte_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2017_bericht_besuchte_partner]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2017_stammdaten_enjoy
WHERE      (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2017_stammdaten_spa
WHERE     (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')


GO
/****** Object:  View [dbo].[deko_2017_bericht_attraktivitaet]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_attraktivitaet]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster NOT IN ('keine Angabe')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster NOT IN ('keine Angabe')

GO
/****** Object:  View [dbo].[deko_2017_bericht_anzahl_banner_3]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_anzahl_banner_3]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 3
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 3

GO
/****** Object:  View [dbo].[deko_2017_bericht_anzahl_banner_2]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_anzahl_banner_2]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 2
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 2

GO
/****** Object:  View [dbo].[deko_2017_bericht_anzahl_banner_1]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_anzahl_banner_1]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 1
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 1

GO
/****** Object:  View [dbo].[deko_2017_bericht_abgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_abgabe]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Werbemittel abgegeben')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Werbemittel abgegeben')

GO
/****** Object:  View [dbo].[deko_2017_bericht_keine_schaufenster]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_keine_schaufenster]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('keine Schaufenster')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('keine Schaufenster')

GO
/****** Object:  View [dbo].[deko_2017_bericht_keine_deko_moeglich]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_keine_deko_moeglich]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[deko_2017_bericht_keine_deko_gewuenscht]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_keine_deko_gewuenscht]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')

GO
/****** Object:  View [dbo].[deko_2017_bericht_geschaeftsaufgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_geschaeftsaufgabe]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('baldige Geschäftsaufgabe')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('baldige Geschäftsaufgabe')

GO
/****** Object:  View [dbo].[deko_2017_bericht_deko_durchgefuehrt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_deko_durchgefuehrt]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')

GO
/****** Object:  View [dbo].[deko_2017_bericht_betriebsferien]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_betriebsferien]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Betriebsferien')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Betriebsferien')

GO
/****** Object:  View [dbo].[deko_2017_bericht_schaufenster_b]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_schaufenster_b]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('B')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('B')

GO
/****** Object:  View [dbo].[deko_2017_bericht_schaufenster_angaben]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_schaufenster_angaben]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner IN (1, 2, 3)
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner IN (1, 2, 3)

GO
/****** Object:  View [dbo].[deko_2017_bericht_schaufenster_a]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_schaufenster_a]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('A')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('A')

GO
/****** Object:  View [dbo].[deko_2017_bericht_nicht_existent]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_bericht_nicht_existent]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2017_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht existent')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2017_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht existent')  




GO
/****** Object:  View [dbo].[deko_2017_bericht_nicht_deko]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_nicht_deko]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[deko_2017_bericht_nicht_angetroffen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_bericht_nicht_angetroffen]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2017_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht angetroffen')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2017_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht angetroffen')

GO
/****** Object:  View [dbo].[einsaetze]    Script Date: 06.07.2018 09:42:02 ******/
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
FROM         einsatzbericht_spa
GO
/****** Object:  View [dbo].[uebersicht_deko_2013]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[uebersicht_deko_2013]
AS
SELECT     dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, dbo.stammdaten.dekoration, 
                      dbo.einsaetze.datum, dbo.stammdaten.vl, dbo.stammdaten.gvl, dbo.stammdaten.glh, dbo.stammdaten.id
FROM         dbo.stammdaten LEFT OUTER JOIN
                      dbo.einsaetze ON dbo.stammdaten.id = dbo.einsaetze.stammdaten_id
GO
/****** Object:  View [dbo].[deko_2017_anzahl_zweitanfahrten nach mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_anzahl_zweitanfahrten nach mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2017_bericht_zweitanfahrten_mitarbeiter
GROUP BY mitarbeiter



GO
/****** Object:  View [dbo].[deko_2014_stammdaten_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_stammdaten_spa]
AS
SELECT     dbo.deko_2014_stammdaten.id, dbo.deko_2014_stammdaten.GP_ID, dbo.deko_2014_stammdaten.typ, dbo.deko_2014_stammdaten.name, dbo.deko_2014_stammdaten.name2, dbo.deko_2014_stammdaten.strasse, dbo.deko_2014_stammdaten.plz, 
                      dbo.deko_2014_stammdaten.ort, dbo.deko_2014_stammdaten.telefon, dbo.deko_2014_stammdaten.email, dbo.deko_2014_stammdaten.dekoration, dbo.deko_2014_stammdaten.vl, dbo.deko_2014_stammdaten.gvl, dbo.deko_2014_stammdaten.glh, 
                      dbo.deko_2014_stammdaten.mitarbeiter, dbo.deko_2014_stammdaten.freigabe_bericht_extern, dbo.deko_2014_stammdaten.freigabe_bilder_extern, dbo.deko_2014_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2014_stammdaten.freigabe_bilder_intern, dbo.deko_2014_stammdaten.neu, dbo.deko_2014_einsatzbericht_spa.datum, dbo.deko_2014_einsatzbericht_spa.anzahl_möglicher_banner, 
                      dbo.deko_2014_einsatzbericht_spa.attraktivitaet_der_fenster, 
                      dbo.deko_2014_einsatzbericht_spa.aktivitaet, dbo.deko_2014_einsatzbericht_spa.aktivitaet_bemerkung, dbo.deko_2014_einsatzbericht_spa.telefonische_ankuendigung, 
                      dbo.deko_2014_einsatzbericht_spa.zweitanfahrt, dbo.deko_2014_einsatzbericht_spa.eingang
FROM         dbo.deko_2014_stammdaten INNER JOIN
                      dbo.deko_2014_einsatzbericht_spa ON dbo.deko_2014_stammdaten.id = dbo.deko_2014_einsatzbericht_spa.stammdaten_id

GO
/****** Object:  View [dbo].[deko_2014_stammdaten_enjoy]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_stammdaten_enjoy]
AS
SELECT     dbo.deko_2014_stammdaten.id, dbo.deko_2014_stammdaten.GP_ID, dbo.deko_2014_stammdaten.typ, dbo.deko_2014_stammdaten.name, dbo.deko_2014_stammdaten.name2, dbo.deko_2014_stammdaten.strasse, dbo.deko_2014_stammdaten.plz, 
                      dbo.deko_2014_stammdaten.ort, dbo.deko_2014_stammdaten.telefon, dbo.deko_2014_stammdaten.email, dbo.deko_2014_stammdaten.dekoration, dbo.deko_2014_stammdaten.vl, dbo.deko_2014_stammdaten.gvl, dbo.deko_2014_stammdaten.glh, 
                      dbo.deko_2014_stammdaten.mitarbeiter, dbo.deko_2014_stammdaten.freigabe_bericht_extern, dbo.deko_2014_stammdaten.freigabe_bilder_extern, dbo.deko_2014_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2014_stammdaten.freigabe_bilder_intern, dbo.deko_2014_stammdaten.neu, dbo.deko_2014_einsatzbericht_enjoy.datum, dbo.deko_2014_einsatzbericht_enjoy.anzahl_möglicher_banner, 
                      dbo.deko_2014_einsatzbericht_enjoy.attraktivitaet_der_fenster, 
                      dbo.deko_2014_einsatzbericht_enjoy.aktivitaet, dbo.deko_2014_einsatzbericht_enjoy.aktivitaet_bemerkung, dbo.deko_2014_einsatzbericht_enjoy.telefonische_ankuendigung, 
                      dbo.deko_2014_einsatzbericht_enjoy.zweitanfahrt, dbo.deko_2014_einsatzbericht_enjoy.eingang
FROM         dbo.deko_2014_stammdaten INNER JOIN
                      dbo.deko_2014_einsatzbericht_enjoy ON dbo.deko_2014_stammdaten.id = dbo.deko_2014_einsatzbericht_enjoy.stammdaten_id
GO
/****** Object:  View [dbo].[deko_2014_bericht_zweitanfahrten_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_zweitanfahrten_mitarbeiter]
AS
SELECT     COUNT(id) AS anzahl,mitarbeiter
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
group by mitarbeiter
UNION
SELECT     COUNT(id) AS anzahl,mitarbeiter
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
group by mitarbeiter



GO
/****** Object:  View [dbo].[deko_2014_anzahl_zweitanfahrten nach mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_anzahl_zweitanfahrten nach mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2014_bericht_zweitanfahrten_mitarbeiter
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2014_anzahl_dekorationen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_anzahl_dekorationen]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
UNION All
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2014_anzahl_dekorationen_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_anzahl_dekorationen_pro_mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2014_anzahl_dekorationen
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2014_gesamte_outlets_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_gesamte_outlets_pro_mitarbeiter]
AS
SELECT     COUNT(id) AS Expr1, mitarbeiter
FROM         dbo.deko_2014_stammdaten
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2014_gesamte_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_gesamte_shops_nach_mitarbeiter]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.deko_2014_gesamte_outlets_pro_mitarbeiter.Expr1 AS Anzahl
FROM         dbo.deko_2014_gesamte_outlets_pro_mitarbeiter INNER JOIN
                      dbo.promotion_login ON dbo.deko_2014_gesamte_outlets_pro_mitarbeiter.mitarbeiter = dbo.promotion_login.id

GO
/****** Object:  View [dbo].[Gesamtuebersicht_Hilfe_2014]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtuebersicht_Hilfe_2014]
AS
SELECT     dbo.deko_2014_einsatzbericht_enjoy.stammdaten_id, dbo.deko_2014_einsatzbericht_enjoy.datum, 
                      dbo.deko_2014_einsatzbericht_enjoy.anzahl_möglicher_banner, dbo.deko_2014_einsatzbericht_enjoy.schaufenster_stromanschluss_vorhanden, 
                      dbo.deko_2014_einsatzbericht_enjoy.attraktivitaet_der_fenster, dbo.deko_2014_einsatzbericht_enjoy.aktivitaet, 
                      dbo.deko_2014_einsatzbericht_enjoy.aktivitaet_bemerkung, dbo.deko_2014_einsatzbericht_enjoy.bemerkung, 
                      dbo.deko_2014_einsatzbericht_enjoy.telefonische_ankuendigung, dbo.deko_2014_einsatzbericht_enjoy.eingang, 
                      dbo.deko_2014_einsatzbericht_enjoy.keine_deko_generell, dbo.deko_2014_einsatzbericht_enjoy.kuenftige_dekos, 
                      dbo.deko_2014_einsatzbericht_enjoy.winterdeko_erhalten, dbo.deko_2014_einsatzbericht_enjoy.winterdeko_genutzt, 
                      dbo.deko_2014_einsatzbericht_enjoy.bewertung_winterdeko, dbo.deko_2014_einsatzbericht_enjoy.versand_gewuenscht, 
                      dbo.deko_2014_einsatzbericht_enjoy.zweitanfahrt
FROM         dbo.deko_2014_einsatzbericht_enjoy
union all
SELECT     dbo.deko_2014_einsatzbericht_spa.stammdaten_id, dbo.deko_2014_einsatzbericht_spa.datum, 
                      dbo.deko_2014_einsatzbericht_spa.anzahl_möglicher_banner, dbo.deko_2014_einsatzbericht_spa.schaufenster_stromanschluss_vorhanden, 
                      dbo.deko_2014_einsatzbericht_spa.attraktivitaet_der_fenster, dbo.deko_2014_einsatzbericht_spa.aktivitaet, 
                      dbo.deko_2014_einsatzbericht_spa.aktivitaet_bemerkung, dbo.deko_2014_einsatzbericht_spa.bemerkung, 
                      dbo.deko_2014_einsatzbericht_spa.telefonische_ankuendigung, dbo.deko_2014_einsatzbericht_spa.eingang, 
                      dbo.deko_2014_einsatzbericht_spa.keine_deko_generell, dbo.deko_2014_einsatzbericht_spa.kuenftige_dekos, 
                      dbo.deko_2014_einsatzbericht_spa.winterdeko_erhalten, dbo.deko_2014_einsatzbericht_spa.winterdeko_genutzt, 
                      dbo.deko_2014_einsatzbericht_spa.bewertung_winterdeko, dbo.deko_2014_einsatzbericht_spa.versand_gewuenscht, 
                      dbo.deko_2014_einsatzbericht_spa.zweitanfahrt
FROM         dbo.deko_2014_einsatzbericht_spa
GO
/****** Object:  View [dbo].[Gesamtauswertung_2014]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtauswertung_2014]
AS
SELECT     dbo.deko_2014_stammdaten.GP_ID, dbo.deko_2014_stammdaten.typ, dbo.deko_2014_stammdaten.name, dbo.deko_2014_stammdaten.name2, 
                      dbo.deko_2014_stammdaten.strasse, dbo.deko_2014_stammdaten.plz, dbo.deko_2014_stammdaten.ort, dbo.deko_2014_stammdaten.dekoration, 
                      dbo.Gesamtuebersicht_Hilfe_2014.datum, dbo.promotion_login.anmeldename AS Dekorateur, 
                      dbo.deko_2014_einsatzbericht_enjoy.aufkleber_grohe_logo, dbo.deko_2014_einsatzbericht_enjoy.aufkleber_wasser, 
                      dbo.deko_2014_einsatzbericht_enjoy.banner_kubistisch, dbo.deko_2014_einsatzbericht_enjoy.banner_kind_neu, 
                      dbo.deko_2014_einsatzbericht_enjoy.banner_minta_touch, dbo.deko_2014_einsatzbericht_enjoy.mobile_icon_flower, 
                      dbo.deko_2014_einsatzbericht_enjoy.aufkleber_icon_flower, dbo.deko_2014_einsatzbericht_enjoy.wuerfel_made_in_germany, 
                      dbo.deko_2014_einsatzbericht_enjoy.aufkleber_qr_code, dbo.deko_2014_einsatzbericht_enjoy.aufsteller_5_jahre_garantie, 
                      dbo.deko_2014_einsatzbericht_enjoy.display_mit_beleuchtung, dbo.deko_2014_einsatzbericht_enjoy.display_ohne_beleuchtung, 
                      dbo.deko_2014_einsatzbericht_spa.aufkleber_f_digital, dbo.deko_2014_einsatzbericht_spa.banner_f_digital_deluxe, 
                      dbo.deko_2014_einsatzbericht_spa.banner_p_s_ncc, dbo.deko_2014_einsatzbericht_spa.wuerfel_made_in_germany AS Würfel, 
                      dbo.deko_2014_einsatzbericht_spa.hot_stones, dbo.deko_2014_einsatzbericht_spa.neue_slideshow_sd_card, 
                      dbo.deko_2014_einsatzbericht_spa.aufkleber_grohe_spa_logo, dbo.deko_2014_einsatzbericht_spa.aufkleber_qr_code AS [Aufkler QR], 
                      dbo.deko_2014_einsatzbericht_spa.banner_grandera, dbo.deko_2014_einsatzbericht_spa.aufsteller_5_jahre_garantie AS [Aufsteller 5 Jahre], 
                      dbo.deko_2014_einsatzbericht_spa.display_mit_beleuchtung AS [Display mit Beleuchtung], 
                      dbo.deko_2014_einsatzbericht_spa.display_ohne_beleuchtung AS [Display ohne Beleuchtung], dbo.deko_2014_einsatzbericht_spa.buerste, 
                      dbo.deko_2014_einsatzbericht_spa.duschgel, dbo.deko_2014_einsatzbericht_spa.handtuch, dbo.deko_2014_einsatzbericht_spa.schwamm, 
                      dbo.deko_2014_einsatzbericht_spa.dig_bilderrahmen, dbo.Gesamtuebersicht_Hilfe_2014.anzahl_möglicher_banner, 
                      dbo.Gesamtuebersicht_Hilfe_2014.schaufenster_stromanschluss_vorhanden, dbo.Gesamtuebersicht_Hilfe_2014.attraktivitaet_der_fenster, 
                      dbo.Gesamtuebersicht_Hilfe_2014.aktivitaet, dbo.Gesamtuebersicht_Hilfe_2014.aktivitaet_bemerkung, dbo.Gesamtuebersicht_Hilfe_2014.bemerkung, 
                      dbo.Gesamtuebersicht_Hilfe_2014.telefonische_ankuendigung, dbo.Gesamtuebersicht_Hilfe_2014.eingang, 
                      dbo.Gesamtuebersicht_Hilfe_2014.keine_deko_generell, dbo.Gesamtuebersicht_Hilfe_2014.kuenftige_dekos, 
                      dbo.Gesamtuebersicht_Hilfe_2014.winterdeko_erhalten, dbo.Gesamtuebersicht_Hilfe_2014.winterdeko_genutzt, 
                      dbo.Gesamtuebersicht_Hilfe_2014.bewertung_winterdeko, dbo.Gesamtuebersicht_Hilfe_2014.versand_gewuenscht, 
                      dbo.Gesamtuebersicht_Hilfe_2014.zweitanfahrt
FROM         dbo.promotion_login RIGHT OUTER JOIN
                      dbo.deko_2014_einsatzbericht_spa RIGHT OUTER JOIN
                      dbo.deko_2014_stammdaten ON dbo.deko_2014_einsatzbericht_spa.stammdaten_id = dbo.deko_2014_stammdaten.id LEFT OUTER JOIN
                      dbo.deko_2014_einsatzbericht_enjoy ON dbo.deko_2014_stammdaten.id = dbo.deko_2014_einsatzbericht_enjoy.stammdaten_id ON 
                      dbo.promotion_login.id = dbo.deko_2014_stammdaten.mitarbeiter LEFT OUTER JOIN
                      dbo.Gesamtuebersicht_Hilfe_2014 ON dbo.deko_2014_stammdaten.id = dbo.Gesamtuebersicht_Hilfe_2014.stammdaten_id
GO
/****** Object:  View [dbo].[deko_2017_standard_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_standard_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2017_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2017_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2017_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2017_stammdaten.dekoration = 'Standard Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id




GO
/****** Object:  View [dbo].[deko_2017_standard_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_standard_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2017_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2017_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2017_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2017_stammdaten.dekoration = 'Standard Deko') AND (dbo.deko_2017_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id




GO
/****** Object:  View [dbo].[deko_2017_materialansicht_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_materialansicht_standard]
AS
SELECT        dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2017_standard_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                         dbo.deko_2017_standard_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], dbo.deko_2017_material_enjoy.[Banner Sense1], 
                         dbo.deko_2017_material_enjoy.[Banner Sense2], dbo.deko_2017_material_enjoy.[Banner Sense3], dbo.deko_2017_material_enjoy.[Display Lineares], 
                         dbo.deko_2017_material_enjoy.[Dekowürfel Blue Home], dbo.deko_2017_material_enjoy.[Aufkleber Mehr unter], 
                         dbo.deko_2017_material_enjoy.[Aufkleber Logo], 
                         dbo.promotion_login.id
FROM            dbo.promotion_login INNER JOIN
                         dbo.deko_2017_material_enjoy ON dbo.promotion_login.id = dbo.deko_2017_material_enjoy.promotion_id LEFT OUTER JOIN
                         dbo.deko_2017_standard_deko_nach_dekorateur_neu ON 
                         dbo.deko_2017_material_enjoy.promotion_id = dbo.deko_2017_standard_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                         dbo.deko_2017_standard_deko_nach_dekorateur_gesamt ON 
                         dbo.deko_2017_material_enjoy.promotion_id = dbo.deko_2017_standard_deko_nach_dekorateur_gesamt.id

GO
/****** Object:  View [dbo].[stammdaten_enjoy]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[stammdaten_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stammdaten_spa]
AS
SELECT     dbo.stammdaten.id, dbo.stammdaten.GP_ID, dbo.stammdaten.typ, dbo.stammdaten.name, dbo.stammdaten.name2, dbo.stammdaten.strasse, dbo.stammdaten.plz, 
                      dbo.stammdaten.ort, dbo.stammdaten.telefon, dbo.stammdaten.email, dbo.stammdaten.dekoration, dbo.stammdaten.vl, dbo.stammdaten.gvl, dbo.stammdaten.glh, 
                      dbo.stammdaten.mitarbeiter, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, dbo.stammdaten.freigabe_bericht_intern, 
                      dbo.stammdaten.freigabe_bilder_intern, dbo.stammdaten.neu, dbo.einsatzbericht_spa.datum, dbo.einsatzbericht_spa.anzahl_banner, 
                      dbo.einsatzbericht_spa.stromanschluss_vorhanden, dbo.einsatzbericht_spa.stromanschluss_gelegt, dbo.einsatzbericht_spa.attraktivitaet, 
                      dbo.einsatzbericht_spa.aktivitaet, dbo.einsatzbericht_spa.aktivitaet_bemerkung, dbo.einsatzbericht_spa.telefonische_ankuendigung, 
                      dbo.einsatzbericht_spa.zweitanfahrt, dbo.einsatzbericht_spa.eingang
FROM         dbo.stammdaten INNER JOIN
                      dbo.einsatzbericht_spa ON dbo.stammdaten.id = dbo.einsatzbericht_spa.stammdaten_id
GO
/****** Object:  View [dbo].[stammdaten_deko]    Script Date: 06.07.2018 09:42:02 ******/
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
FROM         dbo.stammdaten_spa

GO
/****** Object:  View [dbo].[bericht_besuchte_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_besuchte_partner]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[bericht_telefonische_absage]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_telefonische_absage]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung  in ('Ablehnung bei telefonischer Anmeldung')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung  in ('Ablehnung bei telefonischer Anmeldung')   
GO
/****** Object:  View [dbo].[bericht_zweitanfahrten]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_zweitanfahrten]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and zweitanfahrt in ('ja')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and zweitanfahrt in ('ja')
GO
/****** Object:  View [dbo].[bericht_deko_durchgefuehrt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_deko_durchgefuehrt]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Deko durchgeführt')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Deko durchgeführt')

GO
/****** Object:  View [dbo].[bericht_abgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_abgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Werbemittel abgegeben')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Werbemittel abgegeben')
GO
/****** Object:  View [dbo].[bericht_keine_schaufenster]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_keine_schaufenster]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('keine Schaufenster')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('keine Schaufenster')       
GO
/****** Object:  View [dbo].[deko_nach mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_nach mitarbeiter]
AS
SELECT     aktivitaet, aktivitaet_bemerkung, mitarbeiter
FROM         dbo.stammdaten_enjoy 
union
SELECT     aktivitaet, aktivitaet_bemerkung, mitarbeiter
FROM                      dbo.stammdaten_spa
GO
/****** Object:  View [dbo].[bericht_zweitanfahrten_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_zweitanfahrten_mitarbeiter]
AS
SELECT     COUNT(id) AS anzahl,mitarbeiter
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
group by mitarbeiter
UNION
SELECT     COUNT(id) AS anzahl,mitarbeiter
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
group by mitarbeiter
GO
/****** Object:  View [dbo].[anzahl_dekorationen]    Script Date: 06.07.2018 09:42:02 ******/
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
UNION All
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[bericht_nicht_angetroffen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_nicht_angetroffen]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht angetroffen')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht angetroffen')

GO
/****** Object:  View [dbo].[bericht_betriebsferien]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_betriebsferien]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Betriebsferien')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Betriebsferien')
GO
/****** Object:  View [dbo].[bericht_umzug]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_umzug]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umzug')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umzug')
GO
/****** Object:  View [dbo].[bericht_umbau]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_umbau]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umbau')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umbau')  
GO
/****** Object:  View [dbo].[bericht_geschaeftsaufgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_geschaeftsaufgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('baldige Geschäftsaufgabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('baldige Geschäftsaufgabe')  
GO
/****** Object:  View [dbo].[bericht_nicht_existent]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_nicht_existent]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht existent')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht existent')  
GO
/****** Object:  View [dbo].[bericht_attraktivitaet]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_attraktivitaet]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet not in ('keine Angabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet not in ('keine Angabe')
     
GO
/****** Object:  View [dbo].[bericht_schaufenster_a]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_a]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet  in ('A')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet  in ('A')
GO
/****** Object:  View [dbo].[bericht_schaufenster_b]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_b]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet  in ('B')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet  in ('B')
GO
/****** Object:  View [dbo].[bericht_schaufenster_c]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_c]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet  in ('C')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet  in ('C')    
GO
/****** Object:  View [dbo].[bericht_stromanschluss]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_stromanschluss]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND stromanschluss_vorhanden  in ('ja')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND stromanschluss_vorhanden  in ('ja')    
GO
/****** Object:  View [dbo].[bericht_schaufenster_angaben]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_schaufenster_angaben]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner in (1,2,3)
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner in (1,2,3)   
GO
/****** Object:  View [dbo].[bericht_nicht_deko]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_nicht_deko]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[bericht_keine_deko_moeglich]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_keine_deko_moeglich]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoaration möglich') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoaration möglich') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[bericht_keine_deko_gewuenscht]    Script Date: 06.07.2018 09:42:02 ******/
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
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoaration gewünscht')

GO
/****** Object:  View [dbo].[bericht_anzahl_banner_1]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_anzahl_banner_1]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner=1
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner=1

GO
/****** Object:  View [dbo].[bericht_anzahl_banner_2]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_anzahl_banner_2]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner=2
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner=2
GO
/****** Object:  View [dbo].[bericht_anzahl_banner_3]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[bericht_anzahl_banner_3]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner=3
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_banner=3
GO
/****** Object:  View [dbo].[offene_shops]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[standard_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[standard_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[materialsicht_standard]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[spa_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[spa_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.dekoration = 'SPA Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id
GO
/****** Object:  View [dbo].[spa_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[spa_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.stammdaten.dekoration = 'SPA Deko') AND (dbo.stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id
GO
/****** Object:  View [dbo].[materialsicht_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[materialsicht_spa]
AS
SELECT     dbo.spa_deko_nach_dekorateur_gesamt.anmeldename, dbo.spa_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                      dbo.spa_deko_nach_dekorateur_neu.Anzahl AS Neu, dbo.material_spa.aufkleber_grohe_logo, dbo.material_spa.aufkleber_allure, dbo.material_spa.aufkleber_qr, 
                      dbo.material_spa.banner_power_and_soul, dbo.material_spa.banner_woman, dbo.material_spa.banner_grandera, dbo.material_spa.wuerfel_millieu, 
                      dbo.material_spa.wuerfel_germany, dbo.material_spa.aufsteller_garantie, dbo.material_spa.display_mit_beleuchtung, dbo.material_spa.display_ohne_beleuchtung, 
                      dbo.material_spa.schwamm, dbo.material_spa.duschgel, dbo.material_spa.bilderrahmen, dbo.spa_deko_nach_dekorateur_gesamt.id, 
                      dbo.spa_deko_nach_dekorateur_gesamt.projektleiter
FROM         dbo.spa_deko_nach_dekorateur_gesamt LEFT OUTER JOIN
                      dbo.spa_deko_nach_dekorateur_neu ON dbo.spa_deko_nach_dekorateur_gesamt.id = dbo.spa_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                      dbo.material_spa ON dbo.spa_deko_nach_dekorateur_gesamt.id = dbo.material_spa.promotion_id
GO
/****** Object:  View [dbo].[deko_2017_anzahl_dekorationen_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_anzahl_dekorationen_pro_mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2017_anzahl_dekorationen
GROUP BY mitarbeiter



GO
/****** Object:  View [dbo].[deko_2015_stammdaten_enjoy]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_stammdaten_enjoy]
AS
SELECT     dbo.deko_2015_stammdaten.id, dbo.deko_2015_stammdaten.GP_ID, dbo.deko_2015_stammdaten.typ, dbo.deko_2015_stammdaten.name, dbo.deko_2015_stammdaten.name2, dbo.deko_2015_stammdaten.strasse, dbo.deko_2015_stammdaten.plz, 
                      dbo.deko_2015_stammdaten.ort, dbo.deko_2015_stammdaten.telefon, dbo.deko_2015_stammdaten.email, dbo.deko_2015_stammdaten.dekoration, dbo.deko_2015_stammdaten.vl, dbo.deko_2015_stammdaten.gvl, dbo.deko_2015_stammdaten.glh, 
                      dbo.deko_2015_stammdaten.mitarbeiter, dbo.deko_2015_stammdaten.freigabe_bericht_extern, dbo.deko_2015_stammdaten.freigabe_bilder_extern, dbo.deko_2015_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2015_stammdaten.freigabe_bilder_intern, dbo.deko_2015_stammdaten.neu, dbo.deko_2015_einsatzbericht_enjoy.datum, dbo.deko_2015_einsatzbericht_enjoy.anzahl_möglicher_banner, 
                      dbo.deko_2015_einsatzbericht_enjoy.attraktivitaet_der_fenster, 
                      dbo.deko_2015_einsatzbericht_enjoy.aktivitaet, dbo.deko_2015_einsatzbericht_enjoy.aktivitaet_bemerkung, dbo.deko_2015_einsatzbericht_enjoy.telefonische_ankuendigung, 
                      dbo.deko_2015_einsatzbericht_enjoy.zweitanfahrt, dbo.deko_2015_einsatzbericht_enjoy.eingang
FROM         dbo.deko_2015_stammdaten INNER JOIN
                      dbo.deko_2015_einsatzbericht_enjoy ON dbo.deko_2015_stammdaten.id = dbo.deko_2015_einsatzbericht_enjoy.stammdaten_id

GO
/****** Object:  View [dbo].[deko_2015_stammdaten_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_stammdaten_spa]
AS
SELECT     dbo.deko_2015_stammdaten.id, dbo.deko_2015_stammdaten.GP_ID, dbo.deko_2015_stammdaten.typ, dbo.deko_2015_stammdaten.name, dbo.deko_2015_stammdaten.name2, dbo.deko_2015_stammdaten.strasse, dbo.deko_2015_stammdaten.plz, 
                      dbo.deko_2015_stammdaten.ort, dbo.deko_2015_stammdaten.telefon, dbo.deko_2015_stammdaten.email, dbo.deko_2015_stammdaten.dekoration, dbo.deko_2015_stammdaten.vl, dbo.deko_2015_stammdaten.gvl, dbo.deko_2015_stammdaten.glh, 
                      dbo.deko_2015_stammdaten.mitarbeiter, dbo.deko_2015_stammdaten.freigabe_bericht_extern, dbo.deko_2015_stammdaten.freigabe_bilder_extern, dbo.deko_2015_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2015_stammdaten.freigabe_bilder_intern, dbo.deko_2015_stammdaten.neu, dbo.deko_2015_einsatzbericht_spa.datum, dbo.deko_2015_einsatzbericht_spa.anzahl_möglicher_banner, 
                      dbo.deko_2015_einsatzbericht_spa.attraktivitaet_der_fenster, 
                      dbo.deko_2015_einsatzbericht_spa.aktivitaet, dbo.deko_2015_einsatzbericht_spa.aktivitaet_bemerkung, dbo.deko_2015_einsatzbericht_spa.telefonische_ankuendigung, 
                      dbo.deko_2015_einsatzbericht_spa.zweitanfahrt, dbo.deko_2015_einsatzbericht_spa.eingang
FROM         dbo.deko_2015_stammdaten INNER JOIN
                      dbo.deko_2015_einsatzbericht_spa ON dbo.deko_2015_stammdaten.id = dbo.deko_2015_einsatzbericht_spa.stammdaten_id


GO
/****** Object:  View [dbo].[deko_2015_anzahl_dekorationen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_anzahl_dekorationen]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
UNION All
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2015_bericht_zweitanfahrten_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_zweitanfahrten_mitarbeiter]
AS
SELECT     COUNT(id) AS anzahl,mitarbeiter
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
group by mitarbeiter
UNION
SELECT     COUNT(id) AS anzahl,mitarbeiter
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
group by mitarbeiter




GO
/****** Object:  View [dbo].[deko_2015_bericht_abgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_abgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Werbemittel abgegeben')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Werbemittel abgegeben')


GO
/****** Object:  View [dbo].[deko_2015_bericht_anzahl_banner_1]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_anzahl_banner_1]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=1
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=1


GO
/****** Object:  View [dbo].[deko_2015_bericht_anzahl_banner_2]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_anzahl_banner_2]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=2
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=2


GO
/****** Object:  View [dbo].[deko_2015_bericht_anzahl_banner_3]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_anzahl_banner_3]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=3
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=3


GO
/****** Object:  View [dbo].[deko_2015_bericht_zweitanfahrten]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_zweitanfahrten]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and zweitanfahrt in ('ja')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and zweitanfahrt in ('ja')


GO
/****** Object:  View [dbo].[deko_2015_bericht_schaufenster_angaben]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_schaufenster_angaben]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner in (1,2,3)
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner in (1,2,3)   


GO
/****** Object:  View [dbo].[deko_2015_bericht_schaufenster_b]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_schaufenster_b]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('B')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('B')


GO
/****** Object:  View [dbo].[deko_2015_bericht_schaufenster_c]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_schaufenster_c]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('C')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('C')    


GO
/****** Object:  View [dbo].[deko_2015_bericht_telefonische_absage]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_telefonische_absage]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung  in ('Ablehnung bei telefonischer Anmeldung')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung  in ('Ablehnung bei telefonischer Anmeldung')   

GO
/****** Object:  View [dbo].[deko_2015_bericht_umbau]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_umbau]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umbau')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umbau')  


GO
/****** Object:  View [dbo].[deko_2015_bericht_umzug]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_umzug]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umzug')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umzug')


GO
/****** Object:  View [dbo].[deko_2015_bericht_keine_deko_moeglich]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2015_bericht_keine_deko_moeglich]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[deko_2015_bericht_keine_schaufenster]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_keine_schaufenster]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('keine Schaufenster')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('keine Schaufenster')       


GO
/****** Object:  View [dbo].[deko_2015_bericht_nicht_angetroffen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_nicht_angetroffen]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht angetroffen')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht angetroffen')


GO
/****** Object:  View [dbo].[deko_2015_bericht_nicht_deko]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_nicht_deko]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[deko_2015_bericht_nicht_existent]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_nicht_existent]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht existent')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht existent')  


GO
/****** Object:  View [dbo].[deko_2015_bericht_schaufenster_a]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_schaufenster_a]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('A')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('A')


GO
/****** Object:  View [dbo].[deko_2015_bericht_attraktivitaet]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_attraktivitaet]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster not in ('keine Angabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster not in ('keine Angabe')
     

GO
/****** Object:  View [dbo].[deko_2015_bericht_besuchte_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2015_bericht_besuchte_partner]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE      (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[deko_2015_bericht_betriebsferien]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_betriebsferien]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Betriebsferien')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Betriebsferien')


GO
/****** Object:  View [dbo].[deko_2015_bericht_deko_durchgefuehrt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_deko_durchgefuehrt]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Deko durchgeführt')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Deko durchgeführt')


GO
/****** Object:  View [dbo].[deko_2015_bericht_geschaeftsaufgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_geschaeftsaufgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('baldige Geschäftsaufgabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('baldige Geschäftsaufgabe')  

GO
/****** Object:  View [dbo].[deko_2015_bericht_keine_deko_gewuenscht]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2015_bericht_keine_deko_gewuenscht]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2015_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2015_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')

GO
/****** Object:  View [dbo].[deko_2015_anzahl_dekorationen_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_anzahl_dekorationen_pro_mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2015_anzahl_dekorationen
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2017_spa_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_spa_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2017_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2017_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2017_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2017_stammdaten.dekoration = 'SPA Deko') AND (dbo.deko_2017_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id




GO
/****** Object:  View [dbo].[deko_2017_spa_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2017_spa_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2017_stammdaten.id) AS Anzahl, 
                      dbo.promotion_login.id
FROM         dbo.deko_2017_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2017_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2017_stammdaten.dekoration = 'SPA Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id



GO
/****** Object:  View [dbo].[deko_2017_materialansicht_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_materialansicht_spa]
AS
SELECT        dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2017_spa_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                         dbo.deko_2017_spa_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], dbo.deko_2017_material_spa.[Banner Aquasymphony1], 
                         dbo.deko_2017_material_spa.[Banner Aquasymphony2], dbo.deko_2017_material_spa.[Banner Aquasymphony3], dbo.deko_2017_material_spa.[Display Essence Colors], 
                         dbo.deko_2017_material_spa.[Dekowürfel Smart Control], dbo.deko_2017_material_spa.[Aufkleber Made in Ger], 
                         dbo.deko_2017_material_spa.[Aufkleber mehr unter], dbo.deko_2017_material_spa.[Aufkleber SPA Logo], 
                         dbo.promotion_login.id
FROM            dbo.promotion_login INNER JOIN
                         dbo.deko_2017_material_spa ON dbo.promotion_login.id = dbo.deko_2017_material_spa.promotion_id LEFT OUTER JOIN
                         dbo.deko_2017_spa_deko_nach_dekorateur_neu ON 
                         dbo.deko_2017_material_spa.promotion_id = dbo.deko_2017_spa_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                         dbo.deko_2017_spa_deko_nach_dekorateur_gesamt ON dbo.deko_2017_material_spa.promotion_id = dbo.deko_2017_spa_deko_nach_dekorateur_gesamt.id

GO
/****** Object:  View [dbo].[deko_2015_anzahl_zweitanfahrten nach mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_anzahl_zweitanfahrten nach mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2015_bericht_zweitanfahrten_mitarbeiter
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[Gesamtuebersicht_Hilfe_2017]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Gesamtuebersicht_Hilfe_2017]
AS
SELECT        [dbo].[deko_2017_einsatzbericht_enjoy].[stammdaten_id], [dbo].[deko_2017_einsatzbericht_enjoy].[datum], 
                         [dbo].[deko_2017_einsatzbericht_enjoy].[anzahl_möglicher_banner], [dbo].[deko_2017_einsatzbericht_enjoy].[schaufenster_stromanschluss_vorhanden], 
                         [dbo].[deko_2017_einsatzbericht_enjoy].[attraktivitaet_der_fenster], [dbo].[deko_2017_einsatzbericht_enjoy].[aktivitaet], 
                         [dbo].[deko_2017_einsatzbericht_enjoy].[aktivitaet_bemerkung], [dbo].[deko_2017_einsatzbericht_enjoy].[bemerkung], 
                         [dbo].[deko_2017_einsatzbericht_enjoy].[telefonische_ankuendigung], [dbo].[deko_2017_einsatzbericht_enjoy].[eingang], 
                         [dbo].[deko_2017_einsatzbericht_enjoy].[keine_deko_generell], [dbo].[deko_2017_einsatzbericht_enjoy].[kuenftige_dekos], 
                         [dbo].[deko_2017_einsatzbericht_enjoy].[versand_gewuenscht], 
                         [dbo].[deko_2017_einsatzbericht_enjoy].[zweitanfahrt]
FROM            [dbo].[deko_2017_einsatzbericht_enjoy]
UNION ALL
SELECT        [dbo].[deko_2017_einsatzbericht_spa].[stammdaten_id], [dbo].[deko_2017_einsatzbericht_spa].[datum], 
                         [dbo].[deko_2017_einsatzbericht_spa].[anzahl_möglicher_banner], [dbo].[deko_2017_einsatzbericht_spa].[schaufenster_stromanschluss_vorhanden], 
                         [dbo].[deko_2017_einsatzbericht_spa].[attraktivitaet_der_fenster], [dbo].[deko_2017_einsatzbericht_spa].[aktivitaet], 
                         [dbo].[deko_2017_einsatzbericht_spa].[aktivitaet_bemerkung], [dbo].[deko_2017_einsatzbericht_spa].[bemerkung], 
                         [dbo].[deko_2017_einsatzbericht_spa].[telefonische_ankuendigung], [dbo].[deko_2017_einsatzbericht_spa].[eingang], 
                         [dbo].[deko_2017_einsatzbericht_spa].[keine_deko_generell], [dbo].[deko_2017_einsatzbericht_spa].[kuenftige_dekos], 
                         [dbo].[deko_2017_einsatzbericht_spa].[versand_gewuenscht], 
                         [dbo].[deko_2017_einsatzbericht_spa].[zweitanfahrt]
FROM            [dbo].[deko_2017_einsatzbericht_spa]

GO
/****** Object:  View [dbo].[Gesamtauswertung_2017]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Gesamtauswertung_2017]
AS
SELECT        dbo.deko_2017_stammdaten.GP_ID, dbo.deko_2017_stammdaten.typ AS Typ, dbo.deko_2017_stammdaten.name AS Name, 
                         dbo.deko_2017_stammdaten.name2 AS Name2, dbo.deko_2017_stammdaten.strasse AS Strasse, dbo.deko_2017_stammdaten.plz AS PLZ, 
                         dbo.deko_2017_stammdaten.ort AS Ort, dbo.deko_2017_stammdaten.dekoration AS Dekoration, dbo.Gesamtuebersicht_Hilfe_2017.datum AS Datum, 
                         dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense1], 
                         dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense1 Note], dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense2], 
                         dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense2 Note], dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense3], 
                         dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense3 Note], dbo.deko_2017_einsatzbericht_enjoy.[Display Lineares], 
                         dbo.deko_2017_einsatzbericht_enjoy.[Display Lineares Note], dbo.deko_2017_einsatzbericht_enjoy.[Dekowürfel Blue Home], 
                         dbo.deko_2017_einsatzbericht_enjoy.[Dekowürfel Blue Home Note], dbo.deko_2017_einsatzbericht_enjoy.[Aufkleber Mehr unter], 
                         dbo.deko_2017_einsatzbericht_enjoy.[Aufkleber Mehr unter Note], dbo.deko_2017_einsatzbericht_enjoy.[Aufkleber Logo], 
                         dbo.deko_2017_einsatzbericht_enjoy.[Aufkleber Logo Note], 
                         dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony1], dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony1 Note], 
                         dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony2], dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony2 Note], 
                         dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony3], dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony3 Note], 
                         dbo.deko_2017_einsatzbericht_spa.[Display Essence Colors], dbo.deko_2017_einsatzbericht_spa.[Display Essence Colors Note], 
                         dbo.deko_2017_einsatzbericht_spa.[Dekowürfel Smart Control], dbo.deko_2017_einsatzbericht_spa.[Dekowürfel Smart Control Note], 
                         dbo.deko_2017_einsatzbericht_spa.[Aufkleber Made in Ger], dbo.deko_2017_einsatzbericht_spa.[Aufkleber Made in Ger Note], 
                         dbo.deko_2017_einsatzbericht_spa.[Aufkleber mehr unter] AS [Aufkleber mehr unter(SPA)], 
                         dbo.deko_2017_einsatzbericht_spa.[Aufkleber mehr unter] AS [Aufkleber mehr unter Note(SPA)], 
                         dbo.deko_2017_einsatzbericht_spa.[Aufkleber SPA Logo], dbo.deko_2017_einsatzbericht_spa.[Aufkleber SPA  Logo Note],                           
                         dbo.Gesamtuebersicht_Hilfe_2017.anzahl_möglicher_banner AS [Anzahl möglicher Banner], 
                         dbo.Gesamtuebersicht_Hilfe_2017.schaufenster_stromanschluss_vorhanden, dbo.Gesamtuebersicht_Hilfe_2017.attraktivitaet_der_fenster, 
                         dbo.Gesamtuebersicht_Hilfe_2017.aktivitaet, dbo.Gesamtuebersicht_Hilfe_2017.aktivitaet_bemerkung, dbo.Gesamtuebersicht_Hilfe_2017.bemerkung, 
                         dbo.Gesamtuebersicht_Hilfe_2017.telefonische_ankuendigung, dbo.Gesamtuebersicht_Hilfe_2017.eingang, dbo.Gesamtuebersicht_Hilfe_2017.keine_deko_generell, 
                         dbo.Gesamtuebersicht_Hilfe_2017.kuenftige_dekos, dbo.Gesamtuebersicht_Hilfe_2017.zweitanfahrt, dbo.Gesamtuebersicht_Hilfe_2017.versand_gewuenscht
FROM            dbo.promotion_login INNER JOIN
                         dbo.deko_2017_stammdaten ON dbo.promotion_login.id = dbo.deko_2017_stammdaten.mitarbeiter INNER JOIN
                         dbo.Gesamtuebersicht_Hilfe_2017 ON dbo.deko_2017_stammdaten.id = dbo.Gesamtuebersicht_Hilfe_2017.stammdaten_id LEFT OUTER JOIN
                         dbo.deko_2017_einsatzbericht_enjoy ON dbo.deko_2017_stammdaten.id = dbo.deko_2017_einsatzbericht_enjoy.stammdaten_id LEFT OUTER JOIN
                         dbo.deko_2017_einsatzbericht_spa ON dbo.deko_2017_stammdaten.id = dbo.deko_2017_einsatzbericht_spa.stammdaten_id

GO
/****** Object:  View [dbo].[anzahl_zweitanfahrten nach mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[anzahl_dekorationen_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[offene_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[gesamte_outlets_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[gesamte_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[deko_2015_gesamte_outlets_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_gesamte_outlets_pro_mitarbeiter]
AS
SELECT     COUNT(id) AS Expr1, mitarbeiter
FROM         dbo.deko_2015_stammdaten
GROUP BY mitarbeiter


GO
/****** Object:  View [dbo].[deko_2015_gesamte_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_gesamte_shops_nach_mitarbeiter]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.deko_2015_gesamte_outlets_pro_mitarbeiter.Expr1 AS Anzahl
FROM         dbo.deko_2015_gesamte_outlets_pro_mitarbeiter INNER JOIN
                      dbo.promotion_login ON dbo.deko_2015_gesamte_outlets_pro_mitarbeiter.mitarbeiter = dbo.promotion_login.id


GO
/****** Object:  View [dbo].[Gesamtuebersicht_hilfe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtuebersicht_hilfe]
AS
SELECT     stammdaten_id, datum, anzahl_banner, stromanschluss_vorhanden, stromanschluss_gelegt, anzahl_mehrfachsteckdosen, schaufensterhoehe, attraktivitaet, aktivitaet, 
                      aktivitaet_bemerkung, bemerkung, telefonische_ankuendigung, keine_deko_generell, kuenftige_dekos, versand_gewuenscht, zweitanfahrt
FROM         dbo.einsatzbericht_enjoy

union all

SELECT     stammdaten_id, datum, anzahl_banner, stromanschluss_vorhanden, stromanschluss_gelegt, anzahl_mehrfachsteckdosen, schaufensterhoehe, attraktivitaet, aktivitaet, 
                      aktivitaet_bemerkung, bemerkung, telefonische_ankuendigung, keine_deko_generell, kuenftige_dekos, versand_gewuenscht, zweitanfahrt
FROM         dbo.einsatzbericht_spa
GO
/****** Object:  View [dbo].[Gesamtuebersicht]    Script Date: 06.07.2018 09:42:02 ******/
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
                      dbo.einsatzbericht_spa.aufkleber_grohe_logo AS [SPA Aufkleber Grohe Logo], dbo.einsatzbericht_spa.aufkleber_allure AS [SPA Aufkleber Allure], 
                      dbo.einsatzbericht_spa.aufkleber_qr AS [SPA Aufkleber QR], dbo.einsatzbericht_spa.banner_power_and_soul AS [SPA Banner Power and Soul], 
                      dbo.einsatzbericht_spa.banner_woman AS [SPA Banner Woman], dbo.einsatzbericht_spa.banner_grandera AS [SPA Banner Grandera], 
                      dbo.einsatzbericht_spa.wuerfel_millieu AS [SPA Würfel Millieu], dbo.einsatzbericht_spa.wuerfel_germany AS [SPA Würfel Germany], 
                      dbo.einsatzbericht_spa.aufsteller_garantie AS [SPA Aufsteller Garantie], dbo.einsatzbericht_spa.display_mit_beleuchtung AS [SPA Display mit Beleuchtung], 
                      dbo.einsatzbericht_spa.display_ohne_beleuchtung AS [SPA Display ohne Beleuchtung], dbo.einsatzbericht_spa.schwamm AS [SPA Schwamm], 
                      dbo.einsatzbericht_spa.duschgel AS [SPA Duschgel], dbo.einsatzbericht_spa.bilderrahmen AS [SPA Bilderrahmen], dbo.Gesamtuebersicht_hilfe.anzahl_banner, 
                      dbo.Gesamtuebersicht_hilfe.stromanschluss_vorhanden, dbo.Gesamtuebersicht_hilfe.stromanschluss_gelegt, 
                      dbo.Gesamtuebersicht_hilfe.anzahl_mehrfachsteckdosen, dbo.Gesamtuebersicht_hilfe.schaufensterhoehe, dbo.Gesamtuebersicht_hilfe.attraktivitaet, 
                      dbo.Gesamtuebersicht_hilfe.aktivitaet, dbo.Gesamtuebersicht_hilfe.aktivitaet_bemerkung, dbo.Gesamtuebersicht_hilfe.bemerkung, 
                      dbo.Gesamtuebersicht_hilfe.telefonische_ankuendigung, dbo.Gesamtuebersicht_hilfe.keine_deko_generell, dbo.Gesamtuebersicht_hilfe.kuenftige_dekos, 
                      dbo.Gesamtuebersicht_hilfe.versand_gewuenscht, dbo.Gesamtuebersicht_hilfe.zweitanfahrt
FROM         dbo.stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN
                      dbo.Gesamtuebersicht_hilfe ON dbo.stammdaten.id = dbo.Gesamtuebersicht_hilfe.stammdaten_id LEFT OUTER JOIN
                      dbo.einsatzbericht_spa ON dbo.stammdaten.id = dbo.einsatzbericht_spa.stammdaten_id LEFT OUTER JOIN
                      dbo.einsatzbericht_enjoy ON dbo.stammdaten.id = dbo.einsatzbericht_enjoy.stammdaten_id
GO
/****** Object:  View [dbo].[deko_2015_spa_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2015_spa_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2015_stammdaten.id) AS Anzahl, 
                      dbo.promotion_login.id
FROM         dbo.deko_2015_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2015_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2015_stammdaten.dekoration = 'SPA Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id

GO
/****** Object:  View [dbo].[deko_2015_spa_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_spa_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2015_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2015_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2015_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2015_stammdaten.dekoration = 'SPA Deko') AND (dbo.deko_2015_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id


GO
/****** Object:  View [dbo].[deko_2015_materialansicht_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2015_materialansicht_spa]
AS
SELECT     dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2015_spa_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                      dbo.deko_2015_spa_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], dbo.deko_2015_material_spa.[Banner F Digital Deluxe], 
                      dbo.deko_2015_material_spa.[Banner Essence], dbo.deko_2015_material_spa.[Banner Grandera], 
                      dbo.deko_2015_material_spa.[Aufkleber F Digital Bluetooth], dbo.deko_2015_material_spa.[Deko Wuerfel Essence], 
                      dbo.deko_2015_material_spa.[Aufkleber Grohe SPA Logo], dbo.deko_2015_material_spa.[Aufkleber QR Code], 
                      dbo.deko_2015_material_spa.[Aufsteller 5 Jahre Garantie], dbo.deko_2015_material_spa.[Deko Saeule SPA Logo], 
                      dbo.deko_2015_material_spa.[Body Lotion], dbo.deko_2015_material_spa.[Handtuch 50x100], dbo.deko_2015_material_spa.[Handtuch 30x50], 
                      dbo.deko_2015_material_spa.Schwamm, dbo.deko_2015_material_spa.Duschgel, dbo.deko_2015_material_spa.[Dig Bilderrahmen], 
                      dbo.deko_2015_material_spa.[Deko Steine Hot Stones], dbo.promotion_login.id
FROM         dbo.promotion_login INNER JOIN
                      dbo.deko_2015_material_spa ON dbo.promotion_login.id = dbo.deko_2015_material_spa.promotion_id LEFT OUTER JOIN
                      dbo.deko_2015_spa_deko_nach_dekorateur_neu ON 
                      dbo.deko_2015_material_spa.promotion_id = dbo.deko_2015_spa_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                      dbo.deko_2015_spa_deko_nach_dekorateur_gesamt ON 
                      dbo.deko_2015_material_spa.promotion_id = dbo.deko_2015_spa_deko_nach_dekorateur_gesamt.id
GO
/****** Object:  View [dbo].[deko_2015_standard_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_standard_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2015_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2015_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2015_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2015_stammdaten.dekoration = 'Standard Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id


GO
/****** Object:  View [dbo].[deko_2015_standard_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_standard_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2015_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2015_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2015_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2015_stammdaten.dekoration = 'Standard Deko') AND (dbo.deko_2015_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id


GO
/****** Object:  View [dbo].[deko_2015_materialansicht_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2015_materialansicht_standard]
AS
SELECT     dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2015_standard_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                      dbo.deko_2015_standard_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], dbo.deko_2015_material_enjoy.[Banner kubistisches Design], 
                      dbo.deko_2015_material_enjoy.[Banner Livestyle], dbo.deko_2015_material_enjoy.[Banner Armaturen], 
                      dbo.deko_2015_material_enjoy.[Deko Saeule SML Standard], dbo.deko_2015_material_enjoy.Vase, dbo.deko_2015_material_enjoy.Orchideen, 
                      dbo.deko_2015_material_enjoy.Badetuch, dbo.deko_2015_material_enjoy.[Aufkleber QR Code], 
                      dbo.deko_2015_material_enjoy.[Aufsteller 5 Jahre Garantie], dbo.deko_2015_material_enjoy.[Aufkleber Wasser Splash], 
                      dbo.deko_2015_material_enjoy.[Aufkleber Logo], dbo.deko_2015_material_enjoy.[Deko Saeule Logo Standard], 
                      dbo.deko_2015_material_enjoy.[Mobile Icon Flower], dbo.promotion_login.id
FROM         dbo.promotion_login INNER JOIN
                      dbo.deko_2015_material_enjoy ON dbo.promotion_login.id = dbo.deko_2015_material_enjoy.promotion_id LEFT OUTER JOIN
                      dbo.deko_2015_standard_deko_nach_dekorateur_neu ON 
                      dbo.deko_2015_material_enjoy.promotion_id = dbo.deko_2015_standard_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                      dbo.deko_2015_standard_deko_nach_dekorateur_gesamt ON 
                      dbo.deko_2015_material_enjoy.promotion_id = dbo.deko_2015_standard_deko_nach_dekorateur_gesamt.id
GO
/****** Object:  View [dbo].[deko_2015_einsaetze]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_einsaetze]
AS
SELECT     id, stammdaten_id, datum
FROM         deko_2015_einsatzbericht_enjoy
UNION
SELECT     id, stammdaten_id, datum
FROM         deko_2015_einsatzbericht_spa



GO
/****** Object:  View [dbo].[uebersicht_deko_2015]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[uebersicht_deko_2015]
AS
SELECT     dbo.deko_2015_stammdaten.GP_ID, dbo.deko_2015_stammdaten.name, dbo.deko_2015_stammdaten.strasse, dbo.deko_2015_stammdaten.plz, dbo.deko_2015_stammdaten.ort, dbo.deko_2015_stammdaten.dekoration, 
                      dbo.deko_2015_einsaetze.datum, dbo.deko_2015_stammdaten.vl, dbo.deko_2015_stammdaten.gvl, dbo.deko_2015_stammdaten.glh, dbo.deko_2015_stammdaten.id
FROM         dbo.deko_2015_stammdaten LEFT OUTER JOIN
                      dbo.deko_2015_einsaetze ON dbo.deko_2015_stammdaten.id = dbo.deko_2015_einsaetze.stammdaten_id


GO
/****** Object:  View [dbo].[Gesamtuebersicht_Hilfe_2015]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Gesamtuebersicht_Hilfe_2015]
AS
SELECT     [dbo].[deko_2015_einsatzbericht_enjoy].[stammdaten_id], [dbo].[deko_2015_einsatzbericht_enjoy].[datum],
                      [dbo].[deko_2015_einsatzbericht_enjoy].[anzahl_möglicher_banner], [dbo].[deko_2015_einsatzbericht_enjoy].[schaufenster_stromanschluss_vorhanden],
                      [dbo].[deko_2015_einsatzbericht_enjoy].[attraktivitaet_der_fenster], [dbo].[deko_2015_einsatzbericht_enjoy].[aktivitaet], 
                      [dbo].[deko_2015_einsatzbericht_enjoy].[aktivitaet_bemerkung], [dbo].[deko_2015_einsatzbericht_enjoy].[bemerkung], 
                      [dbo].[deko_2015_einsatzbericht_enjoy].[telefonische_ankuendigung], [dbo].[deko_2015_einsatzbericht_enjoy].[eingang], 
                      [dbo].[deko_2015_einsatzbericht_enjoy].[keine_deko_generell], [dbo].[deko_2015_einsatzbericht_enjoy].[kuenftige_dekos], 
                      [dbo].[deko_2015_einsatzbericht_enjoy].[winterdeko_erhalten], [dbo].[deko_2015_einsatzbericht_enjoy].[winterdeko_genutzt], 
                      [dbo].[deko_2015_einsatzbericht_enjoy].[bewertung_winterdeko], [dbo].[deko_2015_einsatzbericht_enjoy].[versand_gewuenscht], 
                      [dbo].[deko_2015_einsatzbericht_enjoy].[zweitanfahrt]
FROM         [dbo].[deko_2015_einsatzbericht_enjoy]
union all
SELECT     [dbo].[deko_2015_einsatzbericht_spa].[stammdaten_id], [dbo].[deko_2015_einsatzbericht_spa].[datum],
                      [dbo].[deko_2015_einsatzbericht_spa].[anzahl_möglicher_banner], [dbo].[deko_2015_einsatzbericht_spa].[schaufenster_stromanschluss_vorhanden], 
                      [dbo].[deko_2015_einsatzbericht_spa].[attraktivitaet_der_fenster], [dbo].[deko_2015_einsatzbericht_spa].[aktivitaet], 
                      [dbo].[deko_2015_einsatzbericht_spa].[aktivitaet_bemerkung], [dbo].[deko_2015_einsatzbericht_spa].[bemerkung], 
                      [dbo].[deko_2015_einsatzbericht_spa].[telefonische_ankuendigung], [dbo].[deko_2015_einsatzbericht_spa].[eingang], 
                      [dbo].[deko_2015_einsatzbericht_spa].[keine_deko_generell], [dbo].[deko_2015_einsatzbericht_spa].[kuenftige_dekos], 
                      [dbo].[deko_2015_einsatzbericht_spa].[winterdeko_erhalten], [dbo].[deko_2015_einsatzbericht_spa].[winterdeko_genutzt], 
                      [dbo].[deko_2015_einsatzbericht_spa].[bewertung_winterdeko], [dbo].[deko_2015_einsatzbericht_spa].[versand_gewuenscht], 
                      [dbo].[deko_2015_einsatzbericht_spa].[zweitanfahrt]
FROM         [dbo].[deko_2015_einsatzbericht_spa]

GO
/****** Object:  View [dbo].[Gesamtauswertung_2015]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtauswertung_2015]
AS
SELECT     dbo.deko_2015_stammdaten.GP_ID, dbo.deko_2015_stammdaten.typ, dbo.deko_2015_stammdaten.name, dbo.deko_2015_stammdaten.name2, 
                      dbo.deko_2015_stammdaten.strasse, dbo.deko_2015_stammdaten.plz, dbo.deko_2015_stammdaten.ort, dbo.deko_2015_stammdaten.dekoration, 
                      dbo.Gesamtuebersicht_Hilfe_2015.datum, dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2015_einsatzbericht_enjoy.[Banner kubistisches Design], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Banner kubistisches Design Note], dbo.deko_2015_einsatzbericht_enjoy.[Banner Livestyle], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Banner Livestyle Note], dbo.deko_2015_einsatzbericht_enjoy.[Banner Armaturen], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Banner Armaturen Note], dbo.deko_2015_einsatzbericht_enjoy.[Deko Saeule SML Standard], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Deko Saeule SML Standard Note], dbo.deko_2015_einsatzbericht_enjoy.Vase, 
                      dbo.deko_2015_einsatzbericht_enjoy.[Vase Note], dbo.deko_2015_einsatzbericht_enjoy.Orchideen, dbo.deko_2015_einsatzbericht_enjoy.[Orchideen Note], 
                      dbo.deko_2015_einsatzbericht_enjoy.Badetuch, dbo.deko_2015_einsatzbericht_enjoy.[Badetuch Note], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber QR Code] AS [Aufkleber QR Code Enjoy], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber QR Code Note] AS [Aufkleber QR Code Enjoy Note], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Aufsteller 5 Jahre Garantie] AS [Aufsteller 5 Jahre Garantie Enjoy], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Aufsteller 5 Jahre Garantie Note] AS [Aufsteller 5 Jahre Garantie Enjoy Note], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber Wasser Splash], dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber Wasser Splash Note], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber Logo], dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber Logo Note], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Deko Saeule Logo Standard], dbo.deko_2015_einsatzbericht_enjoy.[Deko Saeule Logo Standard Note], 
                      dbo.deko_2015_einsatzbericht_enjoy.[Mobile Icon Flower], dbo.deko_2015_einsatzbericht_enjoy.[Mobile Icon Flower Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Banner F Digital Deluxe], dbo.deko_2015_einsatzbericht_spa.[Banner F Digital  Deluxe Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Banner Essence], dbo.deko_2015_einsatzbericht_spa.[Banner Essence Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Banner Grandera], dbo.deko_2015_einsatzbericht_spa.[Banner Grandera Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Aufkleber F Digital Bluetooth], dbo.deko_2015_einsatzbericht_spa.[Aufkleber F Digital Bluetooth Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Deko Wuerfel Essence], dbo.deko_2015_einsatzbericht_spa.[Deko Wuerfel Essence Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Aufkleber Grohe SPA Logo], dbo.deko_2015_einsatzbericht_spa.[Aufkleber Grohe SPA  Logo Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Aufkleber QR Code] AS [Aufkleber QR Code SPA], 
                      dbo.deko_2015_einsatzbericht_spa.[Aufkleber QR Code Note] AS [Aufkleber QR Code SPA Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Aufsteller 5 Jahre Garantie] AS [Aufsteller 5 Jahre Garantie SPA], 
                      dbo.deko_2015_einsatzbericht_spa.[Aufsteller 5 Jahre Garantie Note] AS [Aufsteller 5 Jahre Garantie SPA Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Deko Saeule SPA Logo], dbo.deko_2015_einsatzbericht_spa.[Deko Saeule SPA Logo Note], 
                      dbo.deko_2015_einsatzbericht_spa.[Body Lotion], dbo.deko_2015_einsatzbericht_spa.[Body Lotion Note], dbo.deko_2015_einsatzbericht_spa.[Handtuch 50x100], 
                      dbo.deko_2015_einsatzbericht_spa.[Handtuch 50x100 Note], dbo.deko_2015_einsatzbericht_spa.[Handtuch 30x50], 
                      dbo.deko_2015_einsatzbericht_spa.[Handtuch 30x50 Note], dbo.deko_2015_einsatzbericht_spa.Schwamm, dbo.deko_2015_einsatzbericht_spa.[Schwamm Note], 
                      dbo.deko_2015_einsatzbericht_spa.Duschgel, dbo.deko_2015_einsatzbericht_spa.[Duschgel Note], dbo.deko_2015_einsatzbericht_spa.[Dig Bilderrahmen], 
                      dbo.deko_2015_einsatzbericht_spa.[Dig Bilderrahmen Note], dbo.deko_2015_einsatzbericht_spa.[Deko Steine Hot Stones], 
                      dbo.deko_2015_einsatzbericht_spa.[Deko Steine Hot Stones Note], dbo.Gesamtuebersicht_Hilfe_2015.anzahl_möglicher_banner, 
                      dbo.Gesamtuebersicht_Hilfe_2015.schaufenster_stromanschluss_vorhanden AS [Schaufenster Stromanschluss vorhanden], 
                      dbo.Gesamtuebersicht_Hilfe_2015.attraktivitaet_der_fenster AS [Attraktivitaet der Fenster], dbo.Gesamtuebersicht_Hilfe_2015.aktivitaet, 
                      dbo.Gesamtuebersicht_Hilfe_2015.aktivitaet_bemerkung AS [Aktivitaet Bemerkung], dbo.Gesamtuebersicht_Hilfe_2015.bemerkung, 
                      dbo.Gesamtuebersicht_Hilfe_2015.telefonische_ankuendigung AS [Telefonische Ankuendigung], dbo.Gesamtuebersicht_Hilfe_2015.eingang, 
                      dbo.Gesamtuebersicht_Hilfe_2015.keine_deko_generell AS [Keine Deko generell], dbo.Gesamtuebersicht_Hilfe_2015.kuenftige_dekos AS [Kuenftige Dekos], 
                      dbo.Gesamtuebersicht_Hilfe_2015.winterdeko_erhalten AS [Winterdeko erhalten], dbo.Gesamtuebersicht_Hilfe_2015.winterdeko_genutzt AS [Winterdeko genutzt], 
                      dbo.Gesamtuebersicht_Hilfe_2015.bewertung_winterdeko AS [Bewertung Winterdeko], 
                      dbo.Gesamtuebersicht_Hilfe_2015.versand_gewuenscht AS [Versand gewünscht], dbo.Gesamtuebersicht_Hilfe_2015.zweitanfahrt
FROM         dbo.deko_2015_einsatzbericht_enjoy RIGHT OUTER JOIN
                      dbo.promotion_login INNER JOIN
                      dbo.deko_2015_stammdaten ON dbo.promotion_login.id = dbo.deko_2015_stammdaten.mitarbeiter LEFT OUTER JOIN
                      dbo.deko_2015_einsatzbericht_spa ON dbo.deko_2015_stammdaten.id = dbo.deko_2015_einsatzbericht_spa.stammdaten_id ON 
                      dbo.deko_2015_einsatzbericht_enjoy.stammdaten_id = dbo.deko_2015_stammdaten.id LEFT OUTER JOIN
                      dbo.Gesamtuebersicht_Hilfe_2015 ON dbo.deko_2015_stammdaten.id = dbo.Gesamtuebersicht_Hilfe_2015.stammdaten_id
GO
/****** Object:  View [dbo].[deko_2014_einsaetze]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_einsaetze]
AS
SELECT     id, stammdaten_id, datum
FROM         deko_2014_einsatzbericht_enjoy
UNION
SELECT     id, stammdaten_id, datum
FROM         deko_2014_einsatzbericht_spa


GO
/****** Object:  View [dbo].[uebersicht_deko_2014]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[uebersicht_deko_2014]
AS
SELECT     dbo.deko_2014_stammdaten.GP_ID, dbo.deko_2014_stammdaten.name, dbo.deko_2014_stammdaten.strasse, dbo.deko_2014_stammdaten.plz, dbo.deko_2014_stammdaten.ort, dbo.deko_2014_stammdaten.dekoration, 
                      dbo.deko_2014_einsaetze.datum, dbo.deko_2014_stammdaten.vl, dbo.deko_2014_stammdaten.gvl, dbo.deko_2014_stammdaten.glh, dbo.deko_2014_stammdaten.id
FROM         dbo.deko_2014_stammdaten LEFT OUTER JOIN
                      dbo.deko_2014_einsaetze ON dbo.deko_2014_stammdaten.id = dbo.deko_2014_einsaetze.stammdaten_id

GO
/****** Object:  View [dbo].[deko_2017_gesamte_outlets_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_gesamte_outlets_pro_mitarbeiter]
AS
SELECT     COUNT(id) AS Expr1, mitarbeiter
FROM         dbo.deko_2017_stammdaten
GROUP BY mitarbeiter




GO
/****** Object:  View [dbo].[deko_2017_gesamte_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_gesamte_shops_nach_mitarbeiter]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.deko_2017_gesamte_outlets_pro_mitarbeiter.Expr1 AS Anzahl
FROM         dbo.deko_2017_gesamte_outlets_pro_mitarbeiter INNER JOIN
                      dbo.promotion_login ON dbo.deko_2017_gesamte_outlets_pro_mitarbeiter.mitarbeiter = dbo.promotion_login.id




GO
/****** Object:  View [dbo].[deko_2016_stammdaten_enjoy]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_stammdaten_enjoy]
AS
SELECT     dbo.deko_2016_stammdaten.id, dbo.deko_2016_stammdaten.GP_ID, dbo.deko_2016_stammdaten.typ, dbo.deko_2016_stammdaten.name, dbo.deko_2016_stammdaten.name2, dbo.deko_2016_stammdaten.strasse, dbo.deko_2016_stammdaten.plz, 
                      dbo.deko_2016_stammdaten.ort, dbo.deko_2016_stammdaten.telefon, dbo.deko_2016_stammdaten.email, dbo.deko_2016_stammdaten.dekoration, dbo.deko_2016_stammdaten.vl, dbo.deko_2016_stammdaten.gvl, dbo.deko_2016_stammdaten.glh, 
                      dbo.deko_2016_stammdaten.mitarbeiter, dbo.deko_2016_stammdaten.freigabe_bericht_extern, dbo.deko_2016_stammdaten.freigabe_bilder_extern, dbo.deko_2016_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2016_stammdaten.freigabe_bilder_intern, dbo.deko_2016_stammdaten.neu, dbo.deko_2016_einsatzbericht_enjoy.datum, dbo.deko_2016_einsatzbericht_enjoy.anzahl_möglicher_banner, 
                      dbo.deko_2016_einsatzbericht_enjoy.attraktivitaet_der_fenster, 
                      dbo.deko_2016_einsatzbericht_enjoy.aktivitaet, dbo.deko_2016_einsatzbericht_enjoy.aktivitaet_bemerkung, dbo.deko_2016_einsatzbericht_enjoy.telefonische_ankuendigung, 
                      dbo.deko_2016_einsatzbericht_enjoy.zweitanfahrt, dbo.deko_2016_einsatzbericht_enjoy.eingang
FROM         dbo.deko_2016_stammdaten INNER JOIN
                      dbo.deko_2016_einsatzbericht_enjoy ON dbo.deko_2016_stammdaten.id = dbo.deko_2016_einsatzbericht_enjoy.stammdaten_id


GO
/****** Object:  View [dbo].[deko_2016_stammdaten_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_stammdaten_spa]
AS
SELECT     dbo.deko_2016_stammdaten.id, dbo.deko_2016_stammdaten.GP_ID, dbo.deko_2016_stammdaten.typ, dbo.deko_2016_stammdaten.name, dbo.deko_2016_stammdaten.name2, dbo.deko_2016_stammdaten.strasse, dbo.deko_2016_stammdaten.plz, 
                      dbo.deko_2016_stammdaten.ort, dbo.deko_2016_stammdaten.telefon, dbo.deko_2016_stammdaten.email, dbo.deko_2016_stammdaten.dekoration, dbo.deko_2016_stammdaten.vl, dbo.deko_2016_stammdaten.gvl, dbo.deko_2016_stammdaten.glh, 
                      dbo.deko_2016_stammdaten.mitarbeiter, dbo.deko_2016_stammdaten.freigabe_bericht_extern, dbo.deko_2016_stammdaten.freigabe_bilder_extern, dbo.deko_2016_stammdaten.freigabe_bericht_intern, 
                      dbo.deko_2016_stammdaten.freigabe_bilder_intern, dbo.deko_2016_stammdaten.neu, dbo.deko_2016_einsatzbericht_spa.datum, dbo.deko_2016_einsatzbericht_spa.anzahl_möglicher_banner, 
                      dbo.deko_2016_einsatzbericht_spa.attraktivitaet_der_fenster, 
                      dbo.deko_2016_einsatzbericht_spa.aktivitaet, dbo.deko_2016_einsatzbericht_spa.aktivitaet_bemerkung, dbo.deko_2016_einsatzbericht_spa.telefonische_ankuendigung, 
                      dbo.deko_2016_einsatzbericht_spa.zweitanfahrt, dbo.deko_2016_einsatzbericht_spa.eingang
FROM         dbo.deko_2016_stammdaten INNER JOIN
                      dbo.deko_2016_einsatzbericht_spa ON dbo.deko_2016_stammdaten.id = dbo.deko_2016_einsatzbericht_spa.stammdaten_id



GO
/****** Object:  View [dbo].[deko_2016_bericht_schaufenster_b]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_schaufenster_b]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('B')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('B')
GO
/****** Object:  View [dbo].[deko_2016_bericht_schaufenster_angaben]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_schaufenster_angaben]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner IN (1, 2, 3)
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner IN (1, 2, 3)
GO
/****** Object:  View [dbo].[deko_2016_bericht_schaufenster_a]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_schaufenster_a]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('A')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('A')
GO
/****** Object:  View [dbo].[deko_2016_bericht_nicht_existent]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_bericht_nicht_existent]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2016_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht existent')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2016_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht existent')  



GO
/****** Object:  View [dbo].[deko_2016_bericht_nicht_deko]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_nicht_deko]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[deko_2016_bericht_nicht_angetroffen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_nicht_angetroffen]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht angetroffen')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('nicht angetroffen')
GO
/****** Object:  View [dbo].[deko_2016_bericht_schaufenster_c]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_schaufenster_c]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('C')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster IN ('C')
GO
/****** Object:  View [dbo].[deko_2016_bericht_umzug]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_bericht_umzug]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2016_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umzug')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2016_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umzug')



GO
/****** Object:  View [dbo].[deko_2016_anzahl_dekorationen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_anzahl_dekorationen]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2016_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter
UNION All
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2016_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GROUP BY mitarbeiter


GO
/****** Object:  View [dbo].[deko_2016_bericht_zweitanfahrten_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_zweitanfahrten_mitarbeiter]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GROUP BY mitarbeiter
UNION
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2016_bericht_zweitanfahrten]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_zweitanfahrten]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND zweitanfahrt IN ('ja')
GO
/****** Object:  View [dbo].[deko_2016_bericht_umbau]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_umbau]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umbau')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Umbau')
GO
/****** Object:  View [dbo].[deko_2016_bericht_telefonische_absage]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_telefonische_absage]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[deko_2016_bericht_besuchte_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2016_bericht_besuchte_partner]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2016_stammdaten_enjoy
WHERE      (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2016_stammdaten_spa
WHERE     (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[deko_2016_bericht_attraktivitaet]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_attraktivitaet]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster NOT IN ('keine Angabe')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster NOT IN ('keine Angabe')
GO
/****** Object:  View [dbo].[deko_2016_bericht_anzahl_banner_3]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_anzahl_banner_3]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 3
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 3
GO
/****** Object:  View [dbo].[deko_2016_bericht_anzahl_banner_2]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_anzahl_banner_2]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 2
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 2
GO
/****** Object:  View [dbo].[deko_2016_bericht_anzahl_banner_1]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_anzahl_banner_1]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 1
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner = 1
GO
/****** Object:  View [dbo].[deko_2016_bericht_abgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_abgabe]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Werbemittel abgegeben')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE         (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Werbemittel abgegeben')
GO
/****** Object:  View [dbo].[deko_2016_bericht_keine_schaufenster]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_keine_schaufenster]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('keine Schaufenster')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('keine Schaufenster')
GO
/****** Object:  View [dbo].[deko_2016_bericht_keine_deko_moeglich]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_keine_deko_moeglich]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                         aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[deko_2016_bericht_keine_deko_gewuenscht]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_keine_deko_gewuenscht]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')
GO
/****** Object:  View [dbo].[deko_2016_bericht_geschaeftsaufgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_geschaeftsaufgabe]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('baldige Geschäftsaufgabe')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE       (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('baldige Geschäftsaufgabe')
GO
/****** Object:  View [dbo].[deko_2016_bericht_deko_durchgefuehrt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_deko_durchgefuehrt]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('Deko durchgeführt')
GO
/****** Object:  View [dbo].[deko_2016_bericht_betriebsferien]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_bericht_betriebsferien]
AS
SELECT        COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM            dbo.deko_2016_stammdaten_enjoy
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Betriebsferien')
UNION
SELECT        COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM            dbo.deko_2016_stammdaten_spa
WHERE        (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung IN ('Betriebsferien')
GO
/****** Object:  View [dbo].[deko_2016_anzahl_dekorationen_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_anzahl_dekorationen_pro_mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2016_anzahl_dekorationen
GROUP BY mitarbeiter


GO
/****** Object:  View [dbo].[deko_2016_einsaetze]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_einsaetze]
AS
SELECT        id, stammdaten_id, datum
FROM            deko_2016_einsatzbericht_enjoy
UNION
SELECT        id, stammdaten_id, datum
FROM            deko_2016_einsatzbericht_spa
GO
/****** Object:  View [dbo].[uebersicht_deko_2016]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[uebersicht_deko_2016]
AS
SELECT        dbo.deko_2016_stammdaten.GP_ID, dbo.deko_2016_stammdaten.name, dbo.deko_2016_stammdaten.strasse, dbo.deko_2016_stammdaten.plz, 
                         dbo.deko_2016_stammdaten.ort, dbo.deko_2016_stammdaten.dekoration, dbo.deko_2016_einsaetze.datum, dbo.deko_2016_stammdaten.vl, 
                         dbo.deko_2016_stammdaten.gvl, dbo.deko_2016_stammdaten.glh, dbo.deko_2016_stammdaten.id, dbo.deko_2016_stammdaten.mitarbeiter
FROM            dbo.deko_2016_stammdaten LEFT OUTER JOIN
                         dbo.deko_2016_einsaetze ON dbo.deko_2016_stammdaten.id = dbo.deko_2016_einsaetze.stammdaten_id
GO
/****** Object:  View [dbo].[deko_2014_spa_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2014_spa_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2014_stammdaten.id) AS Anzahl, 
                      dbo.promotion_login.id
FROM         dbo.deko_2014_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2014_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2014_stammdaten.dekoration = 'SPA Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id
GO
/****** Object:  View [dbo].[deko_2014_spa_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_spa_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2014_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2014_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2014_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2014_stammdaten.dekoration = 'SPA Deko') AND (dbo.deko_2014_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id

GO
/****** Object:  View [dbo].[deko_2014_materialansicht_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2014_materialansicht_spa]
AS
SELECT     dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2014_spa_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                      dbo.deko_2014_spa_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], dbo.deko_2014_material_spa.aufkleber_f_digital AS [Aufkleber Digital], 
                      dbo.deko_2014_material_spa.banner_f_digital_deluxe AS [Banner Digital Deluxe], dbo.deko_2014_material_spa.banner_p_s_ncc AS [Banner NCC], 
                      dbo.deko_2014_material_spa.wuerfel_made_in_germany AS [Würfel Deko], dbo.deko_2014_material_spa.hot_stones AS [Hot Stones], 
                      dbo.deko_2014_material_spa.neue_slideshow_sd_card AS [SD-Card], dbo.deko_2014_material_spa.aufkleber_grohe_spa_logo AS [Aufkleber Spa], 
                      dbo.deko_2014_material_spa.aufkleber_qr_code AS [Aufkleber QR], dbo.deko_2014_material_spa.banner_grandera AS [Banner Grandera], 
                      dbo.deko_2014_material_spa.aufsteller_5_jahre_garantie AS [Aufsteller Garantie], 
                      dbo.deko_2014_material_spa.display_mit_beleuchtung AS [Display mit Beleuchtung], 
                      dbo.deko_2014_material_spa.display_ohne_beleuchtung AS [Display ohne Beleuchtung], dbo.deko_2014_material_spa.buerste AS Bürste, 
                      dbo.deko_2014_material_spa.duschgel, dbo.deko_2014_material_spa.handtuch, dbo.deko_2014_material_spa.schwamm, 
                      dbo.deko_2014_material_spa.dig_bilderrahmen AS [Digitaler Bilderrahmen], dbo.promotion_login.id
FROM         dbo.promotion_login INNER JOIN
                      dbo.deko_2014_material_spa ON dbo.promotion_login.id = dbo.deko_2014_material_spa.promotion_id LEFT OUTER JOIN
                      dbo.deko_2014_spa_deko_nach_dekorateur_neu ON 
                      dbo.deko_2014_material_spa.promotion_id = dbo.deko_2014_spa_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                      dbo.deko_2014_spa_deko_nach_dekorateur_gesamt ON 
                      dbo.deko_2014_material_spa.promotion_id = dbo.deko_2014_spa_deko_nach_dekorateur_gesamt.id
GO
/****** Object:  View [dbo].[deko_2014_standard_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_standard_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2014_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2014_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2014_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2014_stammdaten.dekoration = 'Standard Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id

GO
/****** Object:  View [dbo].[deko_2014_standard_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_standard_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2014_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2014_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2014_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2014_stammdaten.dekoration = 'Standard Deko') AND (dbo.deko_2014_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id

GO
/****** Object:  View [dbo].[deko_2014_materialansicht_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2014_materialansicht_standard]
AS
SELECT     dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2014_standard_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                      dbo.deko_2014_standard_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], 
                      dbo.deko_2014_material_enjoy.aufkleber_grohe_logo AS [Aufkleber Grohe], dbo.deko_2014_material_enjoy.aufkleber_wasser AS [Aufkleber Wasser], 
                      dbo.deko_2014_material_enjoy.banner_kubistisch AS [Banner Kubistisch], dbo.deko_2014_material_enjoy.banner_kind_neu AS [Banner Kind], 
                      dbo.deko_2014_material_enjoy.banner_minta_touch AS [Banner Minta], dbo.deko_2014_material_enjoy.mobile_icon_flower AS [Mobile Flower], 
                      dbo.deko_2014_material_enjoy.aufkleber_icon_flower AS [Aufkleber Flower], 
                      dbo.deko_2014_material_enjoy.wuerfel_made_in_germany AS [Würfel Deko], dbo.deko_2014_material_enjoy.aufkleber_qr_code AS [Aufkleber QR], 
                      dbo.deko_2014_material_enjoy.aufsteller_5_jahre_garantie AS [Aufsteller Garantie], 
                      dbo.deko_2014_material_enjoy.display_mit_beleuchtung AS [Display mit Beleuchtung], 
                      dbo.deko_2014_material_enjoy.display_ohne_beleuchtung AS [Display ohne Beleuchtung], dbo.promotion_login.id
FROM         dbo.promotion_login INNER JOIN
                      dbo.deko_2014_material_enjoy ON dbo.promotion_login.id = dbo.deko_2014_material_enjoy.promotion_id LEFT OUTER JOIN
                      dbo.deko_2014_standard_deko_nach_dekorateur_neu ON 
                      dbo.deko_2014_material_enjoy.promotion_id = dbo.deko_2014_standard_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                      dbo.deko_2014_standard_deko_nach_dekorateur_gesamt ON 
                      dbo.deko_2014_material_enjoy.promotion_id = dbo.deko_2014_standard_deko_nach_dekorateur_gesamt.id
GO
/****** Object:  View [dbo].[Gesamtuebersicht_Hilfe_2016]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtuebersicht_Hilfe_2016]
AS
SELECT        [dbo].[deko_2016_einsatzbericht_enjoy].[stammdaten_id], [dbo].[deko_2016_einsatzbericht_enjoy].[datum], 
                         [dbo].[deko_2016_einsatzbericht_enjoy].[anzahl_möglicher_banner], [dbo].[deko_2016_einsatzbericht_enjoy].[schaufenster_stromanschluss_vorhanden], 
                         [dbo].[deko_2016_einsatzbericht_enjoy].[attraktivitaet_der_fenster], [dbo].[deko_2016_einsatzbericht_enjoy].[aktivitaet], 
                         [dbo].[deko_2016_einsatzbericht_enjoy].[aktivitaet_bemerkung], [dbo].[deko_2016_einsatzbericht_enjoy].[bemerkung], 
                         [dbo].[deko_2016_einsatzbericht_enjoy].[telefonische_ankuendigung], [dbo].[deko_2016_einsatzbericht_enjoy].[eingang], 
                         [dbo].[deko_2016_einsatzbericht_enjoy].[keine_deko_generell], [dbo].[deko_2016_einsatzbericht_enjoy].[kuenftige_dekos], 
                         [dbo].[deko_2016_einsatzbericht_enjoy].[versand_gewuenscht], 
                         [dbo].[deko_2016_einsatzbericht_enjoy].[zweitanfahrt]
FROM            [dbo].[deko_2016_einsatzbericht_enjoy]
UNION ALL
SELECT        [dbo].[deko_2016_einsatzbericht_spa].[stammdaten_id], [dbo].[deko_2016_einsatzbericht_spa].[datum], 
                         [dbo].[deko_2016_einsatzbericht_spa].[anzahl_möglicher_banner], [dbo].[deko_2016_einsatzbericht_spa].[schaufenster_stromanschluss_vorhanden], 
                         [dbo].[deko_2016_einsatzbericht_spa].[attraktivitaet_der_fenster], [dbo].[deko_2016_einsatzbericht_spa].[aktivitaet], 
                         [dbo].[deko_2016_einsatzbericht_spa].[aktivitaet_bemerkung], [dbo].[deko_2016_einsatzbericht_spa].[bemerkung], 
                         [dbo].[deko_2016_einsatzbericht_spa].[telefonische_ankuendigung], [dbo].[deko_2016_einsatzbericht_spa].[eingang], 
                         [dbo].[deko_2016_einsatzbericht_spa].[keine_deko_generell], [dbo].[deko_2016_einsatzbericht_spa].[kuenftige_dekos], 
                         [dbo].[deko_2016_einsatzbericht_spa].[versand_gewuenscht], 
                         [dbo].[deko_2016_einsatzbericht_spa].[zweitanfahrt]
FROM            [dbo].[deko_2016_einsatzbericht_spa]
GO
/****** Object:  View [dbo].[Gesamtauswertung_2016]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtauswertung_2016]
AS
SELECT        dbo.deko_2016_stammdaten.GP_ID, dbo.deko_2016_stammdaten.typ AS Typ, dbo.deko_2016_stammdaten.name AS Name, 
                         dbo.deko_2016_stammdaten.name2 AS Name2, dbo.deko_2016_stammdaten.strasse AS Strasse, dbo.deko_2016_stammdaten.plz AS PLZ, 
                         dbo.deko_2016_stammdaten.ort AS Ort, dbo.deko_2016_stammdaten.dekoration AS Dekoration, dbo.Gesamtuebersicht_Hilfe_2016.datum AS Datum, 
                         dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2016_einsatzbericht_enjoy.[Banner Eurostyle], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Banner Eurostyle Note], dbo.deko_2016_einsatzbericht_enjoy.[Banner Livestyle], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Banner Livestyle Note], dbo.deko_2016_einsatzbericht_enjoy.[Banner Essence], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Banner Essence Note], dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber Aquatunes], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber Aquatunes Note], dbo.deko_2016_einsatzbericht_enjoy.[Dekosäule Aquatunes], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Dekosäule Aquatunes Note], dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Nachhaltigkeit], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Nachhaltigkeit Note], dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Made in Germany], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Made in Germany Note], dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Essence], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Essence Note], dbo.deko_2016_einsatzbericht_enjoy.[Dekosäule Logo Standard], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Dekosäule Logo Standard Note], dbo.deko_2016_einsatzbericht_enjoy.[Aufsteller 5 Jahre Garantie], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Aufsteller 5 Jahre Garantie Note], dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber QR Code], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber QR Code Note], dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber Logo], 
                         dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber Logo Note], dbo.deko_2016_einsatzbericht_enjoy.Badetuch, dbo.deko_2016_einsatzbericht_enjoy.[Badetuch Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Banner Rainshower SmartControl], dbo.deko_2016_einsatzbericht_spa.[Banner Rainshower SmartControl Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Banner SPA-Welt], dbo.deko_2016_einsatzbericht_spa.[Banner SPA-Welt Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Banner Grandera], dbo.deko_2016_einsatzbericht_spa.[Banner Grandera Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Banner Sensia Arena], dbo.deko_2016_einsatzbericht_spa.[Banner Sensia Arena Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Dekosäule Rainshower Smart], dbo.deko_2016_einsatzbericht_spa.[Dekosäule Rainshower Smart Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Dekowürfel Arena Set 3 Stk.], dbo.deko_2016_einsatzbericht_spa.[Dekowürfel Arena Set 3 Stk.Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Dekowürfel Nachhaltigkeit] AS [Dekowürfel Nachhaltigkeit(SPA)], 
                         dbo.deko_2016_einsatzbericht_spa.[Dekowürfel Nachhaltigkeit Note] AS [Dekowürfel Nachhaltigkeit Note(SPA)], 
                         dbo.deko_2016_einsatzbericht_spa.[Mobilee SPA-Welt], dbo.deko_2016_einsatzbericht_spa.[Mobilee SPA-Welt Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Dekokörbchen (Set klein/groß)], dbo.deko_2016_einsatzbericht_spa.[Dekobörbchen (Set klein/groß) Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Handtuch 50x100], dbo.deko_2016_einsatzbericht_spa.[Handtuch 50x100 Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Handtuch 30x50], dbo.deko_2016_einsatzbericht_spa.[Handtuch 30x50 Note], dbo.deko_2016_einsatzbericht_spa.Bürste, 
                         dbo.deko_2016_einsatzbericht_spa.[Bürste Note], dbo.deko_2016_einsatzbericht_spa.Seife, dbo.deko_2016_einsatzbericht_spa.[Seife Note], 
                         dbo.deko_2016_einsatzbericht_spa.Raumspray, dbo.deko_2016_einsatzbericht_spa.[Raumspray Note], dbo.deko_2016_einsatzbericht_spa.[Dig Bilderrahmen], 
                         dbo.deko_2016_einsatzbericht_spa.[Dig Bilderrahmen Note], dbo.deko_2016_einsatzbericht_spa.[Aufkleber QR Code] AS [Aufkleber QR Code(SPA)], 
                         dbo.deko_2016_einsatzbericht_spa.[Aufkleber QR Code Note] AS [Aufkleber QR Code Note(SPA)], dbo.deko_2016_einsatzbericht_spa.[Aufkleber Grohe SPA Logo], 
                         dbo.deko_2016_einsatzbericht_spa.[Aufkleber Grohe SPA  Logo Note], 
                         dbo.deko_2016_einsatzbericht_spa.[Aufsteller 5 Jahre Garantie] AS [Aufsteller 5 Jahre Garantie(SPA)], 
                         dbo.deko_2016_einsatzbericht_spa.[Aufsteller 5 Jahre Garantie Note] AS [Aufsteller 5 Jahre Garantie Note(SPA)], 
                         dbo.Gesamtuebersicht_Hilfe_2016.anzahl_möglicher_banner AS [Anzahl möglicher Banner], 
                         dbo.Gesamtuebersicht_Hilfe_2016.schaufenster_stromanschluss_vorhanden, dbo.Gesamtuebersicht_Hilfe_2016.attraktivitaet_der_fenster, 
                         dbo.Gesamtuebersicht_Hilfe_2016.aktivitaet, dbo.Gesamtuebersicht_Hilfe_2016.aktivitaet_bemerkung, dbo.Gesamtuebersicht_Hilfe_2016.bemerkung, 
                         dbo.Gesamtuebersicht_Hilfe_2016.telefonische_ankuendigung, dbo.Gesamtuebersicht_Hilfe_2016.eingang, dbo.Gesamtuebersicht_Hilfe_2016.keine_deko_generell, 
                         dbo.Gesamtuebersicht_Hilfe_2016.kuenftige_dekos, dbo.Gesamtuebersicht_Hilfe_2016.zweitanfahrt, dbo.Gesamtuebersicht_Hilfe_2016.versand_gewuenscht
FROM            dbo.promotion_login INNER JOIN
                         dbo.deko_2016_stammdaten ON dbo.promotion_login.id = dbo.deko_2016_stammdaten.mitarbeiter INNER JOIN
                         dbo.Gesamtuebersicht_Hilfe_2016 ON dbo.deko_2016_stammdaten.id = dbo.Gesamtuebersicht_Hilfe_2016.stammdaten_id LEFT OUTER JOIN
                         dbo.deko_2016_einsatzbericht_enjoy ON dbo.deko_2016_stammdaten.id = dbo.deko_2016_einsatzbericht_enjoy.stammdaten_id LEFT OUTER JOIN
                         dbo.deko_2016_einsatzbericht_spa ON dbo.deko_2016_stammdaten.id = dbo.deko_2016_einsatzbericht_spa.stammdaten_id
GO
/****** Object:  View [dbo].[deko_2016_standard_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_standard_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2016_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2016_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2016_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2016_stammdaten.dekoration = 'Standard Deko') AND (dbo.deko_2016_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id



GO
/****** Object:  View [dbo].[deko_2016_standard_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_standard_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2016_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2016_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2016_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2016_stammdaten.dekoration = 'Standard Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id



GO
/****** Object:  View [dbo].[deko_2016_materialansicht_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_materialansicht_standard]
AS
SELECT        dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2016_standard_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                         dbo.deko_2016_standard_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], dbo.deko_2016_material_enjoy.[Banner Eurostyle], 
                         dbo.deko_2016_material_enjoy.[Banner Livestyle], dbo.deko_2016_material_enjoy.[Banner Essence], dbo.deko_2016_material_enjoy.[Aufkleber Aquatunes], 
                         dbo.deko_2016_material_enjoy.[Dekosäule Aquatunes], dbo.deko_2016_material_enjoy.[Dekowürfel Nachhaltigkeit], 
                         dbo.deko_2016_material_enjoy.[Dekowürfel Made in Germany], dbo.deko_2016_material_enjoy.[Dekowürfel Essence], 
                         dbo.deko_2016_material_enjoy.[Dekosäule Logo Standard], dbo.deko_2016_material_enjoy.[Aufsteller 5 Jahre Garantie], 
                         dbo.deko_2016_material_enjoy.[Aufkleber QR Code], dbo.deko_2016_material_enjoy.[Aufkleber Logo], dbo.deko_2016_material_enjoy.Badetuch, 
                         dbo.promotion_login.id
FROM            dbo.promotion_login INNER JOIN
                         dbo.deko_2016_material_enjoy ON dbo.promotion_login.id = dbo.deko_2016_material_enjoy.promotion_id LEFT OUTER JOIN
                         dbo.deko_2016_standard_deko_nach_dekorateur_neu ON 
                         dbo.deko_2016_material_enjoy.promotion_id = dbo.deko_2016_standard_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                         dbo.deko_2016_standard_deko_nach_dekorateur_gesamt ON 
                         dbo.deko_2016_material_enjoy.promotion_id = dbo.deko_2016_standard_deko_nach_dekorateur_gesamt.id
GO
/****** Object:  View [dbo].[deko_2016_spa_deko_nach_dekorateur_neu]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_spa_deko_nach_dekorateur_neu]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2016_stammdaten.id) AS Anzahl, dbo.promotion_login.id
FROM         dbo.deko_2016_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2016_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2016_stammdaten.dekoration = 'SPA Deko') AND (dbo.deko_2016_stammdaten.neu = 'neu')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id



GO
/****** Object:  View [dbo].[deko_2016_spa_deko_nach_dekorateur_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2016_spa_deko_nach_dekorateur_gesamt]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, COUNT(dbo.deko_2016_stammdaten.id) AS Anzahl, 
                      dbo.promotion_login.id
FROM         dbo.deko_2016_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2016_stammdaten.mitarbeiter = dbo.promotion_login.id
WHERE     (dbo.deko_2016_stammdaten.dekoration = 'SPA Deko')
GROUP BY dbo.promotion_login.anmeldename, dbo.promotion_login.projektleiter, dbo.promotion_login.id


GO
/****** Object:  View [dbo].[deko_2016_materialansicht_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_materialansicht_spa]
AS
SELECT        dbo.promotion_login.anmeldename AS Dekorateur, dbo.deko_2016_spa_deko_nach_dekorateur_gesamt.Anzahl AS Gesamt, 
                         dbo.deko_2016_spa_deko_nach_dekorateur_neu.Anzahl AS [Neue Shops], dbo.deko_2016_material_spa.[Banner Rainshower SmartControl], 
                         dbo.deko_2016_material_spa.[Banner SPA-Welt], dbo.deko_2016_material_spa.[Banner Grandera], dbo.deko_2016_material_spa.[Banner Sensia Arena], 
                         dbo.deko_2016_material_spa.[Dekosäule Rainshower Smart], dbo.deko_2016_material_spa.[Dekowürfel Arena Set 3 Stk.], 
                         dbo.deko_2016_material_spa.[Dekowürfel Nachhaltigkeit], dbo.deko_2016_material_spa.[Mobilee SPA-Welt], 
                         dbo.deko_2016_material_spa.[Dekokörbchen (Set klein/groß)], dbo.deko_2016_material_spa.[Handtuch 50x100], dbo.deko_2016_material_spa.[Handtuch 30x50], 
                         dbo.deko_2016_material_spa.Bürste, dbo.deko_2016_material_spa.Seife, dbo.deko_2016_material_spa.Raumspray, 
                         dbo.deko_2016_material_spa.[Dig Bilderrahmen], dbo.deko_2016_material_spa.[Aufkleber QR Code], dbo.deko_2016_material_spa.[Aufkleber Grohe SPA Logo], 
                         dbo.deko_2016_material_spa.[Aufsteller 5 Jahre Garantie], dbo.promotion_login.id
FROM            dbo.promotion_login INNER JOIN
                         dbo.deko_2016_material_spa ON dbo.promotion_login.id = dbo.deko_2016_material_spa.promotion_id LEFT OUTER JOIN
                         dbo.deko_2016_spa_deko_nach_dekorateur_neu ON 
                         dbo.deko_2016_material_spa.promotion_id = dbo.deko_2016_spa_deko_nach_dekorateur_neu.id LEFT OUTER JOIN
                         dbo.deko_2016_spa_deko_nach_dekorateur_gesamt ON dbo.deko_2016_material_spa.promotion_id = dbo.deko_2016_spa_deko_nach_dekorateur_gesamt.id
GO
/****** Object:  View [dbo].[deko_2016_gesamte_outlets_pro_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_gesamte_outlets_pro_mitarbeiter]
AS
SELECT     COUNT(id) AS Expr1, mitarbeiter
FROM         dbo.deko_2016_stammdaten
GROUP BY mitarbeiter



GO
/****** Object:  View [dbo].[deko_2016_gesamte_shops_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_gesamte_shops_nach_mitarbeiter]
AS
SELECT     dbo.promotion_login.anmeldename, dbo.deko_2016_gesamte_outlets_pro_mitarbeiter.Expr1 AS Anzahl
FROM         dbo.deko_2016_gesamte_outlets_pro_mitarbeiter INNER JOIN
                      dbo.promotion_login ON dbo.deko_2016_gesamte_outlets_pro_mitarbeiter.mitarbeiter = dbo.promotion_login.id



GO
/****** Object:  View [dbo].[deko_2014_bericht_anzahl_banner_2]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_anzahl_banner_2]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=2
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=2

GO
/****** Object:  View [dbo].[deko_2014_bericht_anzahl_banner_3]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_anzahl_banner_3]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=3
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=3

GO
/****** Object:  View [dbo].[deko_2014_bericht_attraktivitaet]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_attraktivitaet]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster not in ('keine Angabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster not in ('keine Angabe')
     
GO
/****** Object:  View [dbo].[deko_2014_bericht_besuchte_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_besuchte_partner]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')

GO
/****** Object:  View [dbo].[deko_2014_bericht_betriebsferien]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_betriebsferien]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Betriebsferien')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Betriebsferien')

GO
/****** Object:  View [dbo].[deko_2014_bericht_deko_durchgefuehrt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_deko_durchgefuehrt]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Deko durchgeführt')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Deko durchgeführt')

GO
/****** Object:  View [dbo].[deko_2014_bericht_abgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_abgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Werbemittel abgegeben')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet in ('Werbemittel abgegeben')

GO
/****** Object:  View [dbo].[deko_2014_bericht_anzahl_banner_1]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_anzahl_banner_1]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=1
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner=1

GO
/****** Object:  View [dbo].[deko_2014_bericht_umbau]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_umbau]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umbau')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umbau')  

GO
/****** Object:  View [dbo].[deko_2014_bericht_umzug]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_umzug]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('Umzug')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('Umzug')

GO
/****** Object:  View [dbo].[deko_2014_bericht_zweitanfahrten]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_zweitanfahrten]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and zweitanfahrt in ('ja')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and zweitanfahrt in ('ja')

GO
/****** Object:  View [dbo].[deko_2014_bericht_nicht_existent]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_nicht_existent]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht existent')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht existent')  

GO
/****** Object:  View [dbo].[deko_2014_bericht_schaufenster_a]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_schaufenster_a]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('A')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('A')

GO
/****** Object:  View [dbo].[deko_2014_bericht_schaufenster_angaben]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_schaufenster_angaben]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner in (1,2,3)
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND anzahl_möglicher_banner in (1,2,3)   

GO
/****** Object:  View [dbo].[deko_2014_bericht_schaufenster_b]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_schaufenster_b]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('B')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('B')

GO
/****** Object:  View [dbo].[deko_2014_bericht_schaufenster_c]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_schaufenster_c]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('C')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND attraktivitaet_der_fenster  in ('C')    

GO
/****** Object:  View [dbo].[deko_2014_bericht_telefonische_absage]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_telefonische_absage]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung  in ('Ablehnung bei telefonischer Anmeldung')
union
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') and aktivitaet_bemerkung  in ('Ablehnung bei telefonischer Anmeldung')   
GO
/****** Object:  View [dbo].[deko_2014_bericht_geschaeftsaufgabe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_geschaeftsaufgabe]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('baldige Geschäftsaufgabe')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('baldige Geschäftsaufgabe')  
GO
/****** Object:  View [dbo].[deko_2014_bericht_keine_deko_gewuenscht]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2014_bericht_keine_deko_gewuenscht]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration gewünscht')
GO
/****** Object:  View [dbo].[deko_2014_bericht_keine_deko_moeglich]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2014_bericht_keine_deko_moeglich]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet IN ('keine Dekoration möglich') AND 
                      aktivitaet_bemerkung NOT IN ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[deko_2014_bericht_keine_schaufenster]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_keine_schaufenster]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('keine Schaufenster')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('keine Schaufenster')       

GO
/****** Object:  View [dbo].[deko_2014_bericht_nicht_angetroffen]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_nicht_angetroffen]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet_bemerkung in ('nicht angetroffen')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND  aktivitaet_bemerkung in ('nicht angetroffen')

GO
/****** Object:  View [dbo].[deko_2014_bericht_nicht_deko]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_nicht_deko]
AS
SELECT     COUNT(id) AS anzahl, 'Standard Deko' AS deko
FROM         dbo.deko_2014_stammdaten_enjoy
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
UNION
SELECT     COUNT(id) AS anzahl, 'SPA Deko' AS deko
FROM         dbo.deko_2014_stammdaten_spa
WHERE     (freigabe_bilder_intern = 'Ja') AND (freigabe_bericht_intern = 'Ja') AND aktivitaet NOT IN ('Deko durchgeführt') and aktivitaet_bemerkung not in ('Ablehnung bei telefonischer Anmeldung')
GO
/****** Object:  View [dbo].[deko_2016_anzahl_zweitanfahrten nach mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_anzahl_zweitanfahrten nach mitarbeiter]
AS
SELECT     SUM(anzahl) AS menge, mitarbeiter
FROM         dbo.deko_2016_bericht_zweitanfahrten_mitarbeiter
GROUP BY mitarbeiter


GO
/****** Object:  View [dbo].[anzahl_besuche_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[anzahl_spa]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[anzahl_standard]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[ausgabe_spa_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ausgabe_spa_nach_mitarbeiter]
AS
SELECT     dbo.stammdaten.mitarbeiter, SUM(dbo.einsatzbericht_spa.aufkleber_grohe_logo) AS Logo, SUM(dbo.einsatzbericht_spa.aufkleber_allure) AS Allure, 
                      SUM(dbo.einsatzbericht_spa.aufkleber_qr) AS QR, SUM(dbo.einsatzbericht_spa.banner_power_and_soul) AS [Power&Soul], 
                      SUM(dbo.einsatzbericht_spa.banner_woman) AS Woman, SUM(dbo.einsatzbericht_spa.banner_grandera) AS Grandera, SUM(dbo.einsatzbericht_spa.wuerfel_millieu) 
                      AS Millieu, SUM(dbo.einsatzbericht_spa.wuerfel_germany) AS Germany, SUM(dbo.einsatzbericht_spa.aufsteller_garantie) AS Garantie, 
                      SUM(dbo.einsatzbericht_spa.display_mit_beleuchtung) AS displa_mit_beleuchtung, SUM(dbo.einsatzbericht_spa.display_ohne_beleuchtung) 
                      AS display_ohne_beleuchtung, SUM(dbo.einsatzbericht_spa.schwamm) AS Schwamm, SUM(dbo.einsatzbericht_spa.duschgel) AS Duschgel, 
                      SUM(dbo.einsatzbericht_spa.bilderrahmen) AS Bilderrahmen
FROM         dbo.stammdaten LEFT OUTER JOIN
                      dbo.einsatzbericht_spa ON dbo.stammdaten.id = dbo.einsatzbericht_spa.stammdaten_id
GROUP BY dbo.stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[ausgabe_standard_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[bericht_gemeldete_partner]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[deko_2014_anzahl_besuche_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_anzahl_besuche_gesamt]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2014_stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2014_anzahl_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_anzahl_spa]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2014_stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja') AND (dekoration = 'SPA Deko')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2014_anzahl_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_anzahl_standard]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2014_stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja') AND (dekoration = 'Standard Deko')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2014_ausgabe_spa_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2014_ausgabe_spa_nach_mitarbeiter]
AS
SELECT     SUM(dbo.deko_2014_einsatzbericht_spa.aufkleber_f_digital) AS [Aufkleber Digital], SUM(dbo.deko_2014_einsatzbericht_spa.banner_f_digital_deluxe) 
                      AS [Banner Digital Deluxe], SUM(dbo.deko_2014_einsatzbericht_spa.banner_p_s_ncc) AS [Banner NCC], 
                      SUM(dbo.deko_2014_einsatzbericht_spa.wuerfel_made_in_germany) AS [Wuerfel Germany], SUM(dbo.deko_2014_einsatzbericht_spa.hot_stones) AS [Hot Stones], 
                      SUM(dbo.deko_2014_einsatzbericht_spa.neue_slideshow_sd_card) AS [SD Card], SUM(dbo.deko_2014_einsatzbericht_spa.aufkleber_grohe_spa_logo) 
                      AS [Aufkleber Spa], SUM(dbo.deko_2014_einsatzbericht_spa.aufkleber_qr_code) AS [Aufkleber QR], SUM(dbo.deko_2014_einsatzbericht_spa.banner_grandera) 
                      AS [Banner Grandera], SUM(dbo.deko_2014_einsatzbericht_spa.aufsteller_5_jahre_garantie) AS [Aufsteller Garantie], 
                      SUM(dbo.deko_2014_einsatzbericht_spa.display_mit_beleuchtung) AS [Display mit Beleuchtung], 
                      SUM(dbo.deko_2014_einsatzbericht_spa.display_ohne_beleuchtung) AS [Display ohne Beleuchtung], SUM(dbo.deko_2014_einsatzbericht_spa.buerste) AS Buerste, 
                      SUM(dbo.deko_2014_einsatzbericht_spa.duschgel) AS Duschgel, SUM(dbo.deko_2014_einsatzbericht_spa.handtuch) AS Handtuch, 
                      SUM(dbo.deko_2014_einsatzbericht_spa.schwamm) AS Schwamm, SUM(dbo.deko_2014_einsatzbericht_spa.dig_bilderrahmen) AS [Digitaler Bilderrahmen], 
                      dbo.deko_2014_stammdaten.mitarbeiter
FROM         dbo.deko_2014_einsatzbericht_spa INNER JOIN
                      dbo.deko_2014_stammdaten ON dbo.deko_2014_einsatzbericht_spa.stammdaten_id = dbo.deko_2014_stammdaten.id
GROUP BY dbo.deko_2014_stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[deko_2014_ausgabe_standard_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2014_ausgabe_standard_nach_mitarbeiter]
AS
SELECT     SUM(dbo.deko_2014_einsatzbericht_enjoy.aufkleber_grohe_logo) AS [Aufkleber Logo], SUM(dbo.deko_2014_einsatzbericht_enjoy.aufkleber_wasser) 
                      AS [Aufkleber Wasser], SUM(dbo.deko_2014_einsatzbericht_enjoy.banner_kubistisch) AS [Banner Kubistisch], 
                      SUM(dbo.deko_2014_einsatzbericht_enjoy.banner_kind_neu) AS [Banner Kind], SUM(dbo.deko_2014_einsatzbericht_enjoy.banner_minta_touch) AS [Banner Minta], 
                      SUM(dbo.deko_2014_einsatzbericht_enjoy.mobile_icon_flower) AS [Mobil Flower], SUM(dbo.deko_2014_einsatzbericht_enjoy.aufkleber_icon_flower) 
                      AS [Aufkleber Flower], SUM(dbo.deko_2014_einsatzbericht_enjoy.wuerfel_made_in_germany) AS [Würfel Germany], 
                      SUM(dbo.deko_2014_einsatzbericht_enjoy.aufkleber_qr_code) AS [Aufkleber QR], SUM(dbo.deko_2014_einsatzbericht_enjoy.aufsteller_5_jahre_garantie) 
                      AS [Aufsteller Garantie], SUM(dbo.deko_2014_einsatzbericht_enjoy.display_mit_beleuchtung) AS [Display mit Beleuchtung], 
                      SUM(dbo.deko_2014_einsatzbericht_enjoy.display_ohne_beleuchtung) AS [Display ohne Beleuchtung], dbo.deko_2014_stammdaten.mitarbeiter
FROM         dbo.deko_2014_einsatzbericht_enjoy INNER JOIN
                      dbo.deko_2014_stammdaten ON dbo.deko_2014_einsatzbericht_enjoy.stammdaten_id = dbo.deko_2014_stammdaten.id
GROUP BY dbo.deko_2014_stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[deko_2014_bericht_gemeldete_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2014_bericht_gemeldete_partner]
AS
SELECT     COUNT(id) AS anzahl, dekoration
FROM         dbo.deko_2014_stammdaten
GROUP BY dekoration

GO
/****** Object:  View [dbo].[deko_2015_anzahl_besuche_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_anzahl_besuche_gesamt]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2015_stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja')
GROUP BY mitarbeiter


GO
/****** Object:  View [dbo].[deko_2015_anzahl_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_anzahl_spa]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2015_stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja') AND (dekoration = 'SPA Deko')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2015_anzahl_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_anzahl_standard]
AS
SELECT     COUNT(id) AS anzahl, mitarbeiter
FROM         dbo.deko_2015_stammdaten
WHERE     (freigabe_bericht_intern = 'Ja') AND (freigabe_bilder_intern = 'Ja') AND (dekoration = 'Standard Deko')
GROUP BY mitarbeiter


GO
/****** Object:  View [dbo].[deko_2015_ausgabe_spa_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2015_ausgabe_spa_nach_mitarbeiter]
AS
SELECT     SUM(dbo.deko_2015_einsatzbericht_spa.[Banner F Digital Deluxe]) AS [Banner F Digital Deluxe], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Banner Essence]) AS [Banner Essence], SUM(dbo.deko_2015_einsatzbericht_spa.[Banner Grandera]) 
                      AS [Banner Grandera], SUM(dbo.deko_2015_einsatzbericht_spa.[Aufkleber F Digital Bluetooth]) AS [Aufkleber F Digital Bluetooth], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Deko Wuerfel Essence]) AS [Deko Wuerfel Essence], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Aufkleber Grohe SPA Logo]) AS [Aufkleber Grohe SPA Logo], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Aufkleber QR Code]) AS [Aufkleber QR Code], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Aufsteller 5 Jahre Garantie]) AS [Aufsteller 5 Jahre Garantie], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Deko Saeule SPA Logo]) AS [Deko Saeule SPA Logo], SUM(dbo.deko_2015_einsatzbericht_spa.[Body Lotion]) 
                      AS [Body Lotion], SUM(dbo.deko_2015_einsatzbericht_spa.[Handtuch 50x100]) AS [Handtuch 50x100], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Handtuch 30x50]) AS [Handtuch 30x50], SUM(dbo.deko_2015_einsatzbericht_spa.Schwamm) AS Schwamm, 
                      SUM(dbo.deko_2015_einsatzbericht_spa.Duschgel) AS Duschgel, SUM(dbo.deko_2015_einsatzbericht_spa.[Dig Bilderrahmen]) AS [Dig Bilderrahmen], 
                      SUM(dbo.deko_2015_einsatzbericht_spa.[Deko Steine Hot Stones]) AS [Deko Steine Hot Stones], dbo.deko_2015_stammdaten.mitarbeiter
FROM         dbo.deko_2015_einsatzbericht_spa INNER JOIN
                      dbo.deko_2015_stammdaten ON dbo.deko_2015_einsatzbericht_spa.stammdaten_id = dbo.deko_2015_stammdaten.id
GROUP BY dbo.deko_2015_stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[deko_2015_ausgabe_standard_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2015_ausgabe_standard_nach_mitarbeiter]
AS
SELECT     SUM(dbo.deko_2015_einsatzbericht_enjoy.[Banner kubistisches Design]) AS [Banner kubistisches Design], 
                      SUM(dbo.deko_2015_einsatzbericht_enjoy.[Banner Livestyle]) AS [Banner Livestyle], SUM(dbo.deko_2015_einsatzbericht_enjoy.[Banner Armaturen]) 
                      AS [Banner Armaturen], SUM(dbo.deko_2015_einsatzbericht_enjoy.[Deko Saeule SML Standard]) AS [Deko Saeule SML Standard], 
                      SUM(dbo.deko_2015_einsatzbericht_enjoy.Vase) AS Vase, SUM(dbo.deko_2015_einsatzbericht_enjoy.Orchideen) AS Orchideen, 
                      SUM(dbo.deko_2015_einsatzbericht_enjoy.Badetuch) AS Badetuch, SUM(dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber QR Code]) 
                      AS [Aufkleber QR Code], SUM(dbo.deko_2015_einsatzbericht_enjoy.[Aufsteller 5 Jahre Garantie]) AS [Aufsteller 5 Jahre Garantie], 
                      SUM(dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber Wasser Splash]) AS [Aufkleber Wasser Splash], 
                      SUM(dbo.deko_2015_einsatzbericht_enjoy.[Aufkleber Logo]) AS [Aufkleber Logo], 
                      SUM(dbo.deko_2015_einsatzbericht_enjoy.[Deko Saeule Logo Standard]) AS [Deko Saeule Logo Standard], 
                      SUM(dbo.deko_2015_einsatzbericht_enjoy.[Mobile Icon Flower]) AS [Mobile Icon Flower], dbo.deko_2015_stammdaten.mitarbeiter
FROM         dbo.deko_2015_einsatzbericht_enjoy INNER JOIN
                      dbo.deko_2015_stammdaten ON dbo.deko_2015_einsatzbericht_enjoy.stammdaten_id = dbo.deko_2015_stammdaten.id
GROUP BY dbo.deko_2015_stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[deko_2015_bericht_gemeldete_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[deko_2015_bericht_gemeldete_partner]
AS
SELECT     COUNT(id) AS anzahl, dekoration
FROM         dbo.deko_2015_stammdaten
GROUP BY dekoration


GO
/****** Object:  View [dbo].[deko_2016_anzahl_besuche_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_anzahl_besuche_gesamt]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2016_stammdaten
WHERE        (freigabe_bericht_intern = 'Ja')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2016_anzahl_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_anzahl_spa]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2016_stammdaten
WHERE        (freigabe_bericht_intern = 'Ja') AND (dekoration = 'SPA Deko')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2016_anzahl_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_anzahl_standard]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2016_stammdaten
WHERE        (freigabe_bericht_intern = 'Ja') AND (dekoration = 'Standard Deko')
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[deko_2016_ausgabe_spa_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_ausgabe_spa_nach_mitarbeiter]
AS
SELECT        SUM(dbo.deko_2016_einsatzbericht_spa.[Banner Rainshower SmartControl]) AS [Banner Rainshower SmartControl], 
                         SUM(dbo.deko_2016_einsatzbericht_spa.[Banner SPA-Welt]) AS [Banner SPA-Welt], SUM(dbo.deko_2016_einsatzbericht_spa.[Banner Grandera]) 
                         AS [Banner Grandera], SUM(dbo.deko_2016_einsatzbericht_spa.[Banner Sensia Arena]) AS [Banner Sensia Arena], 
                         SUM(dbo.deko_2016_einsatzbericht_spa.[Dekosäule Rainshower Smart]) AS [Dekosäule Rainshower Smart], 
                         SUM(dbo.deko_2016_einsatzbericht_spa.[Dekowürfel Arena Set 3 Stk.]) AS [Dekowürfel Arena Set 3 Stk.], 
                         SUM(dbo.deko_2016_einsatzbericht_spa.[Dekowürfel Nachhaltigkeit]) AS [Dekowürfel Nachhaltigkeit], SUM(dbo.deko_2016_einsatzbericht_spa.[Mobilee SPA-Welt]) 
                         AS [Mobilee SPA-Welt], SUM(dbo.deko_2016_einsatzbericht_spa.[Dekokörbchen (Set klein/groß)]) AS [Dekokörbchen (Set klein/groß)], 
                         SUM(dbo.deko_2016_einsatzbericht_spa.[Handtuch 50x100]) AS [Handtuch 50x100], SUM(dbo.deko_2016_einsatzbericht_spa.[Handtuch 30x50]) 
                         AS [Handtuch 30x50], SUM(dbo.deko_2016_einsatzbericht_spa.Bürste) AS Bürste, SUM(dbo.deko_2016_einsatzbericht_spa.Seife) AS Seife, 
                         SUM(dbo.deko_2016_einsatzbericht_spa.Raumspray) AS Raumspray, SUM(dbo.deko_2016_einsatzbericht_spa.[Dig Bilderrahmen]) AS [Dig Bilderrahmen]]], 
                         SUM(dbo.deko_2016_einsatzbericht_spa.[Aufkleber QR Code]) AS [Aufkleber QR Code], SUM(dbo.deko_2016_einsatzbericht_spa.[Aufkleber Grohe SPA Logo]) 
                         AS [Aufkleber Grohe SPA Logo], SUM(dbo.deko_2016_einsatzbericht_spa.[Aufsteller 5 Jahre Garantie]) AS [Aufsteller 5 Jahre Garantie], 
                         dbo.deko_2016_stammdaten.mitarbeiter
FROM            dbo.deko_2016_einsatzbericht_spa INNER JOIN
                         dbo.deko_2016_stammdaten ON dbo.deko_2016_einsatzbericht_spa.stammdaten_id = dbo.deko_2016_stammdaten.id
GROUP BY dbo.deko_2016_stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[deko_2016_ausgabe_standard_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[deko_2016_ausgabe_standard_nach_mitarbeiter]
AS
SELECT        SUM(dbo.deko_2016_einsatzbericht_enjoy.[Banner Eurostyle]) AS [Banner Eurostyle], SUM(dbo.deko_2016_einsatzbericht_enjoy.[Banner Livestyle]) 
                         AS [Banner Livestyle], SUM(dbo.deko_2016_einsatzbericht_enjoy.[Banner Essence]) AS [Banner Essence], 
                         SUM(dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber Aquatunes]) AS [Aufkleber Aquatunes], SUM(dbo.deko_2016_einsatzbericht_enjoy.[Dekosäule Aquatunes]) 
                         AS [Dekosäule Aquatunes], SUM(dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Nachhaltigkeit]) AS [Dekowürfel Nachhaltigkeit], 
                         SUM(dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Made in Germany]) AS [Dekowürfel Made in Germany], 
                         SUM(dbo.deko_2016_einsatzbericht_enjoy.[Dekowürfel Essence]) AS [Dekowürfel Essence], SUM(dbo.deko_2016_einsatzbericht_enjoy.[Dekosäule Logo Standard]) 
                         AS [Dekosäule Logo Standard], SUM(dbo.deko_2016_einsatzbericht_enjoy.[Aufsteller 5 Jahre Garantie]) AS [Aufsteller 5 Jahre Garantie], 
                         SUM(dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber QR Code]) AS [Aufkleber QR Code], SUM(dbo.deko_2016_einsatzbericht_enjoy.[Aufkleber Logo]) 
                         AS [Aufkleber Logo], SUM(dbo.deko_2016_einsatzbericht_enjoy.Badetuch) AS Badetuch, dbo.deko_2016_stammdaten.mitarbeiter
FROM            dbo.deko_2016_einsatzbericht_enjoy INNER JOIN
                         dbo.deko_2016_stammdaten ON dbo.deko_2016_einsatzbericht_enjoy.stammdaten_id = dbo.deko_2016_stammdaten.id
GROUP BY dbo.deko_2016_stammdaten.mitarbeiter
GO
/****** Object:  View [dbo].[deko_2016_bericht_gemeldete_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[deko_2016_bericht_gemeldete_partner]
AS
SELECT     COUNT(id) AS anzahl, dekoration
FROM         dbo.deko_2016_stammdaten
GROUP BY dekoration



GO
/****** Object:  View [dbo].[deko_2017_anzahl_besuche_gesamt]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_anzahl_besuche_gesamt]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2017_stammdaten
WHERE        (freigabe_bericht_intern = 'Ja')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2017_anzahl_spa]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_anzahl_spa]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2017_stammdaten
WHERE        (freigabe_bericht_intern = 'Ja') AND (dekoration = 'SPA Deko')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2017_anzahl_standard]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_anzahl_standard]
AS
SELECT        COUNT(id) AS anzahl, mitarbeiter
FROM            dbo.deko_2017_stammdaten
WHERE        (freigabe_bericht_intern = 'Ja') AND (dekoration = 'Standard Deko')
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[deko_2017_ausgabe_spa_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_ausgabe_spa_nach_mitarbeiter]
AS
SELECT        SUM(dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony1]) AS [Banner Aquasymphony1], 
                          SUM(dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony2]) 
                         AS [Banner Aquasymphony2], SUM(dbo.deko_2017_einsatzbericht_spa.[Banner Aquasymphony3]) AS [Banner Aquasymphony3], 
                         SUM(dbo.deko_2017_einsatzbericht_spa.[Display Essence Colors]) AS [Display Essence Colors], 
                         SUM(dbo.deko_2017_einsatzbericht_spa.[Dekowürfel Smart Control]) AS [Dekowürfel Smart Control], 
                         SUM(dbo.deko_2017_einsatzbericht_spa.[Aufkleber Made in Ger]) AS [Aufkleber Made in Ger], SUM(dbo.deko_2017_einsatzbericht_spa.[Aufkleber mehr unter]) 
                         AS [Aufkleber mehr unter], SUM(dbo.deko_2017_einsatzbericht_spa.[Aufkleber SPA Logo]) AS [Aufkleber SPA Logo], 
                         dbo.deko_2017_stammdaten.mitarbeiter
FROM            dbo.deko_2017_einsatzbericht_spa INNER JOIN
                         dbo.deko_2017_stammdaten ON dbo.deko_2017_einsatzbericht_spa.stammdaten_id = dbo.deko_2017_stammdaten.id
GROUP BY dbo.deko_2017_stammdaten.mitarbeiter

GO
/****** Object:  View [dbo].[deko_2017_ausgabe_standard_nach_mitarbeiter]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[deko_2017_ausgabe_standard_nach_mitarbeiter]
AS
SELECT        SUM(dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense1]) AS [Banner Sense1], SUM(dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense2]) 
                         AS [Banner Sense2], SUM(dbo.deko_2017_einsatzbericht_enjoy.[Banner Sense3]) AS [Banner Sense3], 
                         SUM(dbo.deko_2017_einsatzbericht_enjoy.[Display Lineares]) AS [Display Lineares], SUM(dbo.deko_2017_einsatzbericht_enjoy.[Dekowürfel Blue Home]) 
                         AS [Dekowürfel Blue Home], SUM(dbo.deko_2017_einsatzbericht_enjoy.[Aufkleber Mehr unter]) AS [Aufkleber Mehr unter], 
                         SUM(dbo.deko_2017_einsatzbericht_enjoy.[Aufkleber Logo]) AS [Aufkleber Logo], dbo.deko_2017_stammdaten.mitarbeiter
FROM            dbo.deko_2017_einsatzbericht_enjoy INNER JOIN
                         dbo.deko_2017_stammdaten ON dbo.deko_2017_einsatzbericht_enjoy.stammdaten_id = dbo.deko_2017_stammdaten.id
GROUP BY dbo.deko_2017_stammdaten.mitarbeiter

GO
/****** Object:  View [dbo].[deko_2017_bericht_gemeldete_partner]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[deko_2017_bericht_gemeldete_partner]
AS
SELECT     COUNT(id) AS anzahl, dekoration
FROM         dbo.deko_2017_stammdaten
GROUP BY dekoration




GO
/****** Object:  View [dbo].[Mehrfach_Anfahrten_und_Offene]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[offene_Shops_detail]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[Offene_Shops_Mitarbeiter_und_PL]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[stammdaten_personal]    Script Date: 06.07.2018 09:42:02 ******/
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
/****** Object:  View [dbo].[Vakanz_2014_Hilfe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vakanz_2014_Hilfe]
AS
SELECT     TOP (100) PERCENT dbo.deko_2014_stammdaten.GP_ID, dbo.deko_2014_stammdaten.typ, dbo.deko_2014_stammdaten.name, 
                      dbo.deko_2014_stammdaten.name2, dbo.deko_2014_stammdaten.strasse, dbo.deko_2014_stammdaten.plz, dbo.deko_2014_stammdaten.ort, 
                      dbo.deko_2014_stammdaten.dekoration, dbo.deko_2014_vakanz.grund, dbo.deko_2014_vakanz.bis, dbo.deko_2014_vakanz.neue_adresse, 
                      dbo.deko_2014_vakanz.bemerkung, dbo.deko_2014_vakanz.datum, dbo.promotion_login.anmeldename
FROM         dbo.deko_2014_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2014_stammdaten.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN
                      dbo.deko_2014_vakanz ON dbo.deko_2014_stammdaten.id = dbo.deko_2014_vakanz.stammdaten_id
WHERE     (dbo.deko_2014_stammdaten.GP_ID IN (30000868, 30049609, 30033483, 30034829, 30000723, 20107786, 20106749, 30032763, 30042306, 20120376, 
                      30028957, 30047977, 30028251, 30788048, 30038220, 30029304, 30032181, 30030788, 20104534, 30030505, 30030926, 30035405, 30030441))
ORDER BY dbo.deko_2014_stammdaten.GP_ID
GO
/****** Object:  View [dbo].[Vakanz_2015_Hilfe]    Script Date: 06.07.2018 09:42:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Vakanz_2015_Hilfe]
AS
SELECT     TOP (100) PERCENT dbo.deko_2015_stammdaten.GP_ID, dbo.deko_2015_stammdaten.typ, dbo.deko_2015_stammdaten.name, 
                      dbo.deko_2015_stammdaten.name2, dbo.deko_2015_stammdaten.strasse, dbo.deko_2015_stammdaten.plz, dbo.deko_2015_stammdaten.ort, 
                      dbo.deko_2015_stammdaten.dekoration, dbo.deko_2015_vakanz.grund, dbo.deko_2015_vakanz.bis, dbo.deko_2015_vakanz.neue_adresse, 
                      dbo.deko_2015_vakanz.bemerkung, dbo.deko_2015_vakanz.datum, dbo.promotion_login.anmeldename
FROM         dbo.deko_2015_stammdaten INNER JOIN
                      dbo.promotion_login ON dbo.deko_2015_stammdaten.mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN
                      dbo.deko_2015_vakanz ON dbo.deko_2015_stammdaten.id = dbo.deko_2015_vakanz.stammdaten_id
WHERE     (dbo.deko_2015_stammdaten.GP_ID IN (30000868, 30049609, 30033483, 30034829, 30000723, 20107786, 20106749, 30032763, 30042306, 20120376, 
                      30028957, 30047977, 30028251, 30788048, 30038220, 30029304, 30032181, 30030788, 20104534, 30030505, 30030926, 30035405, 30030441))
ORDER BY dbo.deko_2015_stammdaten.GP_ID

GO
ALTER TABLE [dbo].[deko_2016_einsatzbericht_enjoy] ADD  CONSTRAINT [DF_deko_2016_einsatzbericht_enjoy_aktivitaet_bemerkung]  DEFAULT ('') FOR [aktivitaet_bemerkung]
GO
ALTER TABLE [dbo].[deko_2017_einsatzbericht_enjoy] ADD  CONSTRAINT [DF_deko_2017_einsatzbericht_enjoy_aktivitaet_bemerkung]  DEFAULT ('') FOR [aktivitaet_bemerkung]
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
         Begin Table = "einsatzbericht_spa"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 307
               Right = 509
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ausgabe_spa_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ausgabe_spa_nach_mitarbeiter'
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
         Begin Table = "stammdaten_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 311
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 12
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
         Configuration = "(H (1[34] 4[30] 2[31] 3) )"
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
         Begin Table = "deko_2014_einsatzbericht_spa"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 257
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 40
         End
         Begin Table = "deko_2014_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 365
               Bottom = 264
               Right = 571
            End
            DisplayFlags = 280
            TopColumn = 10
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
         Column = 2625
         Alias = 2265
         Table = 3495
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_ausgabe_spa_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_ausgabe_spa_nach_mitarbeiter'
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
         Begin Table = "deko_2014_einsatzbericht_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 283
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "deko_2014_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 365
               Bottom = 254
               Right = 571
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
         Column = 2610
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_ausgabe_standard_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_ausgabe_standard_nach_mitarbeiter'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_bericht_keine_deko_gewuenscht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_bericht_keine_deko_gewuenscht'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_bericht_keine_deko_moeglich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_bericht_keine_deko_moeglich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[60] 2[6] 3) )"
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
               Bottom = 226
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2014_material_spa"
            Begin Extent = 
               Top = 0
               Left = 233
               Bottom = 327
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "deko_2014_spa_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 6
               Left = 675
               Bottom = 139
               Right = 829
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2014_spa_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 6
               Left = 483
               Bottom = 154
               Right = 637
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
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_materialansicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2760
         Alias = 2700
         Table = 3870
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_materialansicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_materialansicht_spa'
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
               Bottom = 241
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2014_material_enjoy"
            Begin Extent = 
               Top = 2
               Left = 258
               Bottom = 312
               Right = 473
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2014_standard_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 6
               Left = 675
               Bottom = 121
               Right = 829
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2014_standard_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 159
               Left = 628
               Bottom = 341
               Right = 782
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
         Column = 2310
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_materialansicht_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Alias = 2730
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_materialansicht_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_materialansicht_standard'
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
               Left = 290
               Bottom = 121
               Right = 460
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2014_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 252
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_spa_deko_nach_dekorateur_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2014_spa_deko_nach_dekorateur_gesamt'
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
         Begin Table = "deko_2015_einsatzbericht_spa"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 324
               Right = 319
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 357
               Bottom = 332
               Right = 555
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_ausgabe_spa_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_ausgabe_spa_nach_mitarbeiter'
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
         Begin Table = "deko_2015_einsatzbericht_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 332
               Right = 319
            End
            DisplayFlags = 280
            TopColumn = 18
         End
         Begin Table = "deko_2015_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 357
               Bottom = 325
               Right = 555
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_ausgabe_standard_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_ausgabe_standard_nach_mitarbeiter'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_bericht_besuchte_partner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_bericht_besuchte_partner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[27] 2[20] 3) )"
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
               Bottom = 121
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_material_spa"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 269
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "deko_2015_spa_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 6
               Left = 485
               Bottom = 121
               Right = 639
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_spa_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 6
               Left = 677
               Bottom = 121
               Right = 831
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
         Fil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_materialansicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_materialansicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_materialansicht_spa'
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
               Bottom = 297
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_material_enjoy"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 332
               Right = 443
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_standard_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 162
               Left = 691
               Bottom = 277
               Right = 845
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_standard_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 6
               Left = 673
               Bottom = 121
               Right = 827
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
         Alias = 2250
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_materialansicht_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_materialansicht_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2015_materialansicht_standard'
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
         Begin Table = "deko_2016_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 265
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_anzahl_besuche_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_anzahl_besuche_gesamt'
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
         Begin Table = "deko_2016_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 265
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_anzahl_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_anzahl_spa'
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
         Begin Table = "deko_2016_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 265
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_anzahl_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_anzahl_standard'
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
         Begin Table = "deko_2016_einsatzbericht_spa"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 324
               Right = 319
            End
            DisplayFlags = 280
            TopColumn = 28
         End
         Begin Table = "deko_2016_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 357
               Bottom = 332
               Right = 555
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_ausgabe_spa_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_ausgabe_spa_nach_mitarbeiter'
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
         Begin Table = "deko_2016_einsatzbericht_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 309
               Right = 359
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "deko_2016_stammdaten"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 265
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_ausgabe_standard_nach_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_ausgabe_standard_nach_mitarbeiter'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_abgabe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_abgabe'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_anzahl_banner_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_anzahl_banner_1'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_anzahl_banner_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_anzahl_banner_2'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_anzahl_banner_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_anzahl_banner_3'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_attraktivitaet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_attraktivitaet'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_besuchte_partner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_besuchte_partner'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_betriebsferien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_betriebsferien'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_deko_durchgefuehrt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_deko_durchgefuehrt'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_geschaeftsaufgabe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_geschaeftsaufgabe'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_keine_deko_gewuenscht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_keine_deko_gewuenscht'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_keine_deko_moeglich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_keine_deko_moeglich'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_keine_schaufenster'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_keine_schaufenster'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_nicht_angetroffen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_nicht_angetroffen'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_nicht_deko'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_nicht_deko'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_a'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_a'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_angaben'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_angaben'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_b'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_b'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_c'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_schaufenster_c'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_telefonische_absage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_telefonische_absage'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_umbau'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_umbau'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_zweitanfahrten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_zweitanfahrten'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_zweitanfahrten_mitarbeiter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_bericht_zweitanfahrten_mitarbeiter'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_einsaetze'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_einsaetze'
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
               Bottom = 135
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2016_material_spa"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 302
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "deko_2016_spa_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 135
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2016_spa_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
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
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_materialansicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_materialansicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_materialansicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[34] 2[11] 3) )"
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
               Bottom = 135
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2016_material_enjoy"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 284
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "deko_2016_standard_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 135
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2016_standard_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
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
         Column = 3915
         Alias = 2220
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_materialansicht_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_materialansicht_standard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'deko_2016_materialansicht_standard'
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
         Begin Table = "stammdaten_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 307
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_spa"
            Begin Extent = 
               Top = 6
               Left = 287
               Bottom = 308
               Right = 498
            End
            DisplayFlags = 280
            TopColumn = 12
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
               Top = 198
               Left = 35
               Bottom = 313
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "deko_2014_einsatzbericht_spa"
            Begin Extent = 
               Top = 16
               Left = 588
               Bottom = 211
               Right = 869
            End
            DisplayFlags = 280
            TopColumn = 34
         End
         Begin Table = "deko_2014_stammdaten"
            Begin Extent = 
               Top = 187
               Left = 318
               Bottom = 302
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 19
         End
         Begin Table = "deko_2014_einsatzbericht_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 188
               Right = 319
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "Gesamtuebersicht_Hilfe_2014"
            Begin Extent = 
               Top = 105
               Left = 528
               Bottom = 279
               Right = 809
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
   Begin CriteriaPane' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2014'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2014'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2014'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[3] 2[20] 3) )"
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
               Top = 134
               Left = 764
               Bottom = 413
               Right = 926
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_einsatzbericht_spa"
            Begin Extent = 
               Top = 14
               Left = 24
               Bottom = 476
               Right = 313
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_stammdaten"
            Begin Extent = 
               Top = 49
               Left = 519
               Bottom = 458
               Right = 725
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2015_einsatzbericht_enjoy"
            Begin Extent = 
               Top = 139
               Left = 187
               Bottom = 393
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Gesamtuebersicht_Hilfe_2015"
            Begin Extent = 
               Top = 45
               Left = 1100
               Bottom = 399
               Right = 1389
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
   Begin CriteriaPane =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[47] 2[13] 3) )"
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
               Top = 304
               Left = 465
               Bottom = 433
               Right = 635
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2016_stammdaten"
            Begin Extent = 
               Top = 0
               Left = 761
               Bottom = 230
               Right = 972
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Gesamtuebersicht_Hilfe_2016"
            Begin Extent = 
               Top = 230
               Left = 711
               Bottom = 418
               Right = 1016
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2016_einsatzbericht_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 412
               Right = 343
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2016_einsatzbericht_spa"
            Begin Extent = 
               Top = 91
               Left = 366
               Bottom = 363
               Right = 671
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
      Begin ColumnWidths = 85
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
         Width = 150' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2100
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtauswertung_2016'
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
         Configuration = "(H (1[41] 4[32] 2[9] 3) )"
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
            TopColumn = 6
         End
         Begin Table = "einsatzbericht_spa"
            Begin Extent = 
               Top = 108
               Left = 508
               Bottom = 373
               Right = 744
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "einsatzbericht_enjoy"
            Begin Extent = 
               Top = 143
               Left = 250
               Bottom = 416
               Right = 486
            End
            DisplayFlags = 280
            TopColumn = 27
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
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 0
               Left = 627
               Bottom = 108
               Right = 778
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
      Begin ColumnWidths = 11
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Column = 2655
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
         Begin Table = "einsatzbericht_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 287
               Right = 274
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
         Begin Table = "deko_2014_einsatzbericht_enjoy"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 265
               Right = 319
            End
            DisplayFlags = 280
            TopColumn = 29
         End
         Begin Table = "deko_2014_einsatzbericht_spa"
            Begin Extent = 
               Top = 6
               Left = 357
               Bottom = 293
               Right = 638
            End
            DisplayFlags = 280
            TopColumn = 25
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht_Hilfe_2014'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht_Hilfe_2014'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht_Hilfe_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtuebersicht_Hilfe_2016'
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
         Begin Table = "material_spa"
            Begin Extent = 
               Top = 23
               Left = 559
               Bottom = 294
               Right = 767
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "spa_deko_nach_dekorateur_gesamt"
            Begin Extent = 
               Top = 140
               Left = 26
               Bottom = 248
               Right = 177
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "spa_deko_nach_dekorateur_neu"
            Begin Extent = 
               Top = 204
               Left = 301
               Bottom = 312
               Right = 452
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'materialsicht_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'materialsicht_spa'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'spa_deko_nach_dekorateur_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'spa_deko_nach_dekorateur_gesamt'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'spa_deko_nach_dekorateur_neu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'spa_deko_nach_dekorateur_neu'
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
               Bottom = 295
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "einsatzbericht_spa"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 278
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 31
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_spa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stammdaten_spa'
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
               Right = 187
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "einsaetze"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 99
               Right = 380
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
         Begin Table = "deko_2016_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 328
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "deko_2016_einsaetze"
            Begin Extent = 
               Top = 6
               Left = 287
               Bottom = 214
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'uebersicht_deko_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'uebersicht_deko_2016'
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
         Begin Table = "deko_2014_stammdaten"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 234
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "deko_2014_vakanz"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 247
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 233
               Right = 621
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vakanz_2014_Hilfe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vakanz_2014_Hilfe'
GO
USE [master]
GO
ALTER DATABASE [admin_gate] SET  READ_WRITE 
GO
