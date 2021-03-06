USE [master]
GO
/****** Object:  Database [yophone]    Script Date: 06.07.2018 11:28:35 ******/
CREATE DATABASE [yophone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yophone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\yophone.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'yophone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\yophone_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [yophone] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yophone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yophone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yophone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yophone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yophone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yophone] SET ARITHABORT OFF 
GO
ALTER DATABASE [yophone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yophone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yophone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yophone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yophone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yophone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yophone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yophone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yophone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yophone] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yophone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yophone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yophone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yophone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yophone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yophone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yophone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yophone] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [yophone] SET  MULTI_USER 
GO
ALTER DATABASE [yophone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yophone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yophone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yophone] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [yophone] SET DELAYED_DURABILITY = DISABLED 
GO
USE [yophone]
GO
/****** Object:  Table [dbo].[einsatzbericht_6_2017]    Script Date: 06.07.2018 11:28:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_6_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Deko_Beginn] [varchar](50) NULL,
	[Deko_Ende] [varchar](50) NULL,
	[Ladenbaukonzept] [varchar](max) NULL,
	[Arbeiten_nach_Vorgabe] [varchar](50) NULL,
	[Welcomeschild_Art] [varchar](max) NULL,
	[Welcome_Breite] [int] NULL,
	[Welcome_Hoehe] [int] NULL,
	[Guetesiegel] [varchar](50) NULL,
	[Bestand_Produkt1] [int] NULL,
	[Bestand_Produkt2] [int] NULL,
	[Bestand_Produkt3] [int] NULL,
	[Bestand_Produkt4] [int] NULL,
	[Bestand_Produkt5] [int] NULL,
	[Bestand_Produkt6] [int] NULL,
	[Bestand_Produkt7] [int] NULL,
	[Bestand_Produkt8] [int] NULL,
	[Bestand_Produkt9] [int] NULL,
	[Bestand_Produkt10] [int] NULL,
	[Bestand_Produkt11] [int] NULL,
	[Bestand_Produkt12] [int] NULL,
	[Bestand_Produkt13] [int] NULL,
	[Bestand_Produkt14] [int] NULL,
	[Bestand_Produkt15] [int] NULL,
	[Bestand_Produkt16] [int] NULL,
	[Bestand_Produkt17] [int] NULL,
	[Bestand_Produkt18] [int] NULL,
	[Bestand_Produkt19] [int] NULL,
	[Bestand_Produkt20] [int] NULL,
	[Bestand_Produkt21] [int] NULL,
	[Bestand_Produkt22] [int] NULL,
	[Bestand_Produkt23] [int] NULL,
	[Bestand_Produkt24] [int] NULL,
	[Bestand_Produkt25] [int] NULL,
	[Zubehorwaende_Wiener_Model] [varchar](50) NULL,
	[Leitsystem_Forex_angebracht] [varchar](50) NULL,
	[Sonderfolien_Incomeleuchten] [varchar](50) NULL,
	[Bemerkung] [varchar](max) NULL,
	[Freigabe_Bericht_extern] [bit] NOT NULL,
	[Freigabe_Bilder_extern] [bit] NOT NULL,
	[Freigabe_Bericht_intern] [bit] NOT NULL,
	[Freigabe_Bilder_intern] [bit] NOT NULL,
 CONSTRAINT [PK_einsatzbericht_6_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_7_2017]    Script Date: 06.07.2018 11:28:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_7_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Deko_Beginn] [varchar](50) NULL,
	[Deko_Ende] [varchar](50) NULL,
	[Ladenbaukonzept] [varchar](max) NULL,
	[Arbeiten_nach_Vorgabe] [int] NULL,
	[Bestand_Produkt1] [int] NULL,
	[Bestand_Produkt2] [int] NULL,
	[Bestand_Produkt3] [int] NULL,
	[Bestand_Produkt4] [int] NULL,
	[Bestand_Produkt5] [int] NULL,
	[Bestand_Produkt6] [int] NULL,
	[Bestand_Produkt7] [int] NULL,
	[Bestand_Produkt8] [int] NULL,
	[Bestand_Produkt9] [int] NULL,
	[Bestand_Produkt10] [int] NULL,
	[Bestand_Produkt11] [int] NULL,
	[Bestand_Produkt12] [int] NULL,
	[Bestand_Produkt13] [int] NULL,
	[Bestand_Produkt14] [int] NULL,
	[Bestand_Produkt15] [int] NULL,
	[Bestand_Produkt16] [int] NULL,
	[Bestand_Produkt17] [int] NULL,
	[Bestand_Produkt18] [int] NULL,
	[Bestand_Produkt19] [int] NULL,
	[Bestand_Produkt20] [int] NULL,
	[Bestand_Produkt21] [int] NULL,
	[Bestand_Produkt22] [int] NULL,
	[Bestand_Produkt23] [int] NULL,
	[Bestand_Produkt24] [int] NULL,
	[Bestand_Produkt25] [int] NULL,
	[Bemerkung] [varchar](max) NULL,
	[Freigabe_Bericht_extern] [bit] NOT NULL,
	[Freigabe_Bilder_extern] [bit] NOT NULL,
	[Freigabe_Bericht_intern] [bit] NOT NULL,
	[Freigabe_Bilder_intern] [bit] NOT NULL,
 CONSTRAINT [PK_einsatzbericht_7_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_8_2017]    Script Date: 06.07.2018 11:28:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_8_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Deko_Beginn] [varchar](50) NULL,
	[Deko_Ende] [varchar](50) NULL,
	[Ladenbaukonzept] [varchar](max) NULL,
	[Arbeiten_nach_Vorgabe] [int] NULL,
	[Bestand_Produkt1] [int] NULL,
	[Bestand_Produkt2] [int] NULL,
	[Bestand_Produkt3] [int] NULL,
	[Bestand_Produkt4] [int] NULL,
	[Bestand_Produkt5] [int] NULL,
	[Bestand_Produkt6] [int] NULL,
	[Bestand_Produkt7] [int] NULL,
	[Bestand_Produkt8] [int] NULL,
	[Bestand_Produkt9] [int] NULL,
	[Bestand_Produkt10] [int] NULL,
	[Bestand_Produkt11] [int] NULL,
	[Bestand_Produkt12] [int] NULL,
	[Bestand_Produkt13] [int] NULL,
	[Bestand_Produkt14] [int] NULL,
	[Bestand_Produkt15] [int] NULL,
	[Bestand_Produkt16] [int] NULL,
	[Bestand_Produkt17] [int] NULL,
	[Bestand_Produkt18] [int] NULL,
	[Bestand_Produkt19] [int] NULL,
	[Bestand_Produkt20] [int] NULL,
	[Bestand_Produkt21] [int] NULL,
	[Bestand_Produkt22] [int] NULL,
	[Bestand_Produkt23] [int] NULL,
	[Bestand_Produkt24] [int] NULL,
	[Bestand_Produkt25] [int] NULL,
	[Bemerkung] [varchar](max) NULL,
	[Freigabe_Bericht_extern] [bit] NOT NULL,
	[Freigabe_Bilder_extern] [bit] NOT NULL,
	[Freigabe_Bericht_intern] [bit] NOT NULL,
	[Freigabe_Bilder_intern] [bit] NOT NULL,
 CONSTRAINT [PK_einsatzbericht_8_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_9_2016]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_9_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Deko_Beginn] [varchar](50) NULL,
	[Deko_Ende] [varchar](50) NULL,
	[Ansprechpartner] [varchar](max) NULL,
	[alte Deko abdekoriert] [bit] NULL,
	[Arbeiten nach Vorgabe durchgefuehrt] [bit] NULL,
	[Masse aufgenommen] [bit] NULL,
	[Grossmotive vorhanden] [bit] NULL,
	[Bilder gemacht] [bit] NULL,
	[Bestand_Produkt1] [int] NULL,
	[Bestand_Produkt2] [int] NULL,
	[Bestand_Produkt3] [int] NULL,
	[Bestand_Produkt4] [int] NULL,
	[Bestand_Produkt5] [int] NULL,
	[Bestand_Produkt6] [int] NULL,
	[Bestand_Produkt7] [int] NULL,
	[Bestand_Produkt8] [int] NULL,
	[Bestand_Produkt9] [int] NULL,
	[Bestand_Produkt10] [int] NULL,
	[Bestand_Produkt11] [int] NULL,
	[Bestand_Produkt12] [int] NULL,
	[Bestand_Produkt13] [int] NULL,
	[Bestand_Produkt14] [int] NULL,
	[Bestand_Produkt15] [int] NULL,
	[Bestand_Produkt16] [int] NULL,
	[Bestand_Produkt17] [int] NULL,
	[Bestand_Produkt18] [int] NULL,
	[Bestand_Produkt19] [int] NULL,
	[Bestand_Produkt20] [int] NULL,
	[Bestand_Produkt21] [int] NULL,
	[Bestand_Produkt22] [int] NULL,
	[Bestand_Produkt23] [int] NULL,
	[Bestand_Produkt24] [int] NULL,
	[Bestand_Produkt25] [int] NULL,
	[Grund_keine_Deko] [varchar](max) NULL,
	[Livestyle_1_Breite] [int] NULL,
	[Livestyle_1_Hoehe] [int] NULL,
	[Livestyle_2_Breite] [int] NULL,
	[Livestyle_2_Hoehe] [int] NULL,
	[Livestyle_3_Breite] [int] NULL,
	[Livestyle_3_Hoehe] [int] NULL,
	[Livestyle_4_Breite] [int] NULL,
	[Livestyle_4_Hoehe] [int] NULL,
	[Livestyle_5_Breite] [int] NULL,
	[Livestyle_5_Hoehe] [int] NULL,
	[Livestyle_6_Breite] [int] NULL,
	[Livestyle_6_Hoehe] [int] NULL,
	[Livestyle_7_Breite] [int] NULL,
	[Livestyle_7_Hoehe] [int] NULL,
	[Livestyle_8_Breite] [int] NULL,
	[Livestyle_8_Hoehe] [int] NULL,
	[Bemerkung_Sondermasse] [text] NULL,
	[Bemerkung] [text] NULL,
	[Zweitanfahrt_erforderlich] [bit] NULL,
	[Freigabe_Bericht_extern] [bit] NULL,
	[Freigabe_Bericht_intern] [bit] NULL,
	[Freigabe_Bilder_extern] [bit] NULL,
	[Freigabe_Bilder_intern] [bit] NULL,
	[Schaufenster_1_Hoehe] [int] NULL,
	[Schaufenster_1_Breite] [int] NULL,
	[Schaufenster_1_Art] [varchar](50) NULL,
	[Schaufenster_2_Hoehe] [int] NULL,
	[Schaufenster_2_Breite] [int] NULL,
	[Schaufenster_2_Art] [varchar](50) NULL,
	[Schaufenster_3_Hoehe] [int] NULL,
	[Schaufenster_3_Breite] [int] NULL,
	[Schaufenster_3_Art] [varchar](50) NULL,
	[Schaufenster_4_Hoehe] [int] NULL,
	[Schaufenster_4_Breite] [int] NULL,
	[Schaufenster_4_Art] [varchar](50) NULL,
	[Schaufenster_5_Hoehe] [int] NULL,
	[Schaufenster_5_Breite] [int] NULL,
	[Schaufenster_5_Art] [varchar](50) NULL,
	[Schaufenster_6_Hoehe] [int] NULL,
	[Schaufenster_6_Breite] [int] NULL,
	[Schaufenster_6_Art] [varchar](50) NULL,
	[Schaufenster_7_Hoehe] [int] NULL,
	[Schaufenster_7_Breite] [int] NULL,
	[Schaufenster_7_Art] [varchar](50) NULL,
	[Schaufenster_8_Hoehe] [int] NULL,
	[Schaufenster_8_Breite] [int] NULL,
	[Schaufenster_8_Art] [varchar](50) NULL,
	[Schaufenster_9_Hoehe] [int] NULL,
	[Schaufenster_9_Breite] [int] NULL,
	[Schaufenster_9_Art] [varchar](50) NULL,
	[Schaufenster_10_Hoehe] [int] NULL,
	[Schaufenster_10_Breite] [int] NULL,
	[Schaufenster_10_Art] [varchar](50) NULL,
	[Schaufenster_11_Hoehe] [int] NULL,
	[Schaufenster_11_Breite] [int] NULL,
	[Schaufenster_11_Art] [varchar](50) NULL,
	[Schaufenster_12_Hoehe] [int] NULL,
	[Schaufenster_12_Breite] [int] NULL,
	[Schaufenster_12_Art] [varchar](50) NULL,
	[Schaufenster_13_Hoehe] [int] NULL,
	[Schaufenster_13_Breite] [int] NULL,
	[Schaufenster_13_Art] [varchar](50) NULL,
	[Schaufenster_14_Hoehe] [int] NULL,
	[Schaufenster_14_Breite] [int] NULL,
	[Schaufenster_14_Art] [varchar](50) NULL,
	[Schaufenster_15_Hoehe] [int] NULL,
	[Schaufenster_15_Breite] [int] NULL,
	[Schaufenster_15_Art] [varchar](50) NULL,
	[Schaufenster_16_Hoehe] [int] NULL,
	[Schaufenster_16_Breite] [int] NULL,
	[Schaufenster_16_Art] [varchar](50) NULL,
	[Schaufenster_17_Hoehe] [int] NULL,
	[Schaufenster_17_Breite] [int] NULL,
	[Schaufenster_17_Art] [varchar](50) NULL,
	[Schaufenster_18_Hoehe] [int] NULL,
	[Schaufenster_18_Breite] [int] NULL,
	[Schaufenster_18_Art] [varchar](50) NULL,
	[Schaufenster_19_Hoehe] [int] NULL,
	[Schaufenster_19_Breite] [int] NULL,
	[Schaufenster_19_Art] [varchar](50) NULL,
	[Schaufenster_20_Hoehe] [int] NULL,
	[Schaufenster_20_Breite] [int] NULL,
	[Schaufenster_20_Art] [varchar](50) NULL,
 CONSTRAINT [PK_einsatzbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_9_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_9_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Deko_Beginn] [varchar](50) NULL,
	[Deko_Ende] [varchar](50) NULL,
	[Bestand_Produkt1] [int] NULL,
	[Bestand_Produkt2] [int] NULL,
	[Bestand_Produkt3] [int] NULL,
	[Bestand_Produkt4] [int] NULL,
	[Bestand_Produkt5] [int] NULL,
	[Bestand_Produkt6] [int] NULL,
	[Bestand_Produkt7] [int] NULL,
	[Bestand_Produkt8] [int] NULL,
	[Bestand_Produkt9] [int] NULL,
	[Bestand_Produkt10] [int] NULL,
	[Bestand_Produkt11] [int] NULL,
	[Bestand_Produkt12] [int] NULL,
	[Bestand_Produkt13] [int] NULL,
	[Bestand_Produkt14] [int] NULL,
	[Bestand_Produkt15] [int] NULL,
	[Bestand_Produkt16] [int] NULL,
	[Bestand_Produkt17] [int] NULL,
	[Bestand_Produkt18] [int] NULL,
	[Bestand_Produkt19] [int] NULL,
	[Bestand_Produkt20] [int] NULL,
	[Bestand_Produkt21] [int] NULL,
	[Bestand_Produkt22] [int] NULL,
	[Bestand_Produkt23] [int] NULL,
	[Bestand_Produkt24] [int] NULL,
	[Bestand_Produkt25] [int] NULL,
	[Bemerkung] [varchar](max) NULL,
	[Freigabe_Bericht_extern] [bit] NOT NULL,
	[Freigabe_Bilder_extern] [bit] NOT NULL,
	[Freigabe_Bericht_intern] [bit] NOT NULL,
	[Freigabe_Bilder_intern] [bit] NOT NULL,
 CONSTRAINT [PK_einsatzbericht_9_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_6_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_6_2017](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_7_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_7_2017](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_8_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_8_2017](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_9_2016]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_9_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_9_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_9_2017](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_login]    Script Date: 06.07.2018 11:28:37 ******/
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
/****** Object:  Table [dbo].[stammdaten_6_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_6_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KST] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
	[freigabe_extern] [bit] NULL,
	[freigabe_intern] [bit] NULL,
 CONSTRAINT [PK_stammdaten_6_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_7_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_7_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KST] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
	[freigabe_extern] [bit] NULL,
	[freigabe_intern] [bit] NULL,
 CONSTRAINT [PK_stammdaten_7_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_8_2017]    Script Date: 06.07.2018 11:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_8_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KST] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
	[freigabe_extern] [bit] NULL,
	[freigabe_intern] [bit] NULL,
 CONSTRAINT [PK_stammdaten_8_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_9_2016]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_9_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KST] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
	[freigabe_extern] [bit] NULL,
	[freigabe_intern] [bit] NULL,
 CONSTRAINT [PK_stammdaten_6_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_9_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_9_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KST] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
	[freigabe_extern] [bit] NULL,
	[freigabe_intern] [bit] NULL,
 CONSTRAINT [PK_stammdaten_9_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tagesbericht_9_2016]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tagesbericht_9_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mitarbeiter] [int] NULL,
	[Datum] [date] NULL,
	[KM-Stand] [int] NULL,
	[Kennzeichen_PKW] [varchar](50) NULL,
 CONSTRAINT [PK_tagesbericht_9_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[auswertung_intern_9_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_intern_9_2017]
AS
SELECT        dbo.einsatzbericht_9_2017.id, dbo.stammdaten_9_2017.Mitarbeiter, dbo.einsatzbericht_9_2017.Freigabe_Bericht_extern
FROM            dbo.einsatzbericht_9_2017 INNER JOIN
                         dbo.stammdaten_9_2017 ON dbo.einsatzbericht_9_2017.stammdaten_id = dbo.stammdaten_9_2017.id
GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_9_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_mitarbeiter_9_2017]
AS
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 7)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 7) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 7)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 22)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 22) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 22)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 14)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 14) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 14)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 23)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 23) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 23)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 16)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 16) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 16)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 17)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 17) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 17)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 19)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 19) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 19)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 21)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 21) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 21)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2017
                               WHERE        (Mitarbeiter = 13)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2017
                               WHERE        (Mitarbeiter = 13) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2017 AS auswertung_intern_9_2017_1 ON dbo.promotion_login.id = auswertung_intern_9_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 13)
GO
/****** Object:  View [dbo].[auswertung_intern_9_2016]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_intern_9_2016]
AS
SELECT        dbo.einsatzbericht_9_2016.id, dbo.einsatzbericht_9_2016.[Arbeiten nach Vorgabe durchgefuehrt], dbo.einsatzbericht_9_2016.Grund_keine_Deko, 
                         dbo.stammdaten_9_2016.Mitarbeiter, dbo.einsatzbericht_9_2016.Freigabe_Bericht_extern
FROM            dbo.einsatzbericht_9_2016 INNER JOIN
                         dbo.stammdaten_9_2016 ON dbo.einsatzbericht_9_2016.stammdaten_id = dbo.stammdaten_9_2016.id
GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_9_2016]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_mitarbeiter_9_2016]
AS
SELECT        dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2016
                               WHERE        (Mitarbeiter = 7)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016
                               WHERE        (Mitarbeiter = 7) and (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 7) AND ([Arbeiten nach Vorgabe durchgefuehrt] = 0)) AS [Anzahl keine Deko],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 7) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 7) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 7) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 7) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 7) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 7) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_1 ON dbo.promotion_login.id = auswertung_intern_9_2016_1.Mitarbeiter
WHERE        (Mitarbeiter = 7)
UNION ALL
SELECT        dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2016
                               WHERE        (Mitarbeiter = 8)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016
                               WHERE        (Mitarbeiter = 8) and (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 8) AND ([Arbeiten nach Vorgabe durchgefuehrt] = 0)) AS [Anzahl keine Deko],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 8) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 8) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 8) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 8) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 8) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 8) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_1 ON dbo.promotion_login.id = auswertung_intern_9_2016_1.Mitarbeiter
WHERE        (Mitarbeiter = 8)
UNION ALL
SELECT        dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2016
                               WHERE        (Mitarbeiter = 9)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016
                               WHERE        (Mitarbeiter = 9) and (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 9) AND ([Arbeiten nach Vorgabe durchgefuehrt] = 0)) AS [Anzahl keine Deko],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 9) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 9) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 9) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 9) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 9) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 9) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_1 ON dbo.promotion_login.id = auswertung_intern_9_2016_1.Mitarbeiter
WHERE        (Mitarbeiter = 9)
UNION ALL
SELECT        dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2016
                               WHERE        (Mitarbeiter = 10)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016
                               WHERE        (Mitarbeiter = 10) and (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 10) AND ([Arbeiten nach Vorgabe durchgefuehrt] = 0)) AS [Anzahl keine Deko],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 10) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 10) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 10) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 10) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 10) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 10) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_1 ON dbo.promotion_login.id = auswertung_intern_9_2016_1.Mitarbeiter
WHERE        (Mitarbeiter = 10)
UNION ALL
SELECT        dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2016
                               WHERE        (Mitarbeiter = 11)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016
                               WHERE        (Mitarbeiter = 11) and (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 11) AND ([Arbeiten nach Vorgabe durchgefuehrt] = 0)) AS [Anzahl keine Deko],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 11) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 11) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 11) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 11) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 11) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 11) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_1 ON dbo.promotion_login.id = auswertung_intern_9_2016_1.Mitarbeiter
WHERE        (Mitarbeiter = 11)
UNION ALL
SELECT        dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_9_2016
                               WHERE        (Mitarbeiter = 12)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016
                               WHERE        (Mitarbeiter = 12) and (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 12) AND ([Arbeiten nach Vorgabe durchgefuehrt] = 0)) AS [Anzahl keine Deko],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 12) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_2
                               WHERE        (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_9_2016 AS auswertung_intern_9_2016_1 ON dbo.promotion_login.id = auswertung_intern_9_2016_1.Mitarbeiter
WHERE        (Mitarbeiter = 12)
GO
/****** Object:  View [dbo].[auswertung_intern_6_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_intern_6_2017]
AS
SELECT        dbo.einsatzbericht_6_2017.id, dbo.einsatzbericht_6_2017.[Arbeiten_nach_Vorgabe], 
                         dbo.stammdaten_6_2017.Mitarbeiter, dbo.einsatzbericht_6_2017.Freigabe_Bericht_extern
FROM            dbo.einsatzbericht_6_2017 INNER JOIN
                         dbo.stammdaten_6_2017 ON dbo.einsatzbericht_6_2017.stammdaten_id = dbo.stammdaten_6_2017.id

GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_6_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_mitarbeiter_6_2017]
AS
SELECT   distinct     dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_6_2017
                               WHERE        (Mitarbeiter = 7)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017
                               WHERE        (Mitarbeiter = 7) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_2
                               WHERE        (Mitarbeiter = 7) AND ([Arbeiten_nach_Vorgabe] = 'nein')) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_1 ON dbo.promotion_login.id = auswertung_intern_6_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 7)
UNION ALL
SELECT  distinct          dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_6_2017
                               WHERE        (Mitarbeiter = 13)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017
                               WHERE        (Mitarbeiter = 13) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_2
                               WHERE        (Mitarbeiter = 13) AND ([Arbeiten_nach_Vorgabe] = 'nein')) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_1 ON dbo.promotion_login.id = auswertung_intern_6_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 13)
UNION ALL
SELECT   distinct         dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_6_2017
                               WHERE        (Mitarbeiter = 14)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017
                               WHERE        (Mitarbeiter = 14) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_2
                               WHERE        (Mitarbeiter = 14) AND ([Arbeiten_nach_Vorgabe] = 'nein')) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_1 ON dbo.promotion_login.id = auswertung_intern_6_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 14)
UNION ALL
SELECT    distinct        dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_6_2017
                               WHERE        (Mitarbeiter = 15)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017
                               WHERE        (Mitarbeiter = 15) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_2
                               WHERE        (Mitarbeiter = 15) AND ([Arbeiten_nach_Vorgabe] = 'nein')) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_1 ON dbo.promotion_login.id = auswertung_intern_6_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 15)
UNION ALL
SELECT     distinct       dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_6_2017
                               WHERE        (Mitarbeiter = 16)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017
                               WHERE        (Mitarbeiter = 16) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_2
                               WHERE        (Mitarbeiter = 16) AND ([Arbeiten_nach_Vorgabe] = 'nein')) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_1 ON dbo.promotion_login.id = auswertung_intern_6_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 16)
UNION ALL
SELECT   distinct         dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_6_2017
                               WHERE        (Mitarbeiter = 17)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017
                               WHERE        (Mitarbeiter = 17) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_2
                               WHERE        (Mitarbeiter = 17) AND ([Arbeiten_nach_Vorgabe] = 'nein')) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_6_2017 AS auswertung_intern_6_2017_1 ON dbo.promotion_login.id = auswertung_intern_6_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 17)
GO
/****** Object:  View [dbo].[auswertung_intern_7_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_intern_7_2017]
AS
SELECT        dbo.einsatzbericht_7_2017.id, dbo.einsatzbericht_7_2017.Arbeiten_nach_Vorgabe, dbo.stammdaten_7_2017.Mitarbeiter, 
                         dbo.einsatzbericht_7_2017.Freigabe_Bericht_extern
FROM            dbo.einsatzbericht_7_2017 INNER JOIN
                         dbo.stammdaten_7_2017 ON dbo.einsatzbericht_7_2017.stammdaten_id = dbo.stammdaten_7_2017.id
GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_7_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_mitarbeiter_7_2017]
AS
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 7)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 7) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 7) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 7)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 8)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 8) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 8) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 8)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 13)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 13) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 13) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 13)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 14)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 14) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 14) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 14)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 15)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 15) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 15) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 15)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 16)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 16) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 16) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 16)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 17)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 17) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 17) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 17)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 18)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 18) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 18) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 18)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 19)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 19) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 19) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 19)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_7_2017
                               WHERE        (Mitarbeiter = 20)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017
                               WHERE        (Mitarbeiter = 20) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_2
                               WHERE        (Mitarbeiter = 20) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_7_2017 AS auswertung_intern_7_2017_1 ON dbo.promotion_login.id = auswertung_intern_7_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 20)
GO
/****** Object:  View [dbo].[auswertung_intern_8_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_intern_8_2017]
AS
SELECT        dbo.einsatzbericht_8_2017.id, dbo.einsatzbericht_8_2017.Arbeiten_nach_Vorgabe, dbo.stammdaten_8_2017.Mitarbeiter, 
                         dbo.einsatzbericht_8_2017.Freigabe_Bericht_extern
FROM            dbo.einsatzbericht_8_2017 INNER JOIN
                         dbo.stammdaten_8_2017 ON dbo.einsatzbericht_8_2017.stammdaten_id = dbo.stammdaten_8_2017.id

GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_8_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_mitarbeiter_8_2017]
AS
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_8_2017
                               WHERE        (Mitarbeiter = 7)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017
                               WHERE        (Mitarbeiter = 7) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_2
                               WHERE        (Mitarbeiter = 7) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_1 ON dbo.promotion_login.id = auswertung_intern_8_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 7)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_8_2017
                               WHERE        (Mitarbeiter = 13)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017
                               WHERE        (Mitarbeiter = 13) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_2
                               WHERE        (Mitarbeiter = 13) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_1 ON dbo.promotion_login.id = auswertung_intern_8_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 13)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_8_2017
                               WHERE        (Mitarbeiter = 14)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017
                               WHERE        (Mitarbeiter = 14) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_2
                               WHERE        (Mitarbeiter = 14) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_1 ON dbo.promotion_login.id = auswertung_intern_8_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 14)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_8_2017
                               WHERE        (Mitarbeiter = 15)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017
                               WHERE        (Mitarbeiter = 15) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_2
                               WHERE        (Mitarbeiter = 15) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_1 ON dbo.promotion_login.id = auswertung_intern_8_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 15)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_8_2017
                               WHERE        (Mitarbeiter = 16)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017
                               WHERE        (Mitarbeiter = 16) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_2
                               WHERE        (Mitarbeiter = 16) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_1 ON dbo.promotion_login.id = auswertung_intern_8_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 16)
UNION ALL
SELECT DISTINCT dbo.promotion_login.anmeldename,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.stammdaten_8_2017
                               WHERE        (Mitarbeiter = 17)) AS [Anzahl Kunden],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017
                               WHERE        (Mitarbeiter = 17) AND (Freigabe_Bericht_extern = 1)) AS [Anzahl Besuche],
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_2
                               WHERE        (Mitarbeiter = 17) AND ([Arbeiten_nach_Vorgabe] = 0)) AS [Abweichend von Vorgabe]
FROM            dbo.promotion_login LEFT JOIN
                         dbo.auswertung_intern_8_2017 AS auswertung_intern_8_2017_1 ON dbo.promotion_login.id = auswertung_intern_8_2017_1.Mitarbeiter
WHERE        (Mitarbeiter = 17)

GO
/****** Object:  View [dbo].[Gesamtexport]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtexport]
AS
SELECT        dbo.stammdaten_9_2016.KST, dbo.stammdaten_9_2016.Name, dbo.stammdaten_9_2016.Handelsform, dbo.stammdaten_9_2016.Strasse, 
                         dbo.stammdaten_9_2016.PLZ, dbo.stammdaten_9_2016.Ort, dbo.promotion_login.anmeldename, dbo.einsatzbericht_9_2016.Datum, 
                         dbo.einsatzbericht_9_2016.Deko_Beginn, dbo.einsatzbericht_9_2016.Deko_Ende, dbo.einsatzbericht_9_2016.Ansprechpartner, 
                         dbo.einsatzbericht_9_2016.[alte Deko abdekoriert], dbo.einsatzbericht_9_2016.[Arbeiten nach Vorgabe durchgefuehrt], 
                         dbo.einsatzbericht_9_2016.[Masse aufgenommen], dbo.einsatzbericht_9_2016.[Grossmotive vorhanden], dbo.einsatzbericht_9_2016.Bestand_Produkt1, 
                         dbo.einsatzbericht_9_2016.Bestand_Produkt2, dbo.einsatzbericht_9_2016.Bestand_Produkt3, dbo.einsatzbericht_9_2016.Bestand_Produkt4, 
                         dbo.einsatzbericht_9_2016.Bestand_Produkt5, dbo.einsatzbericht_9_2016.Bestand_Produkt6, dbo.einsatzbericht_9_2016.Bestand_Produkt7, 
                         dbo.einsatzbericht_9_2016.Bestand_Produkt8, dbo.einsatzbericht_9_2016.Bestand_Produkt9, dbo.einsatzbericht_9_2016.Bestand_Produkt10, 
                         dbo.einsatzbericht_9_2016.Grund_keine_Deko, dbo.einsatzbericht_9_2016.Livestyle_1_Breite, dbo.einsatzbericht_9_2016.Livestyle_1_Hoehe, 
                         dbo.einsatzbericht_9_2016.Livestyle_2_Breite, dbo.einsatzbericht_9_2016.Livestyle_2_Hoehe, dbo.einsatzbericht_9_2016.Livestyle_3_Breite, 
                         dbo.einsatzbericht_9_2016.Livestyle_3_Hoehe, dbo.einsatzbericht_9_2016.Livestyle_4_Breite, dbo.einsatzbericht_9_2016.Livestyle_4_Hoehe, 
                         dbo.einsatzbericht_9_2016.Livestyle_5_Breite, dbo.einsatzbericht_9_2016.Livestyle_5_Hoehe, dbo.einsatzbericht_9_2016.Livestyle_6_Breite, 
                         dbo.einsatzbericht_9_2016.Livestyle_6_Hoehe, dbo.einsatzbericht_9_2016.Livestyle_7_Breite, dbo.einsatzbericht_9_2016.Livestyle_7_Hoehe, 
                         dbo.einsatzbericht_9_2016.Livestyle_8_Breite, dbo.einsatzbericht_9_2016.Livestyle_8_Hoehe, dbo.einsatzbericht_9_2016.Bemerkung_Sondermasse, 
                         dbo.einsatzbericht_9_2016.Bemerkung, dbo.einsatzbericht_9_2016.Schaufenster_1_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_1_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_1_Art, dbo.einsatzbericht_9_2016.Schaufenster_2_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_2_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_2_Art, dbo.einsatzbericht_9_2016.Schaufenster_3_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_3_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_3_Art, dbo.einsatzbericht_9_2016.Schaufenster_4_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_4_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_4_Art, dbo.einsatzbericht_9_2016.Schaufenster_5_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_5_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_5_Art, dbo.einsatzbericht_9_2016.Schaufenster_6_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_6_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_6_Art, dbo.einsatzbericht_9_2016.Schaufenster_7_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_7_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_7_Art, dbo.einsatzbericht_9_2016.Schaufenster_8_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_8_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_8_Art, dbo.einsatzbericht_9_2016.Schaufenster_9_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_9_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_9_Art, dbo.einsatzbericht_9_2016.Schaufenster_10_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_10_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_10_Art, dbo.einsatzbericht_9_2016.Schaufenster_11_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_11_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_11_Art, dbo.einsatzbericht_9_2016.Schaufenster_12_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_12_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_12_Art, dbo.einsatzbericht_9_2016.Schaufenster_13_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_13_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_13_Art, dbo.einsatzbericht_9_2016.Schaufenster_14_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_14_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_14_Art, dbo.einsatzbericht_9_2016.Schaufenster_15_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_15_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_15_Art, dbo.einsatzbericht_9_2016.Schaufenster_16_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_16_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_16_Art, dbo.einsatzbericht_9_2016.Schaufenster_17_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_17_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_17_Art, dbo.einsatzbericht_9_2016.Schaufenster_18_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_18_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_18_Art, dbo.einsatzbericht_9_2016.Schaufenster_19_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_19_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_19_Art, dbo.einsatzbericht_9_2016.Schaufenster_20_Hoehe, dbo.einsatzbericht_9_2016.Schaufenster_20_Breite, 
                         dbo.einsatzbericht_9_2016.Schaufenster_20_Art
FROM            dbo.stammdaten_9_2016 INNER JOIN
                         dbo.promotion_login ON dbo.stammdaten_9_2016.Mitarbeiter = dbo.promotion_login.id LEFT OUTER JOIN
                         dbo.einsatzbericht_9_2016 ON dbo.stammdaten_9_2016.id = dbo.einsatzbericht_9_2016.stammdaten_id
GO
/****** Object:  View [dbo].[Gesamtexport_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtexport_2017]
AS
SELECT        dbo.stammdaten_6_2017.KST, dbo.stammdaten_6_2017.Name, dbo.stammdaten_6_2017.Handelsform, dbo.stammdaten_6_2017.Strasse, 
                         dbo.stammdaten_6_2017.PLZ, dbo.stammdaten_6_2017.Ort, dbo.promotion_login.anmeldename AS Dekorateur, dbo.einsatzbericht_6_2017.Datum, 
                         dbo.einsatzbericht_6_2017.Deko_Beginn, dbo.einsatzbericht_6_2017.Deko_Ende, dbo.einsatzbericht_6_2017.Ladenbaukonzept, 
                         dbo.einsatzbericht_6_2017.Arbeiten_nach_Vorgabe AS [Arbeiten nach Vorgabe], dbo.einsatzbericht_6_2017.Welcomeschild_Art AS [Welcomeschild Art], 
                         dbo.einsatzbericht_6_2017.Welcome_Breite AS [Welcome Breite], dbo.einsatzbericht_6_2017.Welcome_Hoehe AS [Welcome Hoehe], 
                         dbo.einsatzbericht_6_2017.Bestand_Produkt1 AS [Incomekleber V1 Du zahlst wenig], 
                         dbo.einsatzbericht_6_2017.Bestand_Produkt2 AS [Incomekleber V1 Du kriegst. was Du willst], dbo.einsatzbericht_6_2017.Guetesiegel AS Gütesiegel, 
                         dbo.einsatzbericht_6_2017.Bestand_Produkt3 AS [Poster A0 841 mm x 1.189 mm], dbo.einsatzbericht_6_2017.Bestand_Produkt4 AS [Poster A1 594 mm x 841 mm], 
                         dbo.einsatzbericht_6_2017.Bestand_Produkt5 AS [Poster A2 420 mm x 594 mm], dbo.einsatzbericht_6_2017.Bestand_Produkt6 AS [Poster A3 297 mm x 420 mm], 
                         dbo.einsatzbericht_6_2017.Bestand_Produkt7 AS [Poster A4 210 mm x 297 mm], 
                         dbo.einsatzbericht_6_2017.Bestand_Produkt8 AS [Postermodul Breite 60 cm / Wiener Konzept], 
                         dbo.einsatzbericht_6_2017.Zubehorwaende_Wiener_Model AS [2 Zubehörwände Wiener Model], 
                         dbo.einsatzbericht_6_2017.Leitsystem_Forex_angebracht AS [Leitsystem / Forex angebracht], 
                         dbo.einsatzbericht_6_2017.Sonderfolien_Incomeleuchten AS [Sonderfolien Incomeleuchten], dbo.einsatzbericht_6_2017.Bemerkung
FROM            dbo.einsatzbericht_6_2017 INNER JOIN
                         dbo.stammdaten_6_2017 ON dbo.einsatzbericht_6_2017.stammdaten_id = dbo.stammdaten_6_2017.id INNER JOIN
                         dbo.promotion_login ON dbo.stammdaten_6_2017.Mitarbeiter = dbo.promotion_login.id
GO
/****** Object:  View [dbo].[Gesamtexport_7_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtexport_7_2017]
AS
SELECT        dbo.stammdaten_7_2017.KST, dbo.stammdaten_7_2017.Name, dbo.stammdaten_7_2017.Handelsform, dbo.stammdaten_7_2017.Strasse, 
                         dbo.stammdaten_7_2017.PLZ, dbo.stammdaten_7_2017.Ort, dbo.promotion_login.anmeldename AS Dekorateur, dbo.einsatzbericht_7_2017.Datum, 
                         dbo.einsatzbericht_7_2017.Deko_Beginn, dbo.einsatzbericht_7_2017.Deko_Ende, dbo.einsatzbericht_7_2017.Ladenbaukonzept, 
                         dbo.einsatzbericht_7_2017.Arbeiten_nach_Vorgabe AS [Arbeiten nach Vorgabe], dbo.einsatzbericht_7_2017.Bestand_Produkt1 AS [Wiener Wandbanner], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt2 AS [Wiener Winkel], dbo.einsatzbericht_7_2017.Bestand_Produkt3 AS [Wiener Podest], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt4 AS [Wiener Preistasche], dbo.einsatzbericht_7_2017.Bestand_Produkt5 AS [Hamburger Theke Aufkleber], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt6 AS [Hamburger Theke Textil], dbo.einsatzbericht_7_2017.Bestand_Produkt7 AS [Hamburger Podest], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt8 AS [Hamburger Sockel], dbo.einsatzbericht_7_2017.Bestand_Produkt9 AS [Hamburger Preistasche], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt10 AS [Hamburger Backing], dbo.einsatzbericht_7_2017.Bestand_Produkt11 AS [Tef Podest], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt12 AS [Tef Sockel], dbo.einsatzbericht_7_2017.Bestand_Produkt13 AS [Tef Preistasche], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt14 AS [Tef Backing], dbo.einsatzbericht_7_2017.Bestand_Produkt15 AS [Tef Router], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt16 AS [Sonder Podest], dbo.einsatzbericht_7_2017.Bestand_Produkt17 AS [Sonder Sockel], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt18 AS [Sonder Preistasche], dbo.einsatzbericht_7_2017.Bestand_Produkt19 AS [Sonder Backing], 
                         dbo.einsatzbericht_7_2017.Bestand_Produkt20 AS [Sonder Router], dbo.einsatzbericht_7_2017.Bemerkung
FROM            dbo.einsatzbericht_7_2017 INNER JOIN
                         dbo.stammdaten_7_2017 ON dbo.einsatzbericht_7_2017.stammdaten_id = dbo.stammdaten_7_2017.id INNER JOIN
                         dbo.promotion_login ON dbo.stammdaten_7_2017.Mitarbeiter = dbo.promotion_login.id
GO
/****** Object:  View [dbo].[Gesamtexport_8_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtexport_8_2017]
AS
SELECT        dbo.stammdaten_8_2017.KST, dbo.stammdaten_8_2017.Name, dbo.stammdaten_8_2017.Handelsform, dbo.stammdaten_8_2017.Strasse, 
                         dbo.stammdaten_8_2017.PLZ, dbo.stammdaten_8_2017.Ort, dbo.promotion_login.anmeldename AS Dekorateur, dbo.einsatzbericht_8_2017.Datum, 
                         dbo.einsatzbericht_8_2017.Deko_Beginn, dbo.einsatzbericht_8_2017.Deko_Ende, dbo.einsatzbericht_8_2017.Ladenbaukonzept, 
                         dbo.einsatzbericht_8_2017.Arbeiten_nach_Vorgabe AS [Arbeiten nach Vorgabe], dbo.einsatzbericht_8_2017.Bestand_Produkt1 AS [Nachlieferung Poster A1], 
                         dbo.einsatzbericht_8_2017.Bestand_Produkt2 AS [Postermodul 60 cm], dbo.einsatzbericht_8_2017.Bestand_Produkt3 AS [Nachlieferung Prospektwinkel], 
                         dbo.einsatzbericht_8_2017.Bestand_Produkt4 AS [Neue Fotos], dbo.einsatzbericht_8_2017.Bestand_Produkt5 AS [Podest neu pltziert/bearbeitet], 
                         dbo.einsatzbericht_8_2017.Bestand_Produkt6 AS [Welcome Sonderformat], dbo.einsatzbericht_8_2017.Bemerkung
FROM            dbo.einsatzbericht_8_2017 INNER JOIN
                         dbo.stammdaten_8_2017 ON dbo.einsatzbericht_8_2017.stammdaten_id = dbo.stammdaten_8_2017.id INNER JOIN
                         dbo.promotion_login ON dbo.stammdaten_8_2017.Mitarbeiter = dbo.promotion_login.id
GO
/****** Object:  View [dbo].[Gesamtexport_9_2017]    Script Date: 06.07.2018 11:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gesamtexport_9_2017]
AS
SELECT        dbo.stammdaten_9_2017.KST, dbo.stammdaten_9_2017.Name, dbo.stammdaten_9_2017.Handelsform, dbo.stammdaten_9_2017.Strasse, 
                         dbo.stammdaten_9_2017.PLZ, dbo.stammdaten_9_2017.Ort, dbo.promotion_login.anmeldename AS Dekorateur, dbo.einsatzbericht_9_2017.Datum, 
                         dbo.einsatzbericht_9_2017.Deko_Beginn, dbo.einsatzbericht_9_2017.Deko_Ende, 
                         dbo.einsatzbericht_9_2017.Bestand_Produkt1 AS [Schaufensterbeklebung Variante 1], 
                         dbo.einsatzbericht_9_2017.Bestand_Produkt2 AS [Schaufensterbeklebung Variante 2], 
                         dbo.einsatzbericht_9_2017.Bestand_Produkt3 AS [Schaufensterbeklebung Variante 3], dbo.einsatzbericht_9_2017.Bestand_Produkt4 AS [1&1 Partnerlogo Aufkleber], 
                         dbo.einsatzbericht_9_2017.Bestand_Produkt5 AS [Moodfolie 1&1], dbo.einsatzbericht_9_2017.Bemerkung
FROM            dbo.einsatzbericht_9_2017 INNER JOIN
                         dbo.stammdaten_9_2017 ON dbo.einsatzbericht_9_2017.stammdaten_id = dbo.stammdaten_9_2017.id INNER JOIN
                         dbo.promotion_login ON dbo.stammdaten_9_2017.Mitarbeiter = dbo.promotion_login.id
GO
ALTER TABLE [dbo].[einsatzbericht_6_2017] ADD  CONSTRAINT [DF_einsatzbericht_6_2017_Freigabe_Bericht_extern]  DEFAULT ((0)) FOR [Freigabe_Bericht_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_6_2017] ADD  CONSTRAINT [DF_einsatzbericht_6_2017_Freigabe_Bilder_extern]  DEFAULT ((0)) FOR [Freigabe_Bilder_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_6_2017] ADD  CONSTRAINT [DF_einsatzbericht_6_2017_Freigabe_Bericht_intern]  DEFAULT ((0)) FOR [Freigabe_Bericht_intern]
GO
ALTER TABLE [dbo].[einsatzbericht_6_2017] ADD  CONSTRAINT [DF_einsatzbericht_6_2017_Freigabe_Bilder_intern]  DEFAULT ((0)) FOR [Freigabe_Bilder_intern]
GO
ALTER TABLE [dbo].[einsatzbericht_7_2017] ADD  CONSTRAINT [DF_einsatzbericht_7_2017_Freigabe_Bericht_extern]  DEFAULT ((0)) FOR [Freigabe_Bericht_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_7_2017] ADD  CONSTRAINT [DF_einsatzbericht_7_2017_Freigabe_Bilder_extern]  DEFAULT ((0)) FOR [Freigabe_Bilder_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_7_2017] ADD  CONSTRAINT [DF_einsatzbericht_7_2017_Freigabe_Bericht_intern]  DEFAULT ((0)) FOR [Freigabe_Bericht_intern]
GO
ALTER TABLE [dbo].[einsatzbericht_7_2017] ADD  CONSTRAINT [DF_einsatzbericht_7_2017_Freigabe_Bilder_intern]  DEFAULT ((0)) FOR [Freigabe_Bilder_intern]
GO
ALTER TABLE [dbo].[einsatzbericht_8_2017] ADD  CONSTRAINT [DF_einsatzbericht_8_2017_Freigabe_Bericht_extern]  DEFAULT ((0)) FOR [Freigabe_Bericht_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_8_2017] ADD  CONSTRAINT [DF_einsatzbericht_8_2017_Freigabe_Bilder_extern]  DEFAULT ((0)) FOR [Freigabe_Bilder_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_8_2017] ADD  CONSTRAINT [DF_einsatzbericht_8_2017_Freigabe_Bericht_intern]  DEFAULT ((0)) FOR [Freigabe_Bericht_intern]
GO
ALTER TABLE [dbo].[einsatzbericht_8_2017] ADD  CONSTRAINT [DF_einsatzbericht_8_2017_Freigabe_Bilder_intern]  DEFAULT ((0)) FOR [Freigabe_Bilder_intern]
GO
ALTER TABLE [dbo].[einsatzbericht_9_2017] ADD  CONSTRAINT [DF_einsatzbericht_9_2017_Freigabe_Bericht_extern]  DEFAULT ((0)) FOR [Freigabe_Bericht_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_9_2017] ADD  CONSTRAINT [DF_einsatzbericht_9_2017_Freigabe_Bilder_extern]  DEFAULT ((0)) FOR [Freigabe_Bilder_extern]
GO
ALTER TABLE [dbo].[einsatzbericht_9_2017] ADD  CONSTRAINT [DF_einsatzbericht_9_2017_Freigabe_Bericht_intern]  DEFAULT ((0)) FOR [Freigabe_Bericht_intern]
GO
ALTER TABLE [dbo].[einsatzbericht_9_2017] ADD  CONSTRAINT [DF_einsatzbericht_9_2017_Freigabe_Bilder_intern]  DEFAULT ((0)) FOR [Freigabe_Bilder_intern]
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
         Begin Table = "einsatzbericht_6_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_6_2017"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4620
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_6_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_6_2017'
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
         Begin Table = "einsatzbericht_7_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_7_2017"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4620
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_7_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_7_2017'
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
         Begin Table = "einsatzbericht_9_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_9_2016"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4620
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_9_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_9_2016'
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
         Begin Table = "einsatzbericht_9_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_9_2017"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 135
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_9_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_9_2017'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_6_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_6_2017'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_7_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_7_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[21] 2[38] 3) )"
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
         Top = -288
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_8_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_8_2017'
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
         Top = -192
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_9_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_9_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_9_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_9_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[4] 3) )"
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
         Begin Table = "stammdaten_9_2016"
            Begin Extent = 
               Top = 16
               Left = 499
               Bottom = 241
               Right = 669
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "einsatzbericht_9_2016"
            Begin Extent = 
               Top = 25
               Left = 995
               Bottom = 233
               Right = 1284
            End
            DisplayFlags = 280
            TopColumn = 112
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 19
               Left = 0
               Bottom = 224
               Right = 170
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport'
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
         Begin Table = "einsatzbericht_6_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 249
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "stammdaten_6_2017"
            Begin Extent = 
               Top = 1
               Left = 379
               Bottom = 240
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 6
               Left = 679
               Bottom = 239
               Right = 849
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
         Column = 2115
         Alias = 2910
         Table = 1170
         Output = 720
         Append =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1400
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_2017'
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
         Begin Table = "einsatzbericht_7_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_7_2017"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 135
               Right = 458
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 205
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
         Alias = 2205
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_7_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_7_2017'
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
         Begin Table = "einsatzbericht_8_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_8_2017"
            Begin Extent = 
               Top = 6
               Left = 290
               Bottom = 135
               Right = 460
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
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
         Column = 2415
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_8_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_8_2017'
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
         Begin Table = "einsatzbericht_9_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_9_2017"
            Begin Extent = 
               Top = 6
               Left = 289
               Bottom = 135
               Right = 459
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2685
         Alias = 3105
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_9_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gesamtexport_9_2017'
GO
USE [master]
GO
ALTER DATABASE [yophone] SET  READ_WRITE 
GO
