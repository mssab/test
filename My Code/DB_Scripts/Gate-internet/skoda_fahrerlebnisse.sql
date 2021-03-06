USE [master]
GO
/****** Object:  Database [skoda_fahrerlebnisse]    Script Date: 06.07.2018 11:20:08 ******/
CREATE DATABASE [skoda_fahrerlebnisse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'skoda_fahrerlebnisse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\skoda_fahrerlebnisse.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'skoda_fahrerlebnisse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\skoda_fahrerlebnisse_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [skoda_fahrerlebnisse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET ARITHABORT OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET  MULTI_USER 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET DELAYED_DURABILITY = DISABLED 
GO
USE [skoda_fahrerlebnisse]
GO
/****** Object:  Table [dbo].[faherlebnisse_news]    Script Date: 06.07.2018 11:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faherlebnisse_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ansprache] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[freigabe] [varchar](max) NULL,
 CONSTRAINT [PK_faherlebnisse_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fahrerlebnisse_anmeldungen]    Script Date: 06.07.2018 11:20:09 ******/
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
	[fahrer1_nachname] [varchar](max) NULL,
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
	[fahrer2_email] [varchar](max) NULL,
	[fahrer2_mobil] [varchar](max) NULL,
	[fahrer2_geburtsdatum] [varchar](max) NULL,
	[fahrer2_nordschleife] [varchar](max) NULL,
	[anzahl_beifahrer] [int] NULL,
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
/****** Object:  Table [dbo].[fahrerlebnisse_anmeldungen_sicherung]    Script Date: 06.07.2018 11:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fahrerlebnisse_anmeldungen_sicherung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trainingsart] [varchar](max) NULL,
	[trainingsort] [varchar](max) NULL,
	[trainingstermin] [varchar](max) NULL,
	[anzahl_fahrer] [int] NULL,
	[fahrer1_anrede] [varchar](max) NULL,
	[fahrer1_vorname] [varchar](max) NULL,
	[fahrer1_nachname] [varchar](max) NULL,
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
	[fahrer2_email] [varchar](max) NULL,
	[fahrer2_mobil] [varchar](max) NULL,
	[fahrer2_geburtsdatum] [varchar](max) NULL,
	[fahrer2_nordschleife] [varchar](max) NULL,
	[anzahl_beifahrer] [int] NULL,
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
 CONSTRAINT [PK_fahrerlebnisse_anmeldungen_sicherung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fahrerlebnisse_gutscheine]    Script Date: 06.07.2018 11:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fahrerlebnisse_gutscheine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[betrag] [int] NULL,
	[beschenkter_anrede] [varchar](max) NULL,
	[beschenkter_vorname] [varchar](max) NULL,
	[beschenkter_nachname] [varchar](max) NULL,
	[rechnung_anrede] [varchar](max) NULL,
	[rechnung_vorname] [varchar](max) NULL,
	[rechnung_nachname] [varchar](max) NULL,
	[rechnung_strasse] [varchar](max) NULL,
	[rechnung_plz_ort] [varchar](max) NULL,
	[rechnung_email] [varchar](max) NULL,
	[rechnung_mobil] [varchar](max) NULL,
	[rechnung_geburtsdatum] [varchar](max) NULL,
	[schenker_abweichend] [varchar](max) NULL,
	[schenker_anrede] [varchar](max) NULL,
	[schenker_vorname] [varchar](max) NULL,
	[schenker_nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[eingang] [varchar](max) NULL,
	[ip] [varchar](max) NULL,
	[code] [varchar](max) NULL,
	[bestaetigt] [bit] NOT NULL,
 CONSTRAINT [PK_fahrerlebnisse_gutscheine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletter]    Script Date: 06.07.2018 11:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newsletter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[hash] [varchar](max) NULL,
	[Shop] [bit] NOT NULL,
 CONSTRAINT [PK_Newsletter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletter_haendler]    Script Date: 06.07.2018 11:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newsletter_haendler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Nummer] [bigint] NULL,
	[Email] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
 CONSTRAINT [PK_Newsletter_haendler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[skoda_fahrerlebnisse_warteliste]    Script Date: 06.07.2018 11:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skoda_fahrerlebnisse_warteliste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[nachricht] [varchar](max) NULL,
	[Tagestraining] [bit] NULL,
	[Perfektionstraining] [bit] NULL,
	[On_undOffroadTraining] [bit] NULL,
	[Offroad_Training] [bit] NULL,
	[Performance_Training] [bit] NULL,
	[Wintertraining] [bit] NULL,
	[Sonstige_Wunsche] [bit] NULL,
	[Sonstige_Wunsche_text] [varchar](max) NULL,
	[einvstanden] [bit] NULL,
	[Rennstreckentraining] [bit] NULL,
 CONSTRAINT [PK_skoda_fahrerlebnisse_warteliste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[skoda_login]    Script Date: 06.07.2018 11:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skoda_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [nvarchar](50) NULL,
	[pass] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[anrede] [nvarchar](max) NULL,
	[nachname] [nvarchar](max) NULL,
 CONSTRAINT [PK_skoda_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[fahrerlebnisse_anmeldungen] ADD  CONSTRAINT [DF_fahrerlebnisse_anmeldungen_bestaetigt]  DEFAULT ((0)) FOR [bestaetigt]
GO
ALTER TABLE [dbo].[fahrerlebnisse_anmeldungen_sicherung] ADD  CONSTRAINT [DF_fahrerlebnisse_anmeldungen_sicherung_bestaetigt]  DEFAULT ((0)) FOR [bestaetigt]
GO
ALTER TABLE [dbo].[fahrerlebnisse_gutscheine] ADD  CONSTRAINT [DF_fahrerlebnisse_gutscheine_bestaetigt]  DEFAULT ((0)) FOR [bestaetigt]
GO
ALTER TABLE [dbo].[Newsletter] ADD  CONSTRAINT [DF_Newsletter_Shop]  DEFAULT ((0)) FOR [Shop]
GO
USE [master]
GO
ALTER DATABASE [skoda_fahrerlebnisse] SET  READ_WRITE 
GO
