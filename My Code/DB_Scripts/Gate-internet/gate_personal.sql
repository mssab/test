USE [master]
GO
/****** Object:  Database [gate_personal]    Script Date: 06.07.2018 11:05:52 ******/
CREATE DATABASE [gate_personal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gate_personal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_personal.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gate_personal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_personal_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gate_personal] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gate_personal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gate_personal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gate_personal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gate_personal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gate_personal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gate_personal] SET ARITHABORT OFF 
GO
ALTER DATABASE [gate_personal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gate_personal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gate_personal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gate_personal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gate_personal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gate_personal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gate_personal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gate_personal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gate_personal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gate_personal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gate_personal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gate_personal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gate_personal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gate_personal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gate_personal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gate_personal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gate_personal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gate_personal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gate_personal] SET  MULTI_USER 
GO
ALTER DATABASE [gate_personal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gate_personal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gate_personal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gate_personal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gate_personal] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gate_personal]
GO
/****** Object:  Table [dbo].[aktionen]    Script Date: 06.07.2018 11:05:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aktionen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kunde] [int] NOT NULL,
	[ueberschrift] [nvarchar](max) NOT NULL,
	[inhalt] [nvarchar](max) NOT NULL,
	[bild_url] [nvarchar](max) NOT NULL,
	[formular_art] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_aktionen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[berechtigungen]    Script Date: 06.07.2018 11:05:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[berechtigungen](
	[aktionen] [int] NOT NULL,
	[personal] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gate]    Script Date: 06.07.2018 11:05:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aktion] [int] NOT NULL,
	[personal] [int] NOT NULL,
 CONSTRAINT [PK_gate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kunden]    Script Date: 06.07.2018 11:05:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kunden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kunde] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_kunden] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 06.07.2018 11:05:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal]    Script Date: 06.07.2018 11:05:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[festnetz] [varchar](max) NULL,
	[fax] [varchar](max) NULL,
	[handy] [varchar](max) NULL,
	[handy_2] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[geburtsdatum] [date] NULL,
	[nationalitaet] [varchar](max) NULL,
	[koerpergroesse] [int] NULL,
	[konfektionsgroesse] [varchar](max) NULL,
	[schuhgroesse] [varchar](max) NULL,
	[haarfarbe] [varchar](max) NULL,
	[typ] [varchar](max) NULL,
	[teamfaehigkeit] [int] NOT NULL,
	[zuverlaessigkeit] [int] NOT NULL,
	[automobilaffin] [int] NOT NULL,
	[verkaufsberatung] [int] NOT NULL,
	[technikversiert] [int] NOT NULL,
	[spontan] [int] NOT NULL,
	[lebenslauf] [text] NULL,
	[moderator] [bit] NOT NULL,
	[verkaufsberater] [bit] NOT NULL,
	[promotor] [bit] NOT NULL,
	[fachberater] [bit] NOT NULL,
	[probefahrer] [bit] NOT NULL,
	[walkingact] [bit] NOT NULL,
	[hostess] [bit] NOT NULL,
	[kinderschminken] [bit] NOT NULL,
	[auftraggeber1] [varchar](max) NULL,
	[promotion1] [varchar](max) NULL,
	[taetigkeit1] [varchar](max) NULL,
	[auftraggeber2] [varchar](max) NULL,
	[promotion2] [varchar](max) NULL,
	[taetigkeit2] [varchar](max) NULL,
	[auftraggeber3] [varchar](max) NULL,
	[promotion3] [varchar](max) NULL,
	[taetigkeit3] [varchar](max) NULL,
	[auftraggeber4] [varchar](max) NULL,
	[promotion4] [varchar](max) NULL,
	[taetigkeit4] [varchar](max) NULL,
	[fuehrerschein_pkw] [bit] NOT NULL,
	[pkw_klassen] [varchar](max) NULL,
	[fuehrerschein_lkw] [bit] NOT NULL,
	[lkw_klassen] [varchar](max) NULL,
	[eigenes_fahrzeug] [bit] NOT NULL,
	[gewerbeschein] [bit] NOT NULL,
	[mwstbescheinigung] [bit] NOT NULL,
	[ustbefreiung] [bit] NOT NULL,
	[ortseinsatz] [bit] NOT NULL,
	[regionaleinsatz] [bit] NOT NULL,
	[reiseeinsatz] [bit] NOT NULL,
	[ganzjaehrig] [bit] NOT NULL,
	[einsatzzeitraum] [varchar](max) NULL,
	[einsatztage] [varchar](max) NULL,
	[deutsch] [bit] NOT NULL,
	[englisch] [bit] NOT NULL,
	[franzoesisch] [bit] NOT NULL,
	[italienisch] [bit] NOT NULL,
	[spanisch] [bit] NOT NULL,
	[tuerkisch] [bit] NOT NULL,
	[sonstige_sprachen] [varchar](max) NULL,
	[bemerkungen] [text] NULL,
	[sperre] [bit] NOT NULL,
	[gesperrt_durch] [varchar](max) NULL,
	[sperre_grund] [varchar](max) NULL,
	[angelegt] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Letzter_Login] [date] NULL,
	[Newsletter] [bit] NOT NULL,
	[aktiv] [bit] NOT NULL,
	[freigeschaltet] [bit] NOT NULL,
	[bilderfreigabe] [bit] NOT NULL,
	[aktionenfreigabe] [bit] NOT NULL,
	[bearbeitet] [bit] NOT NULL,
	[hash] [varchar](max) NULL,
 CONSTRAINT [PK_personal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalanfragen]    Script Date: 06.07.2018 11:05:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalanfragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personal_id] [int] NULL,
	[von] [date] NULL,
	[bis] [date] NULL,
	[Projekt] [varchar](max) NULL,
	[gebucht_von] [varchar](max) NULL,
	[eintrag] [varchar](max) NULL,
 CONSTRAINT [PK_personalanfragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalbuchungen]    Script Date: 06.07.2018 11:05:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalbuchungen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personal_id] [int] NULL,
	[Planer_id] [int] NULL,
	[einsatz_id] [int] NULL,
	[von] [date] NULL,
	[bis] [date] NULL,
	[Projekt] [varchar](max) NULL,
	[gebucht_von] [varchar](max) NULL,
	[eintrag] [varchar](max) NULL,
 CONSTRAINT [PK_personalbuchungen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalfreigaben]    Script Date: 06.07.2018 11:05:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalfreigaben](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personal_id] [int] NULL,
	[Planungstools_id] [int] NULL,
 CONSTRAINT [PK_personalfreigaben] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planungstools]    Script Date: 06.07.2018 11:05:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planungstools](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Planername] [varchar](max) NULL,
 CONSTRAINT [PK_Planungstools] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_teamfaehigkeit]  DEFAULT ((0)) FOR [teamfaehigkeit]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_zuverlaessigkeit]  DEFAULT ((0)) FOR [zuverlaessigkeit]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_automobilaffin]  DEFAULT ((0)) FOR [automobilaffin]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_verkaufsberatung]  DEFAULT ((0)) FOR [verkaufsberatung]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_technikversiert]  DEFAULT ((0)) FOR [technikversiert]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_spontan]  DEFAULT ((0)) FOR [spontan]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_moderator]  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_verkaufsberater]  DEFAULT ((0)) FOR [verkaufsberater]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_promotor]  DEFAULT ((0)) FOR [promotor]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_fachberater]  DEFAULT ((0)) FOR [fachberater]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_probefahrer]  DEFAULT ((0)) FOR [probefahrer]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_walkingact]  DEFAULT ((0)) FOR [walkingact]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_hostess]  DEFAULT ((0)) FOR [hostess]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_kinderschminken]  DEFAULT ((0)) FOR [kinderschminken]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_fuehrerschein_pkw]  DEFAULT ((0)) FOR [fuehrerschein_pkw]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_fuehrerschein_lkw]  DEFAULT ((0)) FOR [fuehrerschein_lkw]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_eigenes_fahrzeug]  DEFAULT ((0)) FOR [eigenes_fahrzeug]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_gewerbeschein]  DEFAULT ((0)) FOR [gewerbeschein]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_mwstbescheinigung]  DEFAULT ((0)) FOR [mwstbescheinigung]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_ustbefreiung]  DEFAULT ((0)) FOR [ustbefreiung]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_ortseinsatz]  DEFAULT ((0)) FOR [ortseinsatz]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_regionaleinsatz]  DEFAULT ((0)) FOR [regionaleinsatz]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_reiseeinsatz]  DEFAULT ((0)) FOR [reiseeinsatz]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_ganzjaehrig]  DEFAULT ((0)) FOR [ganzjaehrig]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_deutsch]  DEFAULT ((0)) FOR [deutsch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_englisch]  DEFAULT ((0)) FOR [englisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_franzoesisch]  DEFAULT ((0)) FOR [franzoesisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_italienisch]  DEFAULT ((0)) FOR [italienisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_spanisch]  DEFAULT ((0)) FOR [spanisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_tuerkisch]  DEFAULT ((0)) FOR [tuerkisch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_sperre]  DEFAULT ((0)) FOR [sperre]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_gesperrt_durch]  DEFAULT ((0)) FOR [gesperrt_durch]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_Newsletter]  DEFAULT ((0)) FOR [Newsletter]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_aktiv]  DEFAULT ((1)) FOR [aktiv]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_freigeschaltet]  DEFAULT ((0)) FOR [freigeschaltet]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_bilderfreigabe]  DEFAULT ((0)) FOR [bilderfreigabe]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_aktionenfreigabe]  DEFAULT ((0)) FOR [aktionenfreigabe]
GO
ALTER TABLE [dbo].[personal] ADD  CONSTRAINT [DF_personal_bearbeitet]  DEFAULT ((0)) FOR [bearbeitet]
GO
ALTER TABLE [dbo].[aktionen]  WITH CHECK ADD  CONSTRAINT [FK_aktionen_kunden] FOREIGN KEY([kunde])
REFERENCES [dbo].[kunden] ([id])
GO
ALTER TABLE [dbo].[aktionen] CHECK CONSTRAINT [FK_aktionen_kunden]
GO
ALTER TABLE [dbo].[berechtigungen]  WITH CHECK ADD  CONSTRAINT [FK_berechtigungen_aktionen] FOREIGN KEY([aktionen])
REFERENCES [dbo].[aktionen] ([id])
GO
ALTER TABLE [dbo].[berechtigungen] CHECK CONSTRAINT [FK_berechtigungen_aktionen]
GO
ALTER TABLE [dbo].[berechtigungen]  WITH CHECK ADD  CONSTRAINT [FK_berechtigungen_personal] FOREIGN KEY([personal])
REFERENCES [dbo].[personal] ([id])
GO
ALTER TABLE [dbo].[berechtigungen] CHECK CONSTRAINT [FK_berechtigungen_personal]
GO
ALTER TABLE [dbo].[gate]  WITH CHECK ADD  CONSTRAINT [FK_gate_aktionen] FOREIGN KEY([aktion])
REFERENCES [dbo].[aktionen] ([id])
GO
ALTER TABLE [dbo].[gate] CHECK CONSTRAINT [FK_gate_aktionen]
GO
ALTER TABLE [dbo].[gate]  WITH CHECK ADD  CONSTRAINT [FK_gate_personal] FOREIGN KEY([personal])
REFERENCES [dbo].[personal] ([id])
GO
ALTER TABLE [dbo].[gate] CHECK CONSTRAINT [FK_gate_personal]
GO
USE [master]
GO
ALTER DATABASE [gate_personal] SET  READ_WRITE 
GO
