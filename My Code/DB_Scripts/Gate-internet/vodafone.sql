USE [master]
GO
/****** Object:  Database [vodafone]    Script Date: 06.07.2018 11:22:47 ******/
CREATE DATABASE [vodafone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vodafone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vodafone.mdf' , SIZE = 69632KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'vodafone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vodafone_log.ldf' , SIZE = 16576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [vodafone] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vodafone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vodafone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vodafone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vodafone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vodafone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vodafone] SET ARITHABORT OFF 
GO
ALTER DATABASE [vodafone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [vodafone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vodafone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vodafone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vodafone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vodafone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vodafone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vodafone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vodafone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vodafone] SET  DISABLE_BROKER 
GO
ALTER DATABASE [vodafone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vodafone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vodafone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [vodafone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vodafone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vodafone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vodafone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vodafone] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [vodafone] SET  MULTI_USER 
GO
ALTER DATABASE [vodafone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vodafone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vodafone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vodafone] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [vodafone] SET DELAYED_DURABILITY = DISABLED 
GO
USE [vodafone]
GO
/****** Object:  Table [dbo].[Abgleich Liste-SKO]    Script Date: 06.07.2018 11:22:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abgleich Liste-SKO](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abgleich Mails_liste]    Script Date: 06.07.2018 11:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abgleich Mails_liste](
	[Nachname] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[Anrede] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abgleich_100_Prozent_2015]    Script Date: 06.07.2018 11:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abgleich_100_Prozent_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_Abgleich_100_Prozent_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[abgleich_1904]    Script Date: 06.07.2018 11:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abgleich_1904](
	[idAnmeldung] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abgleich_JWB_2014_2015]    Script Date: 06.07.2018 11:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abgleich_JWB_2014_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
 CONSTRAINT [PK_Abgleich_JWB_2014_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abgleich_JWB_2015_2016]    Script Date: 06.07.2018 11:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abgleich_JWB_2015_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
 CONSTRAINT [PK_Abgleich_JWB_2015_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abgleich16122010]    Script Date: 06.07.2018 11:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abgleich16122010](
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[email_ranking] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anzahl Zusagen Granada]    Script Date: 06.07.2018 11:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anzahl Zusagen Granada](
	[Expr1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anzahl_Ischgl]    Script Date: 06.07.2018 11:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anzahl_Ischgl](
	[Anzahl] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barcelona_Enterprise]    Script Date: 06.07.2018 11:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barcelona_Enterprise](
	[ID] [int] NOT NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[E-Mail] [nvarchar](255) NULL,
	[Funktion] [nvarchar](255) NULL,
	[NL/Region] [nvarchar](255) NULL,
	[Unternehmen] [nvarchar](255) NULL,
	[Team] [nvarchar](255) NULL,
	[passwort] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[personalausweis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[personalnummer] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[fuehrerschein] [varchar](255) NULL,
	[teamfahrer] [varchar](255) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[sonstiges] [varchar](255) NULL,
	[konfektionsgroesse] [varchar](255) NULL,
	[flughafen] [varchar](255) NULL,
	[bahnhof] [varchar](255) NULL,
	[eingang] [datetime] NULL,
	[status] [varchar](50) NULL,
	[ip_erstkontakt] [varchar](15) NULL,
	[bemerkungen] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barcelona_Infos]    Script Date: 06.07.2018 11:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barcelona_Infos](
	[id] [int] NOT NULL,
	[teilnehmer_id] [int] NULL,
	[hin_stops] [int] NULL,
	[hin_datum] [varchar](50) NULL,
	[hin1_flugnr] [varchar](50) NULL,
	[hin1_fluggesellschaft] [varchar](50) NULL,
	[hin1_eticket] [varchar](50) NULL,
	[hin1_abort] [varchar](50) NULL,
	[hin1_anort] [varchar](50) NULL,
	[hin1_ab] [varchar](50) NULL,
	[hin1_an] [varchar](50) NULL,
	[hin2_flugnr] [varchar](50) NULL,
	[hin2_eticket] [varchar](50) NULL,
	[hin2_abort] [varchar](50) NULL,
	[hin2_anort] [varchar](50) NULL,
	[hin2_ab] [varchar](50) NULL,
	[hin2_an] [varchar](50) NULL,
	[rueck_stops] [int] NULL,
	[rueck_datum] [varchar](50) NULL,
	[rueck1_flugnr] [varchar](50) NULL,
	[rueck1_fluggesellschaft] [varchar](50) NULL,
	[rueck1_eticket] [varchar](50) NULL,
	[rueck1_abort] [varchar](50) NULL,
	[rueck1_anort] [varchar](50) NULL,
	[rueck1_ab] [varchar](50) NULL,
	[rueck1_an] [varchar](50) NULL,
	[rueck2_flugnr] [varchar](50) NULL,
	[rueck2_eticket] [varchar](50) NULL,
	[rueck2_abort] [varchar](50) NULL,
	[rueck2_anort] [varchar](50) NULL,
	[rueck2_ab] [varchar](50) NULL,
	[rueck2_an] [varchar](50) NULL,
	[zusatz] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barcelona_Teilnehmer]    Script Date: 06.07.2018 11:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barcelona_Teilnehmer](
	[ID] [int] NOT NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[E-Mail] [nvarchar](255) NULL,
	[Funktion] [nvarchar](255) NULL,
	[NL/Region] [nvarchar](255) NULL,
	[Unternehmen] [nvarchar](255) NULL,
	[Team] [nvarchar](255) NULL,
	[passwort] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[personalausweis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[personalnummer] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[fuehrerschein] [varchar](255) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[sonstiges] [varchar](255) NULL,
	[konfektionsgroesse] [varchar](255) NULL,
	[flughafen] [varchar](255) NULL,
	[bahnhof] [varchar](255) NULL,
	[eingang] [datetime] NULL,
	[status] [varchar](50) NULL,
	[ip_erstkontakt] [varchar](15) NULL,
	[bemerkungen] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bragi_Admin_Login]    Script Date: 06.07.2018 11:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bragi_Admin_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
 CONSTRAINT [PK_Bragi_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bragi_Aktionsbericht]    Script Date: 06.07.2018 11:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bragi_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Team] [varchar](max) NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter2] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Elemente_telefonzelle] [bit] NULL,
	[Elemente_roll_up] [bit] NULL,
	[Elemente_kopfhoerer] [bit] NULL,
	[Elemente_teufel_box] [bit] NULL,
	[Elemente_lg_1] [bit] NULL,
	[Elemente_lg_2] [bit] NULL,
	[flyer_anfang] [int] NULL,
	[flyer_Tag1] [int] NULL,
	[flyer_Tag2] [int] NULL,
	[flyer_ende] [int] NULL,
	[deezer_anfang] [int] NULL,
	[deezer_Tag1] [int] NULL,
	[deezer_Tag2] [int] NULL,
	[deezer_ende] [int] NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1] [int] NULL,
	[Frequenz_Tag2] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
 CONSTRAINT [PK_Bragi_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bragi_Gewinner]    Script Date: 06.07.2018 11:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bragi_Gewinner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Mobilfunknummer] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
 CONSTRAINT [PK_Bragi_Gewinner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bragi_Standorte]    Script Date: 06.07.2018 11:22:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bragi_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [date] NULL,
	[Tag2] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_Bragi_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2016]    Script Date: 06.07.2018 11:22:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Shuttle] [varchar](max) NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_CEO_Tour_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2017]    Script Date: 06.07.2018 11:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Shuttle] [varchar](max) NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_CEO_Tour_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2017_Abfrage]    Script Date: 06.07.2018 11:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2017_Abfrage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Rueckmeldung] [bit] NULL,
 CONSTRAINT [PK_CEO_Tour_2017_Abfrage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2017_Abfrage2]    Script Date: 06.07.2018 11:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2017_Abfrage2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Rueckmeldung] [bit] NULL,
 CONSTRAINT [PK_CEO_Tour_2017_Abfrage2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_tour_2017_adminitration]    Script Date: 06.07.2018 11:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_tour_2017_adminitration](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NOT NULL,
	[nachname] [varchar](max) NULL,
	[passwort] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2017_Gatekeeper]    Script Date: 06.07.2018 11:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2017_Gatekeeper](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Zugang] [varchar](max) NULL,
	[Anwesend] [bit] NULL,
	[Uhrzeit] [varchar](max) NULL,
	[Code_vergeben] [bit] NULL,
	[Anmeldung_id] [int] NULL,
 CONSTRAINT [PK_CEO_Tour_2017_Gatekeeper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2017_Gatekeeper_IP]    Script Date: 06.07.2018 11:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2017_Gatekeeper_IP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Adresse] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2017_Orte]    Script Date: 06.07.2018 11:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2017_Orte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_2017_Orte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2017_Shuttleabsage]    Script Date: 06.07.2018 11:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2017_Shuttleabsage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Shuttle] [varchar](max) NULL,
	[Gruppe] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_2017_Shuttleabsage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2018]    Script Date: 06.07.2018 11:22:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Shuttle] [varchar](max) NULL,
	[Datum] [varchar](50) NULL,
	[hash] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_2018] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2018_feedback]    Script Date: 06.07.2018 11:22:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2018_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hash] [varchar](max) NULL,
	[Besuchte_Session] [varchar](max) NULL,
	[Tagungslocation] [varchar](max) NULL,
	[Tagungslocation_Kommentar] [varchar](max) NULL,
	[Zeitlicher_Rahmen_Vortrag] [varchar](max) NULL,
	[Zeitlicher_Rahmen_Vortrag_Kommentar] [varchar](max) NULL,
	[Zeitlicher_Rahmen_Showcases] [varchar](max) NULL,
	[Zeitlicher_Rahmen_Showcases_Kommentar] [varchar](max) NULL,
	[Themenauswahl_Vortrag] [varchar](max) NULL,
	[Themenauswahl_Vortrag_Kommentar] [varchar](max) NULL,
	[Themenauswahl_Showcases] [varchar](max) NULL,
	[Themenauswahl_Showcases_Kommentar] [varchar](max) NULL,
	[Informationsgehalt_Vortrag] [varchar](max) NULL,
	[Informationsgehalt_Vortrag_Kommentar] [varchar](max) NULL,
	[Informationsgehalt_Showcases] [varchar](max) NULL,
	[Informationsgehalt_Showcases_Kommentar] [varchar](max) NULL,
	[dir_besonders_gefallen] [varchar](max) NULL,
	[besser_zu_machen] [varchar](max) NULL,
	[Bemerkungen] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_2018_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2018_projektleitung]    Script Date: 06.07.2018 11:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2018_projektleitung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Shuttle] [varchar](max) NULL,
	[Datum] [varchar](50) NULL,
	[hash] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_2018_projektleitung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2018_Shuttles]    Script Date: 06.07.2018 11:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2018_Shuttles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](max) NULL,
	[Tourort] [varchar](max) NOT NULL,
	[Shuttleort] [varchar](max) NOT NULL,
	[Shuttleort_Strasse] [varchar](max) NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_CEO_Tour_2018_Shuttles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2018_Textbloecke]    Script Date: 06.07.2018 11:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2018_Textbloecke](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Stadt] [varchar](max) NULL,
	[Datum] [date] NULL,
	[Zeit_Mitarbeiter] [varchar](max) NULL,
	[Zeit_Betriebsrat] [varchar](max) NULL,
	[Adresse1] [varchar](max) NULL,
	[Adresse2] [varchar](max) NULL,
	[Adresse3] [varchar](max) NULL,
	[PAX] [int] NULL,
	[SliDo] [varchar](max) NULL,
	[Rauminfo] [varchar](max) NULL,
	[Anfahrt] [varchar](max) NULL,
	[ShowCase1] [varchar](max) NULL,
	[ShowCase2] [varchar](max) NULL,
	[ShowCaseHinweis] [varchar](max) NULL,
	[Anfahrt_Text1] [varchar](max) NULL,
	[Anfahrt_Text2] [varchar](max) NULL,
	[Anfahrt_Text3] [varchar](max) NULL,
	[Anfahrt_Text4] [varchar](max) NULL,
	[Feedbackzeit] [varchar](50) NULL,
 CONSTRAINT [PK_CEO_Tour_2018_Textbloecke] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_2018_Versendung]    Script Date: 06.07.2018 11:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_2018_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Typ] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Absage] [bit] NOT NULL,
 CONSTRAINT [PK_CEO_Tour_2018_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_Admin]    Script Date: 06.07.2018 11:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_Versendung]    Script Date: 06.07.2018 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Typ] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_Versendung_2017]    Script Date: 06.07.2018 11:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_Versendung_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Typ] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_Versendung_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_Versendung_2017_2]    Script Date: 06.07.2018 11:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_Versendung_2017_2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Typ] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_Versendung_2017_2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEO_Tour_Versendung_2017_Zusatz]    Script Date: 06.07.2018 11:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEO_Tour_Versendung_2017_Zusatz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_Versendung_2017_Zusatz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Codepruefung]    Script Date: 06.07.2018 11:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Codepruefung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](max) NULL,
 CONSTRAINT [PK_Codepruefung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consumer_ip]    Script Date: 06.07.2018 11:23:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consumer_ip](
	[id] [int] NULL,
	[adresse] [varchar](max) NULL,
	[Team] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_2016]    Script Date: 06.07.2018 11:23:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Teilnahmeart] [varchar](max) NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_CTO_Tour_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_2017]    Script Date: 06.07.2018 11:23:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Teilnahmeart] [varchar](max) NULL,
	[Betriebsratssitzung] [varchar](50) NULL,
	[Shuttle] [varchar](50) NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_CTO_Tour_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_2017_2]    Script Date: 06.07.2018 11:23:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_2017_2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Teilnahmeart] [varchar](max) NULL,
	[Betriebsratssitzung] [varchar](50) NULL,
	[Shuttle] [varchar](50) NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_CTO_Tour_2017_2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_2017_Abfrage]    Script Date: 06.07.2018 11:23:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_2017_Abfrage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Rueckmeldung] [bit] NULL,
 CONSTRAINT [PK_CTO_Tour_2017_Abfrage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_2018]    Script Date: 06.07.2018 11:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Shuttle] [varchar](max) NULL,
	[Datum] [varchar](50) NULL,
	[hash] [varchar](max) NULL,
 CONSTRAINT [PK_CTO_Tour_2018] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_2018_Textbloecke]    Script Date: 06.07.2018 11:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_2018_Textbloecke](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Stadt] [varchar](max) NULL,
	[Datum] [date] NULL,
	[Zeit_Mitarbeiter] [varchar](max) NULL,
	[Zeit_Betriebsrat] [varchar](max) NULL,
	[Adresse1] [varchar](max) NULL,
	[Adresse2] [varchar](max) NULL,
	[Adresse3] [varchar](max) NULL,
	[PAX] [int] NULL,
	[SliDo] [varchar](max) NULL,
	[Rauminfo] [varchar](max) NULL,
	[Anfahrt] [varchar](max) NULL,
	[ShowCase1] [varchar](max) NULL,
	[ShowCase2] [varchar](max) NULL,
	[ShowCaseHinweis] [varchar](max) NULL,
	[Anfahrt_Text1] [varchar](max) NULL,
	[Anfahrt_Text2] [varchar](max) NULL,
	[Anfahrt_Text3] [varchar](max) NULL,
	[Anfahrt_Text4] [varchar](max) NULL,
 CONSTRAINT [PK_CTO_Tour_2018_Textbloecke] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_2018_Versendung]    Script Date: 06.07.2018 11:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_2018_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Typ] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Absage] [bit] NOT NULL,
 CONSTRAINT [PK_CTO_Tour_2018_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_Admin]    Script Date: 06.07.2018 11:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
 CONSTRAINT [PK_CTO_Tour_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_Ratingen]    Script Date: 06.07.2018 11:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_Ratingen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_CEO_Tour_Ratingen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_Versendung]    Script Date: 06.07.2018 11:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
 CONSTRAINT [PK_CTO_Tour_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_Versendung_2017]    Script Date: 06.07.2018 11:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_Versendung_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
	[Betriebsrat] [bit] NOT NULL,
	[Betriebsratsbereich] [varchar](max) NULL,
	[Abmeldung] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
 CONSTRAINT [PK_CTO_Tour_Versendung_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_Versendung_2017_2]    Script Date: 06.07.2018 11:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_Versendung_2017_2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
	[Betriebsrat] [bit] NOT NULL,
	[Betriebsratsbereich] [varchar](max) NULL,
	[Abmeldung] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
 CONSTRAINT [PK_CTO_Tour_Versendung_2017_2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTO_Tour_Versendung_2017_2_Abgleich]    Script Date: 06.07.2018 11:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTO_Tour_Versendung_2017_2_Abgleich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
	[Betriebsrat] [bit] NOT NULL,
	[Betriebsratsbereich] [varchar](max) NULL,
	[Abmeldung] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
 CONSTRAINT [PK_CTO_Tour_Versendung_2017_2_Abgleich] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_2012_Infoversand]    Script Date: 06.07.2018 11:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_2012_Infoversand](
	[id] [int] NOT NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_2013_Abgleich]    Script Date: 06.07.2018 11:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_2013_Abgleich](
	[id] [int] NOT NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_Versendung]    Script Date: 06.07.2018 11:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_Versendung](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[lfd] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_Versendung_2012]    Script Date: 06.07.2018 11:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_Versendung_2012](
	[id] [int] NOT NULL,
	[lfd] [int] NULL,
	[nachname] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[persoenlich] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_Versendung_2012_VIP]    Script Date: 06.07.2018 11:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_Versendung_2012_VIP](
	[id] [int] NOT NULL,
	[lfd] [int] NULL,
	[nachname] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[persoenlich] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_Versendung_2013]    Script Date: 06.07.2018 11:23:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_Versendung_2013](
	[id] [int] NOT NULL,
	[lfd] [int] NULL,
	[nachname] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[tagesgast] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_Versendung_2014]    Script Date: 06.07.2018 11:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_Versendung_2014](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lfd] [int] NULL,
	[nachname] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[tagesgast] [int] NULL,
 CONSTRAINT [PK_CWKO_Versendung_2014] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_Versendung_2014_extern]    Script Date: 06.07.2018 11:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_Versendung_2014_extern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lfd] [int] NULL,
	[nachname] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[tagesgast] [int] NULL,
 CONSTRAINT [PK_CWKO_Versendung_2014_extern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CWKO_Versendung_2015]    Script Date: 06.07.2018 11:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CWKO_Versendung_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lfd] [int] NULL,
	[nachname] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[tagesgast] [int] NULL,
 CONSTRAINT [PK_CWKO_Versendung_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dtproperties]    Script Date: 06.07.2018 11:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dtproperties](
	[id] [int] NOT NULL,
	[objectid] [int] NULL,
	[property] [varchar](64) NOT NULL,
	[value] [varchar](255) NULL,
	[uvalue] [nvarchar](255) NULL,
	[lvalue] [image] NULL,
	[version] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dubai_dummy]    Script Date: 06.07.2018 11:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dubai_dummy](
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dubai_video]    Script Date: 06.07.2018 11:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dubai_video](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[engageT_Anmeldung]    Script Date: 06.07.2018 11:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[engageT_Anmeldung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[EMail] [varchar](max) NULL,
	[Location] [varchar](50) NULL,
	[Berlin_Messe] [int] NOT NULL,
	[Berlin_Connected_Cars] [int] NOT NULL,
	[Berlin_Ipfication] [int] NOT NULL,
	[Berlin_Fixed_Connect_2016] [int] NOT NULL,
	[Berlin_Segmentierung] [int] NOT NULL,
	[Unterfoehring_Messe] [int] NOT NULL,
	[Unterfoehring_One_Sales_Foundation] [int] NOT NULL,
	[Unterfoehring_cable_goes_enterprise] [int] NOT NULL,
	[Unterfoehring_Connected_Cars] [int] NOT NULL,
	[Unterfoehring_Fixed_Connect_2016] [int] NOT NULL,
	[Roedelheim_Messe] [int] NOT NULL,
	[Roedelheim_Connected_Cars] [int] NOT NULL,
	[Roedelheim_Playoutcenter] [int] NOT NULL,
	[Roedelheim_Ipfication] [int] NOT NULL,
	[Roedelheim_Segmentierung] [int] NOT NULL,
	[Duesseldorf_Messe] [int] NOT NULL,
	[Duesseldorf_One_Sales_Foundation] [int] NOT NULL,
	[Duesseldorf_TO_goes_Sale] [int] NOT NULL,
	[Duesseldorf_WLAN_made_by_vodafone] [int] NOT NULL,
	[Duesseldorf_Docis] [int] NOT NULL,
	[Duesseldorf_Giga_TV] [int] NOT NULL,
	[Duesseldorf_per_Tube] [int] NOT NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_engageT_Anmeldung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[engageT_Plaetze]    Script Date: 06.07.2018 11:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[engageT_Plaetze](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Event] [varchar](max) NULL,
	[Plaetze] [int] NULL,
 CONSTRAINT [PK_engageT_Plaetze] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[engageT_Versendung]    Script Date: 06.07.2018 11:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[engageT_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[Typ] [varchar](max) NULL,
	[Buchungskreistext] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_engageT_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_Abgleich_JWB_2016_2017]    Script Date: 06.07.2018 11:23:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_Abgleich_JWB_2016_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Personalnummer] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Textteil] [varchar](max) NULL,
	[Kostenstelle] [varchar](max) NULL,
	[E-Mail] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_Abgleich_JWB_2016_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_Flieger]    Script Date: 06.07.2018 11:23:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_Flieger](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_ip]    Script Date: 06.07.2018 11:23:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_ip](
	[id] [int] NULL,
	[adresse] [varchar](max) NULL,
	[Team] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_login]    Script Date: 06.07.2018 11:23:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[Personalnummer] [varchar](50) NULL,
	[Kostenstelle] [varchar](50) NULL,
	[JWB_2012_2013_alt] [bit] NULL,
	[SKO_2013] [bit] NULL,
	[rueckblick_sko_2013] [bit] NULL,
	[ibiza_2013] [bit] NULL,
	[las_vegas_2013] [bit] NULL,
	[JWB_2013_2014] [bit] NULL,
	[JWB_2012_2013] [bit] NULL,
	[SKO_2014] [bit] NOT NULL,
	[JWB_2014_2015] [bit] NOT NULL,
	[Rueckblicke] [bit] NOT NULL,
	[club_2014] [bit] NOT NULL,
	[topteam_2014] [bit] NOT NULL,
	[SKO_2015] [bit] NOT NULL,
	[club_2015] [bit] NOT NULL,
	[topteam_2015] [bit] NOT NULL,
	[JWB_2015_2016] [bit] NOT NULL,
	[SKO_2016] [bit] NOT NULL,
	[club_2016] [bit] NOT NULL,
	[topteam_2016] [bit] NOT NULL,
	[JWB_2016_2017] [bit] NOT NULL,
	[JWB_2017_2018] [bit] NOT NULL,
	[club_2017] [bit] NOT NULL,
	[topteam_2017] [bit] NOT NULL,
 CONSTRAINT [PK_enterprise_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO]    Script Date: 06.07.2018 11:23:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede_alt] [varchar](255) NULL,
	[vorname_alt] [varchar](255) NULL,
	[nachname_alt] [varchar](255) NULL,
	[strasse_alt] [varchar](255) NULL,
	[plz_alt] [varchar](255) NULL,
	[ort_alt] [varchar](255) NULL,
	[email_alt] [varchar](255) NULL,
	[mobil_alt] [varchar](255) NULL,
	[niederlassung_alt] [varchar](255) NULL,
	[nationalitaet_alt] [varchar](255) NULL,
	[geburtsdatum_alt] [varchar](255) NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [varchar](255) NULL,
	[teilnahme] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[verifizierung] [varchar](255) NULL,
	[versandadresse] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[ausweisart] [varchar](255) NULL,
	[ausweisnummer] [varchar](255) NULL,
	[geburtsdatum_ausweis] [varchar](255) NULL,
	[geburtsort_ausweis] [varchar](255) NULL,
	[nationalitaet_ausweis] [varchar](255) NULL,
	[anreise] [varchar](255) NULL,
	[anreise_flugort] [varchar](255) NULL,
	[transfer_zum_schiff] [varchar](255) NULL,
	[parkticket] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[abreise_flugort] [varchar](255) NULL,
	[transfer_zum_flughafen] [varchar](255) NULL,
	[kabine_art] [varchar](255) NULL,
	[zusammen_mit] [varchar](255) NULL,
	[vegetarier] [varchar](255) NULL,
	[allergien] [text] NULL,
	[reisekostenrichtlinie_akzeptiert] [varchar](255) NULL,
	[datenschutz] [varchar](255) NULL,
	[buchungsdaten_gesendet] [varchar](255) NULL,
	[ip_teilnahme] [varchar](255) NULL,
	[datum_teilnahme] [varchar](255) NULL,
	[bestaetigt] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2011]    Script Date: 06.07.2018 11:23:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2011](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede_alt] [varchar](255) NULL,
	[vorname_alt] [varchar](255) NULL,
	[nachname_alt] [varchar](255) NULL,
	[strasse_alt] [varchar](255) NULL,
	[plz_alt] [varchar](255) NULL,
	[ort_alt] [varchar](255) NULL,
	[email_alt] [varchar](255) NULL,
	[mobil_alt] [varchar](255) NULL,
	[niederlassung_alt] [varchar](255) NULL,
	[nationalitaet_alt] [varchar](255) NULL,
	[geburtsdatum_alt] [varchar](255) NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [varchar](255) NULL,
	[teilnahme] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[verifizierung] [varchar](255) NULL,
	[versandadresse] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[ausweisart] [varchar](255) NULL,
	[ausweisnummer] [varchar](255) NULL,
	[geburtsdatum_ausweis] [varchar](255) NULL,
	[geburtsort_ausweis] [varchar](255) NULL,
	[nationalitaet_ausweis] [varchar](255) NULL,
	[anreise] [varchar](255) NULL,
	[anreise_flugort] [varchar](255) NULL,
	[transfer_zum_schiff] [varchar](255) NULL,
	[parkticket] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[abreise_flugort] [varchar](255) NULL,
	[transfer_zum_flughafen] [varchar](255) NULL,
	[kabine_art] [varchar](255) NULL,
	[zusammen_mit] [varchar](255) NULL,
	[vegetarier] [varchar](255) NULL,
	[allergien] [text] NULL,
	[reisekostenrichtlinie_akzeptiert] [varchar](255) NULL,
	[datenschutz] [varchar](255) NULL,
	[buchungsdaten_gesendet] [varchar](255) NULL,
	[ip_teilnahme] [varchar](255) NULL,
	[datum_teilnahme] [varchar](255) NULL,
	[bestaetigt] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2011_Absage]    Script Date: 06.07.2018 11:23:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2011_Absage](
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[teilnahme] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2011_Fehlende_TN]    Script Date: 06.07.2018 11:23:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2011_Fehlende_TN](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2011_offene_Anmeldungen]    Script Date: 06.07.2018 11:23:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2011_offene_Anmeldungen](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede_alt] [varchar](255) NULL,
	[vorname_alt] [varchar](255) NULL,
	[nachname_alt] [varchar](255) NULL,
	[strasse_alt] [varchar](255) NULL,
	[plz_alt] [varchar](255) NULL,
	[ort_alt] [varchar](255) NULL,
	[email_alt] [varchar](255) NULL,
	[mobil_alt] [varchar](255) NULL,
	[niederlassung_alt] [varchar](255) NULL,
	[nationalitaet_alt] [varchar](255) NULL,
	[geburtsdatum_alt] [varchar](255) NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [varchar](255) NULL,
	[teilnahme] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[verifizierung] [varchar](255) NULL,
	[versandadresse] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[ausweisart] [varchar](255) NULL,
	[ausweisnummer] [varchar](255) NULL,
	[geburtsdatum_ausweis] [varchar](255) NULL,
	[geburtsort_ausweis] [varchar](255) NULL,
	[nationalitaet_ausweis] [varchar](255) NULL,
	[anreise] [varchar](255) NULL,
	[anreise_flugort] [varchar](255) NULL,
	[transfer_zum_schiff] [varchar](255) NULL,
	[parkticket] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[abreise_flugort] [varchar](255) NULL,
	[transfer_zum_flughafen] [varchar](255) NULL,
	[kabine_art] [varchar](255) NULL,
	[zusammen_mit] [varchar](255) NULL,
	[vegetarier] [varchar](255) NULL,
	[allergien] [text] NULL,
	[reisekostenrichtlinie_akzeptiert] [varchar](255) NULL,
	[datenschutz] [varchar](255) NULL,
	[buchungsdaten_gesendet] [varchar](255) NULL,
	[ip_teilnahme] [varchar](255) NULL,
	[datum_teilnahme] [varchar](255) NULL,
	[bestaetigt] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2011_Zusagen]    Script Date: 06.07.2018 11:23:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2011_Zusagen](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede_alt] [varchar](255) NULL,
	[vorname_alt] [varchar](255) NULL,
	[nachname_alt] [varchar](255) NULL,
	[strasse_alt] [varchar](255) NULL,
	[plz_alt] [varchar](255) NULL,
	[ort_alt] [varchar](255) NULL,
	[email_alt] [varchar](255) NULL,
	[mobil_alt] [varchar](255) NULL,
	[niederlassung_alt] [varchar](255) NULL,
	[nationalitaet_alt] [varchar](255) NULL,
	[geburtsdatum_alt] [varchar](255) NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [varchar](255) NULL,
	[teilnahme] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[verifizierung] [varchar](255) NULL,
	[versandadresse] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[ausweisart] [varchar](255) NULL,
	[ausweisnummer] [varchar](255) NULL,
	[geburtsdatum_ausweis] [varchar](255) NULL,
	[geburtsort_ausweis] [varchar](255) NULL,
	[nationalitaet_ausweis] [varchar](255) NULL,
	[anreise] [varchar](255) NULL,
	[anreise_flugort] [varchar](255) NULL,
	[transfer_zum_schiff] [varchar](255) NULL,
	[parkticket] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[abreise_flugort] [varchar](255) NULL,
	[transfer_zum_flughafen] [varchar](255) NULL,
	[kabine_art] [varchar](255) NULL,
	[zusammen_mit] [varchar](255) NULL,
	[vegetarier] [varchar](255) NULL,
	[allergien] [text] NULL,
	[reisekostenrichtlinie_akzeptiert] [varchar](255) NULL,
	[datenschutz] [varchar](255) NULL,
	[buchungsdaten_gesendet] [varchar](255) NULL,
	[ip_teilnahme] [varchar](255) NULL,
	[datum_teilnahme] [varchar](255) NULL,
	[bestaetigt] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2012]    Script Date: 06.07.2018 11:23:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2012](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[versandadresse] [varchar](255) NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[firma] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[funktion] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[bahnhof] [varchar](255) NULL,
	[parkticket] [bit] NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[raucher] [bit] NULL,
	[allergien] [text] NULL,
	[part3] [bit] NULL,
	[reisekostenrichtlinie_akzeptiert] [varchar](255) NULL,
	[datenschutz] [varchar](255) NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2012_bemerkungen$]    Script Date: 06.07.2018 11:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2012_bemerkungen$](
	[enterprise_id] [float] NULL,
	[versandadresse] [nvarchar](255) NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [float] NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[firma] [nvarchar](255) NULL,
	[abteilungskuerzel] [nvarchar](255) NULL,
	[niederlassung] [nvarchar](255) NULL,
	[nationalitaet] [nvarchar](255) NULL,
	[funktion] [nvarchar](255) NULL,
	[personalnummer] [float] NULL,
	[kostenstelle] [nvarchar](255) NULL,
	[geburtsdatum] [datetime] NULL,
	[teilnahme] [float] NULL,
	[abendveranstaltung] [float] NULL,
	[flug] [float] NULL,
	[bahn] [float] NULL,
	[pkw] [float] NULL,
	[flugort] [nvarchar](255) NULL,
	[bahnhof] [nvarchar](255) NULL,
	[parkticket] [nvarchar](255) NULL,
	[anreise] [datetime] NULL,
	[abreise] [datetime] NULL,
	[zimmer] [nvarchar](255) NULL,
	[zusammen_mit_vorname] [nvarchar](255) NULL,
	[zusammen_mit_nachname] [nvarchar](255) NULL,
	[vegetarier] [float] NULL,
	[raucher] [float] NULL,
	[allergien] [nvarchar](255) NULL,
	[verifizierung] [float] NULL,
	[Bemerkungen] [nvarchar](255) NULL,
	[Anreise_mit] [nvarchar](255) NULL,
	[Hin_Nr] [nvarchar](255) NULL,
	[Hin_Uhrzeit_ab] [nvarchar](255) NULL,
	[Hin_Uhrzeit_an] [nvarchar](255) NULL,
	[Abreise_mit] [nvarchar](255) NULL,
	[Rück_Nr#] [nvarchar](255) NULL,
	[Rück_Uhrzeit_ab] [nvarchar](255) NULL,
	[Rück_Uhrzeit_an] [nvarchar](255) NULL,
	[Transfer] [nvarchar](255) NULL,
	[Sondergenehmigung] [nvarchar](255) NULL,
	[Hotelname] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2012_Charter]    Script Date: 06.07.2018 11:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2012_Charter](
	[id] [int] NOT NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2012_ergänzt]    Script Date: 06.07.2018 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2012_ergänzt](
	[enterprise_id] [float] NULL,
	[versandadresse] [nvarchar](255) NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [float] NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[firma] [nvarchar](255) NULL,
	[abteilungskuerzel] [nvarchar](255) NULL,
	[niederlassung] [nvarchar](255) NULL,
	[nationalitaet] [nvarchar](255) NULL,
	[funktion] [nvarchar](255) NULL,
	[personalnummer] [float] NULL,
	[kostenstelle] [nvarchar](255) NULL,
	[geburtsdatum] [nvarchar](255) NULL,
	[teilnahme] [float] NULL,
	[abendveranstaltung] [float] NULL,
	[flug] [float] NULL,
	[bahn] [float] NULL,
	[pkw] [float] NULL,
	[flugort] [nvarchar](255) NULL,
	[bahnhof] [nvarchar](255) NULL,
	[parkticket] [nvarchar](255) NULL,
	[anreise] [nvarchar](255) NULL,
	[abreise] [nvarchar](255) NULL,
	[zimmer] [nvarchar](255) NULL,
	[zusammen_mit_vorname] [nvarchar](255) NULL,
	[zusammen_mit_nachname] [nvarchar](255) NULL,
	[vegetarier] [float] NULL,
	[raucher] [float] NULL,
	[allergien] [nvarchar](255) NULL,
	[verifizierung] [float] NULL,
	[Bemerkungen] [nvarchar](255) NULL,
	[Anreise_mit] [nvarchar](255) NULL,
	[Hin_Nr] [nvarchar](255) NULL,
	[Hin_Uhrzeit_ab] [nvarchar](255) NULL,
	[Hin_Uhrzeit_an] [nvarchar](255) NULL,
	[Abreise_mit] [nvarchar](255) NULL,
	[Rück_Nr] [nvarchar](255) NULL,
	[Rück_Uhrzeit_ab] [nvarchar](255) NULL,
	[Rück_Uhrzeit_an] [nvarchar](255) NULL,
	[Transfer] [nvarchar](255) NULL,
	[Sondergenehmigung] [nvarchar](255) NULL,
	[Hotelname] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2012_Feedback]    Script Date: 06.07.2018 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2012_Feedback](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[E_Mail_Einladung] [int] NULL,
	[Anmeldeprozess] [int] NULL,
	[Handhabung_Microsite] [int] NULL,
	[Informationsgehalt_Microsite] [int] NULL,
	[Charter_Angebot] [int] NULL,
	[Reiseunterlagen] [int] NULL,
	[Anreise_Destination] [int] NULL,
	[Location] [int] NULL,
	[Betreuung_vor_Ort] [int] NULL,
	[Logistik_Shuttle] [int] NULL,
	[Hotel] [int] NULL,
	[Motto_Identifikation] [int] NULL,
	[Motto_Transport] [int] NULL,
	[Ansprache] [int] NULL,
	[Ausrichtung] [int] NULL,
	[Rueckblick] [int] NULL,
	[Ehrungen_1] [int] NULL,
	[Zielsetzung] [int] NULL,
	[Enterprise_Ahead_programm] [int] NULL,
	[Moderation_1] [int] NULL,
	[Multimediale_Gestaltung] [int] NULL,
	[Ablauf_Tagung] [int] NULL,
	[Twitter] [int] NULL,
	[Karabiner] [int] NULL,
	[Jan_Geldmacher] [int] NULL,
	[Anna_Dimitrova] [int] NULL,
	[Alexander_Saul] [int] NULL,
	[Lothar_Geuenich] [int] NULL,
	[Gabriele_Kossack] [int] NULL,
	[Ivo_Rook] [int] NULL,
	[Ulrich_Kuhn] [int] NULL,
	[Markus_Lause] [int] NULL,
	[vermisste_Themen] [text] NULL,
	[Atmosphaere_Abendveranstaltung] [int] NULL,
	[Ablauf_Gala] [int] NULL,
	[Moderation_2] [int] NULL,
	[Ehrungen_2] [int] NULL,
	[Feuerwerk] [int] NULL,
	[Showact] [int] NULL,
	[Aftershow_Party] [int] NULL,
	[Essen_war_gut] [int] NULL,
	[persoenliches_Highlight] [text] NULL,
	[Lob_Kritik] [text] NULL,
	[feedback_erfolgt] [bit] NULL,
	[feedback_datum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013]    Script Date: 06.07.2018 11:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[kreditkarte_unternehmen] [varchar](max) NULL,
	[kreditkarte_inhaber] [varchar](max) NULL,
	[kreditkarte_nummer] [varchar](max) NULL,
	[kreditkarte_gueltig_bis] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[pausenarragement] [bit] NULL,
	[shuttle_pause] [bit] NULL,
	[allergien] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[hotel] [varchar](max) NULL,
	[anmeldung_frei] [bit] NULL,
	[hotel_bemerkung] [varchar](max) NULL,
	[hotel_name] [varchar](max) NULL,
	[hotel_strasse] [varchar](max) NULL,
	[hotel_plz_ort] [varchar](max) NULL,
	[hotel_telefon] [varchar](max) NULL,
	[hotel_link] [varchar](max) NULL,
	[hotel_email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_sko_2013_abwesende]    Script Date: 06.07.2018 11:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_sko_2013_abwesende](
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_Abwesenheiten]    Script Date: 06.07.2018 11:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_Abwesenheiten](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_ausladung]    Script Date: 06.07.2018 11:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_ausladung](
	[id] [int] NOT NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_befragung]    Script Date: 06.07.2018 11:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_befragung](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[kunde_positiv] [text] NULL,
	[kunde_negativ] [text] NULL,
	[kollegen_positiv] [text] NULL,
	[kollegen_negativ] [text] NULL,
	[erwartung] [text] NULL,
	[teilnahme] [bit] NULL,
	[spaeter] [bit] NULL,
	[datum] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_Einladungsliste]    Script Date: 06.07.2018 11:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_Einladungsliste](
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[abteilung] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_sko_2013_export_gesamt]    Script Date: 06.07.2018 11:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_sko_2013_export_gesamt](
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[kreditkarte_unternehmen] [varchar](max) NULL,
	[kreditkarte_inhaber] [varchar](max) NULL,
	[kreditkarte_nummer] [varchar](max) NULL,
	[kreditkarte_gueltig_bis] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[pausenarragement] [bit] NULL,
	[shuttle_pause] [bit] NULL,
	[allergien] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[hotel] [varchar](max) NULL,
	[hotel_bemerkung] [varchar](max) NULL,
	[anmeldung_frei] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_Feedback]    Script Date: 06.07.2018 11:23:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_Feedback](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[E_Mail_Einladung] [int] NULL,
	[Handhabung_Microsite] [int] NULL,
	[Informationsgehalt_Microsite] [int] NULL,
	[Hotline] [int] NULL,
	[Reiseunterlagen] [int] NULL,
	[Anreise_Destination] [int] NULL,
	[Location] [int] NULL,
	[Betreuung_vor_Ort] [int] NULL,
	[Logistik_Shuttle] [int] NULL,
	[Hotel] [int] NULL,
	[Motto_Identifikation] [int] NULL,
	[Motto_Transport] [int] NULL,
	[Ansprache] [int] NULL,
	[Ausrichtung] [int] NULL,
	[Rueckblick] [int] NULL,
	[Ehrungen_100_Prozent] [int] NULL,
	[Zielsetzung] [int] NULL,
	[Moderation_vormittag] [int] NULL,
	[Multimediale_Gestaltung] [int] NULL,
	[Ablauf_Tagung] [int] NULL,
	[offener_Dialog] [int] NULL,
	[persoenliches_Commitment] [int] NULL,
	[Philip_Lacor] [int] NULL,
	[Alexander_Saul] [int] NULL,
	[Guiscardo_Pin] [int] NULL,
	[Gabriele_Kossack] [int] NULL,
	[John_Paul_Pieper] [int] NULL,
	[Stephan_Zimmermann] [int] NULL,
	[Zoltan_Bickel] [int] NULL,
	[Martin_Grabowski] [int] NULL,
	[vermisste_Themen] [text] NULL,
	[Atmosphaere_Abendveranstaltung] [int] NULL,
	[Ablauf_Gala] [int] NULL,
	[Moderation_abend] [int] NULL,
	[Dinner] [int] NULL,
	[Ehrungen_TopTeam] [int] NULL,
	[Band_Supreme_Club] [int] NULL,
	[Showact_Xavier_Naidoo] [int] NULL,
	[Aftershow_Party] [int] NULL,
	[persoenliches_Highlight] [text] NULL,
	[Lob_Kritik] [text] NULL,
	[feedback_erfolgt] [bit] NULL,
	[feedback_datum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_sko_2013_namensschild]    Script Date: 06.07.2018 11:23:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_sko_2013_namensschild](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_sko_2013_namensschilder]    Script Date: 06.07.2018 11:23:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_sko_2013_namensschilder](
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[pausenarragement] [bit] NULL,
	[shuttle_pause] [bit] NULL,
	[allergien] [text] NULL,
	[hotel] [varchar](max) NULL,
	[hotel_bemerkung] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_offene_Anmeldungen]    Script Date: 06.07.2018 11:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_offene_Anmeldungen](
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[abteilung] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_save_the_date]    Script Date: 06.07.2018 11:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_save_the_date](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[abteilung] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2013_save_the_date_abend]    Script Date: 06.07.2018 11:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2013_save_the_date_abend](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[abteilung] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2014]    Script Date: 06.07.2018 11:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2014](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[Ausweisart] [varchar](255) NULL,
	[Ausweisnummer] [varchar](255) NULL,
	[gueltig_bis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [bit] NULL,
	[handicap_text] [text] NULL,
	[vegetarier] [bit] NULL,
	[allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[absage_grund] [text] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[shuttle_10_06_2014] [varchar](255) NULL,
	[shuttle_11_06_2014] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[anmeldung_frei] [bit] NULL,
 CONSTRAINT [PK_Enterprise_SKO_2014] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2014_Feedback]    Script Date: 06.07.2018 11:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2014_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[E_Mail_Einladung] [int] NULL,
	[Handhabung_Microsite] [int] NULL,
	[Informationsgehalt_Microsite] [int] NULL,
	[Hotline] [int] NULL,
	[Anreise_Destination] [int] NULL,
	[Location] [int] NULL,
	[Betreuung_vor_Ort] [int] NULL,
	[Logistik_Shuttle] [int] NULL,
	[Motto_Identifikation] [int] NULL,
	[Motto_Transport] [int] NULL,
	[Ansprache] [int] NULL,
	[Ausrichtung] [int] NULL,
	[Rueckblick] [int] NULL,
	[Ehrungen_100_Prozent] [int] NULL,
	[Best_Practice] [int] NULL,
	[Beitraege_OCE_Mitglieder] [int] NULL,
	[Drum_Cafe] [int] NULL,
	[Moderation_vormittag] [int] NULL,
	[Multimediale_Gestaltung] [int] NULL,
	[Ablauf_Tagung] [int] NULL,
	[Zielsetzung_Strategie] [int] NULL,
	[persoenliches_Commitment] [int] NULL,
	[Philip_Lacor] [int] NULL,
	[Timo_Sillober] [int] NULL,
	[Guiscardo_Pin] [int] NULL,
	[Steffen_Zehrer] [int] NULL,
	[Gabriele_Kossack] [int] NULL,
	[Dorit_Bode] [int] NULL,
	[Merano_Mettbach] [int] NULL,
	[Zoltan_Bickel] [int] NULL,
	[Martin_Schumann] [int] NULL,
	[Martin_Grabowski] [int] NULL,
	[Juergen_Raith] [int] NULL,
	[Stephan_Zimmermann] [int] NULL,
	[Ulrich_Kuhn] [int] NULL,
	[vermisste_Themen] [text] NULL,
	[Atmosphaere_Abendveranstaltung] [int] NULL,
	[Ablauf_Gala] [int] NULL,
	[Moderation_abend] [int] NULL,
	[Dinner] [int] NULL,
	[Ehrungen_TopTeam] [int] NULL,
	[Aftershow_Party] [int] NULL,
	[persoenliches_Highlight] [text] NULL,
	[Lob_Kritik] [text] NULL,
	[feedback_erfolgt] [bit] NULL,
	[feedback_datum] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2014_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2014_save_the_date]    Script Date: 06.07.2018 11:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2014_save_the_date](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[abteilung] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2014_save_the_date] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2015]    Script Date: 06.07.2018 11:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[Ausweisart] [varchar](255) NULL,
	[Ausweisnummer] [varchar](255) NULL,
	[gueltig_bis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [bit] NULL,
	[handicap_text] [text] NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[absage_grund] [text] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[flugnummer_ankunft] [varchar](255) NULL,
	[flugnummer_abflug] [varchar](255) NULL,
	[bahnhof] [varchar](255) NULL,
	[ankunftszeit] [varchar](255) NULL,
	[abfahrtszeit] [varchar](255) NULL,
	[shuttle_01_06_2015] [varchar](255) NULL,
	[shuttle_02_06_2015] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[boarding] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[anmeldung_frei] [bit] NULL,
 CONSTRAINT [PK_Enterprise_SKO_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2015_Abgleich]    Script Date: 06.07.2018 11:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2015_Abgleich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[Kostenstelle] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[Beschreibung] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2015_Abgleich] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_sko_2015_crew]    Script Date: 06.07.2018 11:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_sko_2015_crew](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anreise] [varchar](max) NULL,
	[Abreise] [varchar](max) NULL,
	[Kabinennummer] [varchar](max) NULL,
	[Kabinenkategorie] [varchar](max) NULL,
	[Kabinencode] [varchar](max) NULL,
	[Personen in der Kabine] [int] NULL,
	[Anrede] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[Alter] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Niederlassung] [varchar](max) NULL,
	[Anreiseart] [varchar](max) NULL,
	[Vegetarier] [varchar](max) NULL,
	[Allergien Text] [text] NULL,
	[Strasse] [varchar](max) NULL,
	[Hausnummer] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[E-Mail] [varchar](max) NULL,
	[Mobil] [varchar](max) NULL,
	[Nationalitaet] [varchar](max) NULL,
	[Geburtsdatum] [varchar](max) NULL,
	[Geburtsort] [varchar](max) NULL,
	[Handicap] [varchar](max) NULL,
	[Ausweisart] [varchar](max) NULL,
	[Ausweisnummer] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[Kabinenteilung] [varchar](max) NULL,
	[Anreisemodalitaet] [varchar](max) NULL,
 CONSTRAINT [PK_enterprise_sko_2015_crew] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2015_Feedback]    Script Date: 06.07.2018 11:23:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2015_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[E_Mail_Einladung] [int] NULL,
	[Handhabung_Microsite] [int] NULL,
	[Informationsgehalt_Microsite] [int] NULL,
	[Hotline] [int] NULL,
	[Anreise_Destination] [int] NULL,
	[Location] [int] NULL,
	[Betreuung_vor_Ort] [int] NULL,
	[Logistik] [int] NULL,
	[Motto_Identifikation] [int] NULL,
	[Motto_Transport] [int] NULL,
	[Informativ] [int] NULL,
	[relevante_Themen] [int] NULL,
	[abwechslungsreich] [int] NULL,
	[Rueckblick] [int] NULL,
	[Ehrung_100_Prozent] [int] NULL,
	[Strategie] [int] NULL,
	[Organisationsupdate] [int] NULL,
	[Produktroadmap] [int] NULL,
	[Technik_und_Operations] [int] NULL,
	[Moderation_vormittag] [int] NULL,
	[Multimediale_Gestaltung] [int] NULL,
	[Interaktiver_Einsatz_Abstimmungstools] [int] NULL,
	[Segel_Game] [int] NULL,
	[Flaggenaktion] [int] NULL,
	[vermisste_Themen] [text] NULL,
	[Atmosphaere_Abendveranstaltung] [int] NULL,
	[Ehrungen_TopTeam] [int] NULL,
	[Dinner] [int] NULL,
	[Aftershow_Party] [int] NULL,
	[persoenliches_Highlight] [text] NULL,
	[Lob_Kritik] [text] NULL,
	[feedback_erfolgt] [bit] NULL,
	[feedback_datum] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2015_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_sko_2015_nachmeldungen_abend]    Script Date: 06.07.2018 11:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_sko_2015_nachmeldungen_abend](
	[enterprise_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_sko_2015_nachmeldungen_tagung]    Script Date: 06.07.2018 11:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_sko_2015_nachmeldungen_tagung](
	[enterprise_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016]    Script Date: 06.07.2018 11:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[tagung] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[Ausweisart] [varchar](255) NULL,
	[Ausweisnummer] [varchar](255) NULL,
	[gueltig_bis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [bit] NULL,
	[handicap_text] [text] NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[absage_grund] [text] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[flugnummer_ankunft] [varchar](255) NULL,
	[flugnummer_abflug] [varchar](255) NULL,
	[bahnhof] [varchar](255) NULL,
	[ankunftszeit] [varchar](255) NULL,
	[abfahrtszeit] [varchar](255) NULL,
	[shuttle_01_06_2015] [varchar](255) NULL,
	[shuttle_02_06_2015] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[boarding] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[Hotel] [varchar](max) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[anmeldung_frei] [bit] NULL,
	[TeilnahmeTyp] [varchar](max) NULL,
	[Zimmerwert] [decimal](2, 1) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Abgleich]    Script Date: 06.07.2018 11:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Abgleich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[Kostenstelle] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[Beschreibung] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016_Abgleich] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Abgleich_Abend]    Script Date: 06.07.2018 11:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Abgleich_Abend](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[Kostenstelle] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[Beschreibung] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016_Abgleich_Abend] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Feedback]    Script Date: 06.07.2018 11:23:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[Einladung_Anmeldung_online] [int] NULL,
	[Informationsgehalt_Anmeldeseite] [int] NULL,
	[EMail_Hotline] [int] NULL,
	[Tagungsunterlagen_online] [int] NULL,
	[Anreise_Erreichbarkeit_Destination] [int] NULL,
	[Tagungslocation] [int] NULL,
	[Abendlocation] [int] NULL,
	[Betreuung_vor_Ort] [int] NULL,
	[Buslogistik] [int] NULL,
	[Catering] [int] NULL,
	[Eventzeitung] [int] NULL,
	[Part1] [bit] NULL,
	[Motto_Identifizierung] [int] NULL,
	[Motto_Roter_Faden] [int] NULL,
	[Tagung_Informativ] [int] NULL,
	[Tagung_Relevante_Themen] [int] NULL,
	[Tagung_Abwechslungsreich] [int] NULL,
	[Tagung_Vortrag_Hannes_Ametsreiter] [int] NULL,
	[Tagung_Keynote_Alexander_Saul] [int] NULL,
	[Tagung_Interview] [int] NULL,
	[Tagung_Rueckblick] [int] NULL,
	[Tagung_100_Prozent_Ehrung] [int] NULL,
	[Tagung_Strategie] [int] NULL,
	[Tagung_Moderation] [int] NULL,
	[Tagung_Multimediale_Gestaltung] [int] NULL,
	[Tagung_Vermisst] [text] NULL,
	[Part2] [bit] NULL,
	[Abend_Gelungen] [int] NULL,
	[Abend_Catering] [int] NULL,
	[Abend_TopTeam_Ehrung] [int] NULL,
	[Abend_After_Work_Party] [int] NULL,
	[Part3] [bit] NULL,
	[Sonstiges_Highlight] [text] NULL,
	[Sonstiges_Lob_Kritik] [text] NULL,
	[Part4] [bit] NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Gewinner]    Script Date: 06.07.2018 11:23:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Gewinner](
	[id] [int] NULL,
	[Club] [bit] NULL,
	[Club_Reise] [bit] NULL,
	[TopTeam] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_hash]    Script Date: 06.07.2018 11:23:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_hash](
	[id] [int] NULL,
	[email] [varchar](max) NULL,
	[hash] [varchar](max) NULL,
	[Check_In_Tagung] [bit] NULL,
	[Zeitpunkt_Tagung] [varchar](50) NULL,
	[Check_In_Abend] [bit] NULL,
	[Zeitpunkt_Abend] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Hotelkontingente]    Script Date: 06.07.2018 11:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Hotelkontingente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hotel] [varchar](max) NULL,
	[Plaetze] [int] NULL,
	[Reserve] [int] NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016_Hotelkontingente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2016_Neu]    Script Date: 06.07.2018 11:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2016_Neu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[Check_In_Tagung] [bit] NULL,
	[Zeitpunkt_Tagung] [varchar](50) NULL,
	[Check_In_Abend] [bit] NULL,
	[Zeitpunkt_Abend] [varchar](50) NULL,
 CONSTRAINT [PK_Enterprise_SKO_2016_Neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2018_TN]    Script Date: 06.07.2018 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2018_TN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede_Email] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[hash] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_2018_TN_feedback]    Script Date: 06.07.2018 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_2018_TN_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teilnahmer_id] [int] NULL,
	[hash] [varchar](max) NULL,
	[Rahmen] [int] NULL,
	[Tagungslocation] [int] NULL,
	[Abendlocation] [int] NULL,
	[Kommentar_Allgemein] [varchar](max) NULL,
	[Themenauswahl] [int] NULL,
	[Informationsgehalt] [int] NULL,
	[Moderation] [int] NULL,
	[Kommentar_vortraege] [varchar](max) NULL,
	[Sonstiges_1] [varchar](max) NULL,
	[Sonstiges_2] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Verpflegung] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_Namen]    Script Date: 06.07.2018 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_Namen](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede_alt] [varchar](255) NULL,
	[vorname_alt] [varchar](255) NULL,
	[nachname_alt] [varchar](255) NULL,
	[strasse_alt] [varchar](255) NULL,
	[plz_alt] [varchar](255) NULL,
	[ort_alt] [varchar](255) NULL,
	[email_alt] [varchar](255) NULL,
	[mobil_alt] [varchar](255) NULL,
	[niederlassung_alt] [varchar](255) NULL,
	[nationalitaet_alt] [varchar](255) NULL,
	[geburtsdatum_alt] [varchar](255) NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [varchar](255) NULL,
	[teilnahme] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[verifizierung] [varchar](255) NULL,
	[versandadresse] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[ausweisart] [varchar](255) NULL,
	[ausweisnummer] [varchar](255) NULL,
	[geburtsdatum_ausweis] [varchar](255) NULL,
	[geburtsort_ausweis] [varchar](255) NULL,
	[nationalitaet_ausweis] [varchar](255) NULL,
	[anreise] [varchar](255) NULL,
	[anreise_flugort] [varchar](255) NULL,
	[transfer_zum_schiff] [varchar](255) NULL,
	[parkticket] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[abreise_flugort] [varchar](255) NULL,
	[transfer_zum_flughafen] [varchar](255) NULL,
	[kabine_art] [varchar](255) NULL,
	[zusammen_mit] [varchar](255) NULL,
	[vegetarier] [varchar](255) NULL,
	[allergien] [text] NULL,
	[reisekostenrichtlinie_akzeptiert] [varchar](255) NULL,
	[datenschutz] [varchar](255) NULL,
	[buchungsdaten_gesendet] [varchar](255) NULL,
	[ip_teilnahme] [varchar](255) NULL,
	[datum_teilnahme] [varchar](255) NULL,
	[bestaetigt] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enterprise_SKO_Staff]    Script Date: 06.07.2018 11:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise_SKO_Staff](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede_alt] [varchar](255) NULL,
	[vorname_alt] [varchar](255) NULL,
	[nachname_alt] [varchar](255) NULL,
	[strasse_alt] [varchar](255) NULL,
	[plz_alt] [varchar](255) NULL,
	[ort_alt] [varchar](255) NULL,
	[email_alt] [varchar](255) NULL,
	[mobil_alt] [varchar](255) NULL,
	[niederlassung_alt] [varchar](255) NULL,
	[nationalitaet_alt] [varchar](255) NULL,
	[geburtsdatum_alt] [varchar](255) NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[geburtsort] [varchar](255) NULL,
	[handicap] [varchar](255) NULL,
	[teilnahme] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[verifizierung] [varchar](255) NULL,
	[versandadresse] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[ausweisart] [varchar](255) NULL,
	[ausweisnummer] [varchar](255) NULL,
	[geburtsdatum_ausweis] [varchar](255) NULL,
	[geburtsort_ausweis] [varchar](255) NULL,
	[nationalitaet_ausweis] [varchar](255) NULL,
	[anreise] [varchar](255) NULL,
	[anreise_flugort] [varchar](255) NULL,
	[transfer_zum_schiff] [varchar](255) NULL,
	[parkticket] [varchar](max) NULL,
	[abreise] [varchar](255) NULL,
	[abreise_flugort] [varchar](255) NULL,
	[transfer_zum_flughafen] [varchar](255) NULL,
	[kabine_art] [varchar](255) NULL,
	[zusammen_mit] [varchar](255) NULL,
	[vegetarier] [varchar](255) NULL,
	[allergien] [text] NULL,
	[reisekostenrichtlinie_akzeptiert] [varchar](255) NULL,
	[datenschutz] [varchar](255) NULL,
	[buchungsdaten_gesendet] [varchar](255) NULL,
	[ip_teilnahme] [varchar](255) NULL,
	[datum_teilnahme] [varchar](255) NULL,
	[bestaetigt] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise_technik_administration]    Script Date: 06.07.2018 11:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise_technik_administration](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NOT NULL,
	[nachname] [varchar](max) NULL,
	[passwort] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Dubai_2011]    Script Date: 06.07.2018 11:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Dubai_2011](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[reisepassnummer] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[doppelzimmerwunsch] [bit] NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[raucher] [bit] NULL,
	[hoehenangst] [bit] NULL,
	[programm] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[tshirtgroesse] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Dubai_2011_Absagen]    Script Date: 06.07.2018 11:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Dubai_2011_Absagen](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[abmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Dubai_2011_Fehlende]    Script Date: 06.07.2018 11:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Dubai_2011_Fehlende](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Dubai_2011_Teilnehmer]    Script Date: 06.07.2018 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Dubai_2011_Teilnehmer](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[reisepassnummer] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[doppelzimmerwunsch] [bit] NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[raucher] [bit] NULL,
	[hoehenangst] [bit] NULL,
	[programm] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[tshirtgroesse] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Ibiza_2013]    Script Date: 06.07.2018 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Ibiza_2013](
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[programm] [varchar](max) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[sonstige_allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL,
	[kostenstelle] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Ibiza_2013_Absagen]    Script Date: 06.07.2018 11:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Ibiza_2013_Absagen](
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[abmeldedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Ibiza_2013_Fehlende]    Script Date: 06.07.2018 11:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Ibiza_2013_Fehlende](
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Ibiza_2013_Teilnehmer]    Script Date: 06.07.2018 11:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Ibiza_2013_Teilnehmer](
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[programm] [varchar](max) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[sonstige_allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Las_Vegas_2013]    Script Date: 06.07.2018 11:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Las_Vegas_2013](
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[sitzplatzwunsch] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[programm_eins] [varchar](max) NULL,
	[programm_zwei] [varchar](max) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[sonstige_allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Miami_2011]    Script Date: 06.07.2018 11:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Miami_2011](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Miami_2011_Absagen]    Script Date: 06.07.2018 11:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Miami_2011_Absagen](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[abmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Miami_2011_Fehlende]    Script Date: 06.07.2018 11:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Miami_2011_Fehlende](
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Export_Miami_2011_Teilnehmer]    Script Date: 06.07.2018 11:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Export_Miami_2011_Teilnehmer](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL,
	[zimmer] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende]    Script Date: 06.07.2018 11:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende_Nord_Ost]    Script Date: 06.07.2018 11:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende_Nord_Ost](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende_Nord_West]    Script Date: 06.07.2018 11:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende_Nord_West](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende_Ost]    Script Date: 06.07.2018 11:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende_Ost](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende_RM]    Script Date: 06.07.2018 11:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende_RM](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende_SKOs]    Script Date: 06.07.2018 11:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende_SKOs](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[position] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende_Sued]    Script Date: 06.07.2018 11:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende_Sued](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fehlende_West]    Script Date: 06.07.2018 11:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fehlende_West](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Dortmund_aktueller_Spieler]    Script Date: 06.07.2018 11:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Dortmund_aktueller_Spieler](
	[id] [nchar](10) NULL,
	[aktueller_Spieler] [varchar](max) NULL,
	[aktuelles_Los] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Dortmund_Fragen]    Script Date: 06.07.2018 11:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Dortmund_Fragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie] [varchar](max) NULL,
	[Punkte] [int] NULL,
	[Frage] [text] NULL,
	[A] [varchar](max) NULL,
	[B] [varchar](max) NULL,
	[C] [varchar](max) NULL,
	[D] [varchar](max) NULL,
	[Loesung] [varchar](max) NULL,
	[Vorschau] [bit] NULL,
	[Bild] [bit] NULL,
	[Bildname] [varchar](max) NULL,
	[Bildpause] [int] NULL,
	[Video] [bit] NULL,
	[Videoname] [varchar](max) NULL,
	[Videopause] [int] NULL,
 CONSTRAINT [PK_FSS_Dortmund_Fragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Dortmund_Fragenindex]    Script Date: 06.07.2018 11:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Dortmund_Fragenindex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie] [int] NULL,
	[Frage] [int] NULL,
 CONSTRAINT [PK_FSS_Dortmund_Fragenindex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Dortmund_Gewinnfolge]    Script Date: 06.07.2018 11:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Dortmund_Gewinnfolge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Dortmund_Lose]    Script Date: 06.07.2018 11:23:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Dortmund_Lose](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Losnummer] [int] NULL,
	[Paketnummer] [varchar](max) NULL,
	[Los_vergeben] [bit] NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[Sofortgewinn_ausgegeben] [bit] NULL,
	[Nickname] [varchar](max) NULL,
	[Quiz_Punkte] [int] NULL,
	[Quiz_gespielt] [bit] NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Akkreditiert] [bit] NULL,
	[Datum_Akkreditierung] [varchar](max) NULL,
	[IP_Akkreditierung] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Dortmund_Lose] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Dortmund_Teilnehmer]    Script Date: 06.07.2018 11:23:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Dortmund_Teilnehmer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Teilnahmeart] [varchar](max) NULL,
	[Pre-Opening] [varchar](max) NULL,
	[Abendevent] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[anwesend_pre_event] [bit] NULL,
	[anwesend_after_work] [bit] NULL,
	[check_in_pre_event] [varchar](max) NULL,
	[check_in_after_work] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Dortmund_Teilnehmer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Dortmund_Teilnehmer_neu]    Script Date: 06.07.2018 11:23:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Dortmund_Teilnehmer_neu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Teilnahmeart] [varchar](max) NULL,
	[Pre-Opening] [varchar](max) NULL,
	[Abendevent] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[anwesend_pre_event] [bit] NULL,
	[anwesend_after_work] [bit] NULL,
	[check_in_pre_event] [varchar](max) NULL,
	[check_in_after_work] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Dortmund_Teilnehmer_neu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_aktueller_Spieler]    Script Date: 06.07.2018 11:23:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_aktueller_Spieler](
	[id] [nchar](10) NULL,
	[aktueller_Spieler] [varchar](max) NULL,
	[aktuelles_Los] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_Fragen]    Script Date: 06.07.2018 11:23:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_Fragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie] [varchar](max) NULL,
	[Punkte] [int] NULL,
	[Frage] [text] NULL,
	[A] [varchar](max) NULL,
	[B] [varchar](max) NULL,
	[C] [varchar](max) NULL,
	[D] [varchar](max) NULL,
	[Loesung] [varchar](max) NULL,
	[Vorschau] [bit] NULL,
	[Bild] [bit] NULL,
	[Bildname] [varchar](max) NULL,
	[Bildpause] [int] NULL,
	[Video] [bit] NULL,
	[Videoname] [varchar](max) NULL,
	[Videopause] [int] NULL,
 CONSTRAINT [PK_FSS_Muenchen_Fragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_Fragenindex]    Script Date: 06.07.2018 11:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_Fragenindex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie] [int] NULL,
	[Frage] [int] NULL,
 CONSTRAINT [PK_FSS_Muenchen_Fragenindex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_Gewinnfolge]    Script Date: 06.07.2018 11:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_Gewinnfolge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_Konzert]    Script Date: 06.07.2018 11:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_Konzert](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Typ] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Plaetze] [int] NULL,
	[Anzahl_Personen] [int] NULL,
 CONSTRAINT [PK_FSS_Muenchen_Konzert] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_Lose]    Script Date: 06.07.2018 11:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_Lose](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Losnummer] [int] NULL,
	[Gewinn] [varchar](max) NULL,
	[Sofortgewinn_ausgegeben] [bit] NULL,
	[Nickname] [varchar](max) NULL,
	[Quiz_Punkte] [int] NULL,
	[Quiz_gespielt] [bit] NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Akkreditiert] [bit] NULL,
	[Datum_Akkreditierung] [varchar](max) NULL,
	[IP_Akkreditierung] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Muenchen_Lose] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_std]    Script Date: 06.07.2018 11:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_std](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Teilnahme] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Muenchen_std] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Muenchen_Teilnehmer]    Script Date: 06.07.2018 11:23:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Muenchen_Teilnehmer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Teilnahmeart] [varchar](max) NULL,
	[Pre-Opening] [varchar](max) NULL,
	[Abendevent] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[anwesend_pre_event] [bit] NULL,
	[anwesend_after_work] [bit] NULL,
	[check_in_pre_event] [varchar](max) NULL,
	[check_in_after_work] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Muenchen_Teilnehmer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_TN_Funktionshelfer]    Script Date: 06.07.2018 11:23:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_TN_Funktionshelfer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[abteilung] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_TN_Funktionshelfer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Admin_Login]    Script Date: 06.07.2018 11:23:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Admin_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Weihnachten_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Aktionsbericht]    Script Date: 06.07.2018 11:23:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Team] [varchar](max) NULL,
	[Promoter1] [varchar](max) NULL,
	[Promoter2] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Elemente_Tuer] [bit] NULL,
	[Elemente_Bauchladen] [bit] NULL,
	[Elemente_Promotion_Theke] [bit] NULL,
	[Elemente_Tablet_Staender] [bit] NULL,
	[Elemente_Huawei_Mate_S] [bit] NULL,
	[Elemente_Huawei_Mate_T1] [bit] NULL,
	[Teilnehmerkarten_Bestand_Anfang] [int] NULL,
	[Teilnehmerkarten_Ausgabe_Tag1] [int] NULL,
	[Teilnehmerkarten_Ausgabe_Tag2] [int] NULL,
	[Teilnehmerkarten_Bestand_Ende] [int] NULL,
	[Casbackgutscheine_Bestand_Anfang] [int] NULL,
	[Casbackgutscheine_Ausgabe_Tag1] [int] NULL,
	[Casbackgutscheine_Ausgabe_Tag2] [int] NULL,
	[Casbackgutscheine_Bestand_Ende] [int] NULL,
	[Touchpen_Bestand_Anfang] [int] NULL,
	[Touchpen_Ausgabe_Tag1] [int] NULL,
	[Touchpen_Ausgabe_Tag2] [int] NULL,
	[Touchpen_Bestand_Ende] [int] NULL,
	[Flowpack_Bestand_Anfang] [int] NULL,
	[Flowpack_Ausgabe_Tag1] [int] NULL,
	[Flowpack_Ausgabe_Tag2] [int] NULL,
	[Flowpack_Bestand_Ende] [int] NULL,
	[Taschenlampe_Bestand_Anfang] [int] NULL,
	[Taschenlampe_Ausgabe_Tag1] [int] NULL,
	[Taschenlampe_Ausgabe_Tag2] [int] NULL,
	[Taschenlampe_Bestand_Ende] [int] NULL,
	[Standplatz_Outdoor] [bit] NULL,
	[Standplatz_Outdoor_Name] [varchar](max) NULL,
	[Standplatz_Outdoor_Flaeche_privat] [bit] NULL,
	[Standplatz_Outdoor_Flaeche_privat_Groesse] [int] NULL,
	[Standplatz_Outdoor_Flaeche_staedtisch] [bit] NULL,
	[Standplatz_Outdoor_Flaeche_staedtisch_Groesse] [int] NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1] [int] NULL,
	[Frequenz_Tag2] [int] NULL,
	[Tag1_Beratung_Huawei_P8] [int] NULL,
	[Tag1_Verkauf_Huawei_P8] [int] NULL,
	[Tag1_Beratung_Huawei_Mate_S] [int] NULL,
	[Tag1_Verkauf_Huawei_Mate_S] [int] NULL,
	[Tag1_Beratung_Huawei_Smartwatch] [int] NULL,
	[Tag1_Verkauf_Huawei_Smartwatch] [int] NULL,
	[Tag2_Beratung_Huawei_P8] [int] NULL,
	[Tag2_Verkauf_Huawei_P8] [int] NULL,
	[Tag2_Beratung_Huawei_Mate_S] [int] NULL,
	[Tag2_Verkauf_Huawei_Mate_S] [int] NULL,
	[Tag2_Beratung_Huawei_Smartwatch] [int] NULL,
	[Tag2_Verkauf_Huawei_Smartwatch] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
 CONSTRAINT [PK_FSS_Weihnachten_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Campus_Login_intern]    Script Date: 06.07.2018 11:23:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Campus_Login_intern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
 CONSTRAINT [PK_FSS_Weihnachten_Campus_Login_intern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Geolocation]    Script Date: 06.07.2018 11:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Geolocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FSS_W_S_id] [int] NULL,
	[title] [nvarchar](max) NOT NULL,
	[subtitle] [nvarchar](max) NULL,
	[timelapse] [nvarchar](max) NOT NULL,
	[brand] [nvarchar](max) NULL,
	[type] [nvarchar](max) NULL,
	[latitude] [nvarchar](max) NOT NULL,
	[longitude] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[gallery] [nvarchar](max) NULL,
	[deeplink] [nvarchar](max) NULL,
 CONSTRAINT [PK_FSS_Weihnachten_Geolocation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Gewinnfolge_Team1]    Script Date: 06.07.2018 11:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Gewinnfolge_Team2]    Script Date: 06.07.2018 11:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Gewinnfolge_Team3]    Script Date: 06.07.2018 11:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Gewinnfolge_Team4]    Script Date: 06.07.2018 11:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team4](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Gewinnfolge_Team5]    Script Date: 06.07.2018 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team5](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Gewinnfolge_Team6]    Script Date: 06.07.2018 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team6](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Lose]    Script Date: 06.07.2018 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Lose](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Losnummer] [varchar](50) NULL,
	[Los_vergeben] [bit] NULL,
	[Gewinn] [varchar](max) NULL,
	[Sofortgewinn_ausgegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
	[Ausgabetag] [date] NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Akkreditiert] [bit] NULL,
	[Freigabe_Microsite] [bit] NULL,
	[Datum_Akkreditierung] [varchar](max) NULL,
	[IP_Akkreditierung] [varchar](max) NULL,
	[Wunsch_fuer] [text] NULL,
	[Wunsch_was] [text] NULL,
	[Bild_Shop] [bit] NULL,
	[Bild_allgemein] [bit] NULL,
 CONSTRAINT [PK_FSS_Weihnachten_Lose] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FSS_Weihnachten_Standorte]    Script Date: 06.07.2018 11:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FSS_Weihnachten_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [varchar](max) NULL,
	[Tag2] [varchar](max) NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
	[aufgenommene_Videos] [int] NULL,
 CONSTRAINT [PK_FSS_Weihnachten_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fuerteventura_2013_Teilnehmer]    Script Date: 06.07.2018 11:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fuerteventura_2013_Teilnehmer](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](5) NULL,
	[ort] [varchar](50) NULL,
	[mobil] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[personalausweisnummer] [varchar](max) NULL,
	[gueltigkeit] [varchar](50) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsname] [varchar](max) NULL,
	[versand_firma] [varchar](max) NULL,
	[versand_strasse] [varchar](max) NULL,
	[versand_plz] [varchar](5) NULL,
	[versand_ort] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[passwort] [varchar](50) NULL,
	[Anmeldung_erfolgt] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[raucher] [bit] NULL,
	[absage] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gatekeeper_vodafone_events_ip]    Script Date: 06.07.2018 11:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gatekeeper_vodafone_events_ip](
	[id] [int] NULL,
	[adresse] [varchar](max) NULL,
	[Team] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Art_Admin_Login]    Script Date: 06.07.2018 11:23:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Art_Admin_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
 CONSTRAINT [PK_Giga_Art_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Art_Aktionsbericht]    Script Date: 06.07.2018 11:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Art_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[equipment_counter] [bit] NULL,
	[equipment_Huawei_P9_Eins] [bit] NULL,
	[equipment_Huawei_P9_Zwei] [bit] NULL,
	[equipment_Roll_Up_weiss] [bit] NULL,
	[equipment_Hocker_Foto] [bit] NULL,
	[equipment_Lichtquelle_Eins] [bit] NULL,
	[equipment_Lichtquelle_Zwei] [bit] NULL,
	[equipment_Stativ] [bit] NULL,
	[equipment_Kuka_Painter] [bit] NULL,
	[equipment_Staffelei] [bit] NULL,
	[equipment_Hocker_Wartezeit] [bit] NULL,
	[papier_anfangsbestand] [int] NULL,
	[papier_ausgabe_tag1] [int] NULL,
	[papier_ausgabe_tag2] [int] NULL,
	[papier_ausgabe_tag3] [int] NULL,
	[papier_ausgabe_ende] [int] NULL,
	[banderole_anfangsbestand] [int] NULL,
	[banderole_ausgabe_tag1] [int] NULL,
	[banderole_ausgabe_tag2] [int] NULL,
	[banderole_ausgabe_tag3] [int] NULL,
	[banderole_ausgabe_ende] [int] NULL,
	[Team] [varchar](max) NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter] [varchar](max) NULL,
	[Fotograf] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Aktionszeit_Tag3] [varchar](max) NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1] [int] NULL,
	[Frequenz_Tag2] [int] NULL,
	[Frequenz_Tag3] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
 CONSTRAINT [PK_Giga_Art_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Art_Standorte]    Script Date: 06.07.2018 11:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Art_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [date] NULL,
	[Tag2] [date] NULL,
	[Tag3] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_Giga_Art_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Cube_Admin_Login]    Script Date: 06.07.2018 11:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Cube_Admin_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
	[Team] [int] NULL,
 CONSTRAINT [PK_GigaCube_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Cube_Aktionsbericht]    Script Date: 06.07.2018 11:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Cube_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Hardwarepartner] [varchar](max) NULL,
	[equipment_Kunstrasen] [bit] NULL,
	[equipment_Liegestuehle] [bit] NULL,
	[equipment_Kugelgrill] [bit] NULL,
	[equipment_Beachflags] [bit] NULL,
	[equipment_Zelt] [bit] NULL,
	[equipment_Umzugskartons] [bit] NULL,
	[equipment_grauer_Teppich] [bit] NULL,
	[equipment_Stehlampe] [bit] NULL,
	[equipment_Klappcounter] [bit] NULL,
	[equipment_Stecker] [bit] NULL,
	[equipment_Tablet] [bit] NULL,
	[equipment_Tabletstele] [bit] NULL,
	[equipment_GigaCube] [bit] NULL,
	[equipment_GigaCube_gross] [bit] NULL,
	[equipment_Sofortgewinne] [bit] NULL,
	[equipment_Plastikbox] [bit] NULL,
	[equipment_Flyer] [bit] NULL,
	[equipment_Tisch] [bit] NULL,
	[equipment_Powerbanks] [bit] NULL,
	[equipment_Ladekabel] [bit] NULL,
	[equipment_Sitzcubes] [bit] NULL,
	[equipment_Fussbodenaufkleber] [bit] NULL,
	[Flyer_anfangsbestand] [int] NULL,
	[Flyer_ausgabe_tag1] [int] NULL,
	[Flyer_ausgabe_tag2] [int] NULL,
	[Flyer_ausgabe_gesamt] [int] NULL,
	[Flyer_ausgabe_ende] [int] NULL,
	[Rittersport_anfangsbestand] [int] NULL,
	[Rittersport_ausgabe_tag1] [int] NULL,
	[Rittersport_ausgabe_tag2] [int] NULL,
	[Rittersport_ausgabe_gesamt] [int] NULL,
	[Rittersport_ausgabe_ende] [int] NULL,
	[Team] [varchar](max) NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1_Besucher] [int] NULL,
	[Frequenz_Tag2_Besucher] [int] NULL,
	[Frequenz_Tag1_TN] [int] NULL,
	[Frequenz_Tag2_TN] [int] NULL,
	[Frequenz_Tag1_Registrierungen] [int] NULL,
	[Frequenz_Tag2_Registrierungen] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
	[Berichtseingabe_durch] [varchar](max) NULL,
 CONSTRAINT [PK_GigaCube_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Cube_Campus]    Script Date: 06.07.2018 11:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Cube_Campus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
 CONSTRAINT [PK_Giga_Cube_Campus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Cube_Campus_Voting]    Script Date: 06.07.2018 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Cube_Campus_Voting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Teilnehmer_id] [int] NULL,
	[MAC] [varchar](max) NULL,
 CONSTRAINT [PK_Giga_Cube_Campus_Voting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Cube_Samplingbericht]    Script Date: 06.07.2018 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Cube_Samplingbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[equipment_Giga_Cube] [bit] NULL,
	[equipment_samplingtasche] [bit] NULL,
	[equipment_Flyer] [bit] NULL,
	[tickets_anfangsbestand] [int] NULL,
	[tickets_ausgabe_tag1] [int] NULL,
	[tickets_ausgabe_ende] [int] NULL,
	[Team] [varchar](max) NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter] [varchar](max) NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[standort_fuz] [bit] NULL,
	[standort_ekz] [bit] NULL,
	[standort_hbf] [bit] NULL,
	[standort_ph] [bit] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
 CONSTRAINT [PK_Giga_Cube_Samplingbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Cube_Standorte]    Script Date: 06.07.2018 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Cube_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [date] NULL,
	[Tag2] [date] NULL,
	[Tag3] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_GigaCube_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Cube_TN]    Script Date: 06.07.2018 11:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Cube_TN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Adresse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Mobilfunk] [varchar](max) NULL,
	[Team] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[IP] [varchar](max) NULL,
 CONSTRAINT [PK_GigaCube_TN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Goal_Admin_Login]    Script Date: 06.07.2018 11:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Goal_Admin_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
 CONSTRAINT [PK_Giga_Goal_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Goal_Aktionsbericht]    Script Date: 06.07.2018 11:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Goal_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Hardwarepartner] [varchar](max) NULL,
	[equipment_Spielstele] [bit] NULL,
	[equipment_Lautsprecher] [bit] NULL,
	[equipment_Screen] [bit] NULL,
	[equipment_HW_Logo_Stele] [bit] NULL,
	[equipment_Sony_Smartphone] [bit] NULL,
	[equipment_LG_Smartphone] [bit] NULL,
	[equipment_Papp_Roboter] [bit] NULL,
	[equipment_Fussball] [bit] NULL,
	[equipment_EM_Fussball] [bit] NULL,
	[equipment_Rollrasen] [bit] NULL,
	[equipment_Fussballschuhe_Schaufenster] [bit] NULL,
	[equipment_Eckfahne_Schaufenster] [bit] NULL,
	[equipment_Eifelturm] [bit] NULL,
	[equipment_Mini_Fussball] [bit] NULL,
	[equipment_Fussball_Bonbons] [bit] NULL,
	[equipment_Fussballschuhe_Top_Ten] [bit] NULL,
	[equipment_Fussballteppich] [bit] NULL,
	[equipment_Kunstrasen] [bit] NULL,
	[equipment_Eckfahnen] [bit] NULL,
	[equipment_Pylonen] [bit] NULL,
	[equipment_Banden] [bit] NULL,
	[chips_rot_anfangsbestand] [int] NULL,
	[chips_rot_ausgabe_tag1] [int] NULL,
	[chips_rot_ausgabe_tag2] [int] NULL,
	[chips_rot_ausgabe_tag3] [int] NULL,
	[chips_rot_ausgabe_ende] [int] NULL,
	[chips_grau_anfangsbestand] [int] NULL,
	[chips_grau_ausgabe_tag1] [int] NULL,
	[chips_grau_ausgabe_tag2] [int] NULL,
	[chips_grau_ausgabe_tag3] [int] NULL,
	[chips_grau_ausgabe_ende] [int] NULL,
	[folder_anfangsbestand] [int] NULL,
	[folder_ausgabe_tag1] [int] NULL,
	[folder_ausgabe_tag2] [int] NULL,
	[folder_ausgabe_tag3] [int] NULL,
	[folder_ausgabe_ende] [int] NULL,
	[speed_anfangsbestand] [int] NULL,
	[speed_ausgabe_tag1] [int] NULL,
	[speed_ausgabe_tag2] [int] NULL,
	[speed_ausgabe_tag3] [int] NULL,
	[speed_ausgabe_ende] [int] NULL,
	[versprechen_anfangsbestand] [int] NULL,
	[versprechen_ausgabe_tag1] [int] NULL,
	[versprechen_ausgabe_tag2] [int] NULL,
	[versprechen_ausgabe_tag3] [int] NULL,
	[versprechen_ausgabe_ende] [int] NULL,
	[Team] [varchar](max) NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Aktionszeit_Tag3] [varchar](max) NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1] [int] NULL,
	[Frequenz_Tag2] [int] NULL,
	[Frequenz_Tag3] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
	[Spiele_Tag1] [int] NULL,
	[Spiele_Tag2] [int] NULL,
	[Spiele_Tag3] [int] NULL,
 CONSTRAINT [PK_Giga_Goal_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Goal_Appzahlen]    Script Date: 06.07.2018 11:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Goal_Appzahlen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lfd] [int] NULL,
	[Frequenz laut App] [int] NULL,
 CONSTRAINT [PK_Giga_Goal_Appzahlen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Goal_Diary]    Script Date: 06.07.2018 11:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Goal_Diary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Ersteller] [varchar](50) NULL,
	[Eintrag] [text] NULL,
	[Datum] [datetime] NULL,
	[Freigabe] [bit] NOT NULL,
 CONSTRAINT [PK_Giga_Goal_Diary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_Goal_Standorte]    Script Date: 06.07.2018 11:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_Goal_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [date] NULL,
	[Tag2] [date] NULL,
	[Tag3] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_Giga_Goal_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_TV_Admin_Login]    Script Date: 06.07.2018 11:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_TV_Admin_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
	[Team] [int] NULL,
 CONSTRAINT [PK_Giga_TV_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giga_TV_Flughafen_Admin_Login]    Script Date: 06.07.2018 11:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giga_TV_Flughafen_Admin_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Benutzer] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Rolle] [varchar](max) NULL,
	[Team] [int] NULL,
 CONSTRAINT [PK_Giga_TV_Flughafen_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Aktionsbericht]    Script Date: 06.07.2018 11:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Hardwarepartner] [varchar](max) NULL,
	[equipment_2_Counter] [bit] NULL,
	[equipment_Tabletstele] [bit] NULL,
	[equipment_Flyer] [bit] NULL,
	[equipment_Gummibaerchen] [bit] NULL,
	[equipment_Buttons] [bit] NULL,
	[equipment_Roll_up] [bit] NULL,
	[equipment_2_Devices] [bit] NULL,
	[equipment_Tablet] [bit] NULL,
	[Flyer_anfangsbestand] [int] NULL,
	[Flyer_ausgabe_tag1] [int] NULL,
	[Flyer_ausgabe_tag2] [int] NULL,
	[Flyer_ausgabe_gesamt] [int] NULL,
	[Flyer_ausgabe_ende] [int] NULL,
	[Gummibaerchen_anfangsbestand] [int] NULL,
	[Gummibaerchen_ausgabe_tag1] [int] NULL,
	[Gummibaerchen_ausgabe_tag2] [int] NULL,
	[Gummibaerchenu_ausgabe_gesamt] [int] NULL,
	[Gummibaerchen_ausgabe_ende] [int] NULL,
	[Buttons_anfangsbestand] [int] NULL,
	[Buttons_ausgabe_tag1] [int] NULL,
	[Buttons_ausgabe_tag2] [int] NULL,
	[Buttons_ausgabe_gesamt] [int] NULL,
	[Buttons_ausgabe_ende] [int] NULL,
	[Team] [varchar](max) NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1_Besucher] [int] NULL,
	[Frequenz_Tag2_Besucher] [int] NULL,
	[Frequenz_Tag1_Quiz] [int] NULL,
	[Frequenz_Tag2_Quiz] [int] NULL,
	[Frequenz_Tag1_Scan] [int] NULL,
	[Frequenz_Tag2_Scan] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
	[Berichtseingabe_durch] [varchar](max) NULL,
 CONSTRAINT [PK_GigaTV_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Flughafen_Aktionsbericht]    Script Date: 06.07.2018 11:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Flughafen_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[equipment_screen] [bit] NULL,
	[equipment_popcorn] [bit] NULL,
	[equipment_counter] [bit] NULL,
	[equipment_tablets] [bit] NULL,
	[equipment_laptop_board] [bit] NULL,
	[equipment_leiter] [bit] NULL,
	[equipment_rollwagen] [bit] NULL,
	[spitztueten_anfangsbestand] [int] NULL,
	[spitztueten_ausgabe_tag1] [int] NULL,
	[spitztueten_endbestand] [int] NULL,
	[popcorn_anfangsbestand] [int] NULL,
	[popcornn_ausgabe_tag1] [int] NULL,
	[popcornn_endbestand] [int] NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter1] [varchar](max) NULL,
	[Promoter2] [varchar](max) NULL,
	[aktion_tag] [date] NULL,
	[Aktionszeit] [varchar](max) NULL,
	[besucher_tag1] [int] NULL,
	[registrierungen_tag1] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Feedbacks] [text] NULL,
	[Berichtseingabe_durch] [varchar](max) NULL,
 CONSTRAINT [PK_GigaTV_Flughafen_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Flughafen_Standorte]    Script Date: 06.07.2018 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Flughafen_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Tag1] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_GigaTV_Flughafen_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Fragen]    Script Date: 06.07.2018 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Fragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie] [varchar](max) NULL,
	[Punkte] [int] NULL,
	[Frage] [text] NULL,
	[A] [varchar](max) NULL,
	[B] [varchar](max) NULL,
	[C] [varchar](max) NULL,
	[D] [varchar](max) NULL,
	[Loesung] [varchar](max) NULL,
	[Vorschau] [bit] NULL,
	[Bild] [bit] NULL,
	[Bildname] [varchar](max) NULL,
	[Bildpause] [int] NULL,
	[Video] [bit] NULL,
	[Videoname] [varchar](max) NULL,
	[Videopause] [int] NULL,
 CONSTRAINT [PK_GigaTV_Fragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Gewinnfolge_Team1]    Script Date: 06.07.2018 11:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Gewinnfolge_Team1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL,
 CONSTRAINT [PK_GigaTV_Gewinnfolge_Team1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Gewinnfolge_Team2]    Script Date: 06.07.2018 11:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Gewinnfolge_Team2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL,
 CONSTRAINT [PK_GigaTV_Gewinnfolge_Team2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Highscore]    Script Date: 06.07.2018 11:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Highscore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Punkte] [int] NULL,
	[Losnummer] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Lose]    Script Date: 06.07.2018 11:24:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Lose](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Losnummer] [varchar](50) NULL,
	[Los_vergeben] [bit] NULL,
	[Gewinn] [varchar](max) NULL,
	[Sofortgewinn_ausgegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
	[Ausgabetag] [date] NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Geburtsjahr] [varchar](max) NULL,
	[Akkreditiert] [bit] NULL,
	[Freigabe_Microsite] [bit] NULL,
	[Datum_Akkreditierung] [varchar](max) NULL,
	[IP_Akkreditierung] [varchar](max) NULL,
 CONSTRAINT [PK_GigaTV_Lose] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Samplingbericht]    Script Date: 06.07.2018 11:24:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Samplingbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[equipment_kostuem] [bit] NULL,
	[equipment_samplingtasche] [bit] NULL,
	[equipment_kinotickets] [bit] NULL,
	[tickets_anfangsbestand] [int] NULL,
	[tickets_ausgabe_tag1] [int] NULL,
	[tickets_ausgabe_tag2] [int] NULL,
	[tickets_ausgabe_ende] [int] NULL,
	[Team] [varchar](max) NULL,
	[Teamleiter] [varchar](max) NULL,
	[Promoter] [varchar](max) NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[standort_fuz] [bit] NULL,
	[standort_ekz] [bit] NULL,
	[standort_hbf] [bit] NULL,
	[standort_ph] [bit] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
 CONSTRAINT [PK_GigaTV_Samplingbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Standorte]    Script Date: 06.07.2018 11:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [date] NULL,
	[Tag2] [date] NULL,
	[Tag3] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_GigaTV_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Team1_Fragenindex]    Script Date: 06.07.2018 11:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Team1_Fragenindex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie] [int] NULL,
	[Frage] [int] NULL,
 CONSTRAINT [PK_GigaTV_Team1_Fragenindex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Team2_Fragenindex]    Script Date: 06.07.2018 11:24:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Team2_Fragenindex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie] [int] NULL,
	[Frage] [int] NULL,
 CONSTRAINT [PK_GigaTV_Team2_Fragenindex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GigaTV_Zugriffe]    Script Date: 06.07.2018 11:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GigaTV_Zugriffe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Quelle] [varchar](max) NULL,
	[IP_Adresse] [varchar](max) NULL,
	[Zeitpunkt] [varchar](max) NULL,
	[Losnummer] [varchar](max) NULL,
 CONSTRAINT [PK_GigaTV_Zugriffe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Granada_Anmeldungen]    Script Date: 06.07.2018 11:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Granada_Anmeldungen](
	[id] [int] NOT NULL,
	[Teilnahme] [varchar](50) NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[Strasse] [varchar](50) NULL,
	[Plz] [varchar](50) NULL,
	[Ort] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobil] [varchar](50) NULL,
	[Kostenstelle] [varchar](50) NULL,
	[kreditkarte_firma] [varchar](50) NULL,
	[kreditkarte_nummer] [varchar](50) NULL,
	[kreditkarte_inhaber] [varchar](50) NULL,
	[gueltig_bis] [varchar](50) NULL,
	[personalausweis_nr] [varchar](50) NULL,
	[nationalitaet] [varchar](50) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[voranreise] [varchar](50) NULL,
	[vegetarier] [varchar](50) NULL,
	[raucher] [varchar](50) NULL,
	[anreise_zubringer] [varchar](50) NULL,
	[anreise_ab] [varchar](50) NULL,
	[zimmer] [varchar](50) NULL,
	[doppelzimmervorname] [varchar](50) NULL,
	[doppelzimmernachname] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[erstkontakt] [datetime] NULL,
	[ip_erstkontakt] [varchar](50) NULL,
	[anmeldung_erfolgt] [varchar](50) NULL,
	[passwort] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Granada_Infos]    Script Date: 06.07.2018 11:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Granada_Infos](
	[id] [int] NOT NULL,
	[teilnehmer_id] [int] NULL,
	[hin_stops] [int] NULL,
	[hin_datum] [varchar](50) NULL,
	[hin1_flugnr] [varchar](50) NULL,
	[hin1_fluggesellschaft] [varchar](50) NULL,
	[hin1_eticket] [varchar](50) NULL,
	[hin1_abort] [varchar](50) NULL,
	[hin1_anort] [varchar](50) NULL,
	[hin1_ab] [varchar](50) NULL,
	[hin1_an] [varchar](50) NULL,
	[hin2_flugnr] [varchar](50) NULL,
	[hin2_eticket] [varchar](50) NULL,
	[hin2_abort] [varchar](50) NULL,
	[hin2_anort] [varchar](50) NULL,
	[hin2_ab] [varchar](50) NULL,
	[hin2_an] [varchar](50) NULL,
	[rueck_stops] [int] NULL,
	[rueck_datum] [varchar](50) NULL,
	[rueck1_flugnr] [varchar](50) NULL,
	[rueck1_fluggesellschaft] [varchar](50) NULL,
	[rueck1_eticket] [varchar](50) NULL,
	[rueck1_abort] [varchar](50) NULL,
	[rueck1_anort] [varchar](50) NULL,
	[rueck1_ab] [varchar](50) NULL,
	[rueck1_an] [varchar](50) NULL,
	[rueck2_flugnr] [varchar](50) NULL,
	[rueck2_eticket] [varchar](50) NULL,
	[rueck2_abort] [varchar](50) NULL,
	[rueck2_anort] [varchar](50) NULL,
	[rueck2_ab] [varchar](50) NULL,
	[rueck2_an] [varchar](50) NULL,
	[zusatz] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Granada_Teilnehmer]    Script Date: 06.07.2018 11:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Granada_Teilnehmer](
	[ID] [int] NOT NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[E-Mail] [nvarchar](255) NULL,
	[Funktion] [nvarchar](255) NULL,
	[NL/Region] [nvarchar](255) NULL,
	[Unternehmen] [nvarchar](255) NULL,
	[Team] [nvarchar](255) NULL,
	[passwort] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[personalausweis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsname] [varchar](255) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[personalnummer] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[raucher] [bit] NULL,
	[zimmer] [bit] NULL,
	[zimmerpartner_vorname] [varchar](255) NULL,
	[zimmerpartner_nachname] [varchar](255) NULL,
	[bemerkungen] [text] NULL,
	[eingang] [datetime] NULL,
	[status] [varchar](50) NULL,
	[ip_erstkontakt] [varchar](15) NULL,
	[programmwahl] [varchar](50) NULL,
	[programmwahl_bemerkung] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotelzuweisung]    Script Date: 06.07.2018 11:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotelzuweisung](
	[id] [float] NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[vip_status] [bit] NULL,
	[liste] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[kostenstelle] [nvarchar](255) NULL,
	[kreditkarte_firma] [nvarchar](255) NULL,
	[kreditkarte_nummer] [nvarchar](255) NULL,
	[kreditkarte_inhaber] [nvarchar](255) NULL,
	[gueltig_bis] [nvarchar](255) NULL,
	[personalausweis_nr] [nvarchar](255) NULL,
	[nationalitaet] [nvarchar](255) NULL,
	[geburtsdatum] [nvarchar](255) NULL,
	[voranreise] [bit] NULL,
	[vegetarier] [bit] NULL,
	[anreise_per] [nvarchar](255) NULL,
	[anreise_transfer] [nvarchar](255) NULL,
	[anreise_ab] [nvarchar](255) NULL,
	[anreise_nummer] [nvarchar](255) NULL,
	[anreise_datum] [nvarchar](255) NULL,
	[anreise_uhrzeit] [nvarchar](255) NULL,
	[abreise_per] [nvarchar](255) NULL,
	[abreise_transfer] [nvarchar](255) NULL,
	[abreise_ziel] [nvarchar](255) NULL,
	[abreise_nummer] [nvarchar](255) NULL,
	[abreise_datum] [nvarchar](255) NULL,
	[abreise_uhrzeit] [nvarchar](255) NULL,
	[zimmer] [nvarchar](255) NULL,
	[14#05#] [float] NULL,
	[15#05#] [float] NULL,
	[bemerkung] [nvarchar](255) NULL,
	[hotel] [nvarchar](255) NULL,
	[erstkontakt] [datetime] NULL,
	[anmeldung_status] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hundertprozent]    Script Date: 06.07.2018 11:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hundertprozent](
	[id] [int] NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HundertProzent2011]    Script Date: 06.07.2018 11:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HundertProzent2011](
	[id] [int] NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ischgl_Teilnehmer]    Script Date: 06.07.2018 11:24:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ischgl_Teilnehmer](
	[ID] [int] NOT NULL,
	[firma] [varchar](50) NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[E-Mail] [nvarchar](255) NULL,
	[passwort] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[Personalausweisnummer] [varchar](50) NULL,
	[gueltig_bis] [varchar](50) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[vegetarier] [varchar](50) NULL,
	[fisch] [varchar](50) NULL,
	[anreise] [varchar](255) NULL,
	[programm] [varchar](50) NULL,
	[koennen] [varchar](50) NULL,
	[guide] [varchar](50) NULL,
	[zeitraum] [varchar](50) NULL,
	[ausruestung] [varchar](50) NULL,
	[konfektionsgroesse] [varchar](50) NULL,
	[koerpergroesse] [varchar](255) NULL,
	[schuhgroesse] [varchar](255) NULL,
	[gewicht] [varchar](255) NULL,
	[krankenversicherung] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[status] [varchar](50) NULL,
	[ip_erstkontakt] [varchar](15) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ischgl_Teilnehmer_Sicherung]    Script Date: 06.07.2018 11:24:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ischgl_Teilnehmer_Sicherung](
	[ID] [int] NOT NULL,
	[firma] [varchar](50) NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[E-Mail] [nvarchar](255) NULL,
	[passwort] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[Personalausweisnummer] [varchar](50) NULL,
	[gueltig_bis] [varchar](50) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[vegetarier] [varchar](50) NULL,
	[fisch] [varchar](50) NULL,
	[anreise] [varchar](255) NULL,
	[programm] [varchar](50) NULL,
	[koennen] [varchar](50) NULL,
	[guide] [varchar](50) NULL,
	[zeitraum] [varchar](50) NULL,
	[ausruestung] [varchar](50) NULL,
	[konfektionsgroesse] [varchar](50) NULL,
	[koerpergroesse] [varchar](255) NULL,
	[schuhgroesse] [varchar](255) NULL,
	[gewicht] [varchar](255) NULL,
	[krankenversicherung] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[status] [varchar](50) NULL,
	[ip_erstkontakt] [varchar](15) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Island_2014]    Script Date: 06.07.2018 11:24:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Island_2014](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[air_berlin] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[snowmobil] [varchar](max) NULL,
	[snowmobil_partner_vorname] [varchar](max) NULL,
	[snowmobil_partner_nachname] [varchar](max) NULL,
	[programm_auswahl] [varchar](max) NULL,
	[programm_alternative] [varchar](max) NULL,
	[quad_and_caving] [varchar](max) NULL,
	[quad_erfahrung] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Island_2014] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_2010_2011]    Script Date: 06.07.2018 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_2010_2011](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_2012_Abgleich]    Script Date: 06.07.2018 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_2012_Abgleich](
	[id] [int] NOT NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_2013_Durchschnittswerte]    Script Date: 06.07.2018 11:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_2013_Durchschnittswerte](
	[id] [int] NOT NULL,
	[Tabellenfeld] [varchar](max) NULL,
	[Wert] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_2014_Durchschnittswerte]    Script Date: 06.07.2018 11:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_2014_Durchschnittswerte](
	[id] [int] NOT NULL,
	[Tabellenfeld] [varchar](max) NULL,
	[Wert] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_Gewinner]    Script Date: 06.07.2018 11:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_Gewinner](
	[ID_SKO] [float] NULL,
	[P] [float] NULL,
	[Vorname] [nvarchar](255) NULL,
	[Nachname] [nvarchar](255) NULL,
	[Region_NL] [nvarchar](255) NULL,
	[Abteilung] [nvarchar](255) NULL,
	[Unternehmen] [nvarchar](255) NULL,
	[Bemerkungen] [nvarchar](255) NULL,
	[100P] [float] NULL,
	[TT] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_Nord]    Script Date: 06.07.2018 11:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_Nord](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_Nord_Ost]    Script Date: 06.07.2018 11:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_Nord_Ost](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_Nord_West]    Script Date: 06.07.2018 11:24:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_Nord_West](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_Ost]    Script Date: 06.07.2018 11:24:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_Ost](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_RM]    Script Date: 06.07.2018 11:24:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_RM](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_Sued]    Script Date: 06.07.2018 11:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_Sued](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB_West]    Script Date: 06.07.2018 11:24:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB_West](
	[id] [int] NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2009_2010]    Script Date: 06.07.2018 11:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2009_2010](
	[ID] [int] NOT NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[E-Mail] [nvarchar](255) NULL,
	[Funktion] [nvarchar](255) NULL,
	[NL] [nvarchar](255) NULL,
	[Unternehmen] [nvarchar](255) NULL,
	[Team] [nvarchar](255) NULL,
	[passwort] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[reisepassnummer] [varchar](255) NULL,
	[gueltigkeit] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[geburtsname] [varchar](255) NULL,
	[vegetarier] [bit] NULL,
	[raucherzimmer] [bit] NULL,
	[versand_firma] [varchar](255) NULL,
	[versand_strasse] [varchar](255) NULL,
	[versand_plz] [varchar](255) NULL,
	[versand_ort] [varchar](255) NULL,
	[eingang] [datetime] NULL,
	[status] [varchar](50) NULL,
	[ip_erstkontakt] [varchar](15) NULL,
	[bemerkungen] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_1_Kundenvertrieb_ME]    Script Date: 06.07.2018 11:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_1_Kundenvertrieb_ME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_1_Kundenvertrieb_ME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_1_Kundenvertrieb_ME_develop]    Script Date: 06.07.2018 11:24:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_1_Kundenvertrieb_ME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_1_Kundenvertrieb_ME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_10_Partner_Account_Manager_Bestand]    Script Date: 06.07.2018 11:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_10_Partner_Account_Manager_Bestand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_10_Partner_Account_Manager_Bestand_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_10_Partner_Account_Manager_Bestand_develop]    Script Date: 06.07.2018 11:24:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_10_Partner_Account_Manager_Bestand_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_10_Partner_Account_Manager_Bestand_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_11_Partner_Account_Manager_Festnetz]    Script Date: 06.07.2018 11:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_11_Partner_Account_Manager_Festnetz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_11_Partner_Account_Manager_Festnetz_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_11_Partner_Account_Manager_Festnetz_develop]    Script Date: 06.07.2018 11:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_11_Partner_Account_Manager_Festnetz_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_11_Partner_Account_Manager_Festnetz_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_12_Kunden_VB_Public]    Script Date: 06.07.2018 11:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_12_Kunden_VB_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_12_Kunden_VB_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_12_Kunden_VB_Public_develop]    Script Date: 06.07.2018 11:24:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_12_Kunden_VB_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_12_Kunden_VB_Public_PK_develop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_13_VB_Fachvertrieb_Public]    Script Date: 06.07.2018 11:24:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_13_VB_Fachvertrieb_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_13_VB_Fachvertrieb_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_13_VB_Fachvertrieb_Public_develop]    Script Date: 06.07.2018 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_13_VB_Fachvertrieb_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_13_VB_Fachvertrieb_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_14_KAM_Public]    Script Date: 06.07.2018 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_14_KAM_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_14_KAM_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_14_KAM_Public_develop]    Script Date: 06.07.2018 11:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_14_KAM_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_14_KAM_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_15_VL_ZVL_Public]    Script Date: 06.07.2018 11:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_15_VL_ZVL_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_15_VL_ZVL_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_15_VL_ZVL_Public_develop]    Script Date: 06.07.2018 11:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_15_VL_ZVL_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_15_VL_ZVL_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_16_VL_ZVL_ohne_Public]    Script Date: 06.07.2018 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_16_VL_ZVL_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_16_VL_ZVL_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_16_VL_ZVL_ohne_Public_develop]    Script Date: 06.07.2018 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_16_VL_ZVL_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_16_VL_ZVL_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_17_KAM_ohne_Public]    Script Date: 06.07.2018 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_17_KAM_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_17_KAM_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_17_KAM_ohne_Public_develop]    Script Date: 06.07.2018 11:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_17_KAM_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_17_KAM_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_18_VL_Solution_Sales]    Script Date: 06.07.2018 11:24:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_18_VL_Solution_Sales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_18_VL_Solution_Sales_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_18_VL_Solution_Sales_develop]    Script Date: 06.07.2018 11:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_18_VL_Solution_Sales_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_18_VL_Solution_Sales_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_2_VB_VS_AreaManager]    Script Date: 06.07.2018 11:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_2_VB_VS_AreaManager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_2_VB_VS_AreaManager_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_2_VB_VS_AreaManager_develop]    Script Date: 06.07.2018 11:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_2_VB_VS_AreaManager_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_2_VB_VS_AreaManager_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_3_VB_VS_Hunting]    Script Date: 06.07.2018 11:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_3_VB_VS_Hunting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_3_VB_VS_Hunting_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_3_VB_VS_Hunting_develop]    Script Date: 06.07.2018 11:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_3_VB_VS_Hunting_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_3_VB_VS_Hunting_develop_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_4_VL_Fachvertrieb]    Script Date: 06.07.2018 11:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_4_VL_Fachvertrieb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_4_VL_Fachvertrieb_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_4_VL_Fachvertrieb_develop]    Script Date: 06.07.2018 11:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_4_VL_Fachvertrieb_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_4_VL_Fachvertrieb_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_5_VB_Fachvertrieb_ME]    Script Date: 06.07.2018 11:24:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_5_VB_Fachvertrieb_ME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_5_VB_Fachvertrieb_ME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_5_VB_Fachvertrieb_ME_develop]    Script Date: 06.07.2018 11:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_5_VB_Fachvertrieb_ME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_5_VL_Fachvertrieb_ME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_6_VB_Fachvertrieb_LE]    Script Date: 06.07.2018 11:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_6_VB_Fachvertrieb_LE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_6_VL_Fachvertrieb_LE_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_6_VB_Fachvertrieb_LE_develop]    Script Date: 06.07.2018 11:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_6_VB_Fachvertrieb_LE_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_6_VL_Fachvertrieb_LE_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_7_VB_Fachvertrieb_M2M]    Script Date: 06.07.2018 11:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_7_VB_Fachvertrieb_M2M](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_7_VL_Fachvertrieb_M2M_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_7_VB_Fachvertrieb_M2M_develop]    Script Date: 06.07.2018 11:24:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_7_VB_Fachvertrieb_M2M_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_7_VL_Fachvertrieb_M2M_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_8_VL_Kundenvertrieb_LE]    Script Date: 06.07.2018 11:24:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_8_VL_Kundenvertrieb_LE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_8_VL_Kundenvertrieb_LE_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_8_VL_Kundenvertrieb_LE_develop]    Script Date: 06.07.2018 11:24:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_8_VL_Kundenvertrieb_LE_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_8_VL_Kundenvertrieb_LE_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_9_Kundenvertrieb_LE]    Script Date: 06.07.2018 11:24:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_9_Kundenvertrieb_LE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_9_Kundenvertrieb_LE_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2016_9_Kundenvertrieb_LE_develop]    Script Date: 06.07.2018 11:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2016_9_Kundenvertrieb_LE_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2016_9_Kundenvertrieb_LE_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_1_VL_SME]    Script Date: 06.07.2018 11:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_1_VL_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_1_VL_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_1_VL_SME_develop]    Script Date: 06.07.2018 11:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_1_VL_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_1_VL_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_10_Account_Manager_New_Business_Corporate]    Script Date: 06.07.2018 11:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_10_Account_Manager_New_Business_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_10_Account_Manager_New_Business_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_10_Account_Manager_New_Business_Corporate_develop]    Script Date: 06.07.2018 11:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_10_Account_Manager_New_Business_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_10_Account_Manager_New_Business_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_11_Partner_Account_Manager_Enterprise_Partner]    Script Date: 06.07.2018 11:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_11_Partner_Account_Manager_Enterprise_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_11_Partner_Account_Manager_Enterprise_Partner_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_11_Partner_Account_Manager_Enterprise_Partner_develop]    Script Date: 06.07.2018 11:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_11_Partner_Account_Manager_Enterprise_Partner_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_11_Partner_Account_Manager_Enterprise_Partner_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_12_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner]    Script Date: 06.07.2018 11:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_12_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_12_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_12_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop]    Script Date: 06.07.2018 11:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_12_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_12_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_PK_develop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_13_Account_Manager_Public]    Script Date: 06.07.2018 11:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_13_Account_Manager_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_13_Account_Manager_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_13_Account_Manager_Public_develop]    Script Date: 06.07.2018 11:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_13_Account_Manager_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_13_Account_Manager_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_14_Daten_Account_Manager_Public]    Script Date: 06.07.2018 11:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_14_Daten_Account_Manager_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_14_Daten_Account_Manager_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_14_Daten_Account_Manager_Public_develop]    Script Date: 06.07.2018 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_14_Daten_Account_Manager_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_14_Daten_Account_Manager_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_15_KAM_Public]    Script Date: 06.07.2018 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_15_KAM_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_15_KAM_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_15_KAM_Public_develop]    Script Date: 06.07.2018 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_15_KAM_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_15_KAM_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_16_VL_Public]    Script Date: 06.07.2018 11:24:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_16_VL_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_16_VL_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_16_VL_Public_develop]    Script Date: 06.07.2018 11:24:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_16_VL_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_16_VL_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_17_VL_ZVL_ohne_Public]    Script Date: 06.07.2018 11:24:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_17_VL_ZVL_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_17_VL_ZVL_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_17_VL_ZVL_ohne_Public_develop]    Script Date: 06.07.2018 11:24:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_17_VL_ZVL_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_17_VL_ZVL_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_18_KAM_ohne_Public]    Script Date: 06.07.2018 11:24:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_18_KAM_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_18_KAM_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_18_KAM_ohne_Public_develop]    Script Date: 06.07.2018 11:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_18_KAM_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_18_KAM_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_2_Account_Manager_SME]    Script Date: 06.07.2018 11:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_2_Account_Manager_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_2_Account_Manager_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_2_Account_Manager_SME_develop]    Script Date: 06.07.2018 11:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_2_Account_Manager_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_2_Account_Manager_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_3_Account_Manager_New_Business_SME]    Script Date: 06.07.2018 11:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_3_Account_Manager_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_3_Account_Manager_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_3_Account_Manager_New_Business_SME_develop]    Script Date: 06.07.2018 11:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_3_Account_Manager_New_Business_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_3_Account_Manager_New_Business_SME_develop_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_4_VL_Fachvertrieb_SME]    Script Date: 06.07.2018 11:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_4_VL_Fachvertrieb_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_4_VL_Fachvertrieb_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_4_VL_Fachvertrieb_SME_develop]    Script Date: 06.07.2018 11:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_4_VL_Fachvertrieb_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_4_VL_Fachvertrieb_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_5_Daten_Account_Manager_SME]    Script Date: 06.07.2018 11:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_5_Daten_Account_Manager_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_5_Daten_Account_Manager_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_5_Daten_Account_Manager_SME_develop]    Script Date: 06.07.2018 11:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_5_Daten_Account_Manager_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_5_Daten_Account_Manager_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_6_Daten_Account_Manager_Corporate]    Script Date: 06.07.2018 11:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_6_Daten_Account_Manager_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_6_Daten_Account_Manager_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_6_Daten_Account_Manager_Corporate_develop]    Script Date: 06.07.2018 11:24:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_6_Daten_Account_Manager_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_6_Daten_Account_Manager_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_7_Daten_Account_Manager_M2M]    Script Date: 06.07.2018 11:24:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_7_Daten_Account_Manager_M2M](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_7_Daten_Account_Manager_M2M_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_7_Daten_Account_Manager_M2M_develop]    Script Date: 06.07.2018 11:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_7_Daten_Account_Manager_M2M_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_7_Daten_Account_Manager_M2M_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_8_VL_Corporate]    Script Date: 06.07.2018 11:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_8_VL_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_8_VL_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_8_VL_Corporate_develop]    Script Date: 06.07.2018 11:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_8_VL_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_8_VL_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_9_Account_Manager_Corporate]    Script Date: 06.07.2018 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_9_Account_Manager_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_9_Account_Manager_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2017_9_Account_Manager_Corporate_develop]    Script Date: 06.07.2018 11:24:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2017_9_Account_Manager_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2017_9_Account_Manager_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_1_VL_SME]    Script Date: 06.07.2018 11:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_1_VL_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_1_VL_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_1_VL_SME_develop]    Script Date: 06.07.2018 11:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_1_VL_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_1_VL_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_10_Account_Manager_Corporate]    Script Date: 06.07.2018 11:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_10_Account_Manager_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_10_Account_Manager_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_10_Account_Manager_Corporate_develop]    Script Date: 06.07.2018 11:24:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_10_Account_Manager_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_10_Account_Manager_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_11_Account_Manager_New_Business_Corporate]    Script Date: 06.07.2018 11:24:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_11_Account_Manager_New_Business_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_11_Account_Manager_New_Business_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_11_Account_Manager_New_Business_Corporate_develop]    Script Date: 06.07.2018 11:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_11_Account_Manager_New_Business_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_11_Account_Manager_New_Business_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_12_Partner_Account_Manager_Enterprise_Partner]    Script Date: 06.07.2018 11:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_12_Partner_Account_Manager_Enterprise_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_12_Partner_Account_Manager_Enterprise_Partner_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_12_Partner_Account_Manager_Enterprise_Partner_develop]    Script Date: 06.07.2018 11:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_12_Partner_Account_Manager_Enterprise_Partner_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_12_Partner_Account_Manager_Enterprise_Partner_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner]    Script Date: 06.07.2018 11:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop]    Script Date: 06.07.2018 11:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_14_Account_Manager_Small_Public_Health]    Script Date: 06.07.2018 11:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_14_Account_Manager_Small_Public_Health](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_14_Account_Manager_Small_Public_Health_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_14_Account_Manager_Small_Public_Health_develop]    Script Date: 06.07.2018 11:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_14_Account_Manager_Small_Public_Health_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_14_Account_Manager_Small_Public_Health_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_15_Daten_Account_Manager_Public_Health]    Script Date: 06.07.2018 11:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_15_Daten_Account_Manager_Public_Health](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_15_Daten_Account_Manager_Public_Health_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_15_Daten_Account_Manager_Public_Health_develop]    Script Date: 06.07.2018 11:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_15_Daten_Account_Manager_Public_Health_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_15_Daten_Account_Manager_Public_Health_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_16_KAM_Public]    Script Date: 06.07.2018 11:24:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_16_KAM_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_16_KAM_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_16_KAM_Public_develop]    Script Date: 06.07.2018 11:24:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_16_KAM_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_16_KAM_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_17_VL_Public]    Script Date: 06.07.2018 11:24:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_17_VL_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_17_VL_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_17_VL_Public_develop]    Script Date: 06.07.2018 11:24:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_17_VL_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_17_VL_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_18_VL_ZVL_ohne_Public]    Script Date: 06.07.2018 11:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_18_VL_ZVL_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_18_VL_ZVL_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_18_VL_ZVL_ohne_Public_develop]    Script Date: 06.07.2018 11:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_18_VL_ZVL_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_18_VL_ZVL_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_19_KAM_ohne_Public]    Script Date: 06.07.2018 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_19_KAM_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_19_KAM_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_19_KAM_ohne_Public_develop]    Script Date: 06.07.2018 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_19_KAM_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_19_KAM_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_2_Account_Manager_SME]    Script Date: 06.07.2018 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_2_Account_Manager_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_2_Account_Manager_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_2_Account_Manager_SME_develop]    Script Date: 06.07.2018 11:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_2_Account_Manager_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_2_Account_Manager_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_3_VL_New_Business_SME]    Script Date: 06.07.2018 11:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_3_VL_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_3_VL_New_Business_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_3_VL_New_Business_SME_develop]    Script Date: 06.07.2018 11:24:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_3_VL_New_Business_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_3_VL_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_4_Daten_Account_Manager_New_Business_SME]    Script Date: 06.07.2018 11:24:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_4_Daten_Account_Manager_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_4_Daten_Account_Manager_New_Business_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_4_Daten_Account_Manager_New_Business_SME_develop]    Script Date: 06.07.2018 11:24:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_4_Daten_Account_Manager_New_Business_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_4_Daten_Account_Manager_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_5_Account_Manager_New_Business_SME]    Script Date: 06.07.2018 11:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_5_Account_Manager_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_5_Account_Manager_New_Business_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_5_Account_Manager_New_Business_SME_develop]    Script Date: 06.07.2018 11:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_5_Account_Manager_New_Business_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_5_Account_Manager_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_6_VL_Fachvertrieb_SME_Corporate]    Script Date: 06.07.2018 11:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_6_VL_Fachvertrieb_SME_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_6_VL_Fachvertrieb_SME_Corporat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_6_VL_Fachvertrieb_SME_Corporate_develop]    Script Date: 06.07.2018 11:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_6_VL_Fachvertrieb_SME_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_6_VL_Fachvertrieb_SME_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_7_Daten_Account_Manager_SME]    Script Date: 06.07.2018 11:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_7_Daten_Account_Manager_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_7_Daten_Account_Manager_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_7_Daten_Account_Manager_SME_develop]    Script Date: 06.07.2018 11:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_7_Daten_Account_Manager_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_7_Daten_Account_Manager_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_8_Daten_Account_Manager_Corporate]    Script Date: 06.07.2018 11:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_8_Daten_Account_Manager_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_8_Daten_Account_Manager_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_8_Daten_Account_Manager_Corporate_develop]    Script Date: 06.07.2018 11:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_8_Daten_Account_Manager_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_8_Daten_Account_Manager_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_9_VL_Corporate]    Script Date: 06.07.2018 11:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_9_VL_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_9_VL_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2018_9_VL_Corporate_develop]    Script Date: 06.07.2018 11:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2018_9_VL_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2018_9_VL_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_1_VL_SME]    Script Date: 06.07.2018 11:25:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_1_VL_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_1_VL_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_1_VL_SME_develop]    Script Date: 06.07.2018 11:25:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_1_VL_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_1_VL_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_10_Account_Manager_Corporate]    Script Date: 06.07.2018 11:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_10_Account_Manager_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_10_Account_Manager_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_10_Account_Manager_Corporate_develop]    Script Date: 06.07.2018 11:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_10_Account_Manager_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_10_Account_Manager_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_11_Account_Manager_New_Business_Corporate]    Script Date: 06.07.2018 11:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_11_Account_Manager_New_Business_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_11_Account_Manager_New_Business_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_11_Account_Manager_New_Business_Corporate_develop]    Script Date: 06.07.2018 11:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_11_Account_Manager_New_Business_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_11_Account_Manager_New_Business_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_12_Partner_Account_Manager_Enterprise_Partner]    Script Date: 06.07.2018 11:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_12_Partner_Account_Manager_Enterprise_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_12_Partner_Account_Manager_Enterprise_Partner_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_12_Partner_Account_Manager_Enterprise_Partner_develop]    Script Date: 06.07.2018 11:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_12_Partner_Account_Manager_Enterprise_Partner_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_12_Partner_Account_Manager_Enterprise_Partner_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner]    Script Date: 06.07.2018 11:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop]    Script Date: 06.07.2018 11:25:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_13_Partner_Development_Manager_Fixed_ICT_Enterprise_Partner_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_14_Account_Manager_Small_Public_Health]    Script Date: 06.07.2018 11:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_14_Account_Manager_Small_Public_Health](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_14_Account_Manager_Small_Public_Health_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_14_Account_Manager_Small_Public_Health_develop]    Script Date: 06.07.2018 11:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_14_Account_Manager_Small_Public_Health_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_14_Account_Manager_Small_Public_Health_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_15_Daten_Account_Manager_Public_Health]    Script Date: 06.07.2018 11:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_15_Daten_Account_Manager_Public_Health](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_15_Daten_Account_Manager_Public_Health_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_15_Daten_Account_Manager_Public_Health_develop]    Script Date: 06.07.2018 11:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_15_Daten_Account_Manager_Public_Health_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_15_Daten_Account_Manager_Public_Health_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_16_KAM_Public]    Script Date: 06.07.2018 11:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_16_KAM_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_16_KAM_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_16_KAM_Public_develop]    Script Date: 06.07.2018 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_16_KAM_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_16_KAM_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_17_VL_Public]    Script Date: 06.07.2018 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_17_VL_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_17_VL_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_17_VL_Public_develop]    Script Date: 06.07.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_17_VL_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_17_VL_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_18_VL_ZVL_ohne_Public]    Script Date: 06.07.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_18_VL_ZVL_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_18_VL_ZVL_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_18_VL_ZVL_ohne_Public_develop]    Script Date: 06.07.2018 11:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_18_VL_ZVL_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_18_VL_ZVL_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_19_KAM_ohne_Public]    Script Date: 06.07.2018 11:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_19_KAM_ohne_Public](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_19_KAM_ohne_Public_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_19_KAM_ohne_Public_develop]    Script Date: 06.07.2018 11:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_19_KAM_ohne_Public_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_19_KAM_ohne_Public_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_2_Account_Manager_SME]    Script Date: 06.07.2018 11:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_2_Account_Manager_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_2_Account_Manager_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_2_Account_Manager_SME_develop]    Script Date: 06.07.2018 11:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_2_Account_Manager_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_2_Account_Manager_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_3_VL_New_Business_SME]    Script Date: 06.07.2018 11:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_3_VL_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_3_VL_New_Business_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_3_VL_New_Business_SME_develop]    Script Date: 06.07.2018 11:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_3_VL_New_Business_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_3_VL_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_4_Daten_Account_Manager_New_Business_SME]    Script Date: 06.07.2018 11:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_4_Daten_Account_Manager_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_4_Daten_Account_Manager_New_Business_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_4_Daten_Account_Manager_New_Business_SME_develop]    Script Date: 06.07.2018 11:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_4_Daten_Account_Manager_New_Business_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_4_Daten_Account_Manager_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_5_Account_Manager_New_Business_SME]    Script Date: 06.07.2018 11:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_5_Account_Manager_New_Business_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_5_Account_Manager_New_Business_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_5_Account_Manager_New_Business_SME_develop]    Script Date: 06.07.2018 11:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_5_Account_Manager_New_Business_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_5_Account_Manager_New_Business_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_6_VL_Fachvertrieb_SME_Corporate]    Script Date: 06.07.2018 11:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_6_VL_Fachvertrieb_SME_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_6_VL_Fachvertrieb_SME_Corporat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_6_VL_Fachvertrieb_SME_Corporate_develop]    Script Date: 06.07.2018 11:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_6_VL_Fachvertrieb_SME_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_6_VL_Fachvertrieb_SME_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_7_Daten_Account_Manager_SME]    Script Date: 06.07.2018 11:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_7_Daten_Account_Manager_SME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_7_Daten_Account_Manager_SME_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_7_Daten_Account_Manager_SME_develop]    Script Date: 06.07.2018 11:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_7_Daten_Account_Manager_SME_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_7_Daten_Account_Manager_SME_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_8_Daten_Account_Manager_Corporate]    Script Date: 06.07.2018 11:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_8_Daten_Account_Manager_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_8_Daten_Account_Manager_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_8_Daten_Account_Manager_Corporate_develop]    Script Date: 06.07.2018 11:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_8_Daten_Account_Manager_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_8_Daten_Account_Manager_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_9_VL_Corporate]    Script Date: 06.07.2018 11:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_9_VL_Corporate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_9_VL_Corporate_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_9_VL_Corporate_develop]    Script Date: 06.07.2018 11:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_9_VL_Corporate_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [int] NULL,
	[Name] [varchar](50) NULL,
	[NL] [varchar](50) NULL,
	[ZE] [varchar](50) NULL,
	[Club] [bit] NULL,
	[Reise] [bit] NULL,
	[Topteamer] [bit] NULL,
 CONSTRAINT [JWB2019_9_VL_Corporate_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_ZE]    Script Date: 06.07.2018 11:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_ZE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Erreichung] [decimal](18, 2) NULL,
 CONSTRAINT [JWB2019_ZE_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JWB2019_ZE_develop]    Script Date: 06.07.2018 11:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWB2019_ZE_develop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Erreichung] [decimal](18, 0) NULL,
 CONSTRAINT [JWB2019_ZE_develop_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kambodscha_2017]    Script Date: 06.07.2018 11:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kambodscha_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[ESTA] [bit] NULL,
	[Riesenrad] [bit] NULL,
	[whatsapp] [bit] NULL,
	[whatsappnummer] [varchar](max) NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[abflug_text] [varchar](max) NULL,
	[abflug_bemerkung] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl_1_28_11_2017] [varchar](max) NULL,
	[programm_auswahl_2_28_11_2017] [varchar](max) NULL,
	[programm_auswahl_3_28_11_2017] [varchar](max) NULL,
	[programm_auswahl_1_29_11_2017] [varchar](max) NULL,
	[programm_auswahl_2_29_11_2017] [varchar](max) NULL,
	[programm_auswahl_3_29_11_2017] [varchar](max) NULL,
	[programm_auswahl_1_01_12_2017] [varchar](max) NULL,
	[Bangkok_von_oben] [varchar](max) NULL,
	[Bustransfer] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Kambodscha_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kroatien_2015]    Script Date: 06.07.2018 11:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kroatien_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[eintrittskarte] [bit] NULL,
	[whatsapp] [bit] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[air_berlin] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Kroatien_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Liste]    Script Date: 06.07.2018 11:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liste](
	[ID] [int] NOT NULL,
	[mail] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Live_Call_Q3_2015]    Script Date: 06.07.2018 11:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Live_Call_Q3_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_Live_Call_Q3_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lufthansa_Miami]    Script Date: 06.07.2018 11:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lufthansa_Miami](
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mails]    Script Date: 06.07.2018 11:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mails](
	[Anrede] [nvarchar](255) NULL,
	[Nachname] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[Standort] [nvarchar](255) NULL,
	[Abteilung] [nvarchar](255) NULL,
	[Stellenbezeichnung] [nvarchar](255) NULL,
	[Anzahl] [float] NULL,
	[Bemerkung] [nvarchar](255) NULL,
	[VIP-Status] [nvarchar](255) NULL,
	[Liste] [nvarchar](255) NULL,
	[Passwort] [float] NULL,
	[Region] [nvarchar](255) NULL,
	[Region_Firma] [nvarchar](255) NULL,
	[Region_Niederlassung] [nvarchar](255) NULL,
	[Region_Postfach] [nvarchar](255) NULL,
	[Region_Straße] [nvarchar](255) NULL,
	[Region_PLZ] [float] NULL,
	[Region_Ort] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Management_Event_10_2015]    Script Date: 06.07.2018 11:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Management_Event_10_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[management_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[abteilungsbezeichnung] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[zimmer] [bit] NULL,
	[hotel] [varchar](255) NULL,
	[bemerkung] [text] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[anmeldung_frei] [bit] NULL,
	[angemeldet] [bit] NULL,
	[teilnahme_donnerstag] [bit] NULL,
	[teilnahme_freitag] [bit] NULL,
	[anwesend_donnerstag] [bit] NULL,
	[anwesend_freitag] [bit] NULL,
	[check_in_donnerstag] [varchar](255) NULL,
	[check_in_freitag] [varchar](255) NULL,
 CONSTRAINT [PK_Management_Event_10_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Management_Event_10_2015_Feedback]    Script Date: 06.07.2018 11:25:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Management_Event_10_2015_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[management_id] [int] NULL,
	[AV_Veranstaltungsort] [int] NULL,
	[AV_ZeitlicherRahmen] [int] NULL,
	[AV_Logistik] [int] NULL,
	[AV_Programm] [int] NULL,
	[AV_Networking] [int] NULL,
	[T_Tagungsort] [int] NULL,
	[T_ZeitlicherRahmen] [int] NULL,
	[T_Logistik] [int] NULL,
	[T_Networking] [int] NULL,
	[T_Themenauswahl] [int] NULL,
	[PP_Vortrag_Intro] [int] NULL,
	[PP_Vortrag_Geschaeftsentwicklung] [int] NULL,
	[PP_Vortrag_Customer] [int] NULL,
	[PP_Vortrag_StrategischePrioritaeten] [int] NULL,
	[PP_Vortrag_Enterprise] [int] NULL,
	[PP_Vortrag_Marke] [int] NULL,
	[PP_Vortrag_TeamIntegration] [int] NULL,
	[PP_InhaltlichInformativ] [int] NULL,
	[PP_Abwechslungsreich] [int] NULL,
	[PP_InteraktiverEinsatz] [int] NULL,
	[FT_VermissteThemen] [text] NULL,
	[PH_PersoenlichesHighlight] [text] NULL,
	[ALK_AnregungenLobKritik] [text] NULL,
	[OE_EinladungAnmeldungOnline] [int] NULL,
	[OE_VerstaendlichkeitHandhabungAnmeldeseite] [int] NULL,
	[OE_EMailHotline] [int] NULL,
	[OE_AnreiseErreichbarkeitDestination] [int] NULL,
	[OE_BetreuungvorOrt] [int] NULL,
	[feedback_erfolgt] [bit] NULL,
	[feedback_datum] [varchar](max) NULL,
 CONSTRAINT [PK_Management_Event_10_2015_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Management_login]    Script Date: 06.07.2018 11:25:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Management_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Betriebsteiltext] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Unternehmensteil] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Bez_Org_Schl] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
 CONSTRAINT [PK_Management_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mauritius_2015]    Script Date: 06.07.2018 11:25:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mauritius_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[krankenversicherung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[eintrittskarte] [bit] NULL,
	[whatsapp] [bit] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[sitzplatz] [varchar](max) NULL,
	[flug_sitznachbar_vorname] [varchar](max) NULL,
	[flug_sitznachbar_nachname] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[chauffeur_service] [bit] NULL,
	[chauffeur_strasse] [varchar](max) NULL,
	[chauffeur_plz] [varchar](max) NULL,
	[chauffeur_ort] [varchar](max) NULL,
	[Zimmerbuchung_Dubai] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[programm_alternative] [varchar](max) NULL,
	[programm_auswahl_dubai] [varchar](max) NULL,
	[programm_alternative_dubai] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Mauritius_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTT_03_2016]    Script Date: 06.07.2018 11:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTT_03_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Abteilungsbezeichnung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Teilnahme] [bit] NULL,
	[Bemerkung] [text] NULL,
	[Anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_MTT_03_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTT_03_2016_Feedback]    Script Date: 06.07.2018 11:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTT_03_2016_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[Tagungsort] [int] NULL,
	[zeitlicher_Rahmen] [int] NULL,
	[Programm] [int] NULL,
	[Networking] [int] NULL,
	[Themenauswahl] [int] NULL,
	[Informationsgehalt] [int] NULL,
	[QundA_Session] [int] NULL,
	[Interaktiver_Einsatz] [int] NULL,
	[Kommentar_Tagungsort] [text] NULL,
	[Kommentar_zeitlicher_Rahmen] [text] NULL,
	[Kommentar_Programm] [text] NULL,
	[Kommentar_Networking] [text] NULL,
	[Kommentar_Themenauswahl] [text] NULL,
	[Kommentar_Informationsgehalt] [text] NULL,
	[Kommentar_QundA_Session] [text] NULL,
	[Kommentar_Interaktiver_Einsatz] [text] NULL,
	[Kommentar_gesamt] [text] NULL,
 CONSTRAINT [PK_MTT_03_2016_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTT_Bereichsleiter]    Script Date: 06.07.2018 11:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTT_Bereichsleiter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[ORG] [varchar](max) NULL,
	[Ort] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacht_der_Medien]    Script Date: 06.07.2018 11:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacht_der_Medien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Zugangscode] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Titel] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[Hausnummer] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Mobilfunknummer] [varchar](max) NULL,
	[Bemerkung] [varchar](max) NULL,
	[Liste] [varchar](max) NULL,
	[grussformel] [varchar](max) NULL,
	[Nacht_der_Medien_Ticket_Berechtigung] [bit] NULL,
	[Nacht_der_Medien_Ticket_Bedarf] [bit] NULL,
	[Nacht_der_Medien_Ticket_Nummer] [varchar](max) NULL,
	[Nacht_der_Medien_VIP_Ticket_Nummer] [varchar](max) NULL,
	[Teilnahme] [bit] NULL,
	[Rueckmeldung] [bit] NULL,
	[aktiv] [bit] NULL,
	[Deadline] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[Bemerkung_Hotline] [varchar](max) NULL,
	[Anwesend] [bit] NULL,
	[Zeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_Nacht_der_Medien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacht_der_Medien_Export_Liste]    Script Date: 06.07.2018 11:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacht_der_Medien_Export_Liste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](max) NULL,
 CONSTRAINT [PK_Nacht_der_Medien_Export_Liste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacht_der_Medien_Liste_Ursprung]    Script Date: 06.07.2018 11:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacht_der_Medien_Liste_Ursprung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Zugangscode] [varchar](max) NULL,
 CONSTRAINT [PK_Nacht_der_Medien_Liste_Ursprung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacht_der_Medien_offene_Tickets]    Script Date: 06.07.2018 11:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacht_der_Medien_offene_Tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](max) NULL,
 CONSTRAINT [PK_Nacht_der_Medien_offene_Tickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacht_der_Medien_Tickets]    Script Date: 06.07.2018 11:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacht_der_Medien_Tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](max) NULL,
	[Vergeben] [bit] NULL,
	[Teilnehmer_Code] [varchar](max) NULL,
 CONSTRAINT [PK_Nacht_der_Medien_Tickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacht_der_Medien_VIP_Tickets]    Script Date: 06.07.2018 11:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacht_der_Medien_VIP_Tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](max) NULL,
	[Vergeben] [bit] NULL,
	[Teilnehmer_Code] [varchar](max) NULL,
	[individualisiert] [bit] NULL,
 CONSTRAINT [PK_Nacht_der_Medien_VIP_Tickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacht_der_Medien_Zusatztickets]    Script Date: 06.07.2018 11:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacht_der_Medien_Zusatztickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](max) NULL,
	[Genutzt] [bit] NULL,
 CONSTRAINT [PK_Nacht_der_Medien_Zusatztickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nacht_der_nedien_admin_login]    Script Date: 06.07.2018 11:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nacht_der_nedien_admin_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
 CONSTRAINT [PK_nacht_der_nedien_admin_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_York_2016]    Script Date: 06.07.2018 11:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_York_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[ESTA] [bit] NULL,
	[Riesenrad] [bit] NULL,
	[whatsapp] [bit] NULL,
	[whatsappnummer] [varchar](max) NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl_1] [varchar](max) NULL,
	[programm_auswahl_1_alternative] [varchar](max) NULL,
	[programm_auswahl_2] [varchar](max) NULL,
	[programm_auswahl_2_alternative] [varchar](max) NULL,
	[programm_auswahl_3] [varchar](max) NULL,
	[programm_auswahl_3_alternative] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_New_York_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_York_2016_Plaetze]    Script Date: 06.07.2018 11:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_York_2016_Plaetze](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Programm] [varchar](max) NULL,
	[Plaetze] [int] NULL,
 CONSTRAINT [PK_New_York_2016_Plaetze] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Aktionsbericht]    Script Date: 06.07.2018 11:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Team] [varchar](max) NULL,
	[Promoter1] [varchar](max) NULL,
	[Promoter2] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Elemente_Tuer] [bit] NULL,
	[Elemente_Bauchladen] [bit] NULL,
	[Elemente_Promotion_Theke] [bit] NULL,
	[Elemente_Tablet_Staender] [bit] NULL,
	[Elemente_Huawei_Mate_S] [bit] NULL,
	[Elemente_Huawei_Mate_T1] [bit] NULL,
	[give_away_1_Bestand_Anfang] [int] NULL,
	[give_away_1_Ausgabe_Tag1] [int] NULL,
	[give_away_1_Ausgabe_Tag2] [int] NULL,
	[give_away_1_Bestand_Ende] [int] NULL,
	[give_away_2_Bestand_Anfang] [int] NULL,
	[give_away_2_Ausgabe_Tag1] [int] NULL,
	[give_away_2_Ausgabe_Tag2] [int] NULL,
	[give_away_2_Bestand_Ende] [int] NULL,
	[give_away_3_Bestand_Anfang] [int] NULL,
	[give_away_3_Ausgabe_Tag1] [int] NULL,
	[give_away_3_Ausgabe_Tag2] [int] NULL,
	[give_away_3_Bestand_Ende] [int] NULL,
	[give_away_4_Bestand_Anfang] [int] NULL,
	[give_away_4_Ausgabe_Tag1] [int] NULL,
	[give_away_4_Ausgabe_Tag2] [int] NULL,
	[give_away_4_Bestand_Ende] [int] NULL,
	[give_away_5_Bestand_Anfang] [int] NULL,
	[give_away_5_Ausgabe_Tag1] [int] NULL,
	[give_away_5_Ausgabe_Tag2] [int] NULL,
	[give_away_5_Bestand_Ende] [int] NULL,
	[Standplatz_Outdoor] [bit] NULL,
	[Standplatz_Outdoor_Name] [varchar](max) NULL,
	[Standplatz_Outdoor_Flaeche_privat] [bit] NULL,
	[Standplatz_Outdoor_Flaeche_privat_Groesse] [int] NULL,
	[Standplatz_Outdoor_Flaeche_staedtisch] [bit] NULL,
	[Standplatz_Outdoor_Flaeche_staedtisch_Groesse] [int] NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1] [int] NULL,
	[Frequenz_Tag2] [int] NULL,
	[Tag1_Beratung_Huawei_P8] [int] NULL,
	[Tag1_Verkauf_Huawei_P8] [int] NULL,
	[Tag1_Beratung_Huawei_Mate_S] [int] NULL,
	[Tag1_Verkauf_Huawei_Mate_S] [int] NULL,
	[Tag1_Beratung_Huawei_Smartwatch] [int] NULL,
	[Tag1_Verkauf_Huawei_Smartwatch] [int] NULL,
	[Tag2_Beratung_Huawei_P8] [int] NULL,
	[Tag2_Verkauf_Huawei_P8] [int] NULL,
	[Tag2_Beratung_Huawei_Mate_S] [int] NULL,
	[Tag2_Verkauf_Huawei_Mate_S] [int] NULL,
	[Tag2_Beratung_Huawei_Smartwatch] [int] NULL,
	[Tag2_Verkauf_Huawei_Smartwatch] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
 CONSTRAINT [PK_Ostern_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Gewinne_Team1]    Script Date: 06.07.2018 11:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Gewinne_Team1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](50) NULL,
	[ausgegeben] [bit] NULL,
	[Datum] [date] NULL,
 CONSTRAINT [PK_Ostern_Gewinne_Team1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Gewinne_Team2]    Script Date: 06.07.2018 11:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Gewinne_Team2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](50) NULL,
	[ausgegeben] [bit] NULL,
	[Datum] [date] NULL,
 CONSTRAINT [PK_Ostern_Gewinne_Team2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Gewinne_Team3]    Script Date: 06.07.2018 11:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Gewinne_Team3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](50) NULL,
	[ausgegeben] [bit] NULL,
	[Datum] [date] NULL,
 CONSTRAINT [PK_Ostern_Gewinne_Team3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Gewinne_Team4]    Script Date: 06.07.2018 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Gewinne_Team4](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinn] [varchar](50) NULL,
	[ausgegeben] [bit] NULL,
	[Datum] [date] NULL,
 CONSTRAINT [PK_Ostern_Gewinne_Team4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Gewinner]    Script Date: 06.07.2018 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Gewinner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Mobilfunknummer] [varchar](max) NULL,
	[Glueckseinummer] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
 CONSTRAINT [PK_Ostern_Gewinner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Standorte]    Script Date: 06.07.2018 11:25:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [date] NULL,
	[Tag2] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_Ostern_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostern_Team_IP]    Script Date: 06.07.2018 11:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostern_Team_IP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Team] [varchar](50) NULL,
	[IP_Adresse] [varchar](50) NULL,
 CONSTRAINT [PK_Ostern_Team_IP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pathfinder_Einladung]    Script Date: 06.07.2018 11:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pathfinder_Einladung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
	[Vorgesetzter] [varchar](max) NULL,
	[Gruppe] [varchar](50) NULL,
	[Hash] [varchar](max) NULL,
	[Anmeldung_Anrede] [varchar](50) NULL,
	[Anmeldung_Vorname] [varchar](max) NULL,
	[Anmeldung_Nachname] [varchar](max) NULL,
	[Anmeldung_EMail] [varchar](max) NULL,
	[Anmeldung_Bereich] [varchar](max) NULL,
	[Anmeldung_Vorgesetzter] [varchar](max) NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Warteliste] [bit] NOT NULL,
	[Absage] [bit] NOT NULL,
	[Shuttle] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_Pathfinder_Einladung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pathfinder_Einladung_2018]    Script Date: 06.07.2018 11:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pathfinder_Einladung_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
	[Vorgesetzter] [varchar](max) NULL,
	[Gruppe] [varchar](50) NULL,
	[Hash] [varchar](max) NULL,
	[Anmeldung_Anrede] [varchar](50) NULL,
	[Anmeldung_Vorname] [varchar](max) NULL,
	[Anmeldung_Nachname] [varchar](max) NULL,
	[Anmeldung_EMail] [varchar](max) NULL,
	[Anmeldung_Bereich] [varchar](max) NULL,
	[Anmeldung_Vorgesetzter] [varchar](max) NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Warteliste] [bit] NOT NULL,
	[Absage] [bit] NOT NULL,
	[Shuttle] [varchar](max) NULL,
	[Hotel] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_Pathfinder_Einladung_2018] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pathfinder_login]    Script Date: 06.07.2018 11:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pathfinder_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
 CONSTRAINT [PK_pathfinder_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pathfinder2017_Feedback]    Script Date: 06.07.2018 11:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pathfinder2017_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pathfinder_id] [int] NULL,
	[Entwicklung] [text] NULL,
	[Message1] [text] NULL,
	[Message2] [text] NULL,
	[Message3] [text] NULL,
	[Mitgenommen] [text] NULL,
	[Übernahme] [text] NULL,
	[Kontakte] [int] NULL,
	[Teilnahme] [int] NULL,
	[Teilnahme_aendern] [text] NULL,
	[Einladung] [text] NULL,
	[Location_tempodrom] [int] NULL,
	[Location_NH] [int] NULL,
	[Abendveranstaltung] [int] NULL,
	[Orga_online] [int] NULL,
	[Orga_microsite] [int] NULL,
	[Orga_hotline] [int] NULL,
	[Orga_Buchung_NH] [int] NULL,
	[Orga_betreuung] [int] NULL,
	[Feedback_erfolgreich] [varchar](max) NULL,
	[Feedback_datum] [datetime] NULL,
 CONSTRAINT [PK_Pathfinder2017_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pathfinder2018_Feedback]    Script Date: 06.07.2018 11:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pathfinder2018_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pathfinder_id] [int] NULL,
	[Entwicklung] [text] NULL,
	[Message1] [text] NULL,
	[Message2] [text] NULL,
	[Message3] [text] NULL,
	[Mitgenommen] [text] NULL,
	[Übernahme] [text] NULL,
	[Kontakte] [int] NULL,
	[Teilnahme] [int] NULL,
	[Teilnahme_aendern] [text] NULL,
	[Einladung] [text] NULL,
	[Location_tempodrom] [int] NULL,
	[Location_NH] [int] NULL,
	[Abendveranstaltung] [int] NULL,
	[Orga_online] [int] NULL,
	[Orga_microsite] [int] NULL,
	[Orga_hotline] [int] NULL,
	[Orga_betreuung] [int] NULL,
	[Feedback_erfolgreich] [varchar](max) NULL,
	[Feedback_datum] [datetime] NULL,
 CONSTRAINT [PK_Pathfinder2018_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photobooth]    Script Date: 06.07.2018 11:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photobooth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Name_Bild] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Hash_vergeben] [int] NULL,
	[Device] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
 CONSTRAINT [PK_Photobooth] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ready_Business_Day_2018_admin_login]    Script Date: 06.07.2018 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ready_Business_Day_2018_admin_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
 CONSTRAINT [PK_Ready_Business_Day_2018_admin_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ready_Business_Day_2018_Einladung]    Script Date: 06.07.2018 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ready_Business_Day_2018_Einladung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Titel] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Funktion] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Mobil] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[ASP] [varchar](max) NULL,
	[ASP_Telefon] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Anmeldung_Anrede] [varchar](50) NULL,
	[Anmeldung_Titel] [varchar](50) NULL,
	[Anmeldung_Vorname] [varchar](max) NULL,
	[Anmeldung_Nachname] [varchar](max) NULL,
	[Anmeldung_Firma] [varchar](max) NULL,
	[Anmeldung_EMail] [varchar](max) NULL,
	[Anmeldung_Mobil] [varchar](max) NULL,
	[Ersatz_Anrede] [varchar](50) NULL,
	[Ersatz_Titel] [varchar](50) NULL,
	[Ersatz_Vorname] [varchar](max) NULL,
	[Ersatz_Nachname] [varchar](max) NULL,
	[Ersatz_Firma] [varchar](max) NULL,
	[Ersatz_EMail] [varchar](max) NULL,
	[Ersatz_Mobil] [varchar](max) NULL,
	[Digitale_Ziele] [text] NULL,
	[Besonderes_Interesse] [text] NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Versendet] [bit] NOT NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
	[Ersatzperson_benannt] [bit] NOT NULL,
	[Ersatzperson_versendet] [bit] NOT NULL,
 CONSTRAINT [PK_Ready_Business_Day_2018_Einladung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ready_Business_Day_2018_Feedback]    Script Date: 06.07.2018 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ready_Business_Day_2018_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rbd_id] [int] NULL,
	[Ablauf] [int] NULL,
	[Praesentationen] [int] NULL,
	[Vortrag] [int] NULL,
	[Produkte] [int] NULL,
	[Rahmenprogramm] [int] NULL,
	[Catering] [int] NULL,
	[Veranstaltungen] [bit] NULL,
	[Anregungen] [text] NULL,
	[Feedback_erfolgreich] [varchar](max) NULL,
	[Feedback_Datum] [varchar](max) NULL,
 CONSTRAINT [PK_Ready_Business_Day_2018_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retail_Forum_2017_admin_login]    Script Date: 06.07.2018 11:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retail_Forum_2017_admin_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
 CONSTRAINT [PK_Retail_Forum_2017_admin_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retail_Forum_2017_Einladung]    Script Date: 06.07.2018 11:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retail_Forum_2017_Einladung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Titel] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Land] [varchar](max) NULL,
	[Position] [varchar](max) NULL,
	[Mobil] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Anmeldung_Anrede] [varchar](50) NULL,
	[Anmeldung_Titel] [varchar](50) NULL,
	[Anmeldung_Vorname] [varchar](max) NULL,
	[Anmeldung_Nachname] [varchar](max) NULL,
	[Anmeldung_Land] [varchar](max) NULL,
	[Anmeldung_Position] [varchar](max) NULL,
	[Anmeldung_Mobil] [varchar](max) NULL,
	[Anmeldung_EMail] [varchar](max) NULL,
	[Anmeldung_Vegetarier] [varchar](max) NULL,
	[Anmeldung_Veganer] [varchar](max) NULL,
	[Anmeldung_kein_Schweinefleisch] [varchar](max) NULL,
	[Shuttle] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Teilnahme] [bit] NOT NULL,
	[Rueckmeldung] [bit] NOT NULL,
	[Versendet] [bit] NOT NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_Retail_Forum_Einladung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retail_Forum_2017_Feedback]    Script Date: 06.07.2018 11:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retail_Forum_2017_Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[retail_id] [int] NULL,
	[Question1] [varchar](max) NULL,
	[Question2] [varchar](max) NULL,
	[Question3] [int] NULL,
	[Question4] [varchar](max) NULL,
	[Question5] [varchar](max) NULL,
	[Abgeschlossen] [bit] NULL,
 CONSTRAINT [PK_Retail_Forum_2017_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sardinien_2017]    Script Date: 06.07.2018 11:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sardinien_2017](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[schiffstauglich] [bit] NULL,
	[Riesenrad] [bit] NULL,
	[whatsapp] [bit] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[abflug_text] [varchar](max) NULL,
	[abflug_bemerkung] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Sardinien_2017] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_2011]    Script Date: 06.07.2018 11:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_2011](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[position] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sko_2012_noshow]    Script Date: 06.07.2018 11:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sko_2012_noshow](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sko_2013_kreditkarten]    Script Date: 06.07.2018 11:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sko_2013_kreditkarten](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[kreditkarte_unternehmen] [varchar](max) NULL,
	[kreditkarte_inhaber] [varchar](max) NULL,
	[kreditkarte_nummer] [varchar](max) NULL,
	[kreditkarte_gueltig_bis] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[pausenarragement] [bit] NULL,
	[shuttle_pause] [bit] NULL,
	[allergien] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sko_2013_reminder]    Script Date: 06.07.2018 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sko_2013_reminder](
	[id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[strasse] [varchar](255) NULL,
	[plz] [varchar](255) NULL,
	[ort] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[mobil] [varchar](255) NULL,
	[abteilungskuerzel] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[personalnummer] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[kostenstelle] [varchar](max) NULL,
	[geburtsdatum] [varchar](255) NULL,
	[teilnahme] [bit] NULL,
	[abendveranstaltung] [bit] NULL,
	[part1] [bit] NULL,
	[flug] [bit] NULL,
	[bahn] [bit] NULL,
	[pkw] [bit] NULL,
	[flugort] [varchar](255) NULL,
	[part2] [bit] NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[zimmer] [varchar](255) NULL,
	[zusammen_mit_vorname] [varchar](255) NULL,
	[zusammen_mit_nachname] [varchar](max) NULL,
	[kreditkarte_unternehmen] [varchar](max) NULL,
	[kreditkarte_inhaber] [varchar](max) NULL,
	[kreditkarte_nummer] [varchar](max) NULL,
	[kreditkarte_gueltig_bis] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[pausenarragement] [bit] NULL,
	[shuttle_pause] [bit] NULL,
	[allergien] [text] NULL,
	[part3] [bit] NULL,
	[verifizierung] [varchar](255) NULL,
	[ip_verifizierung] [varchar](255) NULL,
	[hotel] [varchar](max) NULL,
	[Expr1] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sko_2014_email]    Script Date: 06.07.2018 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sko_2014_email](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[abteilung] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_Befragung_2013]    Script Date: 06.07.2018 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_Befragung_2013](
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[kunde_positiv] [text] NULL,
	[kunde_negativ] [text] NULL,
	[kollegen_positiv] [text] NULL,
	[kollegen_negativ] [text] NULL,
	[erwartung] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sko_enterprise_2013_anreisen]    Script Date: 06.07.2018 11:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sko_enterprise_2013_anreisen](
	[id] [int] NULL,
	[anrede] [varchar](255) NULL,
	[vorname] [varchar](255) NULL,
	[nachname] [varchar](255) NULL,
	[abteilung] [varchar](255) NULL,
	[niederlassung] [varchar](255) NULL,
	[funktion] [varchar](max) NULL,
	[per] [varchar](4) NOT NULL,
	[anreise] [varchar](255) NULL,
	[abreise] [varchar](255) NULL,
	[hotel] [varchar](max) NULL,
	[hotel_bemerkung] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_Fragen]    Script Date: 06.07.2018 11:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_Fragen](
	[id] [int] NOT NULL,
	[UserID] [int] NULL,
	[vision] [varchar](50) NULL,
	[ziele] [varchar](50) NULL,
	[massnahmen] [varchar](50) NULL,
	[produkte] [varchar](50) NULL,
	[marke] [varchar](50) NULL,
	[prozesse] [varchar](50) NULL,
	[verantwortlichkeiten] [varchar](50) NULL,
	[tkmarkt] [varchar](50) NULL,
	[statements] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_Reminder]    Script Date: 06.07.2018 11:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_Reminder](
	[id] [int] NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL,
	[standort] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[stellenbezeichnung] [varchar](50) NOT NULL,
	[vip_status] [bit] NULL,
	[liste] [varchar](50) NOT NULL,
	[passwort] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[teilnahme] [bit] NULL,
	[strasse] [varchar](50) NULL,
	[plz] [varchar](5) NULL,
	[ort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobil] [varchar](50) NULL,
	[kostenstelle] [varchar](50) NULL,
	[kreditkarte_firma] [varchar](50) NULL,
	[kreditkarte_nummer] [varchar](50) NULL,
	[kreditkarte_inhaber] [varchar](50) NULL,
	[gueltig_bis] [varchar](50) NULL,
	[personalausweis_nr] [varchar](50) NULL,
	[nationalitaet] [varchar](50) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[raucher] [bit] NULL,
	[voranreise] [bit] NULL,
	[vegetarier] [bit] NULL,
	[anreise_per] [varchar](50) NULL,
	[anreise_transfer] [varchar](50) NULL,
	[anreise_ab] [varchar](50) NULL,
	[anreise_nummer] [varchar](50) NULL,
	[anreise_datum] [varchar](50) NULL,
	[anreise_uhrzeit] [varchar](50) NULL,
	[abreise_per] [varchar](50) NULL,
	[abreise_transfer] [varchar](50) NULL,
	[abreise_ziel] [varchar](50) NULL,
	[abreise_nummer] [varchar](50) NULL,
	[abreise_datum] [varchar](50) NULL,
	[abreise_uhrzeit] [varchar](50) NULL,
	[zimmer] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[hotel] [varchar](50) NULL,
	[erstkontakt] [datetime] NULL,
	[ip_erstkontakt] [varchar](50) NULL,
	[anmeldung_erfolgt] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_Teilnehmer]    Script Date: 06.07.2018 11:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_Teilnehmer](
	[id] [int] NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL,
	[standort] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[stellenbezeichnung] [varchar](50) NOT NULL,
	[vip_status] [bit] NULL,
	[liste] [varchar](50) NOT NULL,
	[passwort] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[teilnahme] [bit] NULL,
	[strasse] [varchar](50) NULL,
	[plz] [varchar](5) NULL,
	[ort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobil] [varchar](50) NULL,
	[kostenstelle] [varchar](50) NULL,
	[kreditkarte_firma] [varchar](50) NULL,
	[kreditkarte_nummer] [varchar](50) NULL,
	[kreditkarte_inhaber] [varchar](50) NULL,
	[gueltig_bis] [varchar](50) NULL,
	[personalausweis_nr] [varchar](50) NULL,
	[nationalitaet] [varchar](50) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[raucher] [bit] NULL,
	[voranreise] [bit] NULL,
	[vegetarier] [bit] NULL,
	[anreise_per] [varchar](50) NULL,
	[anreise_transfer] [varchar](50) NULL,
	[anreise_ab] [varchar](50) NULL,
	[anreise_nummer] [varchar](50) NULL,
	[anreise_datum] [varchar](50) NULL,
	[anreise_uhrzeit] [varchar](50) NULL,
	[abreise_per] [varchar](50) NULL,
	[abreise_transfer] [varchar](50) NULL,
	[abreise_ziel] [varchar](50) NULL,
	[abreise_nummer] [varchar](50) NULL,
	[abreise_datum] [varchar](50) NULL,
	[abreise_uhrzeit] [varchar](50) NULL,
	[zimmer] [varchar](50) NULL,
	[bemerkung] [text] NULL,
	[hotel] [varchar](50) NULL,
	[hotel14_05] [varchar](50) NULL,
	[hotel15_05] [varchar](50) NULL,
	[erstkontakt] [datetime] NULL,
	[ip_erstkontakt] [varchar](50) NULL,
	[anmeldung_erfolgt] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_Teilnehmer_alt]    Script Date: 06.07.2018 11:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_Teilnehmer_alt](
	[id] [int] NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL,
	[standort] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[stellenbezeichnung] [varchar](50) NOT NULL,
	[vip_status] [bit] NULL,
	[liste] [varchar](50) NOT NULL,
	[passwort] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[teilnahme] [bit] NULL,
	[strasse] [varchar](50) NULL,
	[plz] [varchar](5) NULL,
	[ort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobil] [varchar](50) NULL,
	[kostenstelle] [varchar](50) NULL,
	[kreditkarte_firma] [varchar](50) NULL,
	[kreditkarte_nummer] [varchar](50) NULL,
	[kreditkarte_inhaber] [varchar](50) NULL,
	[gueltig_bis] [varchar](50) NULL,
	[personalausweis_nr] [varchar](50) NULL,
	[nationalitaet] [varchar](50) NULL,
	[raucher] [bit] NULL,
	[voranreise] [bit] NULL,
	[vegetarier] [bit] NULL,
	[anreise_per] [varchar](50) NULL,
	[anreise_transfer] [varchar](50) NULL,
	[anreise_ab] [varchar](50) NULL,
	[anreise_nummer] [varchar](50) NULL,
	[anreise_datum] [varchar](50) NULL,
	[anreise_uhrzeit] [varchar](50) NULL,
	[abreise] [varchar](50) NULL,
	[abreise_transfer] [varchar](50) NULL,
	[vision] [bit] NULL,
	[ziele] [bit] NULL,
	[massnahmen] [bit] NULL,
	[produkte] [bit] NULL,
	[marke] [bit] NULL,
	[prozesse] [bit] NULL,
	[verantwortlichkeiten] [bit] NULL,
	[tk_markt] [bit] NULL,
	[sonstiges] [varchar](50) NULL,
	[zimmer] [varchar](50) NULL,
	[bemerkung] [varchar](50) NULL,
	[erstkontakt] [datetime] NULL,
	[ip_erstkontakt] [varchar](50) NULL,
	[anmeldung_erfolgt] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_Teilnehmer_BACK]    Script Date: 06.07.2018 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_Teilnehmer_BACK](
	[id] [int] NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NOT NULL,
	[nachname] [varchar](50) NOT NULL,
	[standort] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[stellenbezeichnung] [varchar](50) NOT NULL,
	[vip_status] [bit] NULL,
	[liste] [varchar](50) NOT NULL,
	[passwort] [varchar](50) NOT NULL,
	[region] [varchar](50) NOT NULL,
	[strasse] [varchar](50) NULL,
	[plz] [varchar](5) NULL,
	[ort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobil] [varchar](50) NULL,
	[personal_nr] [varchar](50) NULL,
	[kreditkarte_firma] [varchar](50) NULL,
	[kreditkarte_nummer] [varchar](50) NULL,
	[kreditkarte_inhaber] [varchar](50) NULL,
	[gueltig_bis] [varchar](50) NULL,
	[personalausweis_nr] [varchar](50) NULL,
	[nationalitaet] [varchar](50) NULL,
	[raucher] [bit] NULL,
	[voranreise] [bit] NULL,
	[vegetarier] [bit] NULL,
	[anreise] [varchar](50) NULL,
	[anreise_transfer] [varchar](50) NULL,
	[abreise] [varchar](50) NULL,
	[abreise_transfer] [varchar](50) NULL,
	[vision] [bit] NULL,
	[ziele] [bit] NULL,
	[massnahmen] [bit] NULL,
	[produkte] [bit] NULL,
	[marke] [bit] NULL,
	[prozesse] [bit] NULL,
	[verantwortlichkeiten] [bit] NULL,
	[tk_markt] [bit] NULL,
	[sonstiges] [varchar](50) NULL,
	[zimmer] [varchar](50) NULL,
	[bemerkung] [varchar](50) NULL,
	[erstkontakt] [datetime] NULL,
	[ip_erstkontakt] [varchar](50) NULL,
	[anmeldung_erfolgt] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO_Versendung]    Script Date: 06.07.2018 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO_Versendung](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[SKO_2013] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SKO2011_Liste_final]    Script Date: 06.07.2018 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SKO2011_Liste_final](
	[abteilung] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[nachname] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sko2013_administration]    Script Date: 06.07.2018 11:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sko2013_administration](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NOT NULL,
	[nachname] [varchar](max) NULL,
	[passwort] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spring_2016]    Script Date: 06.07.2018 11:25:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spring_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_Spring_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spring_Versendung]    Script Date: 06.07.2018 11:25:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spring_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
 CONSTRAINT [PK_Spring_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Starwars_Aktionsbericht]    Script Date: 06.07.2018 11:25:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Starwars_Aktionsbericht](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Standort_id] [int] NULL,
	[Team] [varchar](max) NULL,
	[Promoter2] [varchar](max) NULL,
	[aktion_von] [date] NULL,
	[aktion_bis] [date] NULL,
	[Aktionszeit_Tag1] [varchar](max) NULL,
	[Aktionszeit_Tag2] [varchar](max) NULL,
	[Aktionszeit_Tag3] [varchar](max) NULL,
	[Elemente_bb8] [bit] NULL,
	[Elemente_lg_smartphone] [bit] NULL,
	[Elemente_huawei_tablet] [bit] NULL,
	[Standplatz_Indoor] [bit] NULL,
	[Standplatz_Indoor_Name] [varchar](max) NULL,
	[Standplatz_Bemerkung] [text] NULL,
	[Frequenz_Tag1] [int] NULL,
	[Frequenz_Tag2] [int] NULL,
	[Frequenz_Tag3] [int] NULL,
	[Beurteilung_Mitbewerber] [text] NULL,
	[Beurteilung_Publikum] [text] NULL,
	[Beurteilung_Anmerkungen] [text] NULL,
	[Beurteilung_Kompetenz] [int] NULL,
	[Beurteilung_Equipment] [int] NULL,
	[Beurteilung_Zusammenarbeit] [int] NULL,
	[Beurteilung_Resonanz] [int] NULL,
	[Publikumsinteresse] [text] NULL,
	[Resonanz_Gewinnspiele] [text] NULL,
 CONSTRAINT [PK_Starwars_Aktionsbericht] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Starwars_Gewinner]    Script Date: 06.07.2018 11:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Starwars_Gewinner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Mobilfunknummer] [varchar](max) NULL,
	[IPAdresse] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
 CONSTRAINT [PK_Starwars_Gewinner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Starwars_Standorte]    Script Date: 06.07.2018 11:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Starwars_Standorte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laufende_nummer] [int] NULL,
	[Stadt] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Tag1] [date] NULL,
	[Tag2] [date] NULL,
	[Tag3] [date] NULL,
	[freigegeben] [bit] NULL,
	[Team] [varchar](max) NULL,
 CONSTRAINT [PK_Starwars_Standorte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suedafrika_2014]    Script Date: 06.07.2018 11:25:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suedafrika_2014](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[sitzplatz] [varchar](max) NULL,
	[flug_sitznachbar_vorname] [varchar](max) NULL,
	[flug_sitznachbar_nachname] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[Lodge] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[programm_alternative] [varchar](max) NULL,
	[quad_erfahrung] [varchar](max) NULL,
	[anreise_per_kapstadt] [varchar](max) NULL,
	[programm_auswahl_kapstadt] [varchar](max) NULL,
	[programm_alternative_kapstadt] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Suedafrika_2014] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teilnehmer Granada]    Script Date: 06.07.2018 11:25:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teilnehmer Granada](
	[ID] [int] NOT NULL,
	[anrede] [nvarchar](255) NULL,
	[vorname] [nvarchar](255) NULL,
	[nachname] [nvarchar](255) NULL,
	[E-Mail] [nvarchar](255) NULL,
	[Funktion] [nvarchar](255) NULL,
	[NL/Region] [nvarchar](255) NULL,
	[Unternehmen] [nvarchar](255) NULL,
	[Team] [nvarchar](255) NULL,
	[passwort] [nvarchar](255) NULL,
	[strasse] [nvarchar](255) NULL,
	[plz] [nvarchar](255) NULL,
	[ort] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mobil] [nvarchar](255) NULL,
	[personalausweis] [varchar](255) NULL,
	[nationalitaet] [varchar](255) NULL,
	[geburtsname] [varchar](255) NULL,
	[geburtsdatum] [varchar](50) NULL,
	[personalnummer] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[raucher] [bit] NULL,
	[zimmer] [bit] NULL,
	[zimmerpartner_vorname] [varchar](255) NULL,
	[zimmerpartner_nachname] [varchar](255) NULL,
	[bemerkungen] [text] NULL,
	[eingang] [datetime] NULL,
	[status] [varchar](50) NULL,
	[ip_erstkontakt] [varchar](15) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teilnehmer_GigaTV_Team1]    Script Date: 06.07.2018 11:25:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teilnehmer_GigaTV_Team1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [varchar](max) NULL,
	[Quiz_Punkte] [int] NULL,
	[EMail] [varchar](max) NULL,
 CONSTRAINT [PK_Teilnehmer_GigaTV_Team1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teilnehmer_Istanbul_2012]    Script Date: 06.07.2018 11:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teilnehmer_Istanbul_2012](
	[anrede] [varchar](50) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rueckflug] [varchar](max) NULL,
	[sitzplatzwunsch] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[raucher] [bit] NULL,
	[programm_samstag] [varchar](max) NULL,
	[regatta_shirt] [varchar](max) NULL,
	[tauchen_erfahrung] [varchar](max) NULL,
	[programm_sonntag] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teilnehmer_Namibia_2012]    Script Date: 06.07.2018 11:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teilnehmer_Namibia_2012](
	[anrede] [varchar](50) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[sitzplatzwunsch] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[inlandsflug] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[raucher] [bit] NULL,
	[programm] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[bemerkung] [text] NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL,
	[programm_namibia_vormittag] [varchar](max) NULL,
	[programm_namibia_nachmittag] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_Dubai_2011]    Script Date: 06.07.2018 11:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_Dubai_2011](
	[id] [int] NOT NULL,
	[jwb_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[reisepassnummer] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[doppelzimmerwunsch] [bit] NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[raucher] [bit] NULL,
	[hoehenangst] [bit] NULL,
	[programm] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[tshirtgroesse] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_Ibiza_2013]    Script Date: 06.07.2018 11:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_Ibiza_2013](
	[id] [int] NOT NULL,
	[jwb_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[sitzplatzwunsch] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[raucher] [bit] NULL,
	[programm] [varchar](max) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[sonstige_allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_Istanbul_2012]    Script Date: 06.07.2018 11:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_Istanbul_2012](
	[id] [int] NOT NULL,
	[jwb_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rueckflug] [varchar](max) NULL,
	[sitzplatzwunsch] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[raucher] [bit] NULL,
	[programm_samstag] [varchar](max) NULL,
	[regatta_shirt] [varchar](max) NULL,
	[tauchen_erfahrung] [varchar](max) NULL,
	[programm_sonntag] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_Istanbul_2012_Export_Katrin]    Script Date: 06.07.2018 11:25:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_Istanbul_2012_Export_Katrin](
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rueckflug] [varchar](max) NULL,
	[Intercom_CWT] [varchar](1) NOT NULL,
	[Hinflug] [varchar](1) NOT NULL,
	[Rückflug] [varchar](1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_Las_Vegas_2013]    Script Date: 06.07.2018 11:25:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_Las_Vegas_2013](
	[id] [int] NOT NULL,
	[jwb_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[sitzplatzwunsch] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[zimmer] [varchar](max) NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[programm_eins] [varchar](max) NULL,
	[programm_zwei] [varchar](max) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[sonstige_allergien] [bit] NULL,
	[allergien_text] [text] NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_Miami_2011]    Script Date: 06.07.2018 11:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_Miami_2011](
	[id] [int] NOT NULL,
	[jwb_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[reisepassnummer] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[sitzplatzreservierung] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[raucher] [bit] NULL,
	[hoehenangst] [bit] NULL,
	[doppelzimmerwunsch] [bit] NULL,
	[doppelzimmer_vorname] [varchar](max) NULL,
	[doppelzimmer_nachname] [varchar](max) NULL,
	[tsa] [varchar](max) NULL,
	[tshirtgroesse] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[programmwahl] [varchar](max) NULL,
	[auswahl_getroffen] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_Namibia_2012]    Script Date: 06.07.2018 11:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_Namibia_2012](
	[id] [int] NOT NULL,
	[jwb_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[titel] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[personalnummer] [varchar](max) NULL,
	[miles_and_more] [varchar](max) NULL,
	[abteilungskuerzel] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[abflughafen] [varchar](max) NULL,
	[rueckflug] [varchar](max) NULL,
	[sitzplatzwunsch] [varchar](max) NULL,
	[inlandsflug] [varchar](max) NULL,
	[rail_and_fly] [bit] NULL,
	[bahnhof] [varchar](max) NULL,
	[verlaengerung] [bit] NULL,
	[raucher] [bit] NULL,
	[programm] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[fisch] [bit] NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[gelbfieberinfo_bestaetigt] [bit] NULL,
	[haftungsausschluss] [bit] NULL,
	[gewichtsbeschraenkung] [bit] NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL,
	[programm_namibia_vormittag] [varchar](max) NULL,
	[programm_namibia_nachmittag] [varchar](max) NULL,
	[anmeldedatum_programm_namibia] [varchar](max) NULL,
	[angemeldet_programm_namibia] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TN_soma_bay_2011]    Script Date: 06.07.2018 11:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TN_soma_bay_2011](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[geburtsname] [varchar](max) NULL,
	[reisepassnummer] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[firma] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[niederlassung_strasse] [varchar](max) NULL,
	[niederlassung_plz] [varchar](max) NULL,
	[niederlassung_ort] [varchar](max) NULL,
	[vegetarier] [bit] NULL,
	[raucher] [bit] NULL,
	[flughafen] [varchar](max) NULL,
	[programm_tag1] [varchar](max) NULL,
	[programm_tag2] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NULL,
	[teilnahme] [bit] NULL,
	[passwort] [varchar](max) NULL,
	[vorname_login] [varchar](max) NULL,
	[nachname_login] [varchar](max) NULL,
	[anrede_login] [varchar](max) NULL,
	[email_login] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topteam]    Script Date: 06.07.2018 11:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topteam](
	[id] [int] NOT NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopTeam2011]    Script Date: 06.07.2018 11:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopTeam2011](
	[id] [int] NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_Mailversendung]    Script Date: 06.07.2018 11:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_Mailversendung](
	[id] [int] NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tuerkei2012_Teilnehmer]    Script Date: 06.07.2018 11:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tuerkei2012_Teilnehmer](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](5) NULL,
	[ort] [varchar](50) NULL,
	[mobil] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[personalausweisnummer] [varchar](max) NULL,
	[gueltigkeit] [varchar](50) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsname] [varchar](max) NULL,
	[versand_firma] [varchar](max) NULL,
	[versand_strasse] [varchar](max) NULL,
	[versand_plz] [varchar](5) NULL,
	[versand_ort] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[passwort] [varchar](50) NULL,
	[Anmeldung_erfolgt] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[raucher] [bit] NULL,
	[absage] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versand_Feedback]    Script Date: 06.07.2018 11:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versand_Feedback](
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versand_hundert_prozent]    Script Date: 06.07.2018 11:25:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versand_hundert_prozent](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versand_topteam]    Script Date: 06.07.2018 11:25:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versand_topteam](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[abteilung] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vertriebsleiter]    Script Date: 06.07.2018 11:25:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vertriebsleiter](
	[id] [int] NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vodafone_swipe]    Script Date: 06.07.2018 11:25:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vodafone_swipe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[fertig] [bit] NOT NULL,
 CONSTRAINT [PK_vodafone_swipe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vodafone_tresor_gewinne]    Script Date: 06.07.2018 11:25:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vodafone_tresor_gewinne](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinnnummer] [int] NULL,
	[Datum] [date] NULL,
	[aktiv] [bit] NULL,
	[benutzt] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vodafone_tresor_nummern]    Script Date: 06.07.2018 11:25:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vodafone_tresor_nummern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinnnummer] [int] NULL,
	[zaehler] [int] NOT NULL,
 CONSTRAINT [PK_vodafone_tresor_nummern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wien_2016]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wien_2016](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enterprise_id] [int] NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[niederlassung] [varchar](max) NULL,
	[Abteilungskuerzel] [varchar](max) NULL,
	[Personalnummer] [varchar](max) NULL,
	[teilnahme] [bit] NULL,
	[ausweis_anrede] [varchar](max) NULL,
	[ausweis_titel] [varchar](max) NULL,
	[ausweis_vorname] [varchar](max) NULL,
	[ausweis_nachname] [varchar](max) NULL,
	[ausweis_strasse] [varchar](max) NULL,
	[ausweis_plz] [varchar](max) NULL,
	[ausweis_ort] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[einreisedokument] [varchar](max) NULL,
	[einreisedokument_nummer] [varchar](max) NULL,
	[einreisedokument_ort] [varchar](max) NULL,
	[einreisedokument_datum] [varchar](max) NULL,
	[gueltig_bis] [varchar](max) NULL,
	[nationalitaet] [varchar](max) NULL,
	[geburtsdatum] [varchar](max) NULL,
	[versand_an] [varchar](max) NULL,
	[notfall_vorname] [varchar](max) NULL,
	[notfall_nachname] [varchar](max) NULL,
	[notfall_telefon] [varchar](max) NULL,
	[koerpergroesse] [varchar](50) NULL,
	[koerpergewicht] [varchar](50) NULL,
	[schuhgroesse] [varchar](50) NULL,
	[kleidergroesse] [varchar](50) NULL,
	[vegetarier] [bit] NULL,
	[veganer] [bit] NULL,
	[fisch] [bit] NULL,
	[schalentiere] [bit] NULL,
	[raucher] [bit] NULL,
	[ersthelferausbildung] [bit] NULL,
	[unvertraeglichkeit_essen] [text] NULL,
	[schiffstauglich] [bit] NULL,
	[Riesenrad] [bit] NULL,
	[whatsapp] [bit] NULL,
	[part1] [bit] NOT NULL,
	[abflughafen] [varchar](max) NULL,
	[part2] [bit] NOT NULL,
	[programm_auswahl] [varchar](max) NULL,
	[part3] [bit] NOT NULL,
	[bemerkung] [text] NULL,
	[ip_adresse] [varchar](max) NULL,
	[anmeldedatum] [varchar](max) NULL,
	[angemeldet] [bit] NOT NULL,
	[anmeldung_frei] [bit] NOT NULL,
 CONSTRAINT [PK_Wien_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Giga_Goals_Kurzauswertung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Giga_Goals_Kurzauswertung]
AS
SELECT     TOP (100) PERCENT dbo.Giga_Goal_Standorte.laufende_nummer, dbo.Giga_Goal_Standorte.Stadt, dbo.Giga_Goal_Standorte.Team, dbo.Giga_Goal_Standorte.Strasse, 
                      dbo.Giga_Goal_Standorte.PLZ, dbo.Giga_Goal_Standorte.Ort, 
                      dbo.Giga_Goal_Aktionsbericht.Spiele_Tag1 + dbo.Giga_Goal_Aktionsbericht.Spiele_Tag2 + dbo.Giga_Goal_Aktionsbericht.Spiele_Tag3 AS Spiele, 
                      dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag1 + dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag2 + dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag3 AS Frequenz
FROM         dbo.Giga_Goal_Aktionsbericht INNER JOIN
                      dbo.Giga_Goal_Standorte ON dbo.Giga_Goal_Aktionsbericht.Standort_id = dbo.Giga_Goal_Standorte.id
ORDER BY dbo.Giga_Goal_Standorte.laufende_nummer
GO
/****** Object:  View [dbo].[Giga_Goals_Auswertung_Detail]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Giga_Goals_Auswertung_Detail]
AS
SELECT     dbo.Giga_Goal_Standorte.laufende_nummer, dbo.Giga_Goal_Standorte.Stadt, dbo.Giga_Goal_Standorte.Strasse, dbo.Giga_Goal_Standorte.PLZ, 
                      dbo.Giga_Goal_Standorte.Ort, dbo.Giga_Goal_Standorte.Tag1, dbo.Giga_Goal_Standorte.Tag2, dbo.Giga_Goal_Standorte.Tag3, dbo.Giga_Goal_Standorte.Team, 
                      dbo.Giga_Goal_Aktionsbericht.Spiele_Tag1, dbo.Giga_Goal_Aktionsbericht.Spiele_Tag2, dbo.Giga_Goal_Aktionsbericht.Spiele_Tag3, 
                      dbo.Giga_Goals_Kurzauswertung.Spiele, dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag1, dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag2, 
                      dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag3, dbo.Giga_Goals_Kurzauswertung.Frequenz
FROM         dbo.Giga_Goal_Aktionsbericht INNER JOIN
                      dbo.Giga_Goal_Standorte ON dbo.Giga_Goal_Aktionsbericht.Standort_id = dbo.Giga_Goal_Standorte.id INNER JOIN
                      dbo.Giga_Goals_Kurzauswertung ON dbo.Giga_Goal_Standorte.laufende_nummer = dbo.Giga_Goals_Kurzauswertung.laufende_nummer
GO
/****** Object:  View [dbo].[sko2015_export_bahn]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2015_export_bahn]
AS
SELECT     id, boarding AS anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, funktion, '' AS [Alter], bemerkung, niederlassung, 'Bahn' AS Anreiseart, vegetarier, allergien_text, strasse, 
                      ' ' AS Hausnummer, plz, ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (bahn = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id NOT IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_tagung)) AND (enterprise_id NOT IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
GO
/****** Object:  View [dbo].[sko2015_export_flug]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2015_export_flug]
AS
SELECT     id, boarding AS anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, funktion, '' AS [Alter], bemerkung, niederlassung, 'Flug' AS Anreiseart, vegetarier, allergien_text, strasse, 
                      ' ' AS Hausnummer, plz, ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (flug = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id NOT IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_tagung)) AND (enterprise_id NOT IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
GO
/****** Object:  View [dbo].[sko2015_export_pkw]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2015_export_pkw]
AS
SELECT     id, boarding AS anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, funktion, '' AS [Alter], bemerkung, niederlassung, 'PKW' AS Anreiseart, vegetarier, allergien_text, strasse, 
                      ' ' AS Hausnummer, plz, ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (pkw = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id NOT IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_tagung)) AND (enterprise_id NOT IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
GO
/****** Object:  View [dbo].[export_tui_2015]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[export_tui_2015]
AS
SELECT ALL *
FROM         sko2015_export_pkw
UNION ALL
SELECT ALL *
FROM         sko2015_export_bahn
UNION ALL
SELECT     *
FROM         sko2015_export_flug 
GO
/****** Object:  View [dbo].[nachzuegler_bahn_2015]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_bahn_2015]
AS
SELECT     id, anreise, abreise, ' ' AS Kabinennummer, '' AS Kabinenkategorie, '' AS Kabinencode, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Bahn' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz,
                       ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (bahn = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_tagung))
GO
/****** Object:  View [dbo].[nachzuegler_flug_2015]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_flug_2015]
AS
SELECT     id, anreise, abreise, ' ' AS Kabinennummer, '' AS Kabinenkategorie, '' AS Kabinencode, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Flug' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (flug = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_tagung))
GO
/****** Object:  View [dbo].[nachzuegler_pkw_2015]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_pkw_2015]
AS
SELECT     id, anreise, abreise, ' ' AS Kabinennummer, '' AS Kabinenkategorie, '' AS Kabinencode, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'PKW' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (pkw = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_tagung))
GO
/****** Object:  View [dbo].[sko2015_nachzuegler]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2015_nachzuegler]
AS
SELECT ALL *
FROM         nachzuegler_pkw_2015
UNION ALL
SELECT ALL *
FROM         nachzuegler_bahn_2015
UNION ALL
SELECT     *
FROM         nachzuegler_flug_2015
GO
/****** Object:  View [dbo].[nachzuegler_bahn_2015_abend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_bahn_2015_abend]
AS
SELECT     id, boarding AS anreise, abreise, ' ' AS Kabinennummer, '' AS Kabinenkategorie, '' AS Kabinencode, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Bahn' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz,
                       ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (bahn = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
GO
/****** Object:  View [dbo].[nachzuegler_flug_2015_abend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_flug_2015_abend]
AS
SELECT     id, boarding AS anreise, abreise, ' ' AS Kabinennummer, '' AS Kabinenkategorie, '' AS Kabinencode, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Flug' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (flug = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
GO
/****** Object:  View [dbo].[nachzuegler_pkw_2015_abend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_pkw_2015_abend]
AS
SELECT     id, boarding AS anreise, abreise, ' ' AS Kabinennummer, '' AS Kabinenkategorie, '' AS Kabinencode, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'PKW' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2015
WHERE     (pkw = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (enterprise_id IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
GO
/****** Object:  View [dbo].[sko2015_nachzuegler_abend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2015_nachzuegler_abend]
AS
SELECT ALL *
FROM         nachzuegler_pkw_2015_abend
UNION ALL
SELECT ALL *
FROM         nachzuegler_bahn_2015_abend
UNION ALL
SELECT     *
FROM         nachzuegler_flug_2015_abend
GO
/****** Object:  View [dbo].[sko2014_export_bahn]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2014_export_bahn]
AS
SELECT     id, anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Bahn' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz,
                       ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2014
WHERE     (bahn = 1) AND (teilnahme = 1) AND (verifizierung = '1')
GO
/****** Object:  View [dbo].[sko2014_export_flug]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2014_export_flug]
AS
SELECT     id, anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Flug' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2014
WHERE     (flug = 1) AND (teilnahme = 1) AND (verifizierung = '1')
GO
/****** Object:  View [dbo].[sko2014_export_pkw]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2014_export_pkw]
AS
SELECT     id, anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'PKW' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2014
WHERE     (pkw = 1) AND (teilnahme = 1) AND (verifizierung = '1')
GO
/****** Object:  View [dbo].[export_tui]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[export_tui]
AS
SELECT all     *
FROM         sko2014_export_pkw
union all
select all *
from sko2014_export_bahn
union all
select *
from sko2014_export_flug

GO
/****** Object:  View [dbo].[nachzuegler_bahn]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_bahn]
AS
SELECT     id, anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Bahn' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz,
                       ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2014
WHERE     (bahn = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (anmeldung_frei = 1)
GO
/****** Object:  View [dbo].[nachzuegler_flug]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_flug]
AS
SELECT     id, anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'Flug' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2014
WHERE     (flug = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (anmeldung_frei = 1)
GO
/****** Object:  View [dbo].[nachzuegler_pkw]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[nachzuegler_pkw]
AS
SELECT     id, anreise, abreise, '' AS Kabinenkategorie, ' ' AS Kabinennummer, 
                      CASE zimmer WHEN 'Einzelkabine' THEN 1 WHEN 'Doppelkabine' THEN 2 WHEN 'keine Übernachtung gewünscht' THEN 0 ELSE 0 END AS [Personen in der Kabine],
                       anrede, nachname, vorname, '' AS [Alter], bemerkung, niederlassung, 'PKW' AS Anreiseart, vegetarier, allergien_text, strasse, ' ' AS Hausnummer, plz, 
                      ort, email, mobil, nationalitaet, geburtsdatum, geburtsort, handicap_text, Ausweisart, Ausweisnummer, gueltig_bis, 
                      zusammen_mit_vorname + ' ' + zusammen_mit_nachname AS Kabinenteilung, ' ' AS Anreisemodalitaet
FROM         dbo.Enterprise_SKO_2014
WHERE     (pkw = 1) AND (teilnahme = 1) AND (verifizierung = '1') AND (anmeldung_frei = 1)
GO
/****** Object:  View [dbo].[sko2014_nachzuegler]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[sko2014_nachzuegler]
AS
SELECT ALL *
FROM         nachzuegler_pkw
UNION ALL
SELECT ALL *
FROM         nachzuegler_bahn
UNION ALL
SELECT     *
FROM         nachzuegler_flug
GO
/****** Object:  View [dbo].[Abgleich_Giga_Goals_Team_gegen_App]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Abgleich_Giga_Goals_Team_gegen_App]
AS
SELECT        TOP (100) PERCENT dbo.Giga_Goal_Standorte.laufende_nummer, dbo.Giga_Goal_Standorte.Stadt, dbo.Giga_Goal_Standorte.Strasse, dbo.Giga_Goal_Standorte.PLZ, 
                         dbo.Giga_Goal_Standorte.Ort, dbo.Giga_Goal_Aktionsbericht.aktion_von, dbo.Giga_Goal_Aktionsbericht.aktion_bis AS Zeitraum, 
                         dbo.Giga_Goal_Aktionsbericht.chips_rot_ausgabe_tag1 + dbo.Giga_Goal_Aktionsbericht.chips_rot_ausgabe_tag2 + dbo.Giga_Goal_Aktionsbericht.chips_rot_ausgabe_tag3
                          + dbo.Giga_Goal_Aktionsbericht.chips_grau_ausgabe_tag1 + dbo.Giga_Goal_Aktionsbericht.chips_grau_ausgabe_tag2 + dbo.Giga_Goal_Aktionsbericht.chips_grau_ausgabe_tag3
                          AS Frequenz, dbo.Giga_Goal_Appzahlen.[Frequenz laut App]
FROM            dbo.Giga_Goal_Standorte INNER JOIN
                         dbo.Giga_Goal_Aktionsbericht ON dbo.Giga_Goal_Standorte.id = dbo.Giga_Goal_Aktionsbericht.Standort_id INNER JOIN
                         dbo.Giga_Goal_Appzahlen ON dbo.Giga_Goal_Standorte.laufende_nummer = dbo.Giga_Goal_Appzahlen.lfd
ORDER BY dbo.Giga_Goal_Standorte.laufende_nummer
GO
/****** Object:  View [dbo].[Abgleich_Hilfe_JWB_2014_2015]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Abgleich_Hilfe_JWB_2014_2015]
AS
SELECT     dbo.enterprise_login.id, dbo.enterprise_login.vorname, dbo.enterprise_login.nachname, dbo.enterprise_login.email, 
                      dbo.enterprise_login.passwort
FROM         dbo.Abgleich_JWB_2014_2015 INNER JOIN
                      dbo.enterprise_login ON dbo.Abgleich_JWB_2014_2015.Email = dbo.enterprise_login.email
GO
/****** Object:  View [dbo].[Abgleich_Kostenstellen_Tagung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Abgleich_Kostenstellen_Tagung]
AS
SELECT     dbo.enterprise_login.id, dbo.enterprise_login.vorname, dbo.enterprise_login.nachname, dbo.Enterprise_SKO_2016_Abgleich.Personalnummer, 
                      dbo.Enterprise_SKO_2016_Abgleich.Kostenstelle, dbo.enterprise_login.email
FROM         dbo.enterprise_login INNER JOIN
                      dbo.Enterprise_SKO_2016_Abgleich ON dbo.enterprise_login.email = dbo.Enterprise_SKO_2016_Abgleich.email
GO
/****** Object:  View [dbo].[Abgleich_Kroatien_positiv]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Abgleich_Kroatien_positiv]
AS
SELECT     TOP (100) PERCENT dbo.enterprise_login.id, dbo.enterprise_login.vorname, dbo.enterprise_login.nachname, dbo.enterprise_login.email
FROM         dbo.Abgleich_100_Prozent_2015 INNER JOIN
                      dbo.enterprise_login ON dbo.Abgleich_100_Prozent_2015.email = dbo.enterprise_login.email
ORDER BY dbo.enterprise_login.nachname
GO
/****** Object:  View [dbo].[Abgleich_sko_2016_Abend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Abgleich_sko_2016_Abend]
AS
SELECT     id, Anrede, Vorname, Nachname, email, Personalnummer, Kostenstelle, Funktion, Beschreibung, Bereich
FROM         dbo.Enterprise_SKO_2016_Abgleich_Abend
WHERE     (email NOT IN
                          (SELECT     email
                            FROM          dbo.enterprise_login))

GO
/****** Object:  View [dbo].[Abgleich_sko_2016_Tagung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Abgleich_sko_2016_Tagung]
AS
SELECT     id, Anrede, Vorname, Nachname, email, Personalnummer, Kostenstelle, Funktion, Beschreibung, Bereich
FROM         dbo.Enterprise_SKO_2016_Abgleich
WHERE     (email NOT IN
                          (SELECT     email
                            FROM          dbo.enterprise_login))
GO
/****** Object:  View [dbo].[Abgleich_Versand_CTO_2017]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Abgleich_Versand_CTO_2017]
AS
SELECT        COUNT(id) AS anzahl, email
FROM            dbo.CTO_Tour_Versendung_2017
GROUP BY email
GO
/****** Object:  View [dbo].[Bragi-Gesamt]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Bragi-Gesamt]
AS
SELECT     dbo.Bragi_Standorte.laufende_nummer, dbo.Bragi_Standorte.Stadt, dbo.Bragi_Standorte.Strasse, dbo.Bragi_Standorte.PLZ, dbo.Bragi_Standorte.Ort, 
                      dbo.Bragi_Aktionsbericht.Team, dbo.Bragi_Aktionsbericht.Teamleiter, dbo.Bragi_Aktionsbericht.Promoter2, dbo.Bragi_Aktionsbericht.aktion_von, 
                      dbo.Bragi_Aktionsbericht.aktion_bis, dbo.Bragi_Aktionsbericht.Aktionszeit_Tag1, dbo.Bragi_Aktionsbericht.Aktionszeit_Tag2, 
                      dbo.Bragi_Aktionsbericht.Elemente_telefonzelle, dbo.Bragi_Aktionsbericht.Elemente_roll_up, dbo.Bragi_Aktionsbericht.Elemente_kopfhoerer, 
                      dbo.Bragi_Aktionsbericht.Elemente_teufel_box, dbo.Bragi_Aktionsbericht.Elemente_lg_1, dbo.Bragi_Aktionsbericht.Elemente_lg_2, 
                      dbo.Bragi_Aktionsbericht.flyer_anfang, dbo.Bragi_Aktionsbericht.flyer_Tag1, dbo.Bragi_Aktionsbericht.flyer_Tag2, dbo.Bragi_Aktionsbericht.flyer_ende, 
                      dbo.Bragi_Aktionsbericht.deezer_anfang, dbo.Bragi_Aktionsbericht.deezer_Tag1, dbo.Bragi_Aktionsbericht.deezer_Tag2, 
                      dbo.Bragi_Aktionsbericht.deezer_ende, dbo.Bragi_Aktionsbericht.Standplatz_Indoor, dbo.Bragi_Aktionsbericht.Standplatz_Indoor_Name, 
                      dbo.Bragi_Aktionsbericht.Standplatz_Bemerkung, dbo.Bragi_Aktionsbericht.Frequenz_Tag1, dbo.Bragi_Aktionsbericht.Frequenz_Tag2, 
                      dbo.Bragi_Aktionsbericht.Beurteilung_Mitbewerber, dbo.Bragi_Aktionsbericht.Beurteilung_Publikum, 
                      dbo.Bragi_Aktionsbericht.Beurteilung_Anmerkungen, dbo.Bragi_Aktionsbericht.Beurteilung_Kompetenz, 
                      dbo.Bragi_Aktionsbericht.Beurteilung_Equipment, dbo.Bragi_Aktionsbericht.Beurteilung_Zusammenarbeit, 
                      dbo.Bragi_Aktionsbericht.Beurteilung_Resonanz, dbo.Bragi_Aktionsbericht.Publikumsinteresse, 
                      dbo.Bragi_Aktionsbericht.Resonanz_Gewinnspiele
FROM         dbo.Bragi_Standorte INNER JOIN
                      dbo.Bragi_Aktionsbericht ON dbo.Bragi_Standorte.id = dbo.Bragi_Aktionsbericht.Standort_id
GO
/****** Object:  View [dbo].[CEO_2017_Abgleich_Ratingen_DDorf]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO_2017_Abgleich_Ratingen_DDorf]
AS
SELECT        dbo.CEO_Tour_Versendung_2017.Anrede, dbo.CEO_Tour_Versendung_2017.Vorname, dbo.CEO_Tour_Versendung_2017.Nachname, 
                         dbo.CEO_Tour_Versendung_2017.Location
FROM            dbo.CEO_Tour_2017 INNER JOIN
                         dbo.CEO_Tour_Versendung_2017 ON dbo.CEO_Tour_2017.EMail = dbo.CEO_Tour_Versendung_2017.email
WHERE        (dbo.CEO_Tour_2017.Location = 'Düsseldorf')
GO
/****** Object:  View [dbo].[CEO_Abgleich]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO_Abgleich]
AS
SELECT     TOP (100) PERCENT COUNT(id) AS Anzahl, email
FROM         dbo.CEO_Tour_Versendung
GROUP BY email
ORDER BY anzahl
GO
/****** Object:  View [dbo].[CEO_Teilnahmen]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO_Teilnahmen]
AS
SELECT     COUNT(id) AS anzahl, EMail
FROM         dbo.CEO_Tour_2016
GROUP BY EMail
GO
/****** Object:  View [dbo].[CEO_Tour_2017_Versendung_Shuttles]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO_Tour_2017_Versendung_Shuttles]
AS
SELECT        dbo.CEO_Tour_2017.id, dbo.CEO_Tour_2017.Anrede, dbo.CEO_Tour_2017.Vorname, dbo.CEO_Tour_2017.Nachname, dbo.CEO_Tour_2017.EMail, 
                         dbo.CEO_Tour_2017.Location, dbo.CEO_Tour_2017.Shuttle, dbo.CEO_Tour_2017_Orte.Ort, dbo.CEO_Tour_2017_Shuttleabsage.Gruppe
FROM            dbo.CEO_Tour_2017 INNER JOIN
                         dbo.CEO_Tour_2017_Orte ON dbo.CEO_Tour_2017.Location = dbo.CEO_Tour_2017_Orte.Location INNER JOIN
                         dbo.CEO_Tour_2017_Shuttleabsage ON dbo.CEO_Tour_2017.Shuttle = dbo.CEO_Tour_2017_Shuttleabsage.Shuttle
WHERE        (dbo.CEO_Tour_2017.Shuttle IN ('Kammerstück 17, 44357 Dortmund', 'Max Habermann-Straße 1-3, 53123 Bonn', 'Garmischer Straße 19-21, 81373 München', 
                         'Kastenbauerstr. 2, 81677 München', 'Südwestpark 15, 90449 Nürnberg', 'Kohlgartenstr. 11-13, 04315 Leipzig', 'Meißner Str. 79, 01445 Radebeul', 
                         'Overbeck Str. 43, 01139 Dresden', 'Breitlacherstr. 96, 60489 Frankfurt', 'Erthalstr. 1, 55118 Mainz', 'Lindenstr. 13, 67433 Neustadt', 'Eckdrift 81, 19061 Schwerin', 
                         'Europaallee 26, 28309 Hamburg'))
GO
/****** Object:  View [dbo].[CEO_Tour_2018_Abgleich]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO_Tour_2018_Abgleich]
AS
SELECT        COUNT(id) AS Expr1, Hash
FROM            dbo.CEO_Tour_2018_Versendung
GROUP BY Hash
GO
/****** Object:  View [dbo].[CEO_Tour_2018_Shuttleversendung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO_Tour_2018_Shuttleversendung]
AS
SELECT        *
FROM            dbo.CEO_Tour_2018_projektleitung

union

SELECT        *
FROM            dbo.CEO_Tour_2018

GO
/****** Object:  View [dbo].[CEO_Tour_2018_Versendung_Reminder]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO_Tour_2018_Versendung_Reminder]
AS
SELECT        TOP (100) PERCENT id, email, Anrede, Vorname, Nachname, Hash
FROM            dbo.CEO_Tour_2018_Versendung
WHERE        (Absage = 0) AND (Hash NOT IN
                             (SELECT        hash
                               FROM            dbo.CEO_Tour_2018))
ORDER BY id
GO
/****** Object:  View [dbo].[CEO-Tour2017_Abgleich]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CEO-Tour2017_Abgleich]
AS
SELECT        COUNT(id) AS anzahl, email
FROM            dbo.CEO_Tour_Versendung_2017
GROUP BY email
GO
/****** Object:  View [dbo].[CTO_Tour_Test]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CTO_Tour_Test]
AS
SELECT     COUNT(id) AS Anzahl, email
FROM         dbo.CTO_Tour_Versendung
GROUP BY email
GO
/****** Object:  View [dbo].[Enterprise_EKO_2018_TN_feedback_export]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Enterprise_EKO_2018_TN_feedback_export]
AS
SELECT        dbo.Enterprise_SKO_2018_TN_feedback.teilnahmer_id, dbo.Enterprise_SKO_2018_TN.Vorname + '  ' + dbo.Enterprise_SKO_2018_TN.Nachname AS Name, 
                         dbo.Enterprise_SKO_2018_TN_feedback.hash, dbo.Enterprise_SKO_2018_TN_feedback.Rahmen, dbo.Enterprise_SKO_2018_TN_feedback.Tagungslocation, 
                         dbo.Enterprise_SKO_2018_TN_feedback.Abendlocation, dbo.Enterprise_SKO_2018_TN_feedback.Kommentar_Allgemein, 
                         dbo.Enterprise_SKO_2018_TN_feedback.Themenauswahl, dbo.Enterprise_SKO_2018_TN_feedback.Informationsgehalt, 
                         dbo.Enterprise_SKO_2018_TN_feedback.Moderation, dbo.Enterprise_SKO_2018_TN_feedback.Kommentar_vortraege, 
                         dbo.Enterprise_SKO_2018_TN_feedback.Sonstiges_1, dbo.Enterprise_SKO_2018_TN_feedback.Sonstiges_2, dbo.Enterprise_SKO_2018_TN_feedback.Datum, 
                         dbo.Enterprise_SKO_2018_TN_feedback.Verpflegung
FROM            dbo.Enterprise_SKO_2018_TN_feedback INNER JOIN
                         dbo.Enterprise_SKO_2018_TN ON dbo.Enterprise_SKO_2018_TN_feedback.teilnahmer_id = dbo.Enterprise_SKO_2018_TN.id
WHERE        (dbo.Enterprise_SKO_2018_TN.id > 4)
GO
/****** Object:  View [dbo].[enterprise_sko_2014_fehlende]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[enterprise_sko_2014_fehlende]
AS
SELECT     TOP (100) PERCENT dbo.enterprise_login.anrede, dbo.enterprise_login.vorname, dbo.enterprise_login.nachname, dbo.enterprise_login.email
FROM         dbo.enterprise_login INNER JOIN
                      dbo.Enterprise_SKO_2014 ON dbo.enterprise_login.id = dbo.Enterprise_SKO_2014.enterprise_id
WHERE     (dbo.Enterprise_SKO_2014.verifizierung = '0') AND (dbo.enterprise_login.id > 6)
ORDER BY dbo.enterprise_login.nachname
GO
/****** Object:  View [dbo].[enterprise_sko_2014_fehlende_anmeldungen]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[enterprise_sko_2014_fehlende_anmeldungen]
AS
SELECT     enterprise_id, verifizierung
FROM         dbo.Enterprise_SKO_2014
WHERE     (verifizierung <> '1') AND (enterprise_id NOT IN (1216, 1224, 1234, 1255, 1015, 1270, 713, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 806, 826))
GO
/****** Object:  View [dbo].[enterprise_sko_2015_einladungen_abend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[enterprise_sko_2015_einladungen_abend]
AS
SELECT     TOP (100) PERCENT dbo.enterprise_login.anrede, dbo.enterprise_login.vorname, dbo.enterprise_login.nachname, dbo.enterprise_login.email, 
                      dbo.enterprise_login.abteilung
FROM         dbo.enterprise_login INNER JOIN
                      dbo.Enterprise_SKO_2015 ON dbo.enterprise_login.id = dbo.Enterprise_SKO_2015.enterprise_id
WHERE     (dbo.enterprise_login.id > 6) AND (dbo.enterprise_login.id IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
ORDER BY dbo.enterprise_login.nachname
GO
/****** Object:  View [dbo].[enterprise_sko_2015_einladungen_tagung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[enterprise_sko_2015_einladungen_tagung]
AS
SELECT     TOP (100) PERCENT dbo.enterprise_login.anrede, dbo.enterprise_login.vorname, dbo.enterprise_login.nachname, dbo.enterprise_login.email, 
                      dbo.enterprise_login.abteilung
FROM         dbo.enterprise_login INNER JOIN
                      dbo.Enterprise_SKO_2015 ON dbo.enterprise_login.id = dbo.Enterprise_SKO_2015.enterprise_id
WHERE     (dbo.enterprise_login.id > 6) AND (dbo.enterprise_login.id NOT IN
                          (SELECT     enterprise_id
                            FROM          dbo.enterprise_sko_2015_nachmeldungen_abend))
ORDER BY dbo.enterprise_login.nachname
GO
/****** Object:  View [dbo].[Export_Knock_and_win]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Knock_and_win]
AS
SELECT        TOP (100) PERCENT dbo.Ostern_Standorte.laufende_nummer, dbo.Ostern_Standorte.Stadt, dbo.Ostern_Standorte.Strasse, dbo.Ostern_Standorte.PLZ, 
                         dbo.Ostern_Standorte.Ort, dbo.Ostern_Standorte.Tag1, dbo.Ostern_Standorte.Tag2, dbo.Ostern_Standorte.Team, dbo.Ostern_Aktionsbericht.Promoter1, 
                         dbo.Ostern_Aktionsbericht.Promoter2, dbo.Ostern_Aktionsbericht.aktion_von, dbo.Ostern_Aktionsbericht.aktion_bis, dbo.Ostern_Aktionsbericht.Aktionszeit_Tag1, 
                         dbo.Ostern_Aktionsbericht.Aktionszeit_Tag2, dbo.Ostern_Aktionsbericht.Elemente_Tuer, dbo.Ostern_Aktionsbericht.Elemente_Bauchladen, 
                         dbo.Ostern_Aktionsbericht.Elemente_Promotion_Theke, dbo.Ostern_Aktionsbericht.Elemente_Tablet_Staender, 
                         dbo.Ostern_Aktionsbericht.Elemente_Huawei_Mate_S, dbo.Ostern_Aktionsbericht.Elemente_Huawei_Mate_T1, 
                         dbo.Ostern_Aktionsbericht.give_away_1_Bestand_Anfang, dbo.Ostern_Aktionsbericht.give_away_1_Ausgabe_Tag1, 
                         dbo.Ostern_Aktionsbericht.give_away_1_Ausgabe_Tag2, dbo.Ostern_Aktionsbericht.give_away_1_Bestand_Ende, 
                         dbo.Ostern_Aktionsbericht.give_away_2_Bestand_Anfang, dbo.Ostern_Aktionsbericht.give_away_2_Ausgabe_Tag1, 
                         dbo.Ostern_Aktionsbericht.give_away_2_Ausgabe_Tag2, dbo.Ostern_Aktionsbericht.give_away_2_Bestand_Ende, 
                         dbo.Ostern_Aktionsbericht.give_away_3_Bestand_Anfang, dbo.Ostern_Aktionsbericht.give_away_3_Ausgabe_Tag1, 
                         dbo.Ostern_Aktionsbericht.give_away_3_Ausgabe_Tag2, dbo.Ostern_Aktionsbericht.give_away_3_Bestand_Ende, 
                         dbo.Ostern_Aktionsbericht.give_away_4_Bestand_Anfang, dbo.Ostern_Aktionsbericht.give_away_4_Ausgabe_Tag1, 
                         dbo.Ostern_Aktionsbericht.give_away_4_Ausgabe_Tag2, dbo.Ostern_Aktionsbericht.give_away_4_Bestand_Ende, 
                         dbo.Ostern_Aktionsbericht.give_away_5_Bestand_Anfang, dbo.Ostern_Aktionsbericht.give_away_5_Ausgabe_Tag1, 
                         dbo.Ostern_Aktionsbericht.give_away_5_Ausgabe_Tag2, dbo.Ostern_Aktionsbericht.give_away_5_Bestand_Ende, dbo.Ostern_Aktionsbericht.Standplatz_Outdoor, 
                         dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Name, dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_privat, 
                         dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_privat_Groesse, dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_staedtisch, 
                         dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_staedtisch_Groesse, dbo.Ostern_Aktionsbericht.Standplatz_Indoor, 
                         dbo.Ostern_Aktionsbericht.Standplatz_Indoor_Name, dbo.Ostern_Aktionsbericht.Standplatz_Bemerkung, dbo.Ostern_Aktionsbericht.Frequenz_Tag1, 
                         dbo.Ostern_Aktionsbericht.Frequenz_Tag2, dbo.Ostern_Aktionsbericht.Tag1_Beratung_Huawei_P8, dbo.Ostern_Aktionsbericht.Tag1_Verkauf_Huawei_P8, 
                         dbo.Ostern_Aktionsbericht.Tag1_Beratung_Huawei_Mate_S, dbo.Ostern_Aktionsbericht.Tag1_Verkauf_Huawei_Mate_S, 
                         dbo.Ostern_Aktionsbericht.Tag1_Beratung_Huawei_Smartwatch, dbo.Ostern_Aktionsbericht.Tag1_Verkauf_Huawei_Smartwatch, 
                         dbo.Ostern_Aktionsbericht.Tag2_Beratung_Huawei_P8, dbo.Ostern_Aktionsbericht.Tag2_Verkauf_Huawei_P8, 
                         dbo.Ostern_Aktionsbericht.Tag2_Beratung_Huawei_Mate_S, dbo.Ostern_Aktionsbericht.Tag2_Verkauf_Huawei_Mate_S, 
                         dbo.Ostern_Aktionsbericht.Tag2_Beratung_Huawei_Smartwatch, dbo.Ostern_Aktionsbericht.Tag2_Verkauf_Huawei_Smartwatch, 
                         dbo.Ostern_Aktionsbericht.Beurteilung_Mitbewerber, dbo.Ostern_Aktionsbericht.Beurteilung_Publikum, dbo.Ostern_Aktionsbericht.Beurteilung_Anmerkungen, 
                         dbo.Ostern_Aktionsbericht.Beurteilung_Kompetenz, dbo.Ostern_Aktionsbericht.Beurteilung_Equipment, dbo.Ostern_Aktionsbericht.Beurteilung_Zusammenarbeit, 
                         dbo.Ostern_Aktionsbericht.Beurteilung_Resonanz, dbo.Ostern_Aktionsbericht.Publikumsinteresse, dbo.Ostern_Aktionsbericht.Resonanz_Gewinnspiele
FROM            dbo.Ostern_Aktionsbericht INNER JOIN
                         dbo.Ostern_Standorte ON dbo.Ostern_Aktionsbericht.Standort_id = dbo.Ostern_Standorte.id
ORDER BY dbo.Ostern_Standorte.laufende_nummer
GO
/****** Object:  View [dbo].[Export_Osteraktion]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Osteraktion]
AS
SELECT     dbo.Ostern_Standorte.Stadt, dbo.Ostern_Standorte.Strasse, dbo.Ostern_Standorte.PLZ, dbo.Ostern_Standorte.Ort, dbo.Ostern_Aktionsbericht.Team, 
                      dbo.Ostern_Aktionsbericht.Promoter1, dbo.Ostern_Aktionsbericht.Promoter2, dbo.Ostern_Aktionsbericht.aktion_von, 
                      dbo.Ostern_Aktionsbericht.aktion_bis, dbo.Ostern_Aktionsbericht.Aktionszeit_Tag1, dbo.Ostern_Aktionsbericht.Aktionszeit_Tag2, 
                      dbo.Ostern_Aktionsbericht.Elemente_Tuer, dbo.Ostern_Aktionsbericht.Elemente_Bauchladen, dbo.Ostern_Aktionsbericht.Elemente_Promotion_Theke, 
                      dbo.Ostern_Aktionsbericht.Elemente_Tablet_Staender, dbo.Ostern_Aktionsbericht.Elemente_Huawei_Mate_S, 
                      dbo.Ostern_Aktionsbericht.Elemente_Huawei_Mate_T1, dbo.Ostern_Aktionsbericht.give_away_1_Bestand_Anfang, 
                      dbo.Ostern_Aktionsbericht.give_away_1_Ausgabe_Tag1, dbo.Ostern_Aktionsbericht.give_away_1_Ausgabe_Tag2, 
                      dbo.Ostern_Aktionsbericht.give_away_1_Bestand_Ende, dbo.Ostern_Aktionsbericht.give_away_2_Bestand_Anfang, 
                      dbo.Ostern_Aktionsbericht.give_away_2_Ausgabe_Tag1, dbo.Ostern_Aktionsbericht.give_away_2_Ausgabe_Tag2, 
                      dbo.Ostern_Aktionsbericht.give_away_2_Bestand_Ende, dbo.Ostern_Aktionsbericht.give_away_3_Bestand_Anfang, 
                      dbo.Ostern_Aktionsbericht.give_away_3_Ausgabe_Tag1, dbo.Ostern_Aktionsbericht.give_away_3_Ausgabe_Tag2, 
                      dbo.Ostern_Aktionsbericht.give_away_3_Bestand_Ende, dbo.Ostern_Aktionsbericht.give_away_4_Bestand_Anfang, 
                      dbo.Ostern_Aktionsbericht.give_away_4_Ausgabe_Tag1, dbo.Ostern_Aktionsbericht.give_away_4_Ausgabe_Tag2, 
                      dbo.Ostern_Aktionsbericht.give_away_4_Bestand_Ende, dbo.Ostern_Aktionsbericht.Standplatz_Outdoor, 
                      dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Name, dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_privat, 
                      dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_privat_Groesse, dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_staedtisch, 
                      dbo.Ostern_Aktionsbericht.Standplatz_Outdoor_Flaeche_staedtisch_Groesse, dbo.Ostern_Aktionsbericht.Standplatz_Indoor, 
                      dbo.Ostern_Aktionsbericht.Standplatz_Indoor_Name, dbo.Ostern_Aktionsbericht.Standplatz_Bemerkung, dbo.Ostern_Aktionsbericht.Frequenz_Tag1, 
                      dbo.Ostern_Aktionsbericht.Frequenz_Tag2, dbo.Ostern_Aktionsbericht.Beurteilung_Mitbewerber, dbo.Ostern_Aktionsbericht.Beurteilung_Publikum, 
                      dbo.Ostern_Aktionsbericht.Beurteilung_Anmerkungen, dbo.Ostern_Aktionsbericht.Beurteilung_Kompetenz, 
                      dbo.Ostern_Aktionsbericht.Beurteilung_Equipment, dbo.Ostern_Aktionsbericht.Beurteilung_Zusammenarbeit, 
                      dbo.Ostern_Aktionsbericht.Beurteilung_Resonanz, dbo.Ostern_Aktionsbericht.Publikumsinteresse, 
                      dbo.Ostern_Aktionsbericht.Resonanz_Gewinnspiele
FROM         dbo.Ostern_Standorte INNER JOIN
                      dbo.Ostern_Aktionsbericht ON dbo.Ostern_Standorte.id = dbo.Ostern_Aktionsbericht.Standort_id
GO
/****** Object:  View [dbo].[Feedback_abfrage_export]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Feedback_abfrage_export]
AS
SELECT        dbo.Pathfinder2018_Feedback.id, dbo.Pathfinder2018_Feedback.Entwicklung, dbo.Pathfinder2018_Feedback.Message1, dbo.Pathfinder2018_Feedback.Message2, 
                         dbo.Pathfinder2018_Feedback.Message3, dbo.Pathfinder2018_Feedback.Mitgenommen, dbo.Pathfinder2018_Feedback.Übernahme, 
                         dbo.Pathfinder2018_Feedback.Kontakte, dbo.Pathfinder2018_Feedback.Teilnahme, dbo.Pathfinder2018_Feedback.Teilnahme_aendern, 
                         dbo.Pathfinder2018_Feedback.Einladung, dbo.Pathfinder2018_Feedback.Location_tempodrom, dbo.Pathfinder2018_Feedback.Location_NH, 
                         dbo.Pathfinder2018_Feedback.Abendveranstaltung, dbo.Pathfinder2018_Feedback.Orga_online, dbo.Pathfinder2018_Feedback.Orga_microsite, 
                         dbo.Pathfinder2018_Feedback.Orga_hotline, dbo.Pathfinder2018_Feedback.Orga_betreuung, dbo.Pathfinder2018_Feedback.Feedback_erfolgreich, 
                         dbo.Pathfinder2018_Feedback.Feedback_datum, dbo.Pathfinder_Einladung_2018.Vorname + ' ' + dbo.Pathfinder_Einladung_2018.Nachname AS Name
FROM            dbo.Pathfinder_Einladung_2018 INNER JOIN
                         dbo.Pathfinder2018_Feedback ON dbo.Pathfinder_Einladung_2018.id = dbo.Pathfinder2018_Feedback.pathfinder_id
GO
/****** Object:  View [dbo].[fehlende_sko_2014]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[fehlende_sko_2014]
AS
SELECT     TOP (100) PERCENT id, anrede, vorname, nachname, email, abteilung
FROM         dbo.Enterprise_SKO_2014_save_the_date
WHERE     (email NOT IN
                          (SELECT     email
                            FROM          dbo.enterprise_login))
ORDER BY nachname, vorname
GO
/****** Object:  View [dbo].[Giga_Art_Auswertung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Giga_Art_Auswertung]
AS
SELECT        dbo.Giga_Art_Standorte.id, dbo.Giga_Art_Standorte.laufende_nummer, dbo.Giga_Art_Standorte.Stadt, dbo.Giga_Art_Standorte.Strasse, dbo.Giga_Art_Standorte.PLZ, 
                         dbo.Giga_Art_Standorte.Ort, dbo.Giga_Art_Standorte.Tag1, dbo.Giga_Art_Standorte.Tag2, dbo.Giga_Art_Standorte.Tag3, dbo.Giga_Art_Standorte.Team, 
                         dbo.Giga_Art_Aktionsbericht.equipment_counter, dbo.Giga_Art_Aktionsbericht.equipment_Huawei_P9_Eins, 
                         dbo.Giga_Art_Aktionsbericht.equipment_Huawei_P9_Zwei, dbo.Giga_Art_Aktionsbericht.equipment_Roll_Up_weiss, 
                         dbo.Giga_Art_Aktionsbericht.equipment_Hocker_Foto, dbo.Giga_Art_Aktionsbericht.equipment_Lichtquelle_Eins, 
                         dbo.Giga_Art_Aktionsbericht.equipment_Lichtquelle_Zwei, dbo.Giga_Art_Aktionsbericht.equipment_Stativ, dbo.Giga_Art_Aktionsbericht.equipment_Kuka_Painter, 
                         dbo.Giga_Art_Aktionsbericht.equipment_Staffelei, dbo.Giga_Art_Aktionsbericht.equipment_Hocker_Wartezeit, dbo.Giga_Art_Aktionsbericht.papier_anfangsbestand, 
                         dbo.Giga_Art_Aktionsbericht.papier_ausgabe_tag1, dbo.Giga_Art_Aktionsbericht.papier_ausgabe_tag2, dbo.Giga_Art_Aktionsbericht.papier_ausgabe_tag3, 
                         dbo.Giga_Art_Aktionsbericht.papier_ausgabe_ende, dbo.Giga_Art_Aktionsbericht.Teamleiter, dbo.Giga_Art_Aktionsbericht.Promoter, 
                         dbo.Giga_Art_Aktionsbericht.Fotograf, dbo.Giga_Art_Aktionsbericht.aktion_von, dbo.Giga_Art_Aktionsbericht.aktion_bis, 
                         dbo.Giga_Art_Aktionsbericht.Aktionszeit_Tag1, dbo.Giga_Art_Aktionsbericht.Aktionszeit_Tag2, dbo.Giga_Art_Aktionsbericht.Aktionszeit_Tag3, 
                         dbo.Giga_Art_Aktionsbericht.Standplatz_Indoor, dbo.Giga_Art_Aktionsbericht.Standplatz_Indoor_Name, dbo.Giga_Art_Aktionsbericht.Standplatz_Bemerkung, 
                         dbo.Giga_Art_Aktionsbericht.Frequenz_Tag1, dbo.Giga_Art_Aktionsbericht.Frequenz_Tag2, dbo.Giga_Art_Aktionsbericht.Frequenz_Tag3, 
                         dbo.Giga_Art_Aktionsbericht.Beurteilung_Mitbewerber, dbo.Giga_Art_Aktionsbericht.Beurteilung_Publikum, dbo.Giga_Art_Aktionsbericht.Beurteilung_Anmerkungen, 
                         dbo.Giga_Art_Aktionsbericht.Beurteilung_Kompetenz, dbo.Giga_Art_Aktionsbericht.Beurteilung_Equipment, 
                         dbo.Giga_Art_Aktionsbericht.Beurteilung_Zusammenarbeit, dbo.Giga_Art_Aktionsbericht.Beurteilung_Resonanz, dbo.Giga_Art_Aktionsbericht.Publikumsinteresse, 
                         dbo.Giga_Art_Aktionsbericht.Resonanz_Gewinnspiele
FROM            dbo.Giga_Art_Standorte INNER JOIN
                         dbo.Giga_Art_Aktionsbericht ON dbo.Giga_Art_Standorte.id = dbo.Giga_Art_Aktionsbericht.Standort_id
GO
/****** Object:  View [dbo].[Giga_Cube_Campus_Bestenliste]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Giga_Cube_Campus_Bestenliste]
AS
SELECT        COUNT(dbo.Giga_Cube_Campus_Voting.id) AS Votings, dbo.Giga_Cube_Campus.id
FROM            dbo.Giga_Cube_Campus_Voting RIGHT OUTER JOIN
                         dbo.Giga_Cube_Campus ON dbo.Giga_Cube_Campus_Voting.Teilnehmer_id = dbo.Giga_Cube_Campus.id
GROUP BY dbo.Giga_Cube_Campus.id
GO
/****** Object:  View [dbo].[Giga_Goals_Frequenzen]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Giga_Goals_Frequenzen]
AS
SELECT        dbo.Giga_Goal_Standorte.laufende_nummer, dbo.Giga_Goal_Standorte.Stadt, dbo.Giga_Goal_Standorte.Strasse, dbo.Giga_Goal_Standorte.PLZ, 
                         dbo.Giga_Goal_Standorte.Ort, dbo.Giga_Goal_Standorte.Tag1, dbo.Giga_Goal_Standorte.Tag2, dbo.Giga_Goal_Standorte.Tag3, 
                         dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag1, dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag2, dbo.Giga_Goal_Aktionsbericht.Frequenz_Tag3, 
                         dbo.Giga_Goal_Standorte.Team
FROM            dbo.Giga_Goal_Standorte INNER JOIN
                         dbo.Giga_Goal_Aktionsbericht ON dbo.Giga_Goal_Standorte.id = dbo.Giga_Goal_Aktionsbericht.Standort_id
GO
/****** Object:  View [dbo].[Kostenstellen_SKO_2015]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kostenstellen_SKO_2015]
AS
SELECT     TOP (100) PERCENT anrede, vorname, nachname, abteilungskuerzel, niederlassung, personalnummer, funktion, kostenstelle
FROM         dbo.Enterprise_SKO_2015
WHERE     (verifizierung = '1') AND (teilnahme = 1) AND (enterprise_id > 6)
ORDER BY nachname
GO
/****** Object:  View [dbo].[Nacht_der_Medien_Auswertung1]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Nacht_der_Medien_Auswertung1]
AS
SELECT        TOP (100) PERCENT dbo.Nacht_der_Medien_Liste_Ursprung.id, dbo.Nacht_der_Medien_Liste_Ursprung.Zugangscode, dbo.Nacht_der_Medien.EMail, 
                         dbo.Nacht_der_Medien.Mobilfunknummer, dbo.Nacht_der_Medien.Firma, dbo.Nacht_der_Medien.Strasse + ' ' + dbo.Nacht_der_Medien.Hausnummer AS Expr1, 
                         dbo.Nacht_der_Medien.PLZ, dbo.Nacht_der_Medien.Ort, dbo.Nacht_der_Medien.Anwesend
FROM            dbo.Nacht_der_Medien_Liste_Ursprung INNER JOIN
                         dbo.Nacht_der_Medien ON dbo.Nacht_der_Medien_Liste_Ursprung.Zugangscode = dbo.Nacht_der_Medien.Zugangscode
ORDER BY dbo.Nacht_der_Medien_Liste_Ursprung.id
GO
/****** Object:  View [dbo].[Nacht_der_Medien_nicht_abgerufene_Tickets]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Nacht_der_Medien_nicht_abgerufene_Tickets]
AS
SELECT        TOP (100) PERCENT dbo.Nacht_der_Medien.Anrede, dbo.Nacht_der_Medien.Vorname, dbo.Nacht_der_Medien.Nachname, dbo.Nacht_der_Medien.Firma, 
                         dbo.Nacht_der_Medien.Funktion, dbo.Nacht_der_Medien.Liste
FROM            dbo.Nacht_der_Medien INNER JOIN
                         dbo.Nacht_der_Medien_offene_Tickets ON dbo.Nacht_der_Medien.Nacht_der_Medien_Ticket_Nummer = dbo.Nacht_der_Medien_offene_Tickets.Code
ORDER BY dbo.Nacht_der_Medien.Nachname
GO
/****** Object:  View [dbo].[rbd_Doppler]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[rbd_Doppler]
AS
SELECT        EMail, COUNT(id) AS anzahl
FROM            dbo.Ready_Business_Day_2018_Einladung
WHERE        (Versendet = 1)
GROUP BY EMail
GO
/****** Object:  View [dbo].[Ready_Business_Day_2018_Feedback_View]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ready_Business_Day_2018_Feedback_View]
AS
SELECT        dbo.Ready_Business_Day_2018_Einladung.Firma, dbo.Ready_Business_Day_2018_Einladung.Vorname, dbo.Ready_Business_Day_2018_Einladung.Nachname, 
                         dbo.Ready_Business_Day_2018_Feedback.Ablauf, dbo.Ready_Business_Day_2018_Feedback.Praesentationen, 
                         dbo.Ready_Business_Day_2018_Feedback.Vortrag, dbo.Ready_Business_Day_2018_Feedback.Produkte, 
                         dbo.Ready_Business_Day_2018_Feedback.Rahmenprogramm, dbo.Ready_Business_Day_2018_Feedback.Catering, 
                         dbo.Ready_Business_Day_2018_Feedback.Veranstaltungen, dbo.Ready_Business_Day_2018_Feedback.Anregungen
FROM            dbo.Ready_Business_Day_2018_Einladung INNER JOIN
                         dbo.Ready_Business_Day_2018_Feedback ON dbo.Ready_Business_Day_2018_Einladung.id = dbo.Ready_Business_Day_2018_Feedback.rbd_id
GO
/****** Object:  View [dbo].[Retail_Forum_2017_Feedback_Versendung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Retail_Forum_2017_Feedback_Versendung]
AS
SELECT        dbo.Retail_Forum_2017_Einladung.id, dbo.Retail_Forum_2017_Einladung.EMail, dbo.Retail_Forum_2017_Einladung.Anrede, 
                         dbo.Retail_Forum_2017_Einladung.Vorname, dbo.Retail_Forum_2017_Einladung.Nachname, dbo.Retail_Forum_2017_Einladung.Hash
FROM            dbo.Retail_Forum_2017_Einladung INNER JOIN
                         dbo.Retail_Forum_2017_Feedback ON dbo.Retail_Forum_2017_Einladung.id = dbo.Retail_Forum_2017_Feedback.retail_id
GO
/****** Object:  View [dbo].[SKO_2015_Telefonnummern]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SKO_2015_Telefonnummern]
AS
SELECT     TOP (100) PERCENT nachname, vorname, mobil, abteilungskuerzel, niederlassung
FROM         dbo.Enterprise_SKO_2015
WHERE     (teilnahme = 1) AND (verifizierung = '1')
ORDER BY nachname
GO
/****** Object:  View [dbo].[SKO_2016_Abend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[SKO_2016_Abend]
AS
SELECT     TOP (100) PERCENT dbo.Enterprise_SKO_2016.enterprise_id, dbo.Enterprise_SKO_2016.vorname, dbo.Enterprise_SKO_2016.nachname, 
                      dbo.Enterprise_SKO_2016_hash.Check_In_Abend, dbo.Enterprise_SKO_2016_hash.Zeitpunkt_Abend, 'Stamm' AS Liste
FROM         dbo.Enterprise_SKO_2016 INNER JOIN
                      dbo.Enterprise_SKO_2016_hash ON dbo.Enterprise_SKO_2016.enterprise_id = dbo.Enterprise_SKO_2016_hash.id
WHERE     (dbo.Enterprise_SKO_2016.teilnahme = 1) AND (dbo.Enterprise_SKO_2016.abendveranstaltung = 1) AND (dbo.Enterprise_SKO_2016.verifizierung = '1') AND 
                      (dbo.Enterprise_SKO_2016.enterprise_id > 6)


union

SELECT     TOP (200) id, vorname, nachname, Check_In_Abend, Zeitpunkt_Abend, 'Neu' AS Liste
FROM         Enterprise_SKO_2016_Neu
WHERE     (Check_In_Abend = 1)

GO
/****** Object:  View [dbo].[SKO_2016_Tagung]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SKO_2016_Tagung]
AS
SELECT     TOP (100) PERCENT dbo.Enterprise_SKO_2016.enterprise_id, dbo.Enterprise_SKO_2016.vorname, dbo.Enterprise_SKO_2016.nachname, 
                      dbo.Enterprise_SKO_2016_hash.Check_In_Tagung, dbo.Enterprise_SKO_2016_hash.Zeitpunkt_Tagung, 'Stamm' AS Liste
FROM         dbo.Enterprise_SKO_2016 INNER JOIN
                      dbo.Enterprise_SKO_2016_hash ON dbo.Enterprise_SKO_2016.enterprise_id = dbo.Enterprise_SKO_2016_hash.id
WHERE     (dbo.Enterprise_SKO_2016.teilnahme = 1) AND (dbo.Enterprise_SKO_2016.tagung = 1) AND (dbo.Enterprise_SKO_2016.verifizierung = '1') AND 
                      (dbo.Enterprise_SKO_2016.enterprise_id > 6)


union

SELECT     TOP (200) id, vorname, nachname, Check_In_Tagung, Zeitpunkt_Tagung, 'Neu' AS Liste
FROM         Enterprise_SKO_2016_Neu
WHERE     (Check_In_Tagung = 1)
GO
/****** Object:  View [dbo].[SKO2015_fehlend]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SKO2015_fehlend]
AS
SELECT     Anrede, Vorname, Nachname, email, Bereich
FROM         dbo.Enterprise_SKO_2015_Abgleich
WHERE     (email NOT IN
                          (SELECT     email
                            FROM          dbo.enterprise_login))
GO
/****** Object:  View [dbo].[SKO2015_in_logins]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SKO2015_in_logins]
AS
SELECT     TOP (100) PERCENT dbo.Enterprise_SKO_2015_Abgleich.Anrede, dbo.Enterprise_SKO_2015_Abgleich.Vorname, 
                      dbo.Enterprise_SKO_2015_Abgleich.Nachname, dbo.Enterprise_SKO_2015_Abgleich.email, dbo.enterprise_login.SKO_2015
FROM         dbo.enterprise_login INNER JOIN
                      dbo.Enterprise_SKO_2015_Abgleich ON dbo.enterprise_login.email = dbo.Enterprise_SKO_2015_Abgleich.email
ORDER BY dbo.enterprise_login.SKO_2015
GO
/****** Object:  View [dbo].[Versandliste_SKO_2014]    Script Date: 06.07.2018 11:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Versandliste_SKO_2014]
AS
SELECT     TOP (100) PERCENT anrede, vorname, nachname, email, abteilung
FROM         dbo.enterprise_login
WHERE     (SKO_2014 = 1) AND (id > 6)
ORDER BY nachname, vorname
GO
ALTER TABLE [dbo].[CEO_Tour_2018_Versendung] ADD  CONSTRAINT [DF_CEO_Tour_2018_Versendung_Absage]  DEFAULT ((0)) FOR [Absage]
GO
ALTER TABLE [dbo].[CTO_Tour_2018_Versendung] ADD  CONSTRAINT [DF_CTO_Tour_2018_Versendung_Absage]  DEFAULT ((0)) FOR [Absage]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_Betriebsrat]  DEFAULT ((0)) FOR [Betriebsrat]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_Abmeldung]  DEFAULT ((0)) FOR [Abmeldung]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017_2] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_2_Betriebsrat]  DEFAULT ((0)) FOR [Betriebsrat]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017_2] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_2_Abmeldung]  DEFAULT ((0)) FOR [Abmeldung]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017_2] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_2_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017_2_Abgleich] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_2_Abgleich_Betriebsrat]  DEFAULT ((0)) FOR [Betriebsrat]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017_2_Abgleich] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_2_Abgleich_Abmeldung]  DEFAULT ((0)) FOR [Abmeldung]
GO
ALTER TABLE [dbo].[CTO_Tour_Versendung_2017_2_Abgleich] ADD  CONSTRAINT [DF_CTO_Tour_Versendung_2017_2_Abgleich_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Berlin_Messe]  DEFAULT ((0)) FOR [Berlin_Messe]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Berlin_Connected_Cars]  DEFAULT ((0)) FOR [Berlin_Connected_Cars]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Berlin_Ipfication]  DEFAULT ((0)) FOR [Berlin_Ipfication]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Berlin_cable_goes_enterprise]  DEFAULT ((0)) FOR [Berlin_Fixed_Connect_2016]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Berlin_Segmentierung]  DEFAULT ((0)) FOR [Berlin_Segmentierung]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Unterfoehring_Messe]  DEFAULT ((0)) FOR [Unterfoehring_Messe]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Unterfoehring_One_Sales_Foundation]  DEFAULT ((0)) FOR [Unterfoehring_One_Sales_Foundation]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Unterfoehring_cable_goes_enterprise]  DEFAULT ((0)) FOR [Unterfoehring_cable_goes_enterprise]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Unterfoehring_Connected_Cars]  DEFAULT ((0)) FOR [Unterfoehring_Connected_Cars]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Unterfoehring_Festnetzoptimierung]  DEFAULT ((0)) FOR [Unterfoehring_Fixed_Connect_2016]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Roedelheim_Messe]  DEFAULT ((0)) FOR [Roedelheim_Messe]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Roedelheim_Connected_Cars]  DEFAULT ((0)) FOR [Roedelheim_Connected_Cars]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Roedelheim_Playoutcenter]  DEFAULT ((0)) FOR [Roedelheim_Playoutcenter]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Roedelheim_Ipfication]  DEFAULT ((0)) FOR [Roedelheim_Ipfication]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Roedelheim_Segmentierung]  DEFAULT ((0)) FOR [Roedelheim_Segmentierung]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Duesseldorf_Messe]  DEFAULT ((0)) FOR [Duesseldorf_Messe]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Duesseldorf_One_Sales_Foundation]  DEFAULT ((0)) FOR [Duesseldorf_One_Sales_Foundation]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Duesseldorf_TO_goes_Sale]  DEFAULT ((0)) FOR [Duesseldorf_TO_goes_Sale]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Duesseldorf_WLAN_made_by_vodafone]  DEFAULT ((0)) FOR [Duesseldorf_WLAN_made_by_vodafone]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Duesseldorf_Docis]  DEFAULT ((0)) FOR [Duesseldorf_Docis]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Duesseldorf_Giga_TV]  DEFAULT ((0)) FOR [Duesseldorf_Giga_TV]
GO
ALTER TABLE [dbo].[engageT_Anmeldung] ADD  CONSTRAINT [DF_engageT_Anmeldung_Duesseldorf_per_Tube]  DEFAULT ((0)) FOR [Duesseldorf_per_Tube]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2014]  DEFAULT ((0)) FOR [SKO_2014]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_JWB_2014_2015]  DEFAULT ((0)) FOR [JWB_2014_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_Rueckblicke]  DEFAULT ((0)) FOR [Rueckblicke]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_club_2014]  DEFAULT ((0)) FOR [club_2014]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_topteam_2014]  DEFAULT ((0)) FOR [topteam_2014]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2015]  DEFAULT ((0)) FOR [SKO_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_club_2015]  DEFAULT ((0)) FOR [club_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_topteam_2015]  DEFAULT ((0)) FOR [topteam_2015]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_JWB_2015_2016]  DEFAULT ((0)) FOR [JWB_2015_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_SKO_2016]  DEFAULT ((0)) FOR [SKO_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_club_2016]  DEFAULT ((0)) FOR [club_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_topteam_2016]  DEFAULT ((0)) FOR [topteam_2016]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_JWB_2016_2017]  DEFAULT ((0)) FOR [JWB_2016_2017]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_JWB_2017_2018]  DEFAULT ((0)) FOR [JWB_2017_2018]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_club_2017]  DEFAULT ((0)) FOR [club_2017]
GO
ALTER TABLE [dbo].[enterprise_login] ADD  CONSTRAINT [DF_enterprise_login_topteam_2017]  DEFAULT ((0)) FOR [topteam_2017]
GO
ALTER TABLE [dbo].[FSS_Dortmund_Gewinnfolge] ADD  CONSTRAINT [DF_FSS_Dortmund_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Dortmund_Lose] ADD  CONSTRAINT [DF_FSS_Dortmund_Lose_Los_vergeben]  DEFAULT ((0)) FOR [Los_vergeben]
GO
ALTER TABLE [dbo].[FSS_Dortmund_Teilnehmer] ADD  CONSTRAINT [DF_FSS_Dortmund_Teilnehmer_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[FSS_Dortmund_Teilnehmer_neu] ADD  CONSTRAINT [DF_FSS_Dortmund_Teilnehmer_neu_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[FSS_Muenchen_Gewinnfolge] ADD  CONSTRAINT [DF_FSS_Muenchen_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Muenchen_Teilnehmer] ADD  CONSTRAINT [DF_FSS_Muenchen_Teilnehmer_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team1] ADD  CONSTRAINT [DF_FSS_Weihnachten_Team1_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team2] ADD  CONSTRAINT [DF_FSS_Weihnachten_Team2_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team3] ADD  CONSTRAINT [DF_FSS_Weihnachten_Team3_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team4] ADD  CONSTRAINT [DF_FSS_Weihnachten_Team4_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team5] ADD  CONSTRAINT [DF_FSS_Weihnachten_Team5_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Weihnachten_Gewinnfolge_Team6] ADD  CONSTRAINT [DF_FSS_Weihnachten_Team6_Gewinnfolge_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[FSS_Weihnachten_Lose] ADD  CONSTRAINT [DF_FSS_Weihnachten_Lose_Los_vergeben]  DEFAULT ((0)) FOR [Los_vergeben]
GO
ALTER TABLE [dbo].[Giga_Goal_Diary] ADD  CONSTRAINT [DF_Giga_Goal_Diary_Freigabe]  DEFAULT ((0)) FOR [Freigabe]
GO
ALTER TABLE [dbo].[GigaTV_Gewinnfolge_Team1] ADD  CONSTRAINT [DF_GigaTV_Gewinnfolge_Team1_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[GigaTV_Gewinnfolge_Team2] ADD  CONSTRAINT [DF_GigaTV_Gewinnfolge_Team2_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
GO
ALTER TABLE [dbo].[GigaTV_Lose] ADD  CONSTRAINT [DF_GigaTV_Lose_Los_vergeben]  DEFAULT ((0)) FOR [Los_vergeben]
GO
ALTER TABLE [dbo].[Island_2014] ADD  CONSTRAINT [DF_Island_2014_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Island_2014] ADD  CONSTRAINT [DF_Island_2014_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Island_2014] ADD  CONSTRAINT [DF_Island_2014_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Island_2014] ADD  CONSTRAINT [DF_Island_2014_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Island_2014] ADD  CONSTRAINT [DF_Island_2014_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Kambodscha_2017] ADD  CONSTRAINT [DF_Kambodscha_2017_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Kambodscha_2017] ADD  CONSTRAINT [DF_Kambodscha_2017_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Kambodscha_2017] ADD  CONSTRAINT [DF_Kambodscha_2017_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Kambodscha_2017] ADD  CONSTRAINT [DF_Kambodscha_2017_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Kambodscha_2017] ADD  CONSTRAINT [DF_Kambodscha_2017_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Kroatien_2015] ADD  CONSTRAINT [DF_Kroatien_2015_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Mauritius_2015] ADD  CONSTRAINT [DF_Mauritius_2015_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Nacht_der_Medien] ADD  CONSTRAINT [DF_Nacht_der_Medien_Anwesend]  DEFAULT ((0)) FOR [Anwesend]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[New_York_2016] ADD  CONSTRAINT [DF_New_York_2016_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung] ADD  CONSTRAINT [DF_Pathfinder_Einladung_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung] ADD  CONSTRAINT [DF_Pathfinder_Einladung_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung] ADD  CONSTRAINT [DF_Pathfinder_Einladung_Warteliste]  DEFAULT ((0)) FOR [Warteliste]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung] ADD  CONSTRAINT [DF_Pathfinder_Einladung_Absage]  DEFAULT ((0)) FOR [Absage]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung_2018] ADD  CONSTRAINT [DF_Pathfinder_Einladung_2018_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung_2018] ADD  CONSTRAINT [DF_Pathfinder_Einladung_2018_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung_2018] ADD  CONSTRAINT [DF_Pathfinder_Einladung_2018_Warteliste]  DEFAULT ((0)) FOR [Warteliste]
GO
ALTER TABLE [dbo].[Pathfinder_Einladung_2018] ADD  CONSTRAINT [DF_Pathfinder_Einladung_2018_Absage]  DEFAULT ((0)) FOR [Absage]
GO
ALTER TABLE [dbo].[Ready_Business_Day_2018_Einladung] ADD  CONSTRAINT [DF_Ready_Business_Day_2018_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Ready_Business_Day_2018_Einladung] ADD  CONSTRAINT [DF_Ready_Business_Day_2018_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[Ready_Business_Day_2018_Einladung] ADD  CONSTRAINT [DF_Ready_Business_Day_2018_Absage]  DEFAULT ((0)) FOR [Versendet]
GO
ALTER TABLE [dbo].[Ready_Business_Day_2018_Einladung] ADD  CONSTRAINT [DF_Ready_Business_Day_2018_Einladung_Ersatzperson_benannt]  DEFAULT ((0)) FOR [Ersatzperson_benannt]
GO
ALTER TABLE [dbo].[Ready_Business_Day_2018_Einladung] ADD  CONSTRAINT [DF_Ready_Business_Day_2018_Einladung_Ersatzperson_versendet]  DEFAULT ((0)) FOR [Ersatzperson_versendet]
GO
ALTER TABLE [dbo].[Retail_Forum_2017_Einladung] ADD  CONSTRAINT [DF_Retail_Forum_Einladung_Teilnahme]  DEFAULT ((0)) FOR [Teilnahme]
GO
ALTER TABLE [dbo].[Retail_Forum_2017_Einladung] ADD  CONSTRAINT [DF_Retail_Forum_Einladung_Rueckmeldung]  DEFAULT ((0)) FOR [Rueckmeldung]
GO
ALTER TABLE [dbo].[Retail_Forum_2017_Einladung] ADD  CONSTRAINT [DF_Retail_Forum_Einladung_Absage]  DEFAULT ((0)) FOR [Versendet]
GO
ALTER TABLE [dbo].[Retail_Forum_2017_Feedback] ADD  CONSTRAINT [DF_Retail_Forum_2017_Feedback_Abgeschlossen]  DEFAULT ((0)) FOR [Abgeschlossen]
GO
ALTER TABLE [dbo].[Sardinien_2017] ADD  CONSTRAINT [DF_Sardinien_2017_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Sardinien_2017] ADD  CONSTRAINT [DF_Sardinien_2017_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Sardinien_2017] ADD  CONSTRAINT [DF_Sardinien_2017_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Sardinien_2017] ADD  CONSTRAINT [DF_Sardinien_2017_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Sardinien_2017] ADD  CONSTRAINT [DF_Sardinien_2017_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[Suedafrika_2014] ADD  CONSTRAINT [DF_Suedafrika_2014_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Suedafrika_2014] ADD  CONSTRAINT [DF_Suedafrika_2014_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Suedafrika_2014] ADD  CONSTRAINT [DF_Suedafrika_2014_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Suedafrika_2014] ADD  CONSTRAINT [DF_Suedafrika_2014_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Suedafrika_2014] ADD  CONSTRAINT [DF_Suedafrika_2014_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
GO
ALTER TABLE [dbo].[vodafone_swipe] ADD  CONSTRAINT [DF_vodafone_swipe_fertig]  DEFAULT ((0)) FOR [fertig]
GO
ALTER TABLE [dbo].[vodafone_tresor_nummern] ADD  CONSTRAINT [DF_vodafone_tresor_nummern_zaehler]  DEFAULT ((0)) FOR [zaehler]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_part1]  DEFAULT ((0)) FOR [part1]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_part2]  DEFAULT ((0)) FOR [part2]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_part3]  DEFAULT ((0)) FOR [part3]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_angemeldet]  DEFAULT ((0)) FOR [angemeldet]
GO
ALTER TABLE [dbo].[Wien_2016] ADD  CONSTRAINT [DF_Wien_2016_anmeldung_frei]  DEFAULT ((1)) FOR [anmeldung_frei]
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
         Begin Table = "Giga_Goal_Standorte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 269
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Giga_Goal_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 328
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "Giga_Goal_Appzahlen"
            Begin Extent = 
               Top = 6
               Left = 605
               Bottom = 118
               Right = 790
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Giga_Goals_Team_gegen_App'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Giga_Goals_Team_gegen_App'
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
         Begin Table = "Abgleich_JWB_2014_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 173
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 213
               Right = 410
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Hilfe_JWB_2014_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Hilfe_JWB_2014_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 219
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Enterprise_SKO_2016_Abgleich"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 278
               Right = 416
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
         Width = 4905
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Kostenstellen_Tagung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Kostenstellen_Tagung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "Abgleich_100_Prozent_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 91
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 121
               Right = 410
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3495
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Kroatien_positiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Kroatien_positiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "Enterprise_SKO_2016_Abgleich"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 198
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_sko_2016_Tagung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_sko_2016_Tagung'
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
         Begin Table = "CTO_Tour_Versendung_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 185
               Right = 227
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Versand_CTO_2017'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Abgleich_Versand_CTO_2017'
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
         Begin Table = "Bragi_Standorte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 246
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bragi_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 243
               Bottom = 332
               Right = 463
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Bragi-Gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Bragi-Gesamt'
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
         Begin Table = "CEO_Tour_2017"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 234
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CEO_Tour_Versendung_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 246
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_2017_Abgleich_Ratingen_DDorf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_2017_Abgleich_Ratingen_DDorf'
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
         Begin Table = "CEO_Tour_Versendung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Abgleich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Abgleich'
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
         Begin Table = "CEO_Tour_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Teilnahmen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Teilnahmen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "CEO_Tour_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CEO_Tour_2017_Orte"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 176
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CEO_Tour_2017_Shuttleabsage"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 118
               Right = 624
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2017_Versendung_Shuttles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2017_Versendung_Shuttles'
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
         Begin Table = "CEO_Tour_2018_Versendung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2018_Abgleich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2018_Abgleich'
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
         Begin Table = "CEO_Tour_2018_projektleitung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2018_Shuttleversendung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2018_Shuttleversendung'
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
         Begin Table = "CEO_Tour_2018_Versendung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2018_Versendung_Reminder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO_Tour_2018_Versendung_Reminder'
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
         Begin Table = "CEO_Tour_Versendung_2017"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO-Tour2017_Abgleich'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CEO-Tour2017_Abgleich'
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
         Begin Table = "CTO_Tour_Versendung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 2
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CTO_Tour_Test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CTO_Tour_Test'
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
         Begin Table = "Enterprise_SKO_2018_TN_feedback"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 334
               Right = 271
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Enterprise_SKO_2018_TN"
            Begin Extent = 
               Top = 14
               Left = 433
               Bottom = 196
               Right = 648
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Enterprise_EKO_2018_TN_feedback_export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Enterprise_EKO_2018_TN_feedback_export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 209
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 213
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 37
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2014_fehlende'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2014_fehlende'
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
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 308
               Right = 244
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2014_fehlende_anmeldungen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2014_fehlende_anmeldungen'
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
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 121
               Right = 462
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2015_einladungen_abend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2015_einladungen_abend'
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
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 222
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 121
               Right = 462
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2015_einladungen_tagung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'enterprise_sko_2015_einladungen_tagung'
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
         Begin Table = "Ostern_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 230
               Right = 381
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ostern_Standorte"
            Begin Extent = 
               Top = 6
               Left = 419
               Bottom = 254
               Right = 605
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
      Begin ColumnWidths = 73
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
         Width = 150' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Knock_and_win'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Knock_and_win'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Knock_and_win'
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
         Begin Table = "Ostern_Standorte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 249
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ostern_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 243
               Bottom = 290
               Right = 564
            End
            DisplayFlags = 280
            TopColumn = 52
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 47
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
      End
   End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Osteraktion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Begin CriteriaPane = 
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Osteraktion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Osteraktion'
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'export_tui'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'export_tui'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'export_tui_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'export_tui_2015'
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
         Begin Table = "Pathfinder_Einladung_2018"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 279
               Right = 296
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Pathfinder2018_Feedback"
            Begin Extent = 
               Top = 2
               Left = 460
               Bottom = 277
               Right = 739
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
      Begin ColumnWidths = 24
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Feedback_abfrage_export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Feedback_abfrage_export'
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
         Begin Table = "Enterprise_SKO_2014_save_the_date"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'fehlende_sko_2014'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'fehlende_sko_2014'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[17] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "Giga_Art_Standorte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 296
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Giga_Art_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 321
               Right = 507
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Art_Auswertung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Art_Auswertung'
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
         Begin Table = "Giga_Cube_Campus_Voting"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 223
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Giga_Cube_Campus"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 242
               Right = 416
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Cube_Campus_Bestenliste'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Cube_Campus_Bestenliste'
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
         Begin Table = "Giga_Goal_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 322
               Right = 325
            End
            DisplayFlags = 280
            TopColumn = 58
         End
         Begin Table = "Giga_Goal_Standorte"
            Begin Extent = 
               Top = 6
               Left = 363
               Bottom = 268
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Giga_Goals_Kurzauswertung"
            Begin Extent = 
               Top = 6
               Left = 576
               Bottom = 255
               Right = 751
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Goals_Auswertung_Detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Goals_Auswertung_Detail'
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
         Begin Table = "Giga_Goal_Standorte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 301
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Giga_Goal_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 311
               Right = 567
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
      Begin ColumnWidths = 13
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Goals_Frequenzen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Goals_Frequenzen'
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
         Begin Table = "Giga_Goal_Aktionsbericht"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 306
               Right = 325
            End
            DisplayFlags = 280
            TopColumn = 59
         End
         Begin Table = "Giga_Goal_Standorte"
            Begin Extent = 
               Top = 6
               Left = 363
               Bottom = 315
               Right = 538
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
         Width = 3195
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Goals_Kurzauswertung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Giga_Goals_Kurzauswertung'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 262
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 9
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kostenstellen_SKO_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kostenstellen_SKO_2015'
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
         Begin Table = "Nacht_der_Medien_Liste_Ursprung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 247
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Nacht_der_Medien"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 248
               Right = 547
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
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 3420
         Width = 3900
         Width = 5505
         Width = 1500
         Width = 2925
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Nacht_der_Medien_Auswertung1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Nacht_der_Medien_Auswertung1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "Nacht_der_Medien"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 242
               Right = 339
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "Nacht_der_Medien_offene_Tickets"
            Begin Extent = 
               Top = 6
               Left = 377
               Bottom = 101
               Right = 547
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
         Width = 3390
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Nacht_der_Medien_nicht_abgerufene_Tickets'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Nacht_der_Medien_nicht_abgerufene_Tickets'
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
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_bahn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_bahn'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_bahn_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_bahn_2015'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_bahn_2015_abend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_bahn_2015_abend'
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
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_flug'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_flug'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_flug_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_flug_2015'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_flug_2015_abend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_flug_2015_abend'
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
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_pkw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_pkw'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_pkw_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_pkw_2015'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_pkw_2015_abend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'nachzuegler_pkw_2015_abend'
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
         Begin Table = "Ready_Business_Day_2018_Einladung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 244
               Right = 253
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rbd_Doppler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rbd_Doppler'
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
         Begin Table = "Ready_Business_Day_2018_Einladung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ready_Business_Day_2018_Feedback"
            Begin Extent = 
               Top = 6
               Left = 291
               Bottom = 261
               Right = 492
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ready_Business_Day_2018_Feedback_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ready_Business_Day_2018_Feedback_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "Retail_Forum_2017_Einladung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 251
               Right = 306
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Retail_Forum_2017_Feedback"
            Begin Extent = 
               Top = 6
               Left = 344
               Bottom = 246
               Right = 514
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
         Width = 4140
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Retail_Forum_2017_Feedback_Versendung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Retail_Forum_2017_Feedback_Versendung'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 194
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 45
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO_2015_Telefonnummern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO_2015_Telefonnummern'
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
         Begin Table = "Enterprise_SKO_2016"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Enterprise_SKO_2016_hash"
            Begin Extent = 
               Top = 6
               Left = 282
               Bottom = 121
               Right = 450
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO_2016_Tagung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO_2016_Tagung'
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
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_export_bahn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_export_bahn'
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
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_export_flug'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_export_flug'
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
         Begin Table = "Enterprise_SKO_2014"
            Begin Extent = 
               Top = 102
               Left = 38
               Bottom = 297
               Right = 244
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
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_export_pkw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_export_pkw'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_nachzuegler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2014_nachzuegler'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 256
               Right = 244
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
      Begin ColumnWidths = 32
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_export_bahn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_export_bahn'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 271
               Right = 244
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_export_flug'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_export_flug'
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
         Begin Table = "Enterprise_SKO_2015"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 270
               Right = 244
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_export_pkw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_export_pkw'
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
         Begin Table = "Enterprise_SKO_2015_Abgleich"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 245
               Right = 416
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO2015_fehlend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO2015_fehlend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[13] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 289
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Enterprise_SKO_2015_Abgleich"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 220
               Right = 416
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
         Width = 3045
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO2015_in_logins'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SKO2015_in_logins'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_nachzuegler'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_nachzuegler'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_nachzuegler_abend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'sko2015_nachzuegler_abend'
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
         Begin Table = "enterprise_login"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 13
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Versandliste_SKO_2014'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Versandliste_SKO_2014'
GO
USE [master]
GO
ALTER DATABASE [vodafone] SET  READ_WRITE 
GO
