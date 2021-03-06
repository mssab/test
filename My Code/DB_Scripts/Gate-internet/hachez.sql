USE [master]
GO
/****** Object:  Database [hachez]    Script Date: 06.07.2018 11:07:36 ******/
CREATE DATABASE [hachez]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hachez', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\hachez.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'hachez_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\hachez_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [hachez] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hachez].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hachez] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hachez] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hachez] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hachez] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hachez] SET ARITHABORT OFF 
GO
ALTER DATABASE [hachez] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hachez] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hachez] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hachez] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hachez] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hachez] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hachez] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hachez] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hachez] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hachez] SET  DISABLE_BROKER 
GO
ALTER DATABASE [hachez] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hachez] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hachez] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hachez] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hachez] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hachez] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hachez] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hachez] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [hachez] SET  MULTI_USER 
GO
ALTER DATABASE [hachez] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hachez] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hachez] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hachez] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [hachez] SET DELAYED_DURABILITY = DISABLED 
GO
USE [hachez]
GO
/****** Object:  Table [dbo].[Berichtsfragen_06_2016]    Script Date: 06.07.2018 11:07:37 ******/
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
/****** Object:  Table [dbo].[einsatzbericht_06_2016]    Script Date: 06.07.2018 11:07:37 ******/
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
/****** Object:  Table [dbo].[Fragen_06_2016]    Script Date: 06.07.2018 11:07:37 ******/
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
/****** Object:  Table [dbo].[Produkte_06_2016]    Script Date: 06.07.2018 11:07:37 ******/
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
/****** Object:  Table [dbo].[promotion_login]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  Table [dbo].[stammdaten_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
	[PZ] [int] NULL,
	[Verkaufsflaeche] [int] NULL,
 CONSTRAINT [PK_stammdaten_06_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Auswertung_Intern_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_besuchsfragen_intern_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[Auswertung_Kundenseite_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_besuchsfragen_Kundenseite_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_nichtantreffen_intern_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_nichtantreffen_Kundenseite_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_nichtverkauf_intern_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_nichtverkauf_Kundenseite_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_rabatte_intern_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_rabatte_Kundenseite_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_verkaeufe_intern_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[auswertung_verkaeufe_Kundenseite_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[Freigegebene_Stammdaten_06_2016]    Script Date: 06.07.2018 11:07:38 ******/
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
/****** Object:  View [dbo].[uebersicht_aktion_4]    Script Date: 06.07.2018 11:07:38 ******/
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
USE [master]
GO
ALTER DATABASE [hachez] SET  READ_WRITE 
GO
