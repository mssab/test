USE [master]
GO
/****** Object:  Database [wilkinson_planer]    Script Date: 06.07.2018 12:03:12 ******/
CREATE DATABASE [wilkinson_planer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wilkinson_planer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\wilkinson_planer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'wilkinson_planer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\wilkinson_planer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [wilkinson_planer] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wilkinson_planer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wilkinson_planer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wilkinson_planer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wilkinson_planer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wilkinson_planer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wilkinson_planer] SET ARITHABORT OFF 
GO
ALTER DATABASE [wilkinson_planer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [wilkinson_planer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wilkinson_planer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wilkinson_planer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wilkinson_planer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wilkinson_planer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wilkinson_planer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wilkinson_planer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wilkinson_planer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wilkinson_planer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wilkinson_planer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wilkinson_planer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wilkinson_planer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wilkinson_planer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wilkinson_planer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wilkinson_planer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wilkinson_planer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wilkinson_planer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wilkinson_planer] SET  MULTI_USER 
GO
ALTER DATABASE [wilkinson_planer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wilkinson_planer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wilkinson_planer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wilkinson_planer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [wilkinson_planer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [wilkinson_planer] SET QUERY_STORE = OFF
GO
USE [wilkinson_planer]
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
USE [wilkinson_planer]
GO
/****** Object:  User [Wilkinson_neu]    Script Date: 06.07.2018 12:03:12 ******/
CREATE USER [Wilkinson_neu] FOR LOGIN [Wilkinson_neu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Wilkinson_DB_Admin]    Script Date: 06.07.2018 12:03:12 ******/
CREATE USER [Wilkinson_DB_Admin] FOR LOGIN [Wilkinson_DB_Admin] WITH DEFAULT_SCHEMA=[db_datareader]
GO
/****** Object:  User [Website_Wilkinson]    Script Date: 06.07.2018 12:03:12 ******/
CREATE USER [Website_Wilkinson] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_datareader]
GO
/****** Object:  User [Gate_DB_Admin]    Script Date: 06.07.2018 12:03:12 ******/
CREATE USER [Gate_DB_Admin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Wilkinson_neu]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Wilkinson_neu]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Wilkinson_neu]
GO
ALTER ROLE [db_owner] ADD MEMBER [Wilkinson_DB_Admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Wilkinson_DB_Admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Wilkinson_DB_Admin]
GO
ALTER ROLE [db_owner] ADD MEMBER [Website_Wilkinson]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Website_Wilkinson]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Website_Wilkinson]
GO
/****** Object:  Table [dbo].[login]    Script Date: 06.07.2018 12:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
	[rolle] [varchar](max) NULL,
	[anmeldename] [varchar](max) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht]    Script Date: 06.07.2018 12:03:13 ******/
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
	[Bestand_Produkt1] [bit] NULL,
	[Bestand_Produkt2] [bit] NULL,
	[Bestand_Produkt3] [bit] NULL,
	[Bestand_Produkt4] [bit] NULL,
	[Bestand_Produkt5] [bit] NULL,
	[Bestand_Produkt6] [bit] NULL,
	[Bestand_Produkt7] [bit] NULL,
	[Bestand_Produkt8] [bit] NULL,
	[Bestand_Produkt9] [bit] NULL,
	[Bestand_Produkt10] [bit] NULL,
	[Bestand_Produkt11] [bit] NULL,
	[Bestand_Produkt12] [bit] NULL,
	[Bestand_Produkt13] [bit] NULL,
	[Bestand_Produkt14] [bit] NULL,
	[Bestand_Produkt15] [bit] NULL,
	[Bestand_Produkt16] [bit] NULL,
	[Bestand_Produkt17] [bit] NULL,
	[Bestand_Produkt18] [bit] NULL,
	[Bestand_Produkt19] [bit] NULL,
	[Bestand_Produkt20] [bit] NULL,
	[Bestand_Produkt21] [bit] NULL,
	[Bestand_Produkt22] [bit] NULL,
	[Bestand_Produkt23] [bit] NULL,
	[Bestand_Produkt24] [bit] NULL,
	[Bestand_Produkt25] [bit] NULL,
	[Bestand_Produkt26] [bit] NULL,
	[Bestand_Produkt27] [bit] NULL,
	[Bestand_Produkt28] [bit] NULL,
	[Bestand_Produkt29] [bit] NULL,
	[Bestand_Produkt30] [bit] NULL,
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
	[Neulistung_Produkt1] [bit] NULL,
	[Neulistung_Produkt2] [bit] NULL,
	[Neulistung_Produkt3] [bit] NULL,
	[Neulistung_Produkt4] [bit] NULL,
	[Neulistung_Produkt5] [bit] NULL,
	[Neulistung_Produkt6] [bit] NULL,
	[Neulistung_Produkt7] [bit] NULL,
	[Neulistung_Produkt8] [bit] NULL,
	[Neulistung_Produkt9] [bit] NULL,
	[Neulistung_Produkt10] [bit] NULL,
	[Neulistung_Produkt11] [bit] NULL,
	[Neulistung_Produkt12] [bit] NULL,
	[Neulistung_Produkt13] [bit] NULL,
	[Neulistung_Produkt14] [bit] NULL,
	[Neulistung_Produkt15] [bit] NULL,
	[Neulistung_Produkt16] [bit] NULL,
	[Neulistung_Produkt17] [bit] NULL,
	[Neulistung_Produkt18] [bit] NULL,
	[Neulistung_Produkt19] [bit] NULL,
	[Neulistung_Produkt20] [bit] NULL,
	[Neulistung_Produkt21] [bit] NULL,
	[Neulistung_Produkt22] [bit] NULL,
	[Neulistung_Produkt23] [bit] NULL,
	[Neulistung_Produkt24] [bit] NULL,
	[Neulistung_Produkt25] [bit] NULL,
	[Neulistung_Produkt26] [bit] NULL,
	[Neulistung_Produkt27] [bit] NULL,
	[Neulistung_Produkt28] [bit] NULL,
	[Neulistung_Produkt29] [bit] NULL,
	[Neulistung_Produkt30] [bit] NULL,
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
/****** Object:  Table [dbo].[stammdaten]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aktion_id] [int] NULL,
	[GP_ID] [bigint] NULL,
	[name] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](max) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](max) NULL,
	[Gruppe] [varchar](50) NULL,
	[Zentrale] [varchar](50) NULL,
	[Firmenname] [varchar](50) NULL,
	[Flaeche] [int] NULL,
	[Entscheider] [varchar](50) NULL,
	[mitarbeiter] [int] NULL,
	[freigabe_bericht_extern] [varchar](50) NULL,
	[freigabe_bilder_extern] [varchar](50) NULL,
	[freigabe_bericht_intern] [varchar](50) NULL,
	[freigabe_bilder_intern] [varchar](50) NULL,
 CONSTRAINT [PK_stammdaten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[uebersicht_aktion]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[uebersicht_aktion]
AS
SELECT     dbo.stammdaten.id, dbo.stammdaten.aktion_id ,dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, dbo.stammdaten.ort, 
                      dbo.stammdaten.Entscheider, dbo.stammdaten.mitarbeiter, dbo.stammdaten.freigabe_bericht_extern, dbo.stammdaten.freigabe_bilder_extern, 
                      dbo.stammdaten.freigabe_bericht_intern, dbo.stammdaten.freigabe_bilder_intern, dbo.einsatzbericht.Datum, dbo.login.anmeldename
FROM         dbo.login INNER JOIN
                      dbo.stammdaten ON dbo.login.id = dbo.stammdaten.mitarbeiter LEFT OUTER JOIN
                      dbo.einsatzbericht ON dbo.stammdaten.id = dbo.einsatzbericht.stammdaten_id

GO
/****** Object:  View [dbo].[Freigegebene_Stammdaten]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Freigegebene_Stammdaten]
AS
SELECT     id, aktion_id, GP_ID, name, strasse, plz, ort, telefon, email, Entscheider, mitarbeiter, freigabe_bericht_extern, freigabe_bilder_extern, freigabe_bericht_intern, 
                      freigabe_bilder_intern
FROM         dbo.stammdaten
WHERE     (freigabe_bericht_intern = 'ja')

GO
/****** Object:  View [dbo].[Auswertung_Intern]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Auswertung_Intern]
AS
SELECT     dbo.einsatzbericht.id, dbo.einsatzbericht.stammdaten_id, stammdaten.aktion_id, dbo.stammdaten.mitarbeiter, dbo.einsatzbericht.Datum, dbo.einsatzbericht.Besuchsfrage1, 
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
/****** Object:  View [dbo].[Auswertung_Kundenseite]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Auswertung_Kundenseite]
AS
SELECT     dbo.einsatzbericht.id, dbo.einsatzbericht.stammdaten_id, stammdaten.aktion_id, dbo.stammdaten.mitarbeiter, dbo.einsatzbericht.Datum, dbo.einsatzbericht.Besuchsfrage1, 
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
/****** Object:  View [dbo].[misserfolg_intern]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[misserfolg_intern]
AS
SELECT       dbo.login.id,  dbo.login.anmeldename, dbo.einsatzbericht.Datum, dbo.stammdaten.aktion_id, dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, 
                         dbo.stammdaten.ort, 'AP nicht angetroffen' AS Vorfall, dbo.einsatzbericht.Grund_AP_nicht_angetroffen AS Grund
FROM            dbo.einsatzbericht INNER JOIN
                         dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id INNER JOIN
                         dbo.login ON dbo.stammdaten.mitarbeiter = dbo.login.id
WHERE        (dbo.einsatzbericht.Besuchsfrage1 = 'nein') AND (dbo.stammdaten.freigabe_bericht_extern = 'ja')

union all

SELECT        dbo.login.id, dbo.login.anmeldename, dbo.einsatzbericht.Datum, dbo.stammdaten.aktion_id, dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, 
                         dbo.stammdaten.ort, 'kein Auftrag' AS Vorfall, dbo.einsatzbericht.Grund_kein_Auftrag AS Grund
FROM            dbo.einsatzbericht INNER JOIN
                         dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id INNER JOIN
                         dbo.login ON dbo.stammdaten.mitarbeiter = dbo.login.id
WHERE        (dbo.einsatzbericht.Besuchsfrage2 = 'nein') AND (dbo.stammdaten.freigabe_bericht_extern = 'ja')
GO
/****** Object:  View [dbo].[misserfolg_extern]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[misserfolg_extern]
AS
SELECT        dbo.login.id, dbo.login.anmeldename, dbo.einsatzbericht.Datum, dbo.stammdaten.aktion_id, dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, 
                         dbo.stammdaten.ort, 'AP nicht angetroffen' AS Vorfall, dbo.einsatzbericht.Grund_AP_nicht_angetroffen AS Grund
FROM            dbo.einsatzbericht INNER JOIN
                         dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id INNER JOIN
                         dbo.login ON dbo.stammdaten.mitarbeiter = dbo.login.id
WHERE        (dbo.einsatzbericht.Besuchsfrage1 = 'nein') AND (dbo.stammdaten.freigabe_bericht_intern = 'ja')

union all

SELECT        dbo.login.id, dbo.login.anmeldename, dbo.einsatzbericht.Datum, dbo.stammdaten.aktion_id, dbo.stammdaten.GP_ID, dbo.stammdaten.name, dbo.stammdaten.strasse, dbo.stammdaten.plz, 
                         dbo.stammdaten.ort, 'kein Auftrag' AS Vorfall, dbo.einsatzbericht.Grund_kein_Auftrag AS Grund
FROM            dbo.einsatzbericht INNER JOIN
                         dbo.stammdaten ON dbo.einsatzbericht.stammdaten_id = dbo.stammdaten.id INNER JOIN
                         dbo.login ON dbo.stammdaten.mitarbeiter = dbo.login.id
WHERE        (dbo.einsatzbericht.Besuchsfrage2 = 'nein') AND (dbo.stammdaten.freigabe_bericht_intern = 'ja')
GO
/****** Object:  View [dbo].[GP_Abfrage]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GP_Abfrage]
AS
SELECT        COUNT(id) AS Expr1, GP_ID
FROM            dbo.stammdaten
GROUP BY GP_ID
GO
/****** Object:  Table [dbo].[Aktionen]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aktionen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Jahr] [int] NULL,
	[Beginn] [date] NULL,
	[Ende] [date] NULL,
 CONSTRAINT [PK_Aktionen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aktion_id] [int] NULL,
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Berichtsfragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Einsatzbogen_Parts]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Einsatzbogen_Parts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aktion] [int] NULL,
	[Weihnachtsset] [bit] NULL,
	[Facings] [bit] NULL,
	[Fragen_Sonstiges] [bit] NULL,
	[Bericht_Bearbeitung] [bit] NULL,
 CONSTRAINT [PK_Einsatzbogen_Parts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fragen]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aktion_id] [int] NULL,
	[Tabellenheader] [varchar](max) NULL,
	[Frage] [varchar](max) NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Fragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLN_Abgleich]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLN_Abgleich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[Flaeche] [int] NULL,
	[GLN] [bigint] NULL,
	[Telefon] [varchar](50) NULL,
 CONSTRAINT [PK_GLN_Abgleich] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte]    Script Date: 06.07.2018 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aktion] [varchar](max) NULL,
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[Bestand] [bit] NULL,
	[Verkauf] [bit] NULL,
	[NR_Rabatt] [bit] NULL,
	[Neulistung] [bit] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Produkte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
               Bottom = 286
               Right = 249
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GP_Abfrage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GP_Abfrage'
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
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'misserfolg_extern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'misserfolg_extern'
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
               Bottom = 322
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "stammdaten"
            Begin Extent = 
               Top = 6
               Left = 354
               Bottom = 310
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "login"
            Begin Extent = 
               Top = 6
               Left = 603
               Bottom = 266
               Right = 770
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
         Width = 3180
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3210
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'misserfolg_intern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'misserfolg_intern'
GO
USE [master]
GO
ALTER DATABASE [wilkinson_planer] SET  READ_WRITE 
GO
