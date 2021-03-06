USE [master]
GO
/****** Object:  Database [Reckitt_Benckiser]    Script Date: 06.07.2018 11:18:24 ******/
CREATE DATABASE [Reckitt_Benckiser]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Reckitt_Benckiser', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Reckitt_Benckiser.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Reckitt_Benckiser_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Reckitt_Benckiser_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Reckitt_Benckiser] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Reckitt_Benckiser].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Reckitt_Benckiser] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET ARITHABORT OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Reckitt_Benckiser] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Reckitt_Benckiser] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Reckitt_Benckiser] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Reckitt_Benckiser] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Reckitt_Benckiser] SET  MULTI_USER 
GO
ALTER DATABASE [Reckitt_Benckiser] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Reckitt_Benckiser] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Reckitt_Benckiser] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Reckitt_Benckiser] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Reckitt_Benckiser] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Reckitt_Benckiser]
GO
/****** Object:  Table [dbo].[Berichtsfragen_10_2016]    Script Date: 06.07.2018 11:18:24 ******/
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
/****** Object:  Table [dbo].[einsatzbericht_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
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
	[Bestand_Produkt26] [int] NULL,
	[Bestand_Produkt27] [int] NULL,
	[Bestand_Produkt28] [int] NULL,
	[Bestand_Produkt29] [int] NULL,
	[Bestand_Produkt30] [int] NULL,
	[Bestand_Produkt31] [int] NULL,
	[Bestand_Produkt32] [int] NULL,
	[Bestand_Produkt33] [int] NULL,
	[Bestand_Produkt34] [int] NULL,
	[Bestand_Produkt35] [int] NULL,
	[Bestand_Produkt36] [int] NULL,
	[Bestand_Produkt37] [int] NULL,
	[Bestand_Produkt38] [int] NULL,
	[Bestand_Produkt39] [int] NULL,
	[Bestand_Produkt40] [int] NULL,
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
	[Verkauf_Produkt26] [int] NULL,
	[Verkauf_Produkt27] [int] NULL,
	[Verkauf_Produkt28] [int] NULL,
	[Verkauf_Produkt29] [int] NULL,
	[Verkauf_Produkt30] [int] NULL,
	[Verkauf_Produkt31] [int] NULL,
	[Verkauf_Produkt32] [int] NULL,
	[Verkauf_Produkt33] [int] NULL,
	[Verkauf_Produkt34] [int] NULL,
	[Verkauf_Produkt35] [int] NULL,
	[Verkauf_Produkt36] [int] NULL,
	[Verkauf_Produkt37] [int] NULL,
	[Verkauf_Produkt38] [int] NULL,
	[Verkauf_Produkt39] [int] NULL,
	[Verkauf_Produkt40] [int] NULL,
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
	[Neulistung_Produkt26] [int] NULL,
	[Neulistung_Produkt27] [int] NULL,
	[Neulistung_Produkt28] [int] NULL,
	[Neulistung_Produkt29] [int] NULL,
	[Neulistung_Produkt30] [int] NULL,
	[Neulistung_Produkt31] [int] NULL,
	[Neulistung_Produkt32] [int] NULL,
	[Neulistung_Produkt33] [int] NULL,
	[Neulistung_Produkt34] [int] NULL,
	[Neulistung_Produkt35] [int] NULL,
	[Neulistung_Produkt36] [int] NULL,
	[Neulistung_Produkt37] [int] NULL,
	[Neulistung_Produkt38] [int] NULL,
	[Neulistung_Produkt39] [int] NULL,
	[Neulistung_Produkt40] [int] NULL,
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
	[NR_Rabatt_Produkt26] [int] NULL,
	[NR_Rabatt_Produkt27] [int] NULL,
	[NR_Rabatt_Produkt28] [int] NULL,
	[NR_Rabatt_Produkt29] [int] NULL,
	[NR_Rabatt_Produkt30] [int] NULL,
	[NR_Rabatt_Produkt31] [int] NULL,
	[NR_Rabatt_Produkt32] [int] NULL,
	[NR_Rabatt_Produkt33] [int] NULL,
	[NR_Rabatt_Produkt34] [int] NULL,
	[NR_Rabatt_Produkt35] [int] NULL,
	[NR_Rabatt_Produkt36] [int] NULL,
	[NR_Rabatt_Produkt37] [int] NULL,
	[NR_Rabatt_Produkt38] [int] NULL,
	[NR_Rabatt_Produkt39] [int] NULL,
	[NR_Rabatt_Produkt40] [int] NULL,
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
/****** Object:  Table [dbo].[Fragen_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
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
/****** Object:  Table [dbo].[Produkte_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_10_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL,
	[EAN] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_login]    Script Date: 06.07.2018 11:18:25 ******/
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
/****** Object:  Table [dbo].[stammdaten_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_10_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GP_ID] [bigint] NULL,
	[GLN] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[Entscheider] [varchar](50) NULL,
	[Flaeche] [int] NULL,
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
/****** Object:  View [dbo].[Auswertung_Intern_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
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
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt14, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt14, dbo.einsatzbericht_10_2016.Verkauf_Produkt15, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt15, dbo.einsatzbericht_10_2016.Bestand_Produkt1, dbo.einsatzbericht_10_2016.Bestand_Produkt2, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt3, dbo.einsatzbericht_10_2016.Bestand_Produkt4, dbo.einsatzbericht_10_2016.Bestand_Produkt5, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt6, dbo.einsatzbericht_10_2016.Bestand_Produkt7, dbo.einsatzbericht_10_2016.Bestand_Produkt8, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt9, dbo.einsatzbericht_10_2016.Bestand_Produkt10, dbo.einsatzbericht_10_2016.Bestand_Produkt11, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt12, dbo.einsatzbericht_10_2016.Bestand_Produkt13, dbo.einsatzbericht_10_2016.Bestand_Produkt14, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt15
FROM            dbo.einsatzbericht_10_2016 INNER JOIN
                         dbo.stammdaten_10_2016 ON dbo.einsatzbericht_10_2016.stammdaten_id = dbo.stammdaten_10_2016.id
WHERE        (dbo.stammdaten_10_2016.freigabe_bericht_extern = 'ja') OR
                         (dbo.einsatzbericht_10_2016.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_intern_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_intern_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 2)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 2)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 2)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 2)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 2)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 2)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 2)
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
                               WHERE        (mitarbeiter = 4)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 4)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 4)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 4)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 4)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 4)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 4)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 5)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 5)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 5)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 5)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 5)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 5)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 5)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 6)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 6)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 6)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 6)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 6)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 6)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 6)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 7)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 7)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 7)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 7)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 7)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 7)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 7)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (mitarbeiter = 8)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 8)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 8)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 8)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 8)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 8)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[Auswertung_Kundenseite_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
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
                         dbo.einsatzbericht_10_2016.Verkauf_Produkt14, dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt14, dbo.einsatzbericht_10_2016.Verkauf_Produkt15, 
                         dbo.einsatzbericht_10_2016.NR_Rabatt_Produkt15, dbo.einsatzbericht_10_2016.Bestand_Produkt7, dbo.einsatzbericht_10_2016.Bestand_Produkt6, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt1, dbo.einsatzbericht_10_2016.Bestand_Produkt2, dbo.einsatzbericht_10_2016.Bestand_Produkt3, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt4, dbo.einsatzbericht_10_2016.Bestand_Produkt5, dbo.einsatzbericht_10_2016.Bestand_Produkt8, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt9, dbo.einsatzbericht_10_2016.Bestand_Produkt10, dbo.einsatzbericht_10_2016.Bestand_Produkt11, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt12, dbo.einsatzbericht_10_2016.Bestand_Produkt13, dbo.einsatzbericht_10_2016.Bestand_Produkt14, 
                         dbo.einsatzbericht_10_2016.Bestand_Produkt15
FROM            dbo.einsatzbericht_10_2016 INNER JOIN
                         dbo.stammdaten_10_2016 ON dbo.einsatzbericht_10_2016.stammdaten_id = dbo.stammdaten_10_2016.id
WHERE        (dbo.stammdaten_10_2016.freigabe_bericht_intern = 'ja') OR
                         (dbo.einsatzbericht_10_2016.Besuchsfrage5 = 'ja')
GO
/****** Object:  View [dbo].[auswertung_besuchsfragen_Kundenseite_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_besuchsfragen_Kundenseite_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 2)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 2)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 2)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 2)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 2)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 2)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 4)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 4)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 4)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 4)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 4)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 4)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 4)
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
                               WHERE        (mitarbeiter = 5)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 5)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 5)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 5)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 5)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 5)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 5)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 6)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 6)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 6)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 6)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 6)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 6)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 6)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 7)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 7)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 7)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 7)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 7)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 7)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 7)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (mitarbeiter = 8)) AS Besuche,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Besuchsfrage1 = 'ja') AND (mitarbeiter = 8)) AS 'Entscheider angetroffen',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Besuchsfrage2 = 'ja') AND (mitarbeiter = 8)) AS Auftrag,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Besuchsfrage3 = 'ja') AND (mitarbeiter = 8)) AS 'Facings erweitert',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Besuchsfrage4 = 'ja') AND (mitarbeiter = 8)) AS Fotos,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Besuchsfrage5 = 'ja') AND (mitarbeiter = 8)) AS 'Zweitranfahrt geplant'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_verkaeufe_Kundenseite_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
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
                         SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt14) AS Expr14, SUM(dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt15) AS Expr15, 
                         dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert]
FROM            dbo.Auswertung_Kundenseite_10_2016 INNER JOIN
                         dbo.auswertung_besuchsfragen_Kundenseite_10_2016 ON 
                         dbo.Auswertung_Kundenseite_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_verkaeufe_intern_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
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
                         SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt14) AS Expr14, SUM(dbo.Auswertung_Intern_10_2016.Verkauf_Produkt15) AS Expr15, 
                         dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert]
FROM            dbo.Auswertung_Intern_10_2016 INNER JOIN
                         dbo.auswertung_besuchsfragen_intern_10_2016 ON 
                         dbo.Auswertung_Intern_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_rabatte_Kundenseite_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_rabatte_Kundenseite_10_2016]
AS
SELECT        dbo.Auswertung_Kundenseite_10_2016.mitarbeiter, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt1) AS Expr1, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt3) AS Expr3, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt4) AS Expr4, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt5) AS Expr5, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt6) AS Expr6, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt7) AS Expr7, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt9) AS Expr9, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt10) AS Expr10, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt11) AS Expr11, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt12) AS Expr12, SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt13) AS Expr13, 
                         dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert], SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt14) AS Expr14, 
                         SUM(dbo.Auswertung_Kundenseite_10_2016.NR_Rabatt_Produkt15) AS Expr15
FROM            dbo.Auswertung_Kundenseite_10_2016 INNER JOIN
                         dbo.auswertung_besuchsfragen_Kundenseite_10_2016 ON 
                         dbo.Auswertung_Kundenseite_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_Kundenseite_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_Kundenseite_10_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_rabatte_intern_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_rabatte_intern_10_2016]
AS
SELECT        dbo.Auswertung_Intern_10_2016.mitarbeiter, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt1) AS Expr1, 
                         SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt2) AS Expr2, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt3) AS Expr3, 
                         SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt4) AS Expr4, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt5) AS Expr5, 
                         SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt6) AS Expr6, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt7) AS Expr7, 
                         SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt8) AS Expr8, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt9) AS Expr9, 
                         SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt10) AS Expr10, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt11) AS Expr11, 
                         SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt12) AS Expr12, SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt13) AS Expr13, 
                         dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert], SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt14) AS Expr14, 
                         SUM(dbo.Auswertung_Intern_10_2016.NR_Rabatt_Produkt15) AS Expr15
FROM            dbo.Auswertung_Intern_10_2016 INNER JOIN
                         dbo.auswertung_besuchsfragen_intern_10_2016 ON 
                         dbo.Auswertung_Intern_10_2016.mitarbeiter = dbo.auswertung_besuchsfragen_intern_10_2016.mitarbeiter
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.auswertung_besuchsfragen_intern_10_2016.[Facings erweitert]
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_Kundenseite_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_Kundenseite_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 4)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 5)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 6)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 7)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_nichtverkauf_intern_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtverkauf_intern_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 2 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 3 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 3)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 4 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 4)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 5 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 5)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 6 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 6)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 7 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 7)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_kein_Auftrag = 'kein Bedarf') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Bedarf',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_kein_Auftrag = 'kein Ansprechpartner') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Ansprechpartner',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_kein_Auftrag = 'kein Platz') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'kein Platz',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_kein_Auftrag = 'Sonstiges') AND mitarbeiter = 8 AND Besuchsfrage1 = 'ja') AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_intern_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_intern_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 2) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 2) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 2) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 2) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 2) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 2) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 4) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 4) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 4) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 4) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 4) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 4) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 4)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 3) AS 'Umbau',
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
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 5) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 5) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 5) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 5) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 5) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 5) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 5)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 6) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 6) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 6) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 6) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 6) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 6) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 6)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 7) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 7) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 7) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 7) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 7) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 7) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 7)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 8) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 8) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 8) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 8) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 8) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 8) AS 'Sonstiges'
FROM            dbo.Auswertung_Intern_10_2016 AS Auswertung_Intern_1
WHERE        (mitarbeiter = 8)
GO
/****** Object:  View [dbo].[auswertung_nichtantreffen_Kundenseite_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_nichtantreffen_Kundenseite_10_2016]
AS
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 2) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 2) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 2) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 2) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 2) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 2) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 2)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 4) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 4) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 4) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 4) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 4) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 4) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 4)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 3) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 3) AS 'Umbau',
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
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 6) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 6) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 6) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 6) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 6) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 6) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 6)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 7) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 7) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 7) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 7) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 7) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 7) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 7)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 8) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 8) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 8) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 8) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 8) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 8) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 8)
UNION ALL
SELECT DISTINCT mitarbeiter,
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016
                               WHERE        (Grund_AP_nicht_angetroffen = 'nicht existent') AND mitarbeiter = 5) AS 'nicht existent',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_6
                               WHERE        (Grund_AP_nicht_angetroffen = 'GAM') AND mitarbeiter = 5) AS 'Umbau',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_5
                               WHERE        (Grund_AP_nicht_angetroffen = 'Urlaub') AND mitarbeiter = 5) AS 'Urlaub',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_4
                               WHERE        (Grund_AP_nicht_angetroffen = 'schließt in Kürze') AND mitarbeiter = 5) AS 'schließt in Kürze',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_3
                               WHERE        (Grund_AP_nicht_angetroffen = 'AP trotz Zweitanfahrt nicht erreichbar') AND mitarbeiter = 5) AS 'AP trotz Zweitanfahrt nicht erreichbar',
                             (SELECT        COUNT(id) AS Expr1
                               FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_2
                               WHERE        (Grund_AP_nicht_angetroffen = 'Sonstiges') AND mitarbeiter = 5) AS 'Sonstiges'
FROM            dbo.Auswertung_Kundenseite_10_2016 AS Auswertung_Kundenseite_1
WHERE        (mitarbeiter = 5)
GO
/****** Object:  View [dbo].[Neulistungen_intern]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Neulistungen_intern]
AS
SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016 
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt1 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt1 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt2 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt2 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt3 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt3 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt4 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt4 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt5 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt5 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt6 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt6 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt7 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt7 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt8 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt8 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt9 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt9 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt10 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt10 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt11 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt11 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt12 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt12 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt13 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt13 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt14 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt14 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

union all

SELECT        COUNT(dbo.Auswertung_Intern_10_2016.id) AS Expr1, dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id
FROM            dbo.Auswertung_Intern_10_2016
WHERE        (dbo.Auswertung_Intern_10_2016.Verkauf_Produkt15 > 0) AND (dbo.Auswertung_Intern_10_2016.Bestand_Produkt15 = 0) 
GROUP BY dbo.Auswertung_Intern_10_2016.mitarbeiter, dbo.Auswertung_Intern_10_2016.stammdaten_id

GO
/****** Object:  View [dbo].[Neulistungen_gesamt_intern]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Neulistungen_gesamt_intern]
AS
SELECT        SUM(Expr1) AS Neulistungen, mitarbeiter
FROM            dbo.Neulistungen_intern
GROUP BY mitarbeiter
GO
/****** Object:  View [dbo].[Neulistungen_Kunde]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Neulistungen_Kunde]
AS
SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016 
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt1 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt1 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt2 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt2 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt3 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt3 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt4 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt4 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt5 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt5 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt6 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt6 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt7 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt7 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt8 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt8 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt9 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt9 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt10 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt10 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt11 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt11 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt12 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt12 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt13 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt13 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt14 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt14 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

union all

SELECT        COUNT(dbo.Auswertung_Kundenseite_10_2016.id) AS Expr1, dbo.Auswertung_Kundenseite_10_2016.mitarbeiter
FROM            dbo.Auswertung_Kundenseite_10_2016
WHERE        (dbo.Auswertung_Kundenseite_10_2016.Verkauf_Produkt15 > 0) AND (dbo.Auswertung_Kundenseite_10_2016.Bestand_Produkt15 = 0) 
GROUP BY dbo.Auswertung_Kundenseite_10_2016.mitarbeiter

GO
/****** Object:  View [dbo].[Neulistungen_gesamt_Kunde]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Neulistungen_gesamt_Kunde]
AS
SELECT        SUM(Expr1) AS Neulistungen, mitarbeiter
FROM            dbo.Neulistungen_Kunde
GROUP BY mitarbeiter

GO
/****** Object:  View [dbo].[Neulistungen_pro_shop_intern]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Neulistungen_pro_shop_intern]
AS
SELECT        SUM(Expr1) AS Distributionen, stammdaten_id
FROM            dbo.Neulistungen_intern
GROUP BY stammdaten_id
GO
/****** Object:  View [dbo].[Verkauf_pro_AD_intern]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Verkauf_pro_AD_intern]
AS
SELECT        Expr1 + Expr2 + Expr3 + Expr4 + Expr5 + Expr6 + Expr7 + Expr8 + Expr9 + Expr10 + Expr11 + Expr12 + Expr13 + Expr14 + Expr15 AS Verkauf, mitarbeiter
FROM            dbo.auswertung_verkaeufe_intern_10_2016
GO
/****** Object:  View [dbo].[Verkauf_pro_AD_Kundenseite]    Script Date: 06.07.2018 11:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Verkauf_pro_AD_Kundenseite]
AS
SELECT        Expr1 + Expr2 + Expr3 + Expr4 + Expr5 + Expr6 + Expr7 + Expr8 + Expr9 + Expr10 + Expr11 + Expr12 + Expr13 + Expr14 + Expr15 AS Verkauf, mitarbeiter
FROM            dbo.auswertung_verkaeufe_Kundenseite_10_2016

GO
/****** Object:  View [dbo].[Freigegebene_Stammdaten_10_2016]    Script Date: 06.07.2018 11:18:25 ******/
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
/****** Object:  View [dbo].[uebersicht_aktion_5]    Script Date: 06.07.2018 11:18:25 ******/
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
         Top = -1536
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
         Top = -960
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
         Begin Table = "einsatzbericht_10_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 249
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 15
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
            TopColumn = 14
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
         Configuration = "(H (1[41] 4[9] 2[32] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtantreffen_intern_10_2016'
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
         Top = -1248
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_nichtverkauf_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[0] 2[41] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "Auswertung_Intern_10_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 234
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 41
         End
         Begin Table = "auswertung_besuchsfragen_intern_10_2016"
            Begin Extent = 
               Top = 7
               Left = 359
               Bottom = 220
               Right = 590
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_intern_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_intern_10_2016'
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
               Bottom = 246
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 40
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite_10_2016"
            Begin Extent = 
               Top = 33
               Left = 451
               Bottom = 162
               Right = 682
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_Kundenseite_10_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_rabatte_Kundenseite_10_2016'
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
         Begin Table = "Auswertung_Kundenseite_10_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "auswertung_besuchsfragen_Kundenseite_10_2016"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
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
         Begin Table = "Neulistungen_intern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 101
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_gesamt_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_gesamt_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
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
               Bottom = 337
               Right = 313
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten_10_2016"
            Begin Extent = 
               Top = 6
               Left = 354
               Bottom = 221
               Right = 565
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_intern'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_Kunde'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_Kunde'
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
         Begin Table = "Neulistungen_intern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 143
               Right = 209
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_pro_shop_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Neulistungen_pro_shop_intern'
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
         Begin Table = "auswertung_verkaeufe_intern_10_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 216
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Verkauf_pro_AD_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Verkauf_pro_AD_intern'
GO
USE [master]
GO
ALTER DATABASE [Reckitt_Benckiser] SET  READ_WRITE 
GO
