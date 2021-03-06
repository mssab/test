USE [master]
GO
/****** Object:  Database [wilkinson]    Script Date: 06.07.2018 11:26:43 ******/
CREATE DATABASE [wilkinson]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wilkinson', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\wilkinson.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wilkinson_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\wilkinson_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wilkinson] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wilkinson].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wilkinson] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wilkinson] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wilkinson] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wilkinson] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wilkinson] SET ARITHABORT OFF 
GO
ALTER DATABASE [wilkinson] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wilkinson] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wilkinson] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wilkinson] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wilkinson] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wilkinson] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wilkinson] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wilkinson] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wilkinson] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wilkinson] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wilkinson] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wilkinson] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wilkinson] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wilkinson] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wilkinson] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wilkinson] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wilkinson] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wilkinson] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wilkinson] SET  MULTI_USER 
GO
ALTER DATABASE [wilkinson] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wilkinson] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wilkinson] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wilkinson] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [wilkinson] SET DELAYED_DURABILITY = DISABLED 
GO
USE [wilkinson]
GO
/****** Object:  Table [dbo].[Berichtsfragen]    Script Date: 06.07.2018 11:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen_02_2016]    Script Date: 06.07.2018 11:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen_02_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen_06_2016]    Script Date: 06.07.2018 11:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen_06_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen_09_2015]    Script Date: 06.07.2018 11:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen_09_2015](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen_10_2016]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen_10_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Besuchsfrage1] [varchar](max) NULL,
	[Besuchsfrage2] [varchar](max) NULL,
	[Besuchsfrage3] [varchar](max) NULL,
	[Besuchsfrage4] [varchar](max) NULL,
	[Besuchsfrage5] [varchar](max) NULL,
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
	[Frage1] [int] NULL,
	[Frage2] [int] NULL,
	[Frage3] [int] NULL,
	[Frage4] [int] NULL,
	[Frage5] [int] NULL,
	[Frage6] [int] NULL,
	[Frage7] [int] NULL,
	[Frage8] [int] NULL,
	[Frage9] [int] NULL,
	[Frage10] [int] NULL,
	[Frage11] [int] NULL,
	[Frage12] [int] NULL,
	[Frage13] [int] NULL,
	[Frage14] [int] NULL,
	[Frage15] [int] NULL,
	[Bemerkung] [text] NULL,
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
	[Neulistung_Produkt1] [int] NULL,
	[Neulistung_Produkt2] [int] NULL,
	[Neulistung_Produkt3] [int] NULL,
	[Neulistung_Produkt4] [int] NULL,
	[Neulistung_Produkt5] [int] NULL,
	[Neulistung_Produkt6] [int] NULL,
	[Neulistung_Produkt7] [int] NULL,
	[Neulistung_Produkt8] [int] NULL,
	[Neulistung_Produkt9] [int] NULL,
	[Neulistung_Produkt10] [int] NULL,
	[Neulistung_Produkt11] [int] NULL,
	[Neulistung_Produkt12] [int] NULL,
	[Neulistung_Produkt13] [int] NULL,
	[Neulistung_Produkt14] [int] NULL,
	[Neulistung_Produkt15] [int] NULL,
	[Neulistung_Produkt16] [int] NULL,
	[Neulistung_Produkt17] [int] NULL,
	[Neulistung_Produkt18] [int] NULL,
	[Neulistung_Produkt19] [int] NULL,
	[Neulistung_Produkt20] [int] NULL,
	[Neulistung_Produkt21] [int] NULL,
	[Neulistung_Produkt22] [int] NULL,
	[Neulistung_Produkt23] [int] NULL,
	[Neulistung_Produkt24] [int] NULL,
	[Neulistung_Produkt25] [int] NULL,
	[NR_Rabatt_Produkt1] [int] NULL,
	[NR_Rabatt_Produkt2] [int] NULL,
	[NR_Rabatt_Produkt3] [int] NULL,
	[NR_Rabatt_Produkt4] [int] NULL,
	[NR_Rabatt_Produkt5] [int] NULL,
	[NR_Rabatt_Produkt6] [int] NULL,
	[NR_Rabatt_Produkt7] [int] NULL,
	[NR_Rabatt_Produkt8] [int] NULL,
	[NR_Rabatt_Produkt9] [int] NULL,
	[NR_Rabatt_Produkt10] [int] NULL,
	[NR_Rabatt_Produkt11] [int] NULL,
	[NR_Rabatt_Produkt12] [int] NULL,
	[NR_Rabatt_Produkt13] [int] NULL,
	[NR_Rabatt_Produkt14] [int] NULL,
	[NR_Rabatt_Produkt15] [int] NULL,
	[NR_Rabatt_Produkt16] [int] NULL,
	[NR_Rabatt_Produkt17] [int] NULL,
	[NR_Rabatt_Produkt18] [int] NULL,
	[NR_Rabatt_Produkt19] [int] NULL,
	[NR_Rabatt_Produkt20] [int] NULL,
	[NR_Rabatt_Produkt21] [int] NULL,
	[NR_Rabatt_Produkt22] [int] NULL,
	[NR_Rabatt_Produkt23] [int] NULL,
	[NR_Rabatt_Produkt24] [int] NULL,
	[NR_Rabatt_Produkt25] [int] NULL,
	[Grund_AP_nicht_angetroffen] [varchar](max) NULL,
	[Grund_kein_Auftrag] [varchar](max) NULL,
	[Restmengen_Weihnachtsset_Anzahl] [int] NULL,
	[Anzahl_Facings_vorher] [int] NULL,
	[Anzahl_Facings_nachher] [int] NULL,
	[Silodisplay_vorhanden] [int] NULL,
	[Silodisplay_gewuenscht] [int] NULL,
	[Bericht_in_Bearbeitung] [int] NULL,
	[Verkauf_ueber_Ordersatz] [int] NULL,
 CONSTRAINT [PK_einsatzbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_02_2016]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_02_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Besuchsfrage1] [varchar](max) NULL,
	[Besuchsfrage2] [varchar](max) NULL,
	[Besuchsfrage3] [varchar](max) NULL,
	[Besuchsfrage4] [varchar](max) NULL,
	[Besuchsfrage5] [varchar](max) NULL,
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
	[Frage1] [int] NULL,
	[Frage2] [int] NULL,
	[Frage3] [int] NULL,
	[Frage4] [int] NULL,
	[Frage5] [int] NULL,
	[Frage6] [int] NULL,
	[Frage7] [int] NULL,
	[Frage8] [int] NULL,
	[Frage9] [int] NULL,
	[Frage10] [int] NULL,
	[Frage11] [int] NULL,
	[Frage12] [int] NULL,
	[Frage13] [int] NULL,
	[Frage14] [int] NULL,
	[Frage15] [int] NULL,
	[Bemerkung] [text] NULL,
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
	[Neulistung_Produkt1] [int] NULL,
	[Neulistung_Produkt2] [int] NULL,
	[Neulistung_Produkt3] [int] NULL,
	[Neulistung_Produkt4] [int] NULL,
	[Neulistung_Produkt5] [int] NULL,
	[Neulistung_Produkt6] [int] NULL,
	[Neulistung_Produkt7] [int] NULL,
	[Neulistung_Produkt8] [int] NULL,
	[Neulistung_Produkt9] [int] NULL,
	[Neulistung_Produkt10] [int] NULL,
	[Neulistung_Produkt11] [int] NULL,
	[Neulistung_Produkt12] [int] NULL,
	[Neulistung_Produkt13] [int] NULL,
	[Neulistung_Produkt14] [int] NULL,
	[Neulistung_Produkt15] [int] NULL,
	[Neulistung_Produkt16] [int] NULL,
	[Neulistung_Produkt17] [int] NULL,
	[Neulistung_Produkt18] [int] NULL,
	[Neulistung_Produkt19] [int] NULL,
	[Neulistung_Produkt20] [int] NULL,
	[Neulistung_Produkt21] [int] NULL,
	[Neulistung_Produkt22] [int] NULL,
	[Neulistung_Produkt23] [int] NULL,
	[Neulistung_Produkt24] [int] NULL,
	[Neulistung_Produkt25] [int] NULL,
	[NR_Rabatt_Produkt1] [int] NULL,
	[NR_Rabatt_Produkt2] [int] NULL,
	[NR_Rabatt_Produkt3] [int] NULL,
	[NR_Rabatt_Produkt4] [int] NULL,
	[NR_Rabatt_Produkt5] [int] NULL,
	[NR_Rabatt_Produkt6] [int] NULL,
	[NR_Rabatt_Produkt7] [int] NULL,
	[NR_Rabatt_Produkt8] [int] NULL,
	[NR_Rabatt_Produkt9] [int] NULL,
	[NR_Rabatt_Produkt10] [int] NULL,
	[NR_Rabatt_Produkt11] [int] NULL,
	[NR_Rabatt_Produkt12] [int] NULL,
	[NR_Rabatt_Produkt13] [int] NULL,
	[NR_Rabatt_Produkt14] [int] NULL,
	[NR_Rabatt_Produkt15] [int] NULL,
	[NR_Rabatt_Produkt16] [int] NULL,
	[NR_Rabatt_Produkt17] [int] NULL,
	[NR_Rabatt_Produkt18] [int] NULL,
	[NR_Rabatt_Produkt19] [int] NULL,
	[NR_Rabatt_Produkt20] [int] NULL,
	[NR_Rabatt_Produkt21] [int] NULL,
	[NR_Rabatt_Produkt22] [int] NULL,
	[NR_Rabatt_Produkt23] [int] NULL,
	[NR_Rabatt_Produkt24] [int] NULL,
	[NR_Rabatt_Produkt25] [int] NULL,
	[Grund_AP_nicht_angetroffen] [varchar](max) NULL,
	[Grund_kein_Auftrag] [varchar](max) NULL,
	[Restmengen_Weihnachtsset_Anzahl] [int] NULL,
	[Anzahl_Facings_vorher] [int] NULL,
	[Anzahl_Facings_nachher] [int] NULL,
	[Silodisplay_vorhanden] [int] NULL,
	[Silodisplay_gewuenscht] [int] NULL,
	[Bericht_in_Bearbeitung] [int] NULL,
	[Verkauf_ueber_Ordersatz] [int] NULL,
 CONSTRAINT [PK_einsatzbericht_02_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_06_2016]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_06_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Besuchsfrage1] [varchar](max) NULL,
	[Besuchsfrage2] [varchar](max) NULL,
	[Besuchsfrage3] [varchar](max) NULL,
	[Besuchsfrage4] [varchar](max) NULL,
	[Besuchsfrage5] [varchar](max) NULL,
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
	[Frage1] [int] NULL,
	[Frage2] [int] NULL,
	[Frage3] [int] NULL,
	[Frage4] [int] NULL,
	[Frage5] [int] NULL,
	[Frage6] [int] NULL,
	[Frage7] [int] NULL,
	[Frage8] [int] NULL,
	[Frage9] [int] NULL,
	[Frage10] [int] NULL,
	[Frage11] [int] NULL,
	[Frage12] [int] NULL,
	[Frage13] [int] NULL,
	[Frage14] [int] NULL,
	[Frage15] [int] NULL,
	[Bemerkung] [text] NULL,
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
	[Neulistung_Produkt1] [int] NULL,
	[Neulistung_Produkt2] [int] NULL,
	[Neulistung_Produkt3] [int] NULL,
	[Neulistung_Produkt4] [int] NULL,
	[Neulistung_Produkt5] [int] NULL,
	[Neulistung_Produkt6] [int] NULL,
	[Neulistung_Produkt7] [int] NULL,
	[Neulistung_Produkt8] [int] NULL,
	[Neulistung_Produkt9] [int] NULL,
	[Neulistung_Produkt10] [int] NULL,
	[Neulistung_Produkt11] [int] NULL,
	[Neulistung_Produkt12] [int] NULL,
	[Neulistung_Produkt13] [int] NULL,
	[Neulistung_Produkt14] [int] NULL,
	[Neulistung_Produkt15] [int] NULL,
	[Neulistung_Produkt16] [int] NULL,
	[Neulistung_Produkt17] [int] NULL,
	[Neulistung_Produkt18] [int] NULL,
	[Neulistung_Produkt19] [int] NULL,
	[Neulistung_Produkt20] [int] NULL,
	[Neulistung_Produkt21] [int] NULL,
	[Neulistung_Produkt22] [int] NULL,
	[Neulistung_Produkt23] [int] NULL,
	[Neulistung_Produkt24] [int] NULL,
	[Neulistung_Produkt25] [int] NULL,
	[NR_Rabatt_Produkt1] [int] NULL,
	[NR_Rabatt_Produkt2] [int] NULL,
	[NR_Rabatt_Produkt3] [int] NULL,
	[NR_Rabatt_Produkt4] [int] NULL,
	[NR_Rabatt_Produkt5] [int] NULL,
	[NR_Rabatt_Produkt6] [int] NULL,
	[NR_Rabatt_Produkt7] [int] NULL,
	[NR_Rabatt_Produkt8] [int] NULL,
	[NR_Rabatt_Produkt9] [int] NULL,
	[NR_Rabatt_Produkt10] [int] NULL,
	[NR_Rabatt_Produkt11] [int] NULL,
	[NR_Rabatt_Produkt12] [int] NULL,
	[NR_Rabatt_Produkt13] [int] NULL,
	[NR_Rabatt_Produkt14] [int] NULL,
	[NR_Rabatt_Produkt15] [int] NULL,
	[NR_Rabatt_Produkt16] [int] NULL,
	[NR_Rabatt_Produkt17] [int] NULL,
	[NR_Rabatt_Produkt18] [int] NULL,
	[NR_Rabatt_Produkt19] [int] NULL,
	[NR_Rabatt_Produkt20] [int] NULL,
	[NR_Rabatt_Produkt21] [int] NULL,
	[NR_Rabatt_Produkt22] [int] NULL,
	[NR_Rabatt_Produkt23] [int] NULL,
	[NR_Rabatt_Produkt24] [int] NULL,
	[NR_Rabatt_Produkt25] [int] NULL,
	[Grund_AP_nicht_angetroffen] [varchar](max) NULL,
	[Grund_kein_Auftrag] [varchar](max) NULL,
	[Restmengen_Weihnachtsset_Anzahl] [int] NULL,
	[Anzahl_Facings_vorher] [int] NULL,
	[Anzahl_Facings_nachher] [int] NULL,
	[Silodisplay_vorhanden] [int] NULL,
	[Silodisplay_gewuenscht] [int] NULL,
	[Bericht_in_Bearbeitung] [int] NULL,
	[Verkauf_ueber_Ordersatz] [int] NULL,
 CONSTRAINT [PK_einsatzbericht_06_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_09_2015]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_09_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Besuchsfrage1] [varchar](max) NULL,
	[Besuchsfrage2] [varchar](max) NULL,
	[Besuchsfrage3] [varchar](max) NULL,
	[Besuchsfrage4] [varchar](max) NULL,
	[Besuchsfrage5] [varchar](max) NULL,
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
	[Frage1] [int] NULL,
	[Frage2] [int] NULL,
	[Frage3] [int] NULL,
	[Frage4] [int] NULL,
	[Frage5] [int] NULL,
	[Frage6] [int] NULL,
	[Frage7] [int] NULL,
	[Frage8] [int] NULL,
	[Frage9] [int] NULL,
	[Frage10] [int] NULL,
	[Frage11] [int] NULL,
	[Frage12] [int] NULL,
	[Frage13] [int] NULL,
	[Frage14] [int] NULL,
	[Frage15] [int] NULL,
	[Bemerkung] [text] NULL,
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
	[Neulistung_Produkt1] [int] NULL,
	[Neulistung_Produkt2] [int] NULL,
	[Neulistung_Produkt3] [int] NULL,
	[Neulistung_Produkt4] [int] NULL,
	[Neulistung_Produkt5] [int] NULL,
	[Neulistung_Produkt6] [int] NULL,
	[Neulistung_Produkt7] [int] NULL,
	[Neulistung_Produkt8] [int] NULL,
	[Neulistung_Produkt9] [int] NULL,
	[Neulistung_Produkt10] [int] NULL,
	[Neulistung_Produkt11] [int] NULL,
	[Neulistung_Produkt12] [int] NULL,
	[Neulistung_Produkt13] [int] NULL,
	[Neulistung_Produkt14] [int] NULL,
	[Neulistung_Produkt15] [int] NULL,
	[Neulistung_Produkt16] [int] NULL,
	[Neulistung_Produkt17] [int] NULL,
	[Neulistung_Produkt18] [int] NULL,
	[Neulistung_Produkt19] [int] NULL,
	[Neulistung_Produkt20] [int] NULL,
	[Neulistung_Produkt21] [int] NULL,
	[Neulistung_Produkt22] [int] NULL,
	[Neulistung_Produkt23] [int] NULL,
	[Neulistung_Produkt24] [int] NULL,
	[Neulistung_Produkt25] [int] NULL,
	[NR_Rabatt_Produkt1] [int] NULL,
	[NR_Rabatt_Produkt2] [int] NULL,
	[NR_Rabatt_Produkt3] [int] NULL,
	[NR_Rabatt_Produkt4] [int] NULL,
	[NR_Rabatt_Produkt5] [int] NULL,
	[NR_Rabatt_Produkt6] [int] NULL,
	[NR_Rabatt_Produkt7] [int] NULL,
	[NR_Rabatt_Produkt8] [int] NULL,
	[NR_Rabatt_Produkt9] [int] NULL,
	[NR_Rabatt_Produkt10] [int] NULL,
	[NR_Rabatt_Produkt11] [int] NULL,
	[NR_Rabatt_Produkt12] [int] NULL,
	[NR_Rabatt_Produkt13] [int] NULL,
	[NR_Rabatt_Produkt14] [int] NULL,
	[NR_Rabatt_Produkt15] [int] NULL,
	[NR_Rabatt_Produkt16] [int] NULL,
	[NR_Rabatt_Produkt17] [int] NULL,
	[NR_Rabatt_Produkt18] [int] NULL,
	[NR_Rabatt_Produkt19] [int] NULL,
	[NR_Rabatt_Produkt20] [int] NULL,
	[NR_Rabatt_Produkt21] [int] NULL,
	[NR_Rabatt_Produkt22] [int] NULL,
	[NR_Rabatt_Produkt23] [int] NULL,
	[NR_Rabatt_Produkt24] [int] NULL,
	[NR_Rabatt_Produkt25] [int] NULL,
	[Grund_AP_nicht_angetroffen] [varchar](max) NULL,
	[Grund_kein_Auftrag] [varchar](max) NULL,
	[Restmengen_Weihnachtsset_Anzahl] [int] NULL,
	[Anzahl_Facings_vorher] [int] NULL,
	[Anzahl_Facings_nachher] [int] NULL,
	[Silodisplay_vorhanden] [int] NULL,
	[Silodisplay_gewuenscht] [int] NULL,
	[Bericht_in_Bearbeitung] [int] NULL,
	[Verkauf_ueber_Ordersatz] [int] NULL,
 CONSTRAINT [PK_einsatzbericht_09_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_10_2016]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_10_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Besuchsfrage1] [varchar](max) NULL,
	[Besuchsfrage2] [varchar](max) NULL,
	[Besuchsfrage3] [varchar](max) NULL,
	[Besuchsfrage4] [varchar](max) NULL,
	[Besuchsfrage5] [varchar](max) NULL,
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
	[Frage1] [int] NULL,
	[Frage2] [int] NULL,
	[Frage3] [int] NULL,
	[Frage4] [int] NULL,
	[Frage5] [int] NULL,
	[Frage6] [int] NULL,
	[Frage7] [int] NULL,
	[Frage8] [int] NULL,
	[Frage9] [int] NULL,
	[Frage10] [int] NULL,
	[Frage11] [int] NULL,
	[Frage12] [int] NULL,
	[Frage13] [int] NULL,
	[Frage14] [int] NULL,
	[Frage15] [int] NULL,
	[Bemerkung] [text] NULL,
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
	[Neulistung_Produkt1] [int] NULL,
	[Neulistung_Produkt2] [int] NULL,
	[Neulistung_Produkt3] [int] NULL,
	[Neulistung_Produkt4] [int] NULL,
	[Neulistung_Produkt5] [int] NULL,
	[Neulistung_Produkt6] [int] NULL,
	[Neulistung_Produkt7] [int] NULL,
	[Neulistung_Produkt8] [int] NULL,
	[Neulistung_Produkt9] [int] NULL,
	[Neulistung_Produkt10] [int] NULL,
	[Neulistung_Produkt11] [int] NULL,
	[Neulistung_Produkt12] [int] NULL,
	[Neulistung_Produkt13] [int] NULL,
	[Neulistung_Produkt14] [int] NULL,
	[Neulistung_Produkt15] [int] NULL,
	[Neulistung_Produkt16] [int] NULL,
	[Neulistung_Produkt17] [int] NULL,
	[Neulistung_Produkt18] [int] NULL,
	[Neulistung_Produkt19] [int] NULL,
	[Neulistung_Produkt20] [int] NULL,
	[Neulistung_Produkt21] [int] NULL,
	[Neulistung_Produkt22] [int] NULL,
	[Neulistung_Produkt23] [int] NULL,
	[Neulistung_Produkt24] [int] NULL,
	[Neulistung_Produkt25] [int] NULL,
	[NR_Rabatt_Produkt1] [int] NULL,
	[NR_Rabatt_Produkt2] [int] NULL,
	[NR_Rabatt_Produkt3] [int] NULL,
	[NR_Rabatt_Produkt4] [int] NULL,
	[NR_Rabatt_Produkt5] [int] NULL,
	[NR_Rabatt_Produkt6] [int] NULL,
	[NR_Rabatt_Produkt7] [int] NULL,
	[NR_Rabatt_Produkt8] [int] NULL,
	[NR_Rabatt_Produkt9] [int] NULL,
	[NR_Rabatt_Produkt10] [int] NULL,
	[NR_Rabatt_Produkt11] [int] NULL,
	[NR_Rabatt_Produkt12] [int] NULL,
	[NR_Rabatt_Produkt13] [int] NULL,
	[NR_Rabatt_Produkt14] [int] NULL,
	[NR_Rabatt_Produkt15] [int] NULL,
	[NR_Rabatt_Produkt16] [int] NULL,
	[NR_Rabatt_Produkt17] [int] NULL,
	[NR_Rabatt_Produkt18] [int] NULL,
	[NR_Rabatt_Produkt19] [int] NULL,
	[NR_Rabatt_Produkt20] [int] NULL,
	[NR_Rabatt_Produkt21] [int] NULL,
	[NR_Rabatt_Produkt22] [int] NULL,
	[NR_Rabatt_Produkt23] [int] NULL,
	[NR_Rabatt_Produkt24] [int] NULL,
	[NR_Rabatt_Produkt25] [int] NULL,
	[Grund_AP_nicht_angetroffen] [varchar](max) NULL,
	[Grund_kein_Auftrag] [varchar](max) NULL,
	[Restmengen_Weihnachtsset_Anzahl] [int] NULL,
	[Anzahl_Facings_vorher] [int] NULL,
	[Anzahl_Facings_nachher] [int] NULL,
	[Silodisplay_vorhanden] [int] NULL,
	[Silodisplay_gewuenscht] [int] NULL,
	[Bericht_in_Bearbeitung] [int] NULL,
	[Verkauf_ueber_Ordersatz] [int] NULL,
 CONSTRAINT [PK_einsatzbericht_10_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fragen]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fragen](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fragen_02_2016]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fragen_02_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fragen_06_2016]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fragen_06_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fragen_09_2015]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fragen_09_2015](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fragen_10_2016]    Script Date: 06.07.2018 11:26:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fragen_10_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_02_2016]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_02_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_06_2016]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_06_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_09_2015]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_09_2015](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_10_2016]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_10_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_login]    Script Date: 06.07.2018 11:26:46 ******/
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
/****** Object:  Table [dbo].[stammdaten]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GP_ID] [bigint] NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[Entscheider] [varchar](50) NULL,
	[mitarbeiter] [int] NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten__neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_02_2016]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_02_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GP_ID] [bigint] NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[Entscheider] [varchar](50) NULL,
	[mitarbeiter] [int] NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten_02_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_06_2016]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_06_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GP_ID] [bigint] NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[Entscheider] [varchar](50) NULL,
	[mitarbeiter] [int] NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten_06_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_09_2015]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_09_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GP_ID] [bigint] NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[Entscheider] [varchar](50) NULL,
	[mitarbeiter] [int] NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten_09_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_10_2016]    Script Date: 06.07.2018 11:26:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_10_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GP_ID] [bigint] NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[Entscheider] [varchar](50) NULL,
	[mitarbeiter] [int] NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten_10_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Auswertung_Intern]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Intern]
AS
SELECT     dbo.einsatzbericht.id, dbo.einsatzbericht.stammdaten_id, dbo.stammdaten.mitarbeiter, dbo.einsatzbericht.Datum, dbo.einsatzbericht.Besuchsfrage1, 
                      dbo.einsatzbericht.Besuchsfrage2, dbo.einsatzbericht.Besuchsfrage3, dbo.einsatzbericht.Besuchsfrage4, dbo.einsatzbericht.Besuchsfrage5, 
                      dbo.einsatzbericht.Bestand_Produkt1, dbo.einsatzbericht.Bestand_Produkt2, dbo.einsatzbericht.Bestand_Produkt3, 
                      dbo.einsatzbericht.Bestand_Produkt4, dbo.einsatzbericht.Bestand_Produkt5, dbo.einsatzbericht.Bestand_Produkt6, 
                      dbo.einsatzbericht.Bestand_Produkt7, dbo.einsatzbericht.Bestand_Produkt8, dbo.einsatzbericht.Bestand_Produkt9, 
                      dbo.einsatzbericht.Bestand_Produkt10, dbo.einsatzbericht.Bestand_Produkt11, dbo.einsatzbericht.Bestand_Produkt12, 
                      dbo.einsatzbericht.Bestand_Produkt13, dbo.einsatzbericht.Verkauf_Produkt1, dbo.einsatzbericht.Verkauf_Produkt2, 
                      dbo.einsatzbericht.Verkauf_Produkt3, dbo.einsatzbericht.Verkauf_Produkt4, dbo.einsatzbericht.Verkauf_Produkt5, dbo.einsatzbericht.Verkauf_Produkt6, 
                      dbo.einsatzbericht.Verkauf_Produkt7, dbo.einsatzbericht.Verkauf_Produkt8, dbo.einsatzbericht.Verkauf_Produkt9, 
                      dbo.einsatzbericht.Verkauf_Produkt10, dbo.einsatzbericht.Verkauf_Produkt11, dbo.einsatzbericht.Verkauf_Produkt12, 
                      dbo.einsatzbericht.Verkauf_Produkt13, dbo.einsatzbericht.Verkauf_ueber_Ordersatz, dbo.einsatzbericht.Neulistung_Produkt1, 
                      dbo.einsatzbericht.Neulistung_Produkt2, dbo.einsatzbericht.Neulistung_Produkt3, dbo.einsatzbericht.Neulistung_Produkt4, 
                      dbo.einsatzbericht.Neulistung_Produkt5, dbo.einsatzbericht.Neulistung_Produkt6, dbo.einsatzbericht.Neulistung_Produkt7, 
                      dbo.einsatzbericht.Neulistung_Produkt8, dbo.einsatzbericht.Neulistung_Produkt9, dbo.einsatzbericht.Neulistung_Produkt10, 
                      dbo.einsatzbericht.Neulistung_Produkt11, dbo.einsatzbericht.Neulistung_Produkt12, dbo.einsatzbericht.Neulistung_Produkt13, 
                      dbo.einsatzbericht.Grund_AP_nicht_angetroffen, dbo.einsatzbericht.Grund_kein_Auftrag, dbo.einsatzbericht.Restmengen_Weihnachtsset_Anzahl, 
                      dbo.einsatzbericht.Anzahl_Facings_vorher, dbo.einsatzbericht.Anzahl_Facings_nachher, dbo.einsatzbericht.Silodisplay_vorhanden, 
                      dbo.einsatzbericht.Silodisplay_gewuenscht, 
                      dbo.einsatzbericht.Anzahl_Facings_nachher - dbo.einsatzbericht.Anzahl_Facings_vorher AS Facing_Ausweitung, dbo.einsatzbericht.Frage1, 
                      dbo.einsatzbericht.Frage2, dbo.einsatzbericht.Frage3, dbo.einsatzbericht.Frage4, dbo.einsatzbericht.Frage5, dbo.einsatzbericht.Bemerkung
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
WHERE     (dbo.stammdaten.freigabe_bericht_extern = 'ja') OR
                      (dbo.einsatzbericht.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_intern]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_intern]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (mitarbeiter = 1)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 1)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 1)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 1)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 1)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 1)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 1)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (mitarbeiter = 2)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 2)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 2)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 2)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 2)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 2)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (mitarbeiter = 4)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 4)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 4)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 4)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 4)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 4)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 4)

GO
/****** Object:  View [dbo].[auswertung_verkaeufe_intern]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_intern]
AS
SELECT     dbo.Auswertung_Intern.mitarbeiter, SUM(dbo.Auswertung_Intern.Verkauf_Produkt1) AS Expr1, SUM(dbo.Auswertung_Intern.Verkauf_Produkt2) AS Expr2, 
                      SUM(dbo.Auswertung_Intern.Verkauf_Produkt3) AS Expr3, SUM(dbo.Auswertung_Intern.Verkauf_Produkt4) AS Expr4, 
                      SUM(dbo.Auswertung_Intern.Verkauf_Produkt5) AS Expr5, SUM(dbo.Auswertung_Intern.Verkauf_Produkt6) AS Expr6, 
                      SUM(dbo.Auswertung_Intern.Verkauf_Produkt7) AS Expr7, SUM(dbo.Auswertung_Intern.Verkauf_Produkt8) AS Expr8, 
                      SUM(dbo.Auswertung_Intern.Verkauf_Produkt9) AS Expr9, SUM(dbo.Auswertung_Intern.Verkauf_Produkt10) AS Expr10, 
                      SUM(dbo.Auswertung_Intern.Verkauf_Produkt11) AS Expr11, SUM(dbo.Auswertung_Intern.Verkauf_Produkt12) AS Expr12, 
                      SUM(dbo.Auswertung_Intern.Verkauf_Produkt13) AS Expr13, SUM(dbo.Auswertung_Intern.Verkauf_ueber_Ordersatz) AS Expr14, 
                      dbo.auswertung_besuchsfragen_intern.[Facings erweitert]
FROM         dbo.Auswertung_Intern INNER JOIN
                      dbo.auswertung_besuchsfragen_intern ON dbo.Auswertung_Intern.mitarbeiter = dbo.auswertung_besuchsfragen_intern.mitarbeiter
GROUP BY dbo.Auswertung_Intern.mitarbeiter, dbo.auswertung_besuchsfragen_intern.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_intern]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_intern]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 1) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 1) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 1) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 1) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 1) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 1) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 1)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 2) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 2) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 2) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 2) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 2) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 2) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 4) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 4) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 4) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 4) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 4) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 4) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 4)

GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_intern]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_intern]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 1and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 1)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 and Besuchsfrage1='ja')  AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern AS Auswertung_Intern_1
WHERE     (mitarbeiter = 4)
GO
/****** Object:  View [dbo].[Auswertung_Kundenseite]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Kundenseite]
AS
SELECT     dbo.einsatzbericht.id, dbo.einsatzbericht.stammdaten_id, dbo.stammdaten.mitarbeiter, dbo.einsatzbericht.Datum, dbo.einsatzbericht.Besuchsfrage1, 
                      dbo.einsatzbericht.Besuchsfrage2, dbo.einsatzbericht.Besuchsfrage3, dbo.einsatzbericht.Besuchsfrage4, dbo.einsatzbericht.Besuchsfrage5, 
                      dbo.einsatzbericht.Bestand_Produkt1, dbo.einsatzbericht.Bestand_Produkt2, dbo.einsatzbericht.Bestand_Produkt3, 
                      dbo.einsatzbericht.Bestand_Produkt4, dbo.einsatzbericht.Bestand_Produkt5, dbo.einsatzbericht.Bestand_Produkt6, 
                      dbo.einsatzbericht.Bestand_Produkt7, dbo.einsatzbericht.Bestand_Produkt8, dbo.einsatzbericht.Bestand_Produkt9, 
                      dbo.einsatzbericht.Bestand_Produkt10, dbo.einsatzbericht.Bestand_Produkt11, dbo.einsatzbericht.Bestand_Produkt12, 
                      dbo.einsatzbericht.Bestand_Produkt13, dbo.einsatzbericht.Verkauf_Produkt1, dbo.einsatzbericht.Verkauf_Produkt2, 
                      dbo.einsatzbericht.Verkauf_Produkt3, dbo.einsatzbericht.Verkauf_Produkt4, dbo.einsatzbericht.Verkauf_Produkt5, dbo.einsatzbericht.Verkauf_Produkt6, 
                      dbo.einsatzbericht.Verkauf_Produkt7, dbo.einsatzbericht.Verkauf_Produkt8, dbo.einsatzbericht.Verkauf_Produkt9, 
                      dbo.einsatzbericht.Verkauf_Produkt10, dbo.einsatzbericht.Verkauf_Produkt11, dbo.einsatzbericht.Verkauf_Produkt12, 
                      dbo.einsatzbericht.Verkauf_Produkt13, dbo.einsatzbericht.Verkauf_ueber_Ordersatz, dbo.einsatzbericht.Neulistung_Produkt1, 
                      dbo.einsatzbericht.Neulistung_Produkt2, dbo.einsatzbericht.Neulistung_Produkt3, dbo.einsatzbericht.Neulistung_Produkt4, 
                      dbo.einsatzbericht.Neulistung_Produkt5, dbo.einsatzbericht.Neulistung_Produkt6, dbo.einsatzbericht.Neulistung_Produkt7, 
                      dbo.einsatzbericht.Neulistung_Produkt8, dbo.einsatzbericht.Neulistung_Produkt9, dbo.einsatzbericht.Neulistung_Produkt10, 
                      dbo.einsatzbericht.Neulistung_Produkt11, dbo.einsatzbericht.Neulistung_Produkt12, dbo.einsatzbericht.Neulistung_Produkt13, 
                      dbo.einsatzbericht.Grund_AP_nicht_angetroffen, dbo.einsatzbericht.Grund_kein_Auftrag, dbo.einsatzbericht.Restmengen_Weihnachtsset_Anzahl, 
                      dbo.einsatzbericht.Anzahl_Facings_vorher, dbo.einsatzbericht.Anzahl_Facings_nachher, dbo.einsatzbericht.Silodisplay_vorhanden, 
                      dbo.einsatzbericht.Silodisplay_gewuenscht, 
                      dbo.einsatzbericht.Anzahl_Facings_nachher - dbo.einsatzbericht.Anzahl_Facings_vorher AS Facing_Ausweitung, dbo.einsatzbericht.Frage1, 
                      dbo.einsatzbericht.Frage2, dbo.einsatzbericht.Frage3, dbo.einsatzbericht.Frage4, dbo.einsatzbericht.Frage5, dbo.einsatzbericht.Bemerkung
FROM         dbo.einsatzbericht INNER JOIN
                      dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id
WHERE     (dbo.stammdaten.freigabe_bericht_intern = 'ja') OR
                      (dbo.einsatzbericht.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_Kundenseite]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_besuchsfragen_Kundenseite]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (mitarbeiter = 1)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 1)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 1)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 1)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 1)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 1)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 1)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (mitarbeiter = 2)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 2)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 2)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 2)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 2)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 2)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (mitarbeiter = 4)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 4)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 4)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 4)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 4)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 4)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 4)


GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_Kundenseite]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_nichtantreffen_Kundenseite]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 1) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 1) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 1) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 1) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 1) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 1) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 1)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 2) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 2) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 2) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 2) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 2) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 2) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 4) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 4) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 4) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 4) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 4) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 4) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 4)


GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_Kundenseite]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_Kundenseite]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 1 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 1)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 2 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 4 and Besuchsfrage1='ja' ) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 4)
GO
/****** Object:  View [dbo].[auswertung_verkaeufe_Kundenseite]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_Kundenseite]
AS
SELECT     dbo.Auswertung_Kundenseite.mitarbeiter, SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt10) AS Expr10, SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt12) AS Expr12, SUM(dbo.Auswertung_Kundenseite.Verkauf_Produkt13) AS Expr13, 
                      SUM(dbo.Auswertung_Kundenseite.Verkauf_ueber_Ordersatz) AS Expr14, dbo.auswertung_besuchsfragen_Kundenseite.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite ON 
                      dbo.Auswertung_Kundenseite.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite.[Facings erweitert]
GO
/****** Object:  View [dbo].[Auswertung_Intern_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Intern_09_2015]
AS
SELECT     dbo.einsatzbericht_09_2015.id, dbo.einsatzbericht_09_2015.stammdaten_id, dbo.stammdaten_09_2015.mitarbeiter, 
                      dbo.einsatzbericht_09_2015.Datum, dbo.einsatzbericht_09_2015.Besuchsfrage1, dbo.einsatzbericht_09_2015.Besuchsfrage2, 
                      dbo.einsatzbericht_09_2015.Besuchsfrage3, dbo.einsatzbericht_09_2015.Besuchsfrage4, dbo.einsatzbericht_09_2015.Besuchsfrage5, 
                      dbo.einsatzbericht_09_2015.Verkauf_Produkt1, dbo.einsatzbericht_09_2015.Verkauf_Produkt2, dbo.einsatzbericht_09_2015.Verkauf_Produkt3, 
                      dbo.einsatzbericht_09_2015.Verkauf_Produkt4, dbo.einsatzbericht_09_2015.Verkauf_Produkt5, dbo.einsatzbericht_09_2015.Verkauf_Produkt6, 
                      dbo.einsatzbericht_09_2015.Verkauf_Produkt7, dbo.einsatzbericht_09_2015.Verkauf_Produkt8, dbo.einsatzbericht_09_2015.Verkauf_Produkt9, 
                      dbo.einsatzbericht_09_2015.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_09_2015.Grund_kein_Auftrag, 
                      dbo.einsatzbericht_09_2015.Anzahl_Facings_vorher, dbo.einsatzbericht_09_2015.Anzahl_Facings_nachher, 
                      dbo.einsatzbericht_09_2015.Anzahl_Facings_nachher - dbo.einsatzbericht_09_2015.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                      dbo.einsatzbericht_09_2015.Frage1, dbo.einsatzbericht_09_2015.Frage2, dbo.einsatzbericht_09_2015.Frage3, dbo.einsatzbericht_09_2015.Frage4, 
                      dbo.einsatzbericht_09_2015.Frage5, dbo.einsatzbericht_09_2015.Bemerkung, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt1, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt2, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt3, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt4, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt5, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt6, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt7, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt8, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt9, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt10, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt11, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt12, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt13
FROM         dbo.einsatzbericht_09_2015 INNER JOIN
                      dbo.stammdaten_09_2015 ON dbo.einsatzbericht_09_2015.stammdaten_id = dbo.stammdaten_09_2015.id
WHERE     (dbo.stammdaten_09_2015.freigabe_bericht_extern = 'ja') OR
                      (dbo.einsatzbericht_09_2015.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_intern_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_intern_09_2015]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (mitarbeiter = 9)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 9)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 9)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 9)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 9)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 9)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 9)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (mitarbeiter = 10)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 10)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 10)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 10)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 10)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 10)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (mitarbeiter = 8)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 8)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 8)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 8)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 8)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 8)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[Auswertung_Kundenseite_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Kundenseite_09_2015]
AS
SELECT     dbo.einsatzbericht_09_2015.id, dbo.einsatzbericht_09_2015.stammdaten_id, dbo.stammdaten_09_2015.mitarbeiter, 
                      dbo.einsatzbericht_09_2015.Datum, dbo.einsatzbericht_09_2015.Besuchsfrage1, dbo.einsatzbericht_09_2015.Besuchsfrage2, 
                      dbo.einsatzbericht_09_2015.Besuchsfrage3, dbo.einsatzbericht_09_2015.Besuchsfrage4, dbo.einsatzbericht_09_2015.Besuchsfrage5, 
                      dbo.einsatzbericht_09_2015.Verkauf_Produkt1, dbo.einsatzbericht_09_2015.Verkauf_Produkt2, dbo.einsatzbericht_09_2015.Verkauf_Produkt3, 
                      dbo.einsatzbericht_09_2015.Verkauf_Produkt4, dbo.einsatzbericht_09_2015.Verkauf_Produkt5, dbo.einsatzbericht_09_2015.Verkauf_Produkt6, 
                      dbo.einsatzbericht_09_2015.Verkauf_Produkt7, dbo.einsatzbericht_09_2015.Verkauf_Produkt8, dbo.einsatzbericht_09_2015.Verkauf_Produkt9, 
                      dbo.einsatzbericht_09_2015.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_09_2015.Grund_kein_Auftrag, 
                      dbo.einsatzbericht_09_2015.Anzahl_Facings_vorher, dbo.einsatzbericht_09_2015.Anzahl_Facings_nachher, 
                      dbo.einsatzbericht_09_2015.Anzahl_Facings_nachher - dbo.einsatzbericht_09_2015.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                      dbo.einsatzbericht_09_2015.Frage1, dbo.einsatzbericht_09_2015.Frage2, dbo.einsatzbericht_09_2015.Frage3, dbo.einsatzbericht_09_2015.Frage4, 
                      dbo.einsatzbericht_09_2015.Frage5, dbo.einsatzbericht_09_2015.Bemerkung, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt1, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt2, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt3, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt4, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt5, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt6, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt7, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt8, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt9, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt10, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt11, 
                      dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt12, dbo.einsatzbericht_09_2015.NR_Rabatt_Produkt13
FROM         dbo.einsatzbericht_09_2015 INNER JOIN
                      dbo.stammdaten_09_2015 ON dbo.einsatzbericht_09_2015.stammdaten_id = dbo.stammdaten_09_2015.id
WHERE     (dbo.stammdaten_09_2015.freigabe_bericht_intern = 'ja') OR
                      (dbo.einsatzbericht_09_2015.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_Kundenseite_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_Kundenseite_09_2015]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (mitarbeiter = 9)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 9)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 9)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 9)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 9)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 9)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 9)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (mitarbeiter = 10)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 10)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 10)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 10)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 10)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 10)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (mitarbeiter = 8)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 8)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 8)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 8)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 8)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 8)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_Kundenseite_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_Kundenseite_09_2015]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 9) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 9) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 9) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 9) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 9) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 9) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 9)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 10) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 10) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 10) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 10) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 10) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 10) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 8) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 8) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 8) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 8) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 8) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 8) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_Kundenseite_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_Kundenseite_09_2015]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 9)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_09_2015 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_verkaeufe_Kundenseite_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_Kundenseite_09_2015]
AS
SELECT     dbo.Auswertung_Kundenseite_09_2015.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_09_2015.Verkauf_Produkt9) AS Expr9, 
                      dbo.auswertung_besuchsfragen_Kundenseite_09_2015.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite_09_2015 INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite_09_2015 ON 
                      dbo.Auswertung_Kundenseite_09_2015.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_09_2015.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_09_2015.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_09_2015.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_intern_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_intern_09_2015]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 9) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 9) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 9) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 9) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 9) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 9) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 9)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 10) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 10) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 10) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 10) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 10) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 10) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 8) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 8) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 8) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 8) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 8) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 8) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_intern_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_intern_09_2015]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 9 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 9)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_09_2015 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_verkaeufe_intern_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_intern_09_2015]
AS
SELECT     dbo.Auswertung_Intern_09_2015.mitarbeiter, SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_09_2015.Verkauf_Produkt9) AS Expr9, 
                      dbo.auswertung_besuchsfragen_intern_09_2015.[Facings erweitert]
FROM         dbo.Auswertung_Intern_09_2015 INNER JOIN
                      dbo.auswertung_besuchsfragen_intern_09_2015 ON 
                      dbo.Auswertung_Intern_09_2015.mitarbeiter = dbo.auswertung_besuchsfragen_intern_09_2015.mitarbeiter
GROUP BY dbo.Auswertung_Intern_09_2015.mitarbeiter, dbo.auswertung_besuchsfragen_intern_09_2015.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_rabatte_Kundenseite_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_rabatte_Kundenseite_09_2015]
AS
SELECT     dbo.Auswertung_Kundenseite_09_2015.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt3) 
                      AS Expr3, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt4) AS Expr4, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt5) AS Expr5, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt6) 
                      AS Expr6, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt9) 
                      AS Expr9, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt10) AS Expr10, 
                      SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt11) AS Expr11, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt12) 
                      AS Expr12, SUM(dbo.Auswertung_Kundenseite_09_2015.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_Kundenseite_09_2015.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite_09_2015 INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite_09_2015 ON 
                      dbo.Auswertung_Kundenseite_09_2015.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_09_2015.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_09_2015.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_09_2015.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_rabatte_intern_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_rabatte_intern_09_2015]
AS
SELECT     dbo.Auswertung_Intern_09_2015.mitarbeiter, SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt12) AS Expr12, SUM(dbo.Auswertung_Intern_09_2015.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_intern_09_2015.[Facings erweitert]
FROM         dbo.Auswertung_Intern_09_2015 INNER JOIN
                      dbo.auswertung_besuchsfragen_intern_09_2015 ON 
                      dbo.Auswertung_Intern_09_2015.mitarbeiter = dbo.auswertung_besuchsfragen_intern_09_2015.mitarbeiter
GROUP BY dbo.Auswertung_Intern_09_2015.mitarbeiter, dbo.auswertung_besuchsfragen_intern_09_2015.[Facings erweitert]
GO
/****** Object:  View [dbo].[Auswertung_Intern_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Intern_02_2016]
AS
SELECT     dbo.einsatzbericht_02_2016.id, dbo.einsatzbericht_02_2016.stammdaten_id, dbo.stammdaten_02_2016.mitarbeiter, dbo.einsatzbericht_02_2016.Datum, 
                      dbo.einsatzbericht_02_2016.Besuchsfrage1, dbo.einsatzbericht_02_2016.Besuchsfrage2, dbo.einsatzbericht_02_2016.Besuchsfrage3, 
                      dbo.einsatzbericht_02_2016.Besuchsfrage4, dbo.einsatzbericht_02_2016.Besuchsfrage5, dbo.einsatzbericht_02_2016.Verkauf_Produkt1, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt2, dbo.einsatzbericht_02_2016.Verkauf_Produkt3, dbo.einsatzbericht_02_2016.Verkauf_Produkt4, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt5, dbo.einsatzbericht_02_2016.Verkauf_Produkt6, dbo.einsatzbericht_02_2016.Verkauf_Produkt7, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt8, dbo.einsatzbericht_02_2016.Verkauf_Produkt9, dbo.einsatzbericht_02_2016.Verkauf_Produkt10, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt11, dbo.einsatzbericht_02_2016.Verkauf_Produkt12, dbo.einsatzbericht_02_2016.Verkauf_Produkt13, 
                      dbo.einsatzbericht_02_2016.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_02_2016.Grund_kein_Auftrag, dbo.einsatzbericht_02_2016.Anzahl_Facings_vorher, 
                      dbo.einsatzbericht_02_2016.Anzahl_Facings_nachher, 
                      dbo.einsatzbericht_02_2016.Anzahl_Facings_nachher - dbo.einsatzbericht_02_2016.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                      dbo.einsatzbericht_02_2016.Frage1, dbo.einsatzbericht_02_2016.Frage2, dbo.einsatzbericht_02_2016.Frage3, dbo.einsatzbericht_02_2016.Frage4, 
                      dbo.einsatzbericht_02_2016.Frage5, dbo.einsatzbericht_02_2016.Bemerkung, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt1, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt2, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt3, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt4, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt5, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt6, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt7, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt8, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt9, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt10, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt11, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt12, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt13
FROM         dbo.einsatzbericht_02_2016 INNER JOIN
                      dbo.stammdaten_02_2016 ON dbo.einsatzbericht_02_2016.stammdaten_id = dbo.stammdaten_02_2016.id
WHERE     (dbo.stammdaten_02_2016.freigabe_bericht_extern = 'ja') OR
                      (dbo.einsatzbericht_02_2016.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_intern_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_intern_02_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (mitarbeiter = 14)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 14)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 14)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 14)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 14)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 14)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (mitarbeiter = 10)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 10)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 10)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 10)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 10)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 10)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (mitarbeiter = 15)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 15)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 15)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 15)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 15)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 15)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 15)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (mitarbeiter = 16)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 16)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 16)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 16)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 16)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 16)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 16)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (mitarbeiter = 17)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 17)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 17)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 17)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 17)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 17)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 17)
GO
/****** Object:  View [dbo].[Auswertung_Kundenseite_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Kundenseite_02_2016]
AS
SELECT     dbo.einsatzbericht_02_2016.id, dbo.einsatzbericht_02_2016.stammdaten_id, dbo.stammdaten_02_2016.mitarbeiter, dbo.einsatzbericht_02_2016.Datum, 
                      dbo.einsatzbericht_02_2016.Besuchsfrage1, dbo.einsatzbericht_02_2016.Besuchsfrage2, dbo.einsatzbericht_02_2016.Besuchsfrage3, 
                      dbo.einsatzbericht_02_2016.Besuchsfrage4, dbo.einsatzbericht_02_2016.Besuchsfrage5, dbo.einsatzbericht_02_2016.Verkauf_Produkt1, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt2, dbo.einsatzbericht_02_2016.Verkauf_Produkt3, dbo.einsatzbericht_02_2016.Verkauf_Produkt4, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt5, dbo.einsatzbericht_02_2016.Verkauf_Produkt6, dbo.einsatzbericht_02_2016.Verkauf_Produkt7, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt8, dbo.einsatzbericht_02_2016.Verkauf_Produkt9, dbo.einsatzbericht_02_2016.Verkauf_Produkt10, 
                      dbo.einsatzbericht_02_2016.Verkauf_Produkt11, dbo.einsatzbericht_02_2016.Verkauf_Produkt12, dbo.einsatzbericht_02_2016.Verkauf_Produkt13, 
                      dbo.einsatzbericht_02_2016.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_02_2016.Grund_kein_Auftrag, dbo.einsatzbericht_02_2016.Anzahl_Facings_vorher, 
                      dbo.einsatzbericht_02_2016.Anzahl_Facings_nachher, 
                      dbo.einsatzbericht_02_2016.Anzahl_Facings_nachher - dbo.einsatzbericht_02_2016.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                      dbo.einsatzbericht_02_2016.Frage1, dbo.einsatzbericht_02_2016.Frage2, dbo.einsatzbericht_02_2016.Frage3, dbo.einsatzbericht_02_2016.Frage4, 
                      dbo.einsatzbericht_02_2016.Frage5, dbo.einsatzbericht_02_2016.Bemerkung, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt1, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt2, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt3, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt4, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt5, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt6, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt7, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt8, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt9, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt10, 
                      dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt11, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt12, dbo.einsatzbericht_02_2016.NR_Rabatt_Produkt13
FROM         dbo.einsatzbericht_02_2016 INNER JOIN
                      dbo.stammdaten_02_2016 ON dbo.einsatzbericht_02_2016.stammdaten_id = dbo.stammdaten_02_2016.id
WHERE     (dbo.stammdaten_02_2016.freigabe_bericht_intern = 'ja') OR
                      (dbo.einsatzbericht_02_2016.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_Kundenseite_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_Kundenseite_02_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (mitarbeiter = 14)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 14)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 14)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 14)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 14)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 14)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (mitarbeiter = 10)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 10)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 10)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 10)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 10)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 10)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (mitarbeiter = 15)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 15)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 15)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 15)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 15)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 15)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 15)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (mitarbeiter = 16)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 16)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 16)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 16)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 16)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 16)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 16)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (mitarbeiter = 17)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 17)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 17)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 17)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 17)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 17)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 17)
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_intern_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_intern_02_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 14) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 14) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 14) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 14) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 14) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 14) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 10) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 10) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 10) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 10) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 10) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 10) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 15) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 15) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 15) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 15) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 15) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 15) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 15)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 16) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 16) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 16) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 16) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 16) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 16) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 16)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 17) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 17) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 17) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 17) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 17) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 17) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 17)
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_Kundenseite_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_Kundenseite_02_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 14) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 14) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 14) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 14) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 14) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 14) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 10) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 10) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 10) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 10) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 10) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 10) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 15) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 15) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 15) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 15) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 15) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 15) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 15)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 16) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 16) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 16) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 16) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 16) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 16) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 16)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 17) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 17) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 17) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 17) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 17) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 17) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 17)
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_intern_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_intern_02_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 15)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 16)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_02_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 17)
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_Kundenseite_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_Kundenseite_02_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 10 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 10)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 15)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 16 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 16)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 17 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_02_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 17)
GO
/****** Object:  View [dbo].[auswertung_rabatte_intern_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_rabatte_intern_02_2016]
AS
SELECT     dbo.Auswertung_Intern_02_2016.mitarbeiter, SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt12) AS Expr12, SUM(dbo.Auswertung_Intern_02_2016.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_intern_02_2016.[Facings erweitert]
FROM         dbo.Auswertung_Intern_02_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_intern_02_2016 ON 
                      dbo.Auswertung_Intern_02_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_02_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_02_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_02_2016.[Facings erweitert]

GO
/****** Object:  View [dbo].[auswertung_rabatte_Kundenseite_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_rabatte_Kundenseite_02_2016]
AS
SELECT     dbo.Auswertung_Kundenseite_02_2016.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt3) 
                      AS Expr3, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt4) AS Expr4, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt5) AS Expr5, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt6) 
                      AS Expr6, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt9) 
                      AS Expr9, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt10) AS Expr10, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt11) AS Expr11, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt12) 
                      AS Expr12, SUM(dbo.Auswertung_Kundenseite_02_2016.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_Kundenseite_02_2016.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite_02_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite_02_2016 ON 
                      dbo.Auswertung_Kundenseite_02_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_02_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_02_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_02_2016.[Facings erweitert]

GO
/****** Object:  View [dbo].[auswertung_verkaeufe_intern_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_intern_02_2016]
AS
SELECT     dbo.Auswertung_Intern_02_2016.mitarbeiter, SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Intern_02_2016.Verkauf_Produkt12) AS Expr12, dbo.auswertung_besuchsfragen_intern_02_2016.[Facings erweitert]
FROM         dbo.Auswertung_Intern_02_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_intern_02_2016 ON 
                      dbo.Auswertung_Intern_02_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_02_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_02_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_02_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_verkaeufe_Kundenseite_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_Kundenseite_02_2016]
AS
SELECT     dbo.Auswertung_Kundenseite_02_2016.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt10) AS Expr10, SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Kundenseite_02_2016.Verkauf_Produkt12) AS Expr12, dbo.auswertung_besuchsfragen_Kundenseite_02_2016.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite_02_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite_02_2016 ON 
                      dbo.Auswertung_Kundenseite_02_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_02_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_02_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_02_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[Auswertung_Intern_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Auswertung_Intern_06_2016]
AS
SELECT     dbo.einsatzbericht_06_2016.id, dbo.einsatzbericht_06_2016.stammdaten_id, dbo.stammdaten_06_2016.mitarbeiter, dbo.einsatzbericht_06_2016.Datum, 
                      dbo.einsatzbericht_06_2016.Besuchsfrage1, dbo.einsatzbericht_06_2016.Besuchsfrage2, dbo.einsatzbericht_06_2016.Besuchsfrage3, 
                      dbo.einsatzbericht_06_2016.Besuchsfrage4, dbo.einsatzbericht_06_2016.Besuchsfrage5, dbo.einsatzbericht_06_2016.Verkauf_Produkt1, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt2, dbo.einsatzbericht_06_2016.Verkauf_Produkt3, dbo.einsatzbericht_06_2016.Verkauf_Produkt4, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt5, dbo.einsatzbericht_06_2016.Verkauf_Produkt6, dbo.einsatzbericht_06_2016.Verkauf_Produkt7, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt8, dbo.einsatzbericht_06_2016.Verkauf_Produkt9, dbo.einsatzbericht_06_2016.Verkauf_Produkt10, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt11, dbo.einsatzbericht_06_2016.Verkauf_Produkt12, dbo.einsatzbericht_06_2016.Verkauf_Produkt13, 
                      dbo.einsatzbericht_06_2016.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_06_2016.Grund_kein_Auftrag, dbo.einsatzbericht_06_2016.Anzahl_Facings_vorher, 
                      dbo.einsatzbericht_06_2016.Anzahl_Facings_nachher, 
                      dbo.einsatzbericht_06_2016.Anzahl_Facings_nachher - dbo.einsatzbericht_06_2016.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                      dbo.einsatzbericht_06_2016.Frage1, dbo.einsatzbericht_06_2016.Frage2, dbo.einsatzbericht_06_2016.Frage3, dbo.einsatzbericht_06_2016.Frage4, 
                      dbo.einsatzbericht_06_2016.Frage5, dbo.einsatzbericht_06_2016.Bemerkung, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt1, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt2, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt3, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt4, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt5, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt6, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt7, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt8, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt9, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt10, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt11, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt12, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt13
FROM         dbo.einsatzbericht_06_2016 INNER JOIN
                      dbo.stammdaten_06_2016 ON dbo.einsatzbericht_06_2016.stammdaten_id = dbo.stammdaten_06_2016.id
WHERE     (dbo.stammdaten_06_2016.freigabe_bericht_extern = 'ja') OR
                      (dbo.einsatzbericht_06_2016.Besuchsfrage5 = 'ja')

GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_intern_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_intern_06_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (mitarbeiter = 14)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 14)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 14)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 14)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 14)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 14)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (mitarbeiter = 19)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 19)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 19)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 19)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 19)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 19)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (mitarbeiter = 15)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 15)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 15)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 15)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 15)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 15)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 15)

GO
/****** Object:  View [dbo].[Auswertung_Kundenseite_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Auswertung_Kundenseite_06_2016]
AS
SELECT     dbo.einsatzbericht_06_2016.id, dbo.einsatzbericht_06_2016.stammdaten_id, dbo.stammdaten_06_2016.mitarbeiter, dbo.einsatzbericht_06_2016.Datum, 
                      dbo.einsatzbericht_06_2016.Besuchsfrage1, dbo.einsatzbericht_06_2016.Besuchsfrage2, dbo.einsatzbericht_06_2016.Besuchsfrage3, 
                      dbo.einsatzbericht_06_2016.Besuchsfrage4, dbo.einsatzbericht_06_2016.Besuchsfrage5, dbo.einsatzbericht_06_2016.Verkauf_Produkt1, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt2, dbo.einsatzbericht_06_2016.Verkauf_Produkt3, dbo.einsatzbericht_06_2016.Verkauf_Produkt4, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt5, dbo.einsatzbericht_06_2016.Verkauf_Produkt6, dbo.einsatzbericht_06_2016.Verkauf_Produkt7, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt8, dbo.einsatzbericht_06_2016.Verkauf_Produkt9, dbo.einsatzbericht_06_2016.Verkauf_Produkt10, 
                      dbo.einsatzbericht_06_2016.Verkauf_Produkt11, dbo.einsatzbericht_06_2016.Verkauf_Produkt12, dbo.einsatzbericht_06_2016.Verkauf_Produkt13, 
                      dbo.einsatzbericht_06_2016.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_06_2016.Grund_kein_Auftrag, dbo.einsatzbericht_06_2016.Anzahl_Facings_vorher, 
                      dbo.einsatzbericht_06_2016.Anzahl_Facings_nachher, 
                      dbo.einsatzbericht_06_2016.Anzahl_Facings_nachher - dbo.einsatzbericht_06_2016.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                      dbo.einsatzbericht_06_2016.Frage1, dbo.einsatzbericht_06_2016.Frage2, dbo.einsatzbericht_06_2016.Frage3, dbo.einsatzbericht_06_2016.Frage4, 
                      dbo.einsatzbericht_06_2016.Frage5, dbo.einsatzbericht_06_2016.Bemerkung, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt1, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt2, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt3, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt4, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt5, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt6, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt7, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt8, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt9, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt10, 
                      dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt11, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt12, dbo.einsatzbericht_06_2016.NR_Rabatt_Produkt13
FROM         dbo.einsatzbericht_06_2016 INNER JOIN
                      dbo.stammdaten_06_2016 ON dbo.einsatzbericht_06_2016.stammdaten_id = dbo.stammdaten_06_2016.id
WHERE     (dbo.stammdaten_06_2016.freigabe_bericht_intern = 'ja') OR
                      (dbo.einsatzbericht_06_2016.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_Kundenseite_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_Kundenseite_06_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (mitarbeiter = 14)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 14)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 14)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 14)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 14)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 14)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (mitarbeiter = 19)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 19)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 19)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 19)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 19)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 19)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (mitarbeiter = 3)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (mitarbeiter = 15)) AS Besuche,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Besuchsfrage1 = 'ja') AND (mitarbeiter = 15)) AS 'Entscheider angetroffen',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Besuchsfrage2 = 'ja') AND (mitarbeiter = 15)) AS Auftrag,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Besuchsfrage3 = 'ja') AND (mitarbeiter = 15)) AS 'Facings erweitert',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Besuchsfrage4 = 'ja') AND (mitarbeiter = 15)) AS Fotos,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Besuchsfrage5 = 'ja') AND (mitarbeiter = 15)) AS 'Zweitranfahrt geplant'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 15)

GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_intern_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_intern_06_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 14) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 14) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 14) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 14) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 14) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 14) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 19) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 19) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 19) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 19) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 19) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 19) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 15) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 15) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 15) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 15) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 15) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 15) AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 15)

GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_Kundenseite_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_Kundenseite_06_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 14) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 14) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 14) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 14) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 14) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 14) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 19) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 19) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 19) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 19) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 19) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 19) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 15) AS 'nicht existent',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 15) AS 'Umbau',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 15) AS 'Urlaub',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 15) AS 'schließt in Kürze',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 15) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 15) AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 15)

GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_intern_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_intern_06_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Intern_06_2016 AS Auswertung_Intern_1
WHERE     (mitarbeiter = 15)

GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_Kundenseite_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_Kundenseite_06_2016]
AS
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016
                            WHERE      (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_6
                            WHERE      (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_5
                            WHERE      (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_4
                            WHERE      (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_3
                            WHERE      (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_2
                            WHERE      (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 15 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM         dbo.Auswertung_Kundenseite_06_2016 AS Auswertung_Kundenseite_1
WHERE     (mitarbeiter = 15)

GO
/****** Object:  View [dbo].[auswertung_rabatte_intern_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[auswertung_rabatte_intern_06_2016]
AS
SELECT     dbo.Auswertung_Intern_06_2016.mitarbeiter, SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt12) AS Expr12, SUM(dbo.Auswertung_Intern_06_2016.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_intern_06_2016.[Facings erweitert]
FROM         dbo.Auswertung_Intern_06_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_intern_06_2016 ON 
                      dbo.Auswertung_Intern_06_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_06_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_06_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_06_2016.[Facings erweitert]


GO
/****** Object:  View [dbo].[auswertung_rabatte_Kundenseite_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[auswertung_rabatte_Kundenseite_06_2016]
AS
SELECT     dbo.Auswertung_Kundenseite_06_2016.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt3) 
                      AS Expr3, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt4) AS Expr4, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt5) AS Expr5, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt6) 
                      AS Expr6, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt9) 
                      AS Expr9, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt10) AS Expr10, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt11) AS Expr11, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt12) 
                      AS Expr12, SUM(dbo.Auswertung_Kundenseite_06_2016.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_Kundenseite_06_2016.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite_06_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite_06_2016 ON 
                      dbo.Auswertung_Kundenseite_06_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_06_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_06_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_06_2016.[Facings erweitert]


GO
/****** Object:  View [dbo].[auswertung_verkaeufe_intern_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_verkaeufe_intern_06_2016]
AS
SELECT     dbo.Auswertung_Intern_06_2016.mitarbeiter, SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Intern_06_2016.Verkauf_Produkt12) AS Expr12, dbo.auswertung_besuchsfragen_intern_06_2016.[Facings erweitert]
FROM         dbo.Auswertung_Intern_06_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_intern_06_2016 ON 
                      dbo.Auswertung_Intern_06_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_06_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_06_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_06_2016.[Facings erweitert]

GO
/****** Object:  View [dbo].[auswertung_verkaeufe_Kundenseite_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_verkaeufe_Kundenseite_06_2016]
AS
SELECT     dbo.Auswertung_Kundenseite_06_2016.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt10) AS Expr10, SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Kundenseite_06_2016.Verkauf_Produkt12) AS Expr12, dbo.auswertung_besuchsfragen_Kundenseite_06_2016.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite_06_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite_06_2016 ON 
                      dbo.Auswertung_Kundenseite_06_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_06_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_06_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_06_2016.[Facings erweitert]

GO
/****** Object:  View [dbo].[Auswertung_Intern_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Intern_10_2016]
AS
SELECT        dbo.einsatzbericht_10_2016.id, dbo.einsatzbericht_10_2016.stammdaten_id, dbo.stammdaten_10_2016.mitarbeiter, dbo.einsatzbericht_10_2016.Datum, 
                         dbo.einsatzbericht_10_2016.Besuchsfrage1, dbo.einsatzbericht_10_2016.Besuchsfrage2, dbo.einsatzbericht_10_2016.Besuchsfrage3, 
                         dbo.einsatzbericht_10_2016.Besuchsfrage4, dbo.einsatzbericht_10_2016.Besuchsfrage5, dbo.einsatzbericht_10_2016.Verkauf_Produkt1, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt2, dbo.einsatzbericht_10_2016.Verkauf_Produkt3, dbo.einsatzbericht_10_2016.Verkauf_Produkt4, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt5, dbo.einsatzbericht_10_2016.Verkauf_Produkt6, dbo.einsatzbericht_10_2016.Verkauf_Produkt7, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt8, dbo.einsatzbericht_10_2016.Verkauf_Produkt9, dbo.einsatzbericht_10_2016.Verkauf_Produkt10, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt11, dbo.einsatzbericht_10_2016.Verkauf_Produkt12, dbo.einsatzbericht_10_2016.Verkauf_Produkt13, 
                         dbo.einsatzbericht_10_2016.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_10_2016.Grund_kein_Auftrag, dbo.einsatzbericht_10_2016.Anzahl_Facings_vorher, 
                         dbo.einsatzbericht_10_2016.Anzahl_Facings_nachher, 
                         dbo.einsatzbericht_10_2016.Anzahl_Facings_nachher - dbo.einsatzbericht_10_2016.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                         dbo.einsatzbericht_10_2016.Frage1, dbo.einsatzbericht_10_2016.Frage2, dbo.einsatzbericht_10_2016.Frage3, dbo.einsatzbericht_10_2016.Frage4, 
                         dbo.einsatzbericht_10_2016.Frage5, dbo.einsatzbericht_10_2016.Bemerkung, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt1, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt2, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt3, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt4, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt5, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt6, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt7, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt8, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt9, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt10, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt11, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt12, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt13, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt14, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt14
FROM            dbo.einsatzbericht_10_2016 INNER JOIN
                         dbo.stammdaten_10_2016 ON dbo.einsatzbericht_10_2016.stammdaten_id = dbo.stammdaten_10_2016.id
WHERE        (dbo.stammdaten_10_2016.freigabe_bericht_extern = 'ja') OR
                         (dbo.einsatzbericht_10_2016.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_intern_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_intern_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 14)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 14)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 14)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 14)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 14)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 14)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 19)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 19)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 19)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 19)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 19)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 19)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 3)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 23)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 23)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 23)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 23)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 23)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 23)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 23)

UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 24)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 24)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 24)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 24)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 24)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 24)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 24)

GO
/****** Object:  View [dbo].[Auswertung_Kundenseite_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung_Kundenseite_10_2016]
AS
SELECT        dbo.einsatzbericht_10_2016.id, dbo.einsatzbericht_10_2016.stammdaten_id, dbo.stammdaten_10_2016.mitarbeiter, dbo.einsatzbericht_10_2016.Datum, 
                         dbo.einsatzbericht_10_2016.Besuchsfrage1, dbo.einsatzbericht_10_2016.Besuchsfrage2, dbo.einsatzbericht_10_2016.Besuchsfrage3, 
                         dbo.einsatzbericht_10_2016.Besuchsfrage4, dbo.einsatzbericht_10_2016.Besuchsfrage5, dbo.einsatzbericht_10_2016.Verkauf_Produkt1, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt2, dbo.einsatzbericht_10_2016.Verkauf_Produkt3, dbo.einsatzbericht_10_2016.Verkauf_Produkt4, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt5, dbo.einsatzbericht_10_2016.Verkauf_Produkt6, dbo.einsatzbericht_10_2016.Verkauf_Produkt7, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt8, dbo.einsatzbericht_10_2016.Verkauf_Produkt9, dbo.einsatzbericht_10_2016.Verkauf_Produkt10, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt11, dbo.einsatzbericht_10_2016.Verkauf_Produkt12, dbo.einsatzbericht_10_2016.Verkauf_Produkt13, 
                         dbo.einsatzbericht_10_2016.Grund_AP_nicht_angetroffen, dbo.einsatzbericht_10_2016.Grund_kein_Auftrag, dbo.einsatzbericht_10_2016.Anzahl_Facings_vorher, 
                         dbo.einsatzbericht_10_2016.Anzahl_Facings_nachher, 
                         dbo.einsatzbericht_10_2016.Anzahl_Facings_nachher - dbo.einsatzbericht_10_2016.Anzahl_Facings_vorher AS Facing_Ausweitung, 
                         dbo.einsatzbericht_10_2016.Frage1, dbo.einsatzbericht_10_2016.Frage2, dbo.einsatzbericht_10_2016.Frage3, dbo.einsatzbericht_10_2016.Frage4, 
                         dbo.einsatzbericht_10_2016.Frage5, dbo.einsatzbericht_10_2016.Bemerkung, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt1, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt2, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt3, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt4, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt5, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt6, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt7, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt8, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt9, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt10, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt11, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt12, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt13, 
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt14, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt14
FROM            dbo.einsatzbericht_10_2016 INNER JOIN
                         dbo.stammdaten_10_2016 ON dbo.einsatzbericht_10_2016.stammdaten_id = dbo.stammdaten_10_2016.id
WHERE        (dbo.stammdaten_10_2016.freigabe_bericht_intern = 'ja') OR
                         (dbo.einsatzbericht_10_2016.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_Kundenseite_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_Kundenseite_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 14)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 14)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 14)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 14)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 14)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 14)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 19)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 19)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 19)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 19)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 19)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 19)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 3)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 3)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 3)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 3)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 3)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 3)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 23)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 23)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 23)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 23)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 23)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 23)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 23)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 24)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 24)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 24)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 24)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 24)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 24)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 24)
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_intern_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_intern_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 14) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 14) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 14) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 14) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 14) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 14) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 19) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 19) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 19) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 19) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 19) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 19) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 23) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 23) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 23) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 23) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 23) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 23) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 23)

UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 24) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 24) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 24) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 24) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 24) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 24) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 24)
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_Kundenseite_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_Kundenseite_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 14) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 14) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 14) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 14) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 14) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 14) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 19) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 19) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 19) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 19) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 19) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 19) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 3) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 3) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 3) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 3) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 3) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 23) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 23) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 23) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 23) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 23) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 23) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 23)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 24) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'Umbau') AND mitarbeiter = 24) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 24) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 24) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 24) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 24) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 24)
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_intern_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_intern_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 23 )

UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 24 )
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_Kundenseite_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_Kundenseite_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 14 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 14)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 19 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 19)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 23 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 23 )
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'Vorrat/Bestand') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'Vorrat/Bestand',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'keine Bestellung über WK') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'keine Bestellung über WK',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'bestellt selbst') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'bestellt selbst',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_kein_Auftrag = 'Inventur') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'Inventur',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_kein_Auftrag = 'kein Interesse') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'kein Interesse',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 24 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 24 )
GO
/****** Object:  View [dbo].[auswertung_rabatte_intern_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[auswertung_rabatte_intern_10_2016]
AS
SELECT     dbo.Auswertung_Intern_10_2016.mitarbeiter, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt3) AS Expr3, 
                      SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt5) AS Expr5, 
                      SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt9) AS Expr9, 
                      SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt11) AS Expr11, 
                      SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt12) AS Expr12, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert]
FROM         dbo.Auswertung_Intern_10_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_intern_10_2016 ON 
                      dbo.Auswertung_Intern_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert]



GO
/****** Object:  View [dbo].[auswertung_rabatte_Kundenseite_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[auswertung_rabatte_Kundenseite_10_2016]
AS
SELECT     dbo.Auswertung_Kundenseite_10_2016.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt1) AS Expr1, 
                      SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt3) 
                      AS Expr3, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt4) AS Expr4, 
                      SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt5) AS Expr5, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt6) 
                      AS Expr6, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt7) AS Expr7, 
                      SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt9) 
                      AS Expr9, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt10) AS Expr10, 
                      SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt11) AS Expr11, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt12) 
                      AS Expr12, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt13) AS Expr13, 
                      dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert]
FROM         dbo.Auswertung_Kundenseite_10_2016 INNER JOIN
                      dbo.auswertung_besuchsfragen_Kundenseite_10_2016 ON 
                      dbo.Auswertung_Kundenseite_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert]



GO
/****** Object:  View [dbo].[auswertung_verkaeufe_intern_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_intern_10_2016]
AS
SELECT        dbo.Auswertung_Intern_10_2016.mitarbeiter, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt1) AS Expr1, 
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt3) AS Expr3, 
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt5) AS Expr5, 
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt7) AS Expr7, 
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt9) AS Expr9, 
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt11) AS Expr11, 
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt12) AS Expr12, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt13) AS Expr13, 
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt14) AS Expr14, dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert]
FROM            dbo.Auswertung_Intern_10_2016 INNER JOIN
                         dbo.auswertung_besuchsfragen_intern_10_2016 ON 
                         dbo.Auswertung_Intern_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_verkaeufe_Kundenseite_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_verkaeufe_Kundenseite_10_2016]
AS
SELECT        dbo.Auswertung_Kundenseite_10_2016.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt1) AS Expr1, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt3) AS Expr3, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt4) AS Expr4, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt5) AS Expr5, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt6) AS Expr6, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt7) AS Expr7, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt9) AS Expr9, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt10) AS Expr10, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt11) AS Expr11, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt12) AS Expr12, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt13) AS Expr13, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt14) AS Expr14, dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert]
FROM            dbo.Auswertung_Kundenseite_10_2016 INNER JOIN
                         dbo.auswertung_besuchsfragen_Kundenseite_10_2016 ON 
                         dbo.Auswertung_Kundenseite_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[Freigegebene_Stammdaten]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Freigegebene_Stammdaten]
AS
SELECT     id, GP_ID, name, strasse, plz, ort, telefon, email, Entscheider, mitarbeiter, freigabe_bericht_extern, freigabe_bilder_extern, freigabe_bericht_intern, 
                      freigabe_bilder_intern
FROM         dbo.stammdaten
WHERE     (freigabe_bericht_intern = 'ja')
GO
/****** Object:  View [dbo].[Freigegebene_Stammdaten_02_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Freigegebene_Stammdaten_02_2016]
AS
SELECT     id, GP_ID, name, strasse, plz, ort, telefon, email, Entscheider, mitarbeiter, freigabe_bericht_extern, freigabe_bilder_extern, freigabe_bericht_intern, 
                      freigabe_bilder_intern
FROM         dbo.stammdaten_02_2016
WHERE     (freigabe_bericht_intern = 'ja')


GO
/****** Object:  View [dbo].[Freigegebene_Stammdaten_06_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[Freigegebene_Stammdaten_06_2016]
AS
SELECT     id, GP_ID, name, strasse, plz, ort, telefon, email, Entscheider, mitarbeiter, freigabe_bericht_extern, freigabe_bilder_extern, freigabe_bericht_intern, 
                      freigabe_bilder_intern
FROM         dbo.stammdaten_06_2016
WHERE     (freigabe_bericht_intern = 'ja')



GO
/****** Object:  View [dbo].[Freigegebene_Stammdaten_09_2015]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Freigegebene_Stammdaten_09_2015]
AS
SELECT     id, GP_ID, name, strasse, plz, ort, telefon, email, Entscheider, mitarbeiter, freigabe_bericht_extern, freigabe_bilder_extern, freigabe_bericht_intern, 
                      freigabe_bilder_intern
FROM         dbo.stammdaten_09_2015
WHERE     (freigabe_bericht_intern = 'ja')

GO
/****** Object:  View [dbo].[Freigegebene_Stammdaten_10_2016]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[Freigegebene_Stammdaten_10_2016]
AS
SELECT     id, GP_ID, name, strasse, plz, ort, telefon, email, Entscheider, mitarbeiter, freigabe_bericht_extern, freigabe_bilder_extern, freigabe_bericht_intern, 
                      freigabe_bilder_intern
FROM         dbo.stammdaten_10_2016
WHERE     (freigabe_bericht_intern = 'ja')




GO
/****** Object:  View [dbo].[uebersicht_aktion_1]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[uebersicht_aktion_1]
AS
SELECT     dbo.stammdaten.id, dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, 
                      dbo.stammdaten.Entscheider, dbo.stammdaten.mitarbeiter, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, 
                      dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.einsatzbericht.Datum, dbo.promotion_login.anmeldename
FROM         dbo.promotion_login INNER JOIN
                      dbo.stammdaten ON dbo.promotion_login.id = dbo.stammdaten.mitarbeiter LEFT OUTER JOIN
                      dbo.einsatzbericht ON dbo.stammdaten.id = dbo.einsatzbericht.stammdaten_id
GO
/****** Object:  View [dbo].[uebersicht_aktion_2]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[uebersicht_aktion_2]
AS
SELECT     dbo.stammdaten_09_2015.id, dbo.stammdaten_09_2015.GP_ID, dbo.stammdaten_09_2015.name, dbo.stammdaten_09_2015.strasse, dbo.stammdaten_09_2015.plz, dbo.stammdaten_09_2015.ort, 
                      dbo.stammdaten_09_2015.Entscheider, dbo.stammdaten_09_2015.mitarbeiter, dbo.stammdaten_09_2015.freigabe_bericht_extern, dbo.stammdaten_09_2015.freigabe_bilder_extern, 
                      dbo.stammdaten_09_2015.freigabe_bericht_intern, dbo.stammdaten_09_2015.freigabe_bilder_intern, dbo.einsatzbericht_09_2015.Datum, dbo.promotion_login.anmeldename
FROM         dbo.promotion_login INNER JOIN
                      dbo.stammdaten_09_2015 ON dbo.promotion_login.id = dbo.stammdaten_09_2015.mitarbeiter LEFT OUTER JOIN
                      dbo.einsatzbericht_09_2015 ON dbo.stammdaten_09_2015.id = dbo.einsatzbericht_09_2015.stammdaten_id

GO
/****** Object:  View [dbo].[uebersicht_aktion_3]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[uebersicht_aktion_3]
AS
SELECT     dbo.stammdaten_02_2016.id, dbo.stammdaten_02_2016.GP_ID, dbo.stammdaten_02_2016.name, dbo.stammdaten_02_2016.strasse, dbo.stammdaten_02_2016.plz, dbo.stammdaten_02_2016.ort, 
                      dbo.stammdaten_02_2016.Entscheider, dbo.stammdaten_02_2016.mitarbeiter, dbo.stammdaten_02_2016.freigabe_bericht_extern, dbo.stammdaten_02_2016.freigabe_bilder_extern, 
                      dbo.stammdaten_02_2016.freigabe_bericht_intern, dbo.stammdaten_02_2016.freigabe_bilder_intern, dbo.einsatzbericht_02_2016.Datum, dbo.promotion_login.anmeldename
FROM         dbo.promotion_login INNER JOIN
                      dbo.stammdaten_02_2016 ON dbo.promotion_login.id = dbo.stammdaten_02_2016.mitarbeiter LEFT OUTER JOIN
                      dbo.einsatzbericht_02_2016 ON dbo.stammdaten_02_2016.id = dbo.einsatzbericht_02_2016.stammdaten_id


GO
/****** Object:  View [dbo].[uebersicht_aktion_4]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[uebersicht_aktion_4]
AS
SELECT     dbo.stammdaten_06_2016.id, dbo.stammdaten_06_2016.GP_ID, dbo.stammdaten_06_2016.name, dbo.stammdaten_06_2016.strasse, dbo.stammdaten_06_2016.plz, dbo.stammdaten_06_2016.ort, 
                      dbo.stammdaten_06_2016.Entscheider, dbo.stammdaten_06_2016.mitarbeiter, dbo.stammdaten_06_2016.freigabe_bericht_extern, dbo.stammdaten_06_2016.freigabe_bilder_extern, 
                      dbo.stammdaten_06_2016.freigabe_bericht_intern, dbo.stammdaten_06_2016.freigabe_bilder_intern, dbo.einsatzbericht_06_2016.Datum, dbo.promotion_login.anmeldename
FROM         dbo.promotion_login INNER JOIN
                      dbo.stammdaten_06_2016 ON dbo.promotion_login.id = dbo.stammdaten_06_2016.mitarbeiter LEFT OUTER JOIN
                      dbo.einsatzbericht_06_2016 ON dbo.stammdaten_06_2016.id = dbo.einsatzbericht_06_2016.stammdaten_id



GO
/****** Object:  View [dbo].[uebersicht_aktion_5]    Script Date: 06.07.2018 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[uebersicht_aktion_5]
AS
SELECT     dbo.stammdaten_10_2016.id, dbo.stammdaten_10_2016.GP_ID, dbo.stammdaten_10_2016.name, dbo.stammdaten_10_2016.strasse, dbo.stammdaten_10_2016.plz, dbo.stammdaten_10_2016.ort, 
                      dbo.stammdaten_10_2016.Entscheider, dbo.stammdaten_10_2016.mitarbeiter, dbo.stammdaten_10_2016.freigabe_bericht_extern, dbo.stammdaten_10_2016.freigabe_bilder_extern, 
                      dbo.stammdaten_10_2016.freigabe_bericht_intern, dbo.stammdaten_10_2016.freigabe_bilder_intern, dbo.einsatzbericht_10_2016.Datum, dbo.promotion_login.anmeldename
FROM         dbo.promotion_login INNER JOIN
                      dbo.stammdaten_10_2016 ON dbo.promotion_login.id = dbo.stammdaten_10_2016.mitarbeiter LEFT OUTER JOIN
                      dbo.einsatzbericht_10_2016 ON dbo.stammdaten_10_2016.id = dbo.einsatzbericht_10_2016.stammdaten_id




GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[3] 2[42] 3) )"
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
         Top = -384
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[10] 4[25] 2[47] 3) )"
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
         Top = -480
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[3] 2[49] 3) )"
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
         Top = -1056
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[13] 4[18] 2[49] 3) )"
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
         Top = -384
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[3] 2[49] 3) )"
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
         Top = -1056
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[9] 4[3] 2[70] 3) )"
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
         Top = -576
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[16] 4[3] 2[63] 3) )"
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
         Top = -480
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[9] 4[3] 2[70] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[16] 4[3] 2[63] 3) )"
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
         Top = -480
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_besuchsfragen_Kundenseite_10_2016'
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
               Bottom = 278
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 0
               Left = 565
               Bottom = 282
               Right = 763
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[15] 4[15] 2[52] 3) )"
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
         Begin Table = "einsatzbericht_02_2016"
            Begin Extent = 
               Top = 10
               Left = 455
               Bottom = 332
               Right = 711
            End
            DisplayFlags = 280
            TopColumn = 116
         End
         Begin Table = "stammdaten_02_2016"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 236
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
         Column = 4050
         Alias = 900
         Table = 3915
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern_02_2016'
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
         Begin Table = "einsatzbericht_09_2015"
            Begin Extent = 
               Top = 10
               Left = 455
               Bottom = 332
               Right = 711
            End
            DisplayFlags = 280
            TopColumn = 116
         End
         Begin Table = "stammdaten_09_2015"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 236
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern_09_2015'
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
         Begin Table = "einsatzbericht_10_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 249
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 105
         End
         Begin Table = "stammdaten_10_2016"
            Begin Extent = 
               Top = 22
               Left = 488
               Bottom = 151
               Right = 699
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
         Column = 2475
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[33] 2[13] 3) )"
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
               Bottom = 308
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 9
               Left = 512
               Bottom = 291
               Right = 710
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
      Begin ColumnWidths = 64
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         W' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idth = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 6915
         Alias = 1920
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[9] 2[36] 3) )"
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
         Begin Table = "einsatzbericht_02_2016"
            Begin Extent = 
               Top = 3
               Left = 496
               Bottom = 332
               Right = 752
            End
            DisplayFlags = 280
            TopColumn = 49
         End
         Begin Table = "stammdaten_02_2016"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 236
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite_02_2016'
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
         Begin Table = "einsatzbericht_09_2015"
            Begin Extent = 
               Top = 3
               Left = 496
               Bottom = 332
               Right = 752
            End
            DisplayFlags = 280
            TopColumn = 115
         End
         Begin Table = "stammdaten_09_2015"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 236
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite_09_2015'
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
         Begin Table = "einsatzbericht_10_2016"
            Begin Extent = 
               Top = 13
               Left = 506
               Bottom = 249
               Right = 784
            End
            DisplayFlags = 280
            TopColumn = 106
         End
         Begin Table = "stammdaten_10_2016"
            Begin Extent = 
               Top = 5
               Left = 58
               Bottom = 134
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung_Kundenseite_10_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[8] 4[3] 2[72] 3) )"
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
         Top = -480
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_02_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[8] 4[3] 2[71] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[3] 2[38] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[11] 4[3] 2[67] 3) )"
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
         Top = -480
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_02_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[11] 4[3] 2[67] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[4] 2[56] 3) )"
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
         Top = -768
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_Kundenseite_10_2016'
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
         Top = -384
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[3] 2[61] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_02_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[3] 2[61] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[4] 2[60] 3) )"
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
         Top = -480
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_10_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[13] 4[3] 2[65] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_02_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_06_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[13] 4[3] 2[65] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[4] 2[64] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_Kundenseite_10_2016'
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
         Begin Table = "Auswertung_Intern_02_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_intern_02_2016"
            Begin Extent = 
               Top = 6
               Left = 314
               Bottom = 121
               Right = 528
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_intern_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_intern_02_2016'
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
         Begin Table = "Auswertung_Intern_09_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_intern_09_2015"
            Begin Extent = 
               Top = 6
               Left = 314
               Bottom = 121
               Right = 528
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_intern_09_2015'
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
         Begin Table = "Auswertung_Kundenseite_02_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite_02_2016"
            Begin Extent = 
               Top = 6
               Left = 314
               Bottom = 121
               Right = 528
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_Kundenseite_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_Kundenseite_02_2016'
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
         Begin Table = "Auswertung_Kundenseite_09_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite_09_2015"
            Begin Extent = 
               Top = 6
               Left = 314
               Bottom = 121
               Right = 528
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_Kundenseite_09_2015'
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
         Begin Table = "Auswertung_Intern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 324
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_intern"
            Begin Extent = 
               Top = 6
               Left = 332
               Bottom = 232
               Right = 546
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
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[57] 4[4] 2[20] 3) )"
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
         Begin Table = "auswertung_besuchsfragen_intern_02_2016"
            Begin Extent = 
               Top = 116
               Left = 512
               Bottom = 231
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Auswertung_Intern_02_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 437
               Right = 310
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
         Column = 3255
         Alias = 900
         Table = 3810
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern_02_2016'
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
         Begin Table = "Auswertung_Intern_09_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_intern_09_2015"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern_09_2015'
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
         Begin Table = "auswertung_besuchsfragen_intern_10_2016"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Auswertung_Intern_10_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 295
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_intern_10_2016'
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
         Begin Table = "Auswertung_Kundenseite"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite"
            Begin Extent = 
               Top = 6
               Left = 348
               Bottom = 121
               Right = 562
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[44] 2[23] 3) )"
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
         Begin Table = "Auswertung_Kundenseite_02_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 426
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite_02_2016"
            Begin Extent = 
               Top = 43
               Left = 440
               Bottom = 158
               Right = 654
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
         Column = 2655
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite_02_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite_02_2016'
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
         Begin Table = "Auswertung_Kundenseite_09_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite_09_2015"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite_09_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite_09_2015'
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
         Begin Table = "Auswertung_Kundenseite_10_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 242
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 38
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite_10_2016"
            Begin Extent = 
               Top = 9
               Left = 390
               Bottom = 138
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_verkaeufe_Kundenseite_10_2016'
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
               Bottom = 315
               Right = 244
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
         Column = 2520
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Freigegebene_Stammdaten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Freigegebene_Stammdaten'
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
               Bottom = 328
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 116
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 21
               Left = 346
               Bottom = 280
               Right = 544
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 24
               Left = 643
               Bottom = 303
               Right = 797
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'uebersicht_aktion_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'uebersicht_aktion_1'
GO
USE [master]
GO
ALTER DATABASE [wilkinson] SET  READ_WRITE 
GO
