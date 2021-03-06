USE [master]
GO
/****** Object:  Database [wmf]    Script Date: 06.07.2018 11:27:34 ******/
CREATE DATABASE [wmf]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wmf', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\wmf.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wmf_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\wmf_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wmf] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wmf].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wmf] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wmf] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wmf] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wmf] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wmf] SET ARITHABORT OFF 
GO
ALTER DATABASE [wmf] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wmf] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wmf] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wmf] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wmf] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wmf] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wmf] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wmf] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wmf] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wmf] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wmf] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wmf] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wmf] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wmf] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wmf] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wmf] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wmf] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wmf] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wmf] SET  MULTI_USER 
GO
ALTER DATABASE [wmf] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wmf] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wmf] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wmf] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [wmf] SET DELAYED_DURABILITY = DISABLED 
GO
USE [wmf]
GO
/****** Object:  Table [dbo].[einsatzbericht_2_2016]    Script Date: 06.07.2018 11:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_2_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Deko_Beginn] [varchar](max) NULL,
	[Deko_Ende] [varchar](max) NULL,
	[Tel_Anmeldung_am] [varchar](max) NULL,
	[Tel_Ansprechpartner] [varchar](max) NULL,
	[Arbeiten_durchgefuehrt] [bit] NULL,
	[Sondermasse_ausgetauscht] [bit] NULL,
	[Anfahrtsart] [varchar](max) NULL,
	[Sondermasse_angelegt] [bit] NULL,
	[Sondermasse_freigegeben] [bit] NULL,
	[Sondermasse_notwendig] [bit] NULL,
	[Sondermasse_in_Produktion_gegeben] [bit] NULL,
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
	[Grund_keine_Deko] [varchar](max) NULL,
	[Grund_keine_Deko_Sonstiges] [varchar](max) NULL,
	[Sondermass_1_Breite] [int] NULL,
	[Sondermass_1_Hoehe] [int] NULL,
	[Sondermass_2_Breite] [int] NULL,
	[Sondermass_2_Hoehe] [int] NULL,
	[Sondermass_3_Breite] [int] NULL,
	[Sondermass_3_Hoehe] [int] NULL,
	[Sondermass_4_Breite] [int] NULL,
	[Sondermass_4_Hoehe] [int] NULL,
	[Sondermass_5_Breite] [int] NULL,
	[Sondermass_5_Hoehe] [int] NULL,
	[Sondermass_6_Breite] [int] NULL,
	[Sondermass_6_Hoehe] [int] NULL,
	[Sondermass_7_Breite] [int] NULL,
	[Sondermass_7_Hoehe] [int] NULL,
	[Sondermass_8_Breite] [int] NULL,
	[Sondermass_8_Hoehe] [int] NULL,
	[Sondermass_9_Breite] [int] NULL,
	[Sondermass_9_Hoehe] [int] NULL,
	[Sondermass_10_Breite] [int] NULL,
	[Sondermass_10_Hoehe] [int] NULL,
	[Sondermass_1_Moment] [varchar](max) NULL,
	[Sondermass_1_Material] [varchar](max) NULL,
	[Sondermass_1_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_2_Moment] [varchar](max) NULL,
	[Sondermass_2_Material] [varchar](max) NULL,
	[Sondermass_2_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_3_Moment] [varchar](max) NULL,
	[Sondermass_3_Material] [varchar](max) NULL,
	[Sondermass_3_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_4_Moment] [varchar](max) NULL,
	[Sondermass_4_Material] [varchar](max) NULL,
	[Sondermass_4_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_5_Moment] [varchar](max) NULL,
	[Sondermass_5_Material] [varchar](max) NULL,
	[Sondermass_5_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_6_Moment] [varchar](max) NULL,
	[Sondermass_6_Material] [varchar](max) NULL,
	[Sondermass_6_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_7_Moment] [varchar](max) NULL,
	[Sondermass_7_Material] [varchar](max) NULL,
	[Sondermass_7_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_8_Moment] [varchar](max) NULL,
	[Sondermass_8_Material] [varchar](max) NULL,
	[Sondermass_8_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_9_Moment] [varchar](max) NULL,
	[Sondermass_9_Material] [varchar](max) NULL,
	[Sondermass_9_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_10_Moment] [varchar](max) NULL,
	[Sondermass_10_Material] [varchar](max) NULL,
	[Sondermass_10_Material_Sonstiges] [varchar](max) NULL,
	[Bemerkung_Sondermasse] [text] NULL,
	[Bemerkung] [text] NULL,
	[Name_Ansprechpartner] [varchar](max) NULL,
	[Zweitanfahrt_erforderlich] [bit] NULL,
	[Freigabe_Bericht_extern] [bit] NULL,
	[Freigabe_Bericht_intern] [bit] NULL,
	[Freigabe_Bilder_extern] [bit] NULL,
	[Freigabe_Bilder_intern] [bit] NULL,
 CONSTRAINT [PK_einsatzbericht_2_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_6_2015]    Script Date: 06.07.2018 11:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_6_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Arbeiten_durchgefuehrt] [bit] NULL,
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
	[Sondermass_1_Breite] [decimal](18, 2) NULL,
	[Sondermass_1_Hoehe] [decimal](18, 2) NULL,
	[Sondermass_2_Breite] [decimal](18, 2) NULL,
	[Sondermass_2_Hoehe] [decimal](18, 2) NULL,
	[Sondermass_3_Breite] [decimal](18, 2) NULL,
	[Sondermass_3_Hoehe] [decimal](18, 2) NULL,
	[Sondermass_4_Breite] [decimal](18, 2) NULL,
	[Sondermass_4_Hoehe] [decimal](18, 2) NULL,
	[Sondermass_5_Breite] [decimal](18, 2) NULL,
	[Sondermass_5_Hoehe] [decimal](18, 2) NULL,
	[Sondermass_6_Breite] [decimal](18, 2) NULL,
	[Sondermass_6_Hoehe] [decimal](18, 2) NULL,
	[Bemerkung_Sondermasse] [text] NULL,
	[Bemerkung] [text] NULL,
	[Name_Ansprechpartner] [varchar](max) NULL,
	[Zweitanfahrt_erforderlich] [bit] NULL,
	[Freigabe_Bericht_extern] [bit] NULL,
	[Freigabe_Bericht_intern] [bit] NULL,
	[Freigabe_Bilder_extern] [bit] NULL,
	[Freigabe_Bilder_intern] [bit] NULL,
 CONSTRAINT [PK_einsatzbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[einsatzbericht_9_2015]    Script Date: 06.07.2018 11:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[einsatzbericht_9_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stammdaten_id] [int] NULL,
	[Datum] [date] NULL,
	[Deko_Beginn] [varchar](max) NULL,
	[Deko_Ende] [varchar](max) NULL,
	[Tel_Anmeldung_am] [varchar](max) NULL,
	[Tel_Ansprechpartner] [varchar](max) NULL,
	[Arbeiten_durchgefuehrt] [bit] NULL,
	[Anfahrtsart] [varchar](max) NULL,
	[Sondermasse_angelegt] [bit] NULL,
	[Sondermasse_freigegeben] [bit] NULL,
	[Sondermasse_notwendig] [bit] NULL,
	[Sondermasse_in_Produktion_gegeben] [bit] NULL,
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
	[Grund_keine_Deko] [varchar](max) NULL,
	[Grund_keine_Deko_Sonstiges] [varchar](max) NULL,
	[Sondermass_1_Breite] [int] NULL,
	[Sondermass_1_Hoehe] [int] NULL,
	[Sondermass_2_Breite] [int] NULL,
	[Sondermass_2_Hoehe] [int] NULL,
	[Sondermass_3_Breite] [int] NULL,
	[Sondermass_3_Hoehe] [int] NULL,
	[Sondermass_4_Breite] [int] NULL,
	[Sondermass_4_Hoehe] [int] NULL,
	[Sondermass_5_Breite] [int] NULL,
	[Sondermass_5_Hoehe] [int] NULL,
	[Sondermass_6_Breite] [int] NULL,
	[Sondermass_6_Hoehe] [int] NULL,
	[Sondermass_7_Breite] [int] NULL,
	[Sondermass_7_Hoehe] [int] NULL,
	[Sondermass_8_Breite] [int] NULL,
	[Sondermass_8_Hoehe] [int] NULL,
	[Sondermass_9_Breite] [int] NULL,
	[Sondermass_9_Hoehe] [int] NULL,
	[Sondermass_10_Breite] [int] NULL,
	[Sondermass_10_Hoehe] [int] NULL,
	[Sondermass_1_Moment] [varchar](max) NULL,
	[Sondermass_1_Material] [varchar](max) NULL,
	[Sondermass_1_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_2_Moment] [varchar](max) NULL,
	[Sondermass_2_Material] [varchar](max) NULL,
	[Sondermass_2_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_3_Moment] [varchar](max) NULL,
	[Sondermass_3_Material] [varchar](max) NULL,
	[Sondermass_3_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_4_Moment] [varchar](max) NULL,
	[Sondermass_4_Material] [varchar](max) NULL,
	[Sondermass_4_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_5_Moment] [varchar](max) NULL,
	[Sondermass_5_Material] [varchar](max) NULL,
	[Sondermass_5_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_6_Moment] [varchar](max) NULL,
	[Sondermass_6_Material] [varchar](max) NULL,
	[Sondermass_6_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_7_Moment] [varchar](max) NULL,
	[Sondermass_7_Material] [varchar](max) NULL,
	[Sondermass_7_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_8_Moment] [varchar](max) NULL,
	[Sondermass_8_Material] [varchar](max) NULL,
	[Sondermass_8_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_9_Moment] [varchar](max) NULL,
	[Sondermass_9_Material] [varchar](max) NULL,
	[Sondermass_9_Material_Sonstiges] [varchar](max) NULL,
	[Sondermass_10_Moment] [varchar](max) NULL,
	[Sondermass_10_Material] [varchar](max) NULL,
	[Sondermass_10_Material_Sonstiges] [varchar](max) NULL,
	[Bemerkung_Sondermasse] [text] NULL,
	[Bemerkung] [text] NULL,
	[Name_Ansprechpartner] [varchar](max) NULL,
	[Zweitanfahrt_erforderlich] [bit] NULL,
	[Freigabe_Bericht_extern] [bit] NULL,
	[Freigabe_Bericht_intern] [bit] NULL,
	[Freigabe_Bilder_extern] [bit] NULL,
	[Freigabe_Bilder_intern] [bit] NULL,
 CONSTRAINT [PK_einsatzbericht_9_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_2_2016]    Script Date: 06.07.2018 11:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_2_2016](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_6_2015]    Script Date: 06.07.2018 11:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_6_2015](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_9_2015]    Script Date: 06.07.2018 11:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_9_2015](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion_login]    Script Date: 06.07.2018 11:27:35 ******/
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
/****** Object:  Table [dbo].[stammdaten]    Script Date: 06.07.2018 11:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lfd_nr] [int] NULL,
	[KD_Nr] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Kontaktperson] [varchar](max) NULL,
	[Durchfuehrungsdatum] [varchar](max) NULL,
	[Display_montiert] [varchar](max) NULL,
	[Display_bestueckt] [varchar](max) NULL,
	[bemerkung] [text] NULL,
 CONSTRAINT [PK_stammdaten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_2_2016]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_2_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KD_Nr] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
	[Zweitanfahrt] [bit] NULL,
	[Mitarbeiter_Zweitanfahrt] [bit] NULL,
 CONSTRAINT [PK_stammdaten_2_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_6_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_6_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KD_Nr] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
 CONSTRAINT [PK_stammdaten_6_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_9_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_9_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KD_Nr] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Handelsform] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitarbeiter] [int] NULL,
	[Zweitanfahrt] [bit] NULL,
	[Mitarbeiter_Zweitanfahrt] [bit] NULL,
 CONSTRAINT [PK_stammdaten_9_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stammdaten_vm_2014]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stammdaten_vm_2014](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lfd_nr] [int] NULL,
	[KD_Nr] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[Durchfuehrungsdatum] [varchar](max) NULL,
 CONSTRAINT [PK_stammdaten_vm_2014] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tagesbericht_2_2016]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tagesbericht_2_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mitarbeiter] [int] NULL,
	[Datum] [date] NULL,
	[gefahrene_Strecke] [int] NULL,
	[Kennzeichen_PKW] [varchar](50) NULL,
 CONSTRAINT [PK_tagesbericht_2_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tagesbericht_9_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tagesbericht_9_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mitarbeiter] [int] NULL,
	[Datum] [date] NULL,
	[gefahrene_Strecke] [int] NULL,
	[Kennzeichen_PKW] [varchar](50) NULL,
 CONSTRAINT [PK_tagesbericht_9_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[auswertung_intern_6_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_intern_6_2015]
AS
SELECT     dbo.einsatzbericht_6_2015.id, dbo.einsatzbericht_6_2015.Arbeiten_durchgefuehrt, dbo.einsatzbericht_6_2015.Grund_keine_Deko, 
                      dbo.stammdaten_6_2015.Mitarbeiter, dbo.einsatzbericht_6_2015.Freigabe_Bericht_extern
FROM         dbo.einsatzbericht_6_2015 INNER JOIN
                      dbo.stammdaten_6_2015 ON dbo.einsatzbericht_6_2015.stammdaten_id = dbo.stammdaten_6_2015.id
WHERE     (dbo.einsatzbericht_6_2015.Freigabe_Bericht_extern = 1)
GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_6_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_mitarbeiter_6_2015]
AS
SELECT     dbo.promotion_login.anmeldename,
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_6_2015
                            WHERE      (Mitarbeiter = 2)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015
                            WHERE      (Mitarbeiter = 2)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_1 ON dbo.promotion_login.id = auswertung_intern_6_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 2)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_6_2015
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_1 ON dbo.promotion_login.id = auswertung_intern_6_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 3)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_6_2015
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_6_2015 AS auswertung_intern_6_2015_1 ON dbo.promotion_login.id = auswertung_intern_6_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 4)
GO
/****** Object:  View [dbo].[auswertung_kunde_6_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_kunde_6_2015]
AS
SELECT     dbo.einsatzbericht_6_2015.id, dbo.einsatzbericht_6_2015.Arbeiten_durchgefuehrt, dbo.einsatzbericht_6_2015.Grund_keine_Deko, 
                      dbo.stammdaten_6_2015.Mitarbeiter, dbo.einsatzbericht_6_2015.Freigabe_Bericht_intern
FROM         dbo.einsatzbericht_6_2015 INNER JOIN
                      dbo.stammdaten_6_2015 ON dbo.einsatzbericht_6_2015.stammdaten_id = dbo.stammdaten_6_2015.id
WHERE     (dbo.einsatzbericht_6_2015.Freigabe_Bericht_intern = 1)

GO
/****** Object:  View [dbo].[auswertung_kundensicht_6_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_kundensicht_6_2015]
AS
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015
                            WHERE      (Mitarbeiter = 2)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_1 ON dbo.promotion_login.id = auswertung_kunde_6_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 2) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_1 ON dbo.promotion_login.id = auswertung_kunde_6_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 3) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_6_2015 AS auswertung_kunde_6_2015_1 ON dbo.promotion_login.id = auswertung_kunde_6_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 4) 

GO
/****** Object:  View [dbo].[auswertung_intern_9_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_intern_9_2015]
AS
SELECT     dbo.einsatzbericht_9_2015.id, dbo.einsatzbericht_9_2015.Arbeiten_durchgefuehrt, dbo.einsatzbericht_9_2015.Grund_keine_Deko, 
                      dbo.stammdaten_9_2015.Mitarbeiter, dbo.einsatzbericht_9_2015.Freigabe_Bericht_extern
FROM         dbo.einsatzbericht_9_2015 INNER JOIN
                      dbo.stammdaten_9_2015 ON dbo.einsatzbericht_9_2015.stammdaten_id = dbo.stammdaten_9_2015.id
WHERE     (dbo.einsatzbericht_9_2015.Freigabe_Bericht_extern = 1)

GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_9_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[auswertung_mitarbeiter_9_2015]
AS
SELECT     dbo.promotion_login.anmeldename,
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 2)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 2)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 2)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 3)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 4)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 12)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 12)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 12)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 13)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 13)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 13)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 14)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 14)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 14)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 15)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 15)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 15)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 16)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 16)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 16)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 17)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 17)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 17)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 18)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 18)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 18)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 19)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 19)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 19)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 20)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 20)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 20)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 21)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 21)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 21)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 22)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 22)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 22)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_9_2015
                            WHERE      (Mitarbeiter = 23)) AS [Anzahl Kunden],

                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015
                            WHERE      (Mitarbeiter = 23)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_9_2015 AS auswertung_intern_9_2015_1 ON dbo.promotion_login.id = auswertung_intern_9_2015_1.Mitarbeiter
WHERE     (Mitarbeiter = 23)


GO
/****** Object:  View [dbo].[auswertung_kunde_9_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[auswertung_kunde_9_2015]
AS
SELECT     dbo.einsatzbericht_9_2015.id, dbo.einsatzbericht_9_2015.Arbeiten_durchgefuehrt, dbo.einsatzbericht_9_2015.Grund_keine_Deko, 
                      dbo.stammdaten_9_2015.Mitarbeiter, dbo.einsatzbericht_9_2015.Freigabe_Bericht_intern
FROM         dbo.einsatzbericht_9_2015 INNER JOIN
                      dbo.stammdaten_9_2015 ON dbo.einsatzbericht_9_2015.stammdaten_id = dbo.stammdaten_9_2015.id
WHERE     (dbo.einsatzbericht_9_2015.Freigabe_Bericht_intern = 1)


GO
/****** Object:  View [dbo].[auswertung_kundensicht_9_2015]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[auswertung_kundensicht_9_2015]
AS
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 2)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 2) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 2) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 3) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 4) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 12)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 12) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 13)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 13) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 14)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 14) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 14) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 15)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 15) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 15) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 16)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 16) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 16) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 17)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 17) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 17) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 18)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 18) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 18) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 19)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 19) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 19) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 20)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 20) 

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 21)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 21)

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 22)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 22)

union all

SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015
                            WHERE      (Mitarbeiter = 23)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Arbeiten_durchgefuehrt = 0)) AS [Anzahl keine Deko],
                           (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],

 (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],

(SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_2
                            WHERE      (Mitarbeiter = 23) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]

FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_9_2015 AS auswertung_kunde_9_2015_1 ON dbo.promotion_login.id = auswertung_kunde_9_2015_1.Mitarbeiter WHERE      (Mitarbeiter = 23)

GO
/****** Object:  View [dbo].[auswertung_kunde_2_2016]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[auswertung_kunde_2_2016]
AS
SELECT     dbo.einsatzbericht_2_2016.id, dbo.einsatzbericht_2_2016.Arbeiten_durchgefuehrt, dbo.einsatzbericht_2_2016.Sondermasse_ausgetauscht, dbo.einsatzbericht_2_2016.Grund_keine_Deko, 
                      dbo.stammdaten_2_2016.Mitarbeiter, dbo.einsatzbericht_2_2016.Freigabe_Bericht_intern
FROM         dbo.einsatzbericht_2_2016 INNER JOIN
                      dbo.stammdaten_2_2016 ON dbo.einsatzbericht_2_2016.stammdaten_id = dbo.stammdaten_2_2016.id
WHERE     (dbo.einsatzbericht_2_2016.Freigabe_Bericht_intern = 1)



GO
/****** Object:  View [dbo].[auswertung_kundensicht_2_2016]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_kundensicht_2_2016]
AS
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 3)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 4)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 12)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 12)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 13)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 13)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 20)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 20)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 21)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 21)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 22)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 22)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 25)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 25)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 26)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 26)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 27)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 27)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 28)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 28)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016
                            WHERE      (Mitarbeiter = 29)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_kunde_2_2016 AS auswertung_kunde_2_2016_1 ON dbo.promotion_login.id = auswertung_kunde_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 29)
GO
/****** Object:  View [dbo].[auswertung_intern_2_2016]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[auswertung_intern_2_2016]
AS
SELECT     dbo.einsatzbericht_2_2016.id, dbo.einsatzbericht_2_2016.Arbeiten_durchgefuehrt, dbo.einsatzbericht_2_2016.Sondermasse_ausgetauscht, dbo.einsatzbericht_2_2016.Grund_keine_Deko, 
                      dbo.stammdaten_2_2016.Mitarbeiter, dbo.einsatzbericht_2_2016.Freigabe_Bericht_extern
FROM         dbo.einsatzbericht_2_2016 INNER JOIN
                      dbo.stammdaten_2_2016 ON dbo.einsatzbericht_2_2016.stammdaten_id = dbo.stammdaten_2_2016.id
WHERE     (dbo.einsatzbericht_2_2016.Freigabe_Bericht_extern = 1)


GO
/****** Object:  View [dbo].[auswertung_mitarbeiter_2_2016]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_mitarbeiter_2_2016]
AS
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 3)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 3) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 3)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 4)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 4) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 4)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 12)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 12)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 12) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 12)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 13)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 13)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 13) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 13)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 20)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 20)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 20) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 20)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 21)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 21)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 21) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 21)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 22)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 22)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 22) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 22)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 25)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 25)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 25) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 25)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 26)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 26)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 26) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 26)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 27)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 27)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 27) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 27)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 28)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 28)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 28) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 28)
UNION ALL
SELECT     dbo.promotion_login.anmeldename,
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.stammdaten_2_2016
                            WHERE      (Mitarbeiter = 29)) AS [Anzahl Kunden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016
                            WHERE      (Mitarbeiter = 29)) AS [Anzahl Besuche],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Arbeiten_durchgefuehrt = 0) AND (Sondermasse_ausgetauscht = 0)) AS [Anzahl keine Deko],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Keine Visuals im Shop vorhanden')) AS [Keine Visuals im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Nur Sondermaße im Shop vorhanden')) AS [Nur Sondermaße im Shop vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Kein passendes Motiv (mehr) vorhanden')) AS [Kein passendes Motiv (mehr) vorhanden],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Austausch verweigert')) AS [Austausch verweigert],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'AP trotz Zweitanfahrt nicht erreichbar')) AS [AP trotz Zweitanfahrt nicht erreichbar],
                          (SELECT     COUNT(id) AS Expr1
                            FROM          dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_2
                            WHERE      (Mitarbeiter = 29) AND (Grund_keine_Deko = 'Shop geschlossen')) AS [Shop geschlossen]
FROM         dbo.promotion_login INNER JOIN
                      dbo.auswertung_intern_2_2016 AS auswertung_intern_2_2016_1 ON dbo.promotion_login.id = auswertung_intern_2_2016_1.Mitarbeiter
WHERE     (Mitarbeiter = 29)
GO
/****** Object:  View [dbo].[Export]    Script Date: 06.07.2018 11:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export]
AS
SELECT     dbo.stammdaten_9_2015.KD_Nr, dbo.stammdaten_9_2015.Name, dbo.stammdaten_9_2015.Handelsform, dbo.stammdaten_9_2015.Strasse, 
                      dbo.stammdaten_9_2015.PLZ, dbo.stammdaten_9_2015.Ort, dbo.promotion_login.anmeldename, dbo.einsatzbericht_9_2015.Datum, 
                      dbo.einsatzbericht_9_2015.Deko_Beginn, dbo.einsatzbericht_9_2015.Deko_Ende, dbo.einsatzbericht_9_2015.Tel_Anmeldung_am, 
                      dbo.einsatzbericht_9_2015.Tel_Ansprechpartner, dbo.einsatzbericht_9_2015.Arbeiten_durchgefuehrt, dbo.einsatzbericht_9_2015.Anfahrtsart, 
                      dbo.einsatzbericht_9_2015.Sondermasse_angelegt, dbo.einsatzbericht_9_2015.Sondermasse_freigegeben, 
                      dbo.einsatzbericht_9_2015.Sondermasse_notwendig, dbo.einsatzbericht_9_2015.Sondermasse_in_Produktion_gegeben, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt1, dbo.einsatzbericht_9_2015.Bestand_Produkt2, dbo.einsatzbericht_9_2015.Bestand_Produkt3, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt4, dbo.einsatzbericht_9_2015.Bestand_Produkt5, dbo.einsatzbericht_9_2015.Bestand_Produkt6, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt7, dbo.einsatzbericht_9_2015.Bestand_Produkt8, dbo.einsatzbericht_9_2015.Bestand_Produkt9, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt10, dbo.einsatzbericht_9_2015.Bestand_Produkt11, dbo.einsatzbericht_9_2015.Bestand_Produkt12, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt13, dbo.einsatzbericht_9_2015.Bestand_Produkt14, dbo.einsatzbericht_9_2015.Bestand_Produkt15, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt16, dbo.einsatzbericht_9_2015.Bestand_Produkt17, dbo.einsatzbericht_9_2015.Bestand_Produkt18, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt19, dbo.einsatzbericht_9_2015.Bestand_Produkt20, dbo.einsatzbericht_9_2015.Bestand_Produkt21, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt22, dbo.einsatzbericht_9_2015.Bestand_Produkt23, dbo.einsatzbericht_9_2015.Bestand_Produkt24, 
                      dbo.einsatzbericht_9_2015.Bestand_Produkt25, dbo.einsatzbericht_9_2015.Bestand_Produkt26, dbo.einsatzbericht_9_2015.Grund_keine_Deko, 
                      dbo.einsatzbericht_9_2015.Grund_keine_Deko_Sonstiges, dbo.einsatzbericht_9_2015.Sondermass_1_Moment, 
                      dbo.einsatzbericht_9_2015.Sondermass_1_Material, dbo.einsatzbericht_9_2015.Sondermass_1_Material_Sonstiges, 
                      dbo.einsatzbericht_9_2015.Sondermass_1_Breite, dbo.einsatzbericht_9_2015.Sondermass_1_Hoehe, 
                      dbo.einsatzbericht_9_2015.Sondermass_2_Moment, dbo.einsatzbericht_9_2015.Sondermass_2_Material, 
                      dbo.einsatzbericht_9_2015.Sondermass_2_Material_Sonstiges, dbo.einsatzbericht_9_2015.Sondermass_2_Breite, 
                      dbo.einsatzbericht_9_2015.Sondermass_2_Hoehe, dbo.einsatzbericht_9_2015.Sondermass_3_Moment, 
                      dbo.einsatzbericht_9_2015.Sondermass_3_Material, dbo.einsatzbericht_9_2015.Sondermass_3_Material_Sonstiges, 
                      dbo.einsatzbericht_9_2015.Sondermass_3_Breite, dbo.einsatzbericht_9_2015.Sondermass_3_Hoehe, 
                      dbo.einsatzbericht_9_2015.Sondermass_4_Moment, dbo.einsatzbericht_9_2015.Sondermass_4_Material, 
                      dbo.einsatzbericht_9_2015.Sondermass_4_Material_Sonstiges, dbo.einsatzbericht_9_2015.Sondermass_4_Breite, 
                      dbo.einsatzbericht_9_2015.Sondermass_4_Hoehe, dbo.einsatzbericht_9_2015.Sondermass_5_Moment, 
                      dbo.einsatzbericht_9_2015.Sondermass_5_Material, dbo.einsatzbericht_9_2015.Sondermass_5_Material_Sonstiges, 
                      dbo.einsatzbericht_9_2015.Sondermass_5_Breite, dbo.einsatzbericht_9_2015.Sondermass_5_Hoehe, 
                      dbo.einsatzbericht_9_2015.Sondermass_6_Moment, dbo.einsatzbericht_9_2015.Sondermass_6_Material, 
                      dbo.einsatzbericht_9_2015.Sondermass_6_Material_Sonstiges, dbo.einsatzbericht_9_2015.Sondermass_6_Breite, 
                      dbo.einsatzbericht_9_2015.Sondermass_6_Hoehe, dbo.einsatzbericht_9_2015.Sondermass_7_Moment, 
                      dbo.einsatzbericht_9_2015.Sondermass_7_Material, dbo.einsatzbericht_9_2015.Sondermass_7_Material_Sonstiges, 
                      dbo.einsatzbericht_9_2015.Sondermass_7_Breite, dbo.einsatzbericht_9_2015.Sondermass_7_Hoehe, 
                      dbo.einsatzbericht_9_2015.Sondermass_8_Moment, dbo.einsatzbericht_9_2015.Sondermass_8_Material, 
                      dbo.einsatzbericht_9_2015.Sondermass_8_Material_Sonstiges, dbo.einsatzbericht_9_2015.Sondermass_8_Breite, 
                      dbo.einsatzbericht_9_2015.Sondermass_8_Hoehe, dbo.einsatzbericht_9_2015.Sondermass_9_Moment, 
                      dbo.einsatzbericht_9_2015.Sondermass_9_Material, dbo.einsatzbericht_9_2015.Sondermass_9_Material_Sonstiges, 
                      dbo.einsatzbericht_9_2015.Sondermass_9_Breite, dbo.einsatzbericht_9_2015.Sondermass_9_Hoehe, 
                      dbo.einsatzbericht_9_2015.Sondermass_10_Moment, dbo.einsatzbericht_9_2015.Sondermass_10_Material, 
                      dbo.einsatzbericht_9_2015.Sondermass_10_Material_Sonstiges, dbo.einsatzbericht_9_2015.Sondermass_10_Breite, 
                      dbo.einsatzbericht_9_2015.Sondermass_10_Hoehe, dbo.einsatzbericht_9_2015.Bemerkung_Sondermasse, dbo.einsatzbericht_9_2015.Bemerkung, 
                      dbo.einsatzbericht_9_2015.Name_Ansprechpartner, dbo.einsatzbericht_9_2015.Zweitanfahrt_erforderlich
FROM         dbo.einsatzbericht_9_2015 INNER JOIN
                      dbo.stammdaten_9_2015 ON dbo.einsatzbericht_9_2015.stammdaten_id = dbo.stammdaten_9_2015.id INNER JOIN
                      dbo.promotion_login ON dbo.stammdaten_9_2015.Mitarbeiter = dbo.promotion_login.id
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
         Begin Table = "einsatzbericht_6_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 323
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 32
         End
         Begin Table = "stammdaten_6_2015"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 246
               Right = 434
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
         Column = 3120
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_6_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_intern_6_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[4] 4[7] 2[71] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_kundensicht_2_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_kundensicht_2_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[8] 4[8] 2[65] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_2_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_2_2016'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_6_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_mitarbeiter_6_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[3] 4[58] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "einsatzbericht_9_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 298
               Right = 302
            End
            DisplayFlags = 280
            TopColumn = 84
         End
         Begin Table = "stammdaten_9_2015"
            Begin Extent = 
               Top = 93
               Left = 423
               Bottom = 348
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "promotion_login"
            Begin Extent = 
               Top = 45
               Left = 694
               Bottom = 218
               Right = 848
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
         Column = 4740
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export'
GO
USE [master]
GO
ALTER DATABASE [wmf] SET  READ_WRITE 
GO
