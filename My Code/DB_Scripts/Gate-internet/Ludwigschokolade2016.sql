USE [master]
GO
/****** Object:  Database [Ludwigschokolade2016]    Script Date: 06.07.2018 11:13:59 ******/
CREATE DATABASE [Ludwigschokolade2016]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ludwigschokolade2016', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Ludwigschokolade2016.mdf' , SIZE = 37888KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ludwigschokolade2016_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Ludwigschokolade2016.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ludwigschokolade2016] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ludwigschokolade2016].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ludwigschokolade2016] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ludwigschokolade2016] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ludwigschokolade2016] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ludwigschokolade2016] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ludwigschokolade2016] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ludwigschokolade2016] SET  MULTI_USER 
GO
ALTER DATABASE [Ludwigschokolade2016] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ludwigschokolade2016] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ludwigschokolade2016] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ludwigschokolade2016] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Ludwigschokolade2016] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Ludwigschokolade2016]
GO
/****** Object:  Table [dbo].[ludwig_schokolade_2016_handelszentren]    Script Date: 06.07.2018 11:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ludwig_schokolade_2016_handelszentren](
	[id] [int] NOT NULL,
	[HZ] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ludwig_schokolade_2016_kaufhaustypen]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ludwig_schokolade_2016_kaufhaustypen](
	[id] [int] NOT NULL,
	[typ] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_einsatzbericht_fritt_gluecksrad]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_einsatzbericht_fritt_gluecksrad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Aktionsstandort] [int] NULL,
	[GrundAktionsstandort] [text] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[ResonanzMarkt] [int] NULL,
	[ResonanzKunden] [int] NULL,
	[GruendeResonanz] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[aktivitaeten] [text] NULL,
	[aktivitaetenSonstige] [text] NULL,
	[platzierungen] [varchar](50) NULL,
	[AnzahlPaletten] [varchar](50) NULL,
	[AnzahlDisplays] [varchar](50) NULL,
	[ProdukteWettbewerber] [varchar](max) NULL,
	[AbverkaufFruchtFlowpack] [int] NULL,
	[AbverkaufToffeeFlowpack] [int] NULL,
	[AbverkaufJoghurtFrittis] [int] NULL,
	[AbverkaufAktionssorten] [int] NULL,
	[AbverkaufMinis] [int] NULL,
	[AbverkaufSorte] [text] NULL,
	[VerkostungFruchtFlowpack] [int] NULL,
	[VerkostungToffeeFlowpack] [int] NULL,
	[VerkostungJoghurtFrittis] [int] NULL,
	[VerkostungAktionssorten] [int] NULL,
	[VerkostungMinis] [int] NULL,
	[Sonstiges] [text] NULL,
	[bemerkung_intern] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_einsatzbericht_fritt_gluecksrad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_einsatzbericht_fritt_memory]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_einsatzbericht_fritt_memory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Aktionsstandort] [int] NULL,
	[GrundAktionsstandort] [text] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[ResonanzMarkt] [int] NULL,
	[ResonanzKunden] [int] NULL,
	[GruendeResonanz] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[aktivitaeten] [text] NULL,
	[aktivitaetenSonstige] [text] NULL,
	[platzierungen] [varchar](50) NULL,
	[AnzahlPaletten] [varchar](50) NULL,
	[AnzahlDisplays] [varchar](50) NULL,
	[ProdukteWettbewerber] [varchar](50) NULL,
	[AbverkaufToffeeFlowpack] [int] NULL,
	[AbverkaufFruchtFlowpack] [int] NULL,
	[AbverkaufJoghurtFrittis] [int] NULL,
	[AbverkaufAktionssorten] [int] NULL,
	[AbverkaufMinis] [int] NULL,
	[AbverkaufSorte] [text] NULL,
	[VerkostungToffeeFlowpack] [int] NULL,
	[VerkostungFruchtFlowpack] [int] NULL,
	[VerkostungJoghurtFrittis] [int] NULL,
	[VerkostungAktionssorten] [int] NULL,
	[VerkostungMinis] [int] NULL,
	[Sonstiges] [text] NULL,
	[bemerkung_intern] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_einsatzbericht_fritt_memory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_einsatzbericht_muttertag]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_einsatzbericht_muttertag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Aktionsstandort] [int] NULL,
	[GrundAktionsstandort] [text] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[ResonanzMarkt] [int] NULL,
	[ResonantKunden] [int] NULL,
	[GruendResonanz] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[aktivitaeten] [varchar](50) NULL,
	[aktivitaetenSonstige] [text] NULL,
	[AnzahlPaletten] [int] NULL,
	[AnzahlDisplays] [int] NULL,
	[ProdukteWettbewerber] [text] NULL,
	[Preis1] [decimal](18, 2) NULL,
	[Verkauf1Tag1] [int] NULL,
	[Verkauf1Tag2] [int] NULL,
	[Verkostung1Tag1] [int] NULL,
	[Verkostung1Tag2] [int] NULL,
	[Preis2] [decimal](18, 2) NULL,
	[Verkauf2Tag1] [int] NULL,
	[Verkauf2Tag2] [int] NULL,
	[Verkostung2Tag1] [int] NULL,
	[Verkostung2Tag2] [int] NULL,
	[Preis3] [decimal](18, 2) NULL,
	[Verkauf3Tag1] [int] NULL,
	[Verkauf3Tag2] [int] NULL,
	[Verkostung3Tag1] [int] NULL,
	[Verkostung3Tag2] [int] NULL,
	[Preis4] [decimal](18, 2) NULL,
	[Verkauf4Tag1] [int] NULL,
	[Verkauf4Tag2] [int] NULL,
	[Verkostung4Tag1] [int] NULL,
	[Verkostung4Tag2] [int] NULL,
	[Preis5] [decimal](18, 2) NULL,
	[Verkauf5Tag1] [int] NULL,
	[Verkauf5Tag2] [int] NULL,
	[Verkostung5Tag1] [int] NULL,
	[Verkostung5Tag2] [int] NULL,
	[Preis6] [decimal](18, 2) NULL,
	[Verkau6Tag1] [int] NULL,
	[Verkauf6Tag2] [int] NULL,
	[Verkostung6Tag1] [int] NULL,
	[Verkostung6Tag2] [int] NULL,
	[Preis7] [decimal](18, 2) NULL,
	[Verkauf7Tag1] [int] NULL,
	[Verkauf7Tag2] [int] NULL,
	[Verkostung7Tag1] [int] NULL,
	[Verkostung7Tag2] [int] NULL,
	[Preis8] [decimal](18, 2) NULL,
	[Verkauf8Tag1] [int] NULL,
	[Verkauf8Tag2] [int] NULL,
	[Verkostung8Tag1] [int] NULL,
	[Verkostung8Tag2] [int] NULL,
	[Preis9] [decimal](18, 2) NULL,
	[Verkauf9Tag1] [int] NULL,
	[Verkauf9Tag2] [int] NULL,
	[Verkostung9Tag1] [int] NULL,
	[Verkostung9Tag2] [int] NULL,
	[Preis10] [decimal](18, 2) NULL,
	[Verkauf10Tag1] [int] NULL,
	[Verkauf10Tag2] [int] NULL,
	[Verkostung10Tag1] [int] NULL,
	[Verkostung10Tag2] [int] NULL,
	[Preis11] [decimal](18, 2) NULL,
	[Verkauf11Tag1] [int] NULL,
	[Verkauf11Tag2] [int] NULL,
	[Verkostung11Tag1] [int] NULL,
	[Verkostung11Tag2] [int] NULL,
	[Preis12] [decimal](18, 2) NULL,
	[Verkauf12Tag1] [int] NULL,
	[Verkauf12Tag2] [int] NULL,
	[Verkostung12Tag1] [int] NULL,
	[Verkostung12Tag2] [int] NULL,
	[bemerkung_intern] [text] NULL,
	[anlagedatum] [varchar](50) NULL,
 CONSTRAINT [PK_trumpf_2016_einsatzbericht_muttertag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_einsatzbericht_schogetten]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_einsatzbericht_schogetten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Aktionsstandort] [int] NULL,
	[GrundAktionsstandort] [text] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[ResonanzMarkt] [int] NULL,
	[ResonanzKunden] [int] NULL,
	[GruendeResonanz] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[aktivitaeten] [text] NULL,
	[aktivitaetenSonstige] [text] NULL,
	[platzierungen] [varchar](50) NULL,
	[AnzahlPaletten] [varchar](50) NULL,
	[AnzahlDisplays] [varchar](50) NULL,
	[ProdukteWettbewerber] [varchar](50) NULL,
	[AbverkaufSchogettenStandard] [int] NULL,
	[AbverkaufSchogettenFroop] [int] NULL,
	[AbverkaufSchogettenVanilleWaffel] [int] NULL,
	[AbverkaufSchogettenCookies] [int] NULL,
	[AbverkaufSorte] [text] NULL,
	[VerkostungSchogettenStandard] [int] NULL,
	[VerkostungSchogettenFroop] [int] NULL,
	[VerkostungSchogettenVanilleWaffel] [int] NULL,
	[VerkostungSchogettenCookies] [int] NULL,
	[Sonstiges] [text] NULL,
	[bemerkung_intern] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_einsatzbericht_schogetten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_einsatzbericht_valentinstag]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_einsatzbericht_valentinstag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Aktionsstandort] [int] NULL,
	[GrundAktionsstandort] [text] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[ResonanzMarkt] [int] NULL,
	[ResonantKunden] [int] NULL,
	[GruendResonanz] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[aktivitaeten] [varchar](50) NULL,
	[aktivitaetenSonstige] [text] NULL,
	[AnzahlPaletten] [int] NULL,
	[AnzahlDisplays] [int] NULL,
	[ProdukteWettbewerber] [text] NULL,
	[Preis1] [decimal](18, 2) NULL,
	[Verkauf1Tag1] [int] NULL,
	[Verkauf1Tag2] [int] NULL,
	[Verkostung1Tag1] [int] NULL,
	[Verkostung1Tag2] [int] NULL,
	[Preis2] [decimal](18, 2) NULL,
	[Verkauf2Tag1] [int] NULL,
	[Verkauf2Tag2] [int] NULL,
	[Verkostung2Tag1] [int] NULL,
	[Verkostung2Tag2] [int] NULL,
	[Preis3] [decimal](18, 2) NULL,
	[Verkauf3Tag1] [int] NULL,
	[Verkauf3Tag2] [int] NULL,
	[Verkostung3Tag1] [int] NULL,
	[Verkostung3Tag2] [int] NULL,
	[Preis4] [decimal](18, 2) NULL,
	[Verkauf4Tag1] [int] NULL,
	[Verkauf4Tag2] [int] NULL,
	[Verkostung4Tag1] [int] NULL,
	[Verkostung4Tag2] [int] NULL,
	[Preis5] [decimal](18, 2) NULL,
	[Verkauf5Tag1] [int] NULL,
	[Verkauf5Tag2] [int] NULL,
	[Verkostung5Tag1] [int] NULL,
	[Verkostung5Tag2] [int] NULL,
	[Preis6] [decimal](18, 2) NULL,
	[Verkau6Tag1] [int] NULL,
	[Verkauf6Tag2] [int] NULL,
	[Verkostung6Tag1] [int] NULL,
	[Verkostung6Tag2] [int] NULL,
	[Preis7] [decimal](18, 2) NULL,
	[Verkauf7Tag1] [int] NULL,
	[Verkauf7Tag2] [int] NULL,
	[Verkostung7Tag1] [int] NULL,
	[Verkostung7Tag2] [int] NULL,
	[Preis8] [decimal](18, 2) NULL,
	[Verkauf8Tag1] [int] NULL,
	[Verkauf8Tag2] [int] NULL,
	[Verkostung8Tag1] [int] NULL,
	[Verkostung8Tag2] [int] NULL,
	[Preis9] [decimal](18, 2) NULL,
	[Verkauf9Tag1] [int] NULL,
	[Verkauf9Tag2] [int] NULL,
	[Verkostung9Tag1] [int] NULL,
	[Verkostung9Tag2] [int] NULL,
	[Preis10] [decimal](18, 2) NULL,
	[Verkauf10Tag1] [int] NULL,
	[Verkauf10Tag2] [int] NULL,
	[Verkostung10Tag1] [int] NULL,
	[Verkostung10Tag2] [int] NULL,
	[Preis11] [decimal](18, 2) NULL,
	[Verkauf11Tag1] [int] NULL,
	[Verkauf11Tag2] [int] NULL,
	[Verkostung11Tag1] [int] NULL,
	[Verkostung11Tag2] [int] NULL,
	[Preis12] [decimal](18, 2) NULL,
	[Verkauf12Tag1] [int] NULL,
	[Verkauf12Tag2] [int] NULL,
	[Verkostung12Tag1] [int] NULL,
	[Verkostung12Tag2] [int] NULL,
	[bemerkung_intern] [text] NULL,
	[anlagedatum] [varchar](50) NULL,
 CONSTRAINT [PK_trumpf_2016_einsatzbericht_valentinstag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_einsatzbericht_werbedamen_klassisch]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_einsatzbericht_werbedamen_klassisch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Aktionsstandort] [int] NULL,
	[GrundAktionsstandort] [text] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[ResonanzMarkt] [int] NULL,
	[ResonantKunden] [int] NULL,
	[GruendResonanz] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[aktivitaeten] [varchar](50) NULL,
	[aktivitaetenSonstige] [text] NULL,
	[AnzahlPaletten] [int] NULL,
	[AnzahlDisplays] [int] NULL,
	[ProdukteWettbewerber] [text] NULL,
	[Preis1] [decimal](18, 2) NULL,
	[Verkauf1Tag1] [int] NULL,
	[Verkauf1Tag2] [int] NULL,
	[Verkostung1Tag1] [int] NULL,
	[Verkostung1Tag2] [int] NULL,
	[Preis2] [decimal](18, 2) NULL,
	[Verkauf2Tag1] [int] NULL,
	[Verkauf2Tag2] [int] NULL,
	[Verkostung2Tag1] [int] NULL,
	[Verkostung2Tag2] [int] NULL,
	[Preis3] [decimal](18, 2) NULL,
	[Verkauf3Tag1] [int] NULL,
	[Verkauf3Tag2] [int] NULL,
	[Verkostung3Tag1] [int] NULL,
	[Verkostung3Tag2] [int] NULL,
	[Preis4] [decimal](18, 2) NULL,
	[Verkauf4Tag1] [int] NULL,
	[Verkauf4Tag2] [int] NULL,
	[Verkostung4Tag1] [int] NULL,
	[Verkostung4Tag2] [int] NULL,
	[Preis5] [decimal](18, 2) NULL,
	[Verkauf5Tag1] [int] NULL,
	[Verkauf5Tag2] [int] NULL,
	[Verkostung5Tag1] [int] NULL,
	[Verkostung5Tag2] [int] NULL,
	[Preis6] [decimal](18, 2) NULL,
	[Verkau6Tag1] [int] NULL,
	[Verkauf6Tag2] [int] NULL,
	[Verkostung6Tag1] [int] NULL,
	[Verkostung6Tag2] [int] NULL,
	[Preis7] [decimal](18, 2) NULL,
	[Verkauf7Tag1] [int] NULL,
	[Verkauf7Tag2] [int] NULL,
	[Verkostung7Tag1] [int] NULL,
	[Verkostung7Tag2] [int] NULL,
	[Preis8] [decimal](18, 2) NULL,
	[Verkauf8Tag1] [int] NULL,
	[Verkauf8Tag2] [int] NULL,
	[Verkostung8Tag1] [int] NULL,
	[Verkostung8Tag2] [int] NULL,
	[Preis9] [decimal](18, 2) NULL,
	[Verkauf9Tag1] [int] NULL,
	[Verkauf9Tag2] [int] NULL,
	[Verkostung9Tag1] [int] NULL,
	[Verkostung9Tag2] [int] NULL,
	[Preis10] [decimal](18, 2) NULL,
	[Verkauf10Tag1] [int] NULL,
	[Verkauf10Tag2] [int] NULL,
	[Verkostung10Tag1] [int] NULL,
	[Verkostung10Tag2] [int] NULL,
	[Preis11] [decimal](18, 2) NULL,
	[Verkauf11Tag1] [int] NULL,
	[Verkauf11Tag2] [int] NULL,
	[Verkostung11Tag1] [int] NULL,
	[Verkostung11Tag2] [int] NULL,
	[Preis12] [decimal](18, 2) NULL,
	[Verkauf12Tag1] [int] NULL,
	[Verkauf12Tag2] [int] NULL,
	[Verkostung12Tag1] [int] NULL,
	[Verkostung12Tag2] [int] NULL,
	[bemerkung_intern] [text] NULL,
	[anlagedatum] [varchar](50) NULL,
 CONSTRAINT [PK_trumpf_2016_einsatzbericht_werbedamen_klassisch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_fragebogen_fritt_gluecksrad]    Script Date: 06.07.2018 11:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_fragebogen_fritt_gluecksrad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[BeurteilungPromoter] [int] NULL,
	[GrundBeurteilung] [text] NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[Abverkauf] [varchar](50) NULL,
	[GrundAbverkauf] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[VerbesserungsvorschlaegeResonanz] [text] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_fragebogen_fritt_gluecksrad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_fragebogen_fritt_memory]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_fragebogen_fritt_memory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[BeurteilungPromoter] [int] NULL,
	[GrundBeurteilung] [text] NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[Abverkauf] [varchar](50) NULL,
	[GrundAbverkauf] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[VerbesserungsvorschlaegeResonanz] [text] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_fragebogen_fritt_memory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_fragebogen_muttertag]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_fragebogen_muttertag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[BeurteilungPromoter] [int] NULL,
	[GrundBeurteilung] [text] NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[Abverkauf] [varchar](50) NULL,
	[GrundAbverkauf] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[VerbesserungsvorschlaegeResonanz] [text] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_fragebogen_muttertag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_fragebogen_osterhase]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_fragebogen_osterhase](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[BeurteilungPromoter] [int] NULL,
	[GrundBeurteilung] [text] NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[Abverkauf] [varchar](50) NULL,
	[GrundAbverkauf] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[VerbesserungsvorschlaegeResonanz] [text] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_fragebogen_osterhase] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_fragebogen_schogetten]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_fragebogen_schogetten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[BeurteilungPromoter] [int] NULL,
	[GrundBeurteilung] [text] NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[Abverkauf] [varchar](50) NULL,
	[GrundAbverkauf] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[VerbesserungsvorschlaegeResonanz] [text] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_fragebogen_schogetten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_fragebogen_valentinstag]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_fragebogen_valentinstag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[BeurteilungPromoter] [int] NULL,
	[GrundBeurteilung] [text] NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[Abverkauf] [varchar](50) NULL,
	[GrundAbverkauf] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[VerbesserungsvorschlaegeResonanz] [text] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_fragebogen_valentinstag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_fragebogen_werbedamen_klassisch]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_fragebogen_werbedamen_klassisch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[BeurteilungPromoter] [int] NULL,
	[GrundBeurteilung] [text] NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[Abverkauf] [varchar](50) NULL,
	[GrundAbverkauf] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[VerbesserungsvorschlaegeResonanz] [text] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_trumpf_2016_fragebogen_werbedamen_klassisch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_login]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_login](
	[id] [int] NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[bez] [varchar](max) NULL,
	[vl] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
	[rolle] [varchar](max) NULL,
	[werbedamen_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_projekt_fritt_gluecksrad]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_projekt_fritt_gluecksrad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aussendienstler_id] [int] NOT NULL,
	[markt_id] [int] NOT NULL,
	[aktionstag1] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstage] [int] NULL,
	[KW] [int] NULL,
	[standort] [varchar](max) NULL,
	[handling] [varchar](max) NULL,
	[equipment] [text] NULL,
	[produkt1] [int] NULL,
	[produkt2] [int] NULL,
	[produkt3] [int] NULL,
	[produkt4] [int] NULL,
	[produkt5] [int] NULL,
	[produkt6] [int] NULL,
	[anmerkungen] [text] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_projekt_fritt_memory]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_projekt_fritt_memory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aussendienstler_id] [int] NOT NULL,
	[markt_id] [int] NOT NULL,
	[aktionstag1] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstage] [int] NULL,
	[KW] [int] NULL,
	[standort] [varchar](max) NULL,
	[handling] [varchar](max) NULL,
	[equipment] [text] NULL,
	[produkt1] [int] NULL,
	[produkt2] [int] NULL,
	[produkt3] [int] NULL,
	[produkt4] [int] NULL,
	[produkt5] [int] NULL,
	[produkt6] [int] NULL,
	[anmerkungen] [text] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_projekt_muttertag]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_projekt_muttertag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aussendienstler_id] [int] NOT NULL,
	[markt_id] [int] NOT NULL,
	[aktionstag1] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstage] [int] NULL,
	[KW] [int] NULL,
	[standort] [varchar](max) NULL,
	[handling] [varchar](max) NULL,
	[equipment] [text] NULL,
	[produkt1] [int] NULL,
	[produkt2] [int] NULL,
	[produkt3] [int] NULL,
	[produkt4] [int] NULL,
	[produkt5] [int] NULL,
	[produkt6] [int] NULL,
	[produkt7] [int] NULL,
	[produkt8] [int] NULL,
	[produkt9] [int] NULL,
	[produkt10] [int] NULL,
	[produkt11] [int] NULL,
	[produkt12] [int] NULL,
	[anmerkungen] [text] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_projekt_osterhase]    Script Date: 06.07.2018 11:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_projekt_osterhase](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aussendienstler_id] [int] NOT NULL,
	[markt_id] [int] NOT NULL,
	[aktionstag1] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstag2] [datetime] NULL,
	[aktionstag2_von] [varchar](max) NULL,
	[aktionstag2_bis] [varchar](max) NULL,
	[aktionstage] [int] NULL,
	[KW] [int] NULL,
	[standort] [varchar](max) NULL,
	[handling] [varchar](max) NULL,
	[equipment] [text] NULL,
	[anmerkungen] [text] NULL,
	[produkt1] [int] NULL,
	[produkt2] [int] NULL,
	[produkt3] [int] NULL,
	[produkt4] [int] NULL,
	[produkt5] [int] NULL,
	[produkt6] [int] NULL,
	[produkt7] [int] NULL,
	[produkt8] [int] NULL,
	[produkt9] [int] NULL,
	[produkt10] [int] NULL,
	[produkt11] [int] NULL,
	[produkt12] [int] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_projekt_schogetten]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_projekt_schogetten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aussendienstler_id] [int] NOT NULL,
	[markt_id] [int] NOT NULL,
	[aktionstag1] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstage] [int] NULL,
	[KW] [int] NULL,
	[standort] [varchar](max) NULL,
	[handling] [varchar](max) NULL,
	[equipment] [text] NULL,
	[produkt1] [int] NULL,
	[produkt2] [int] NULL,
	[produkt3] [int] NULL,
	[produkt4] [int] NULL,
	[anmerkungen] [text] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_projekt_valentinstag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_projekt_valentinstag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aussendienstler_id] [int] NOT NULL,
	[markt_id] [int] NOT NULL,
	[aktionstag1] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstage] [int] NULL,
	[KW] [int] NULL,
	[standort] [varchar](max) NULL,
	[handling] [varchar](max) NULL,
	[equipment] [text] NULL,
	[produkt1] [int] NULL,
	[produkt2] [int] NULL,
	[produkt3] [int] NULL,
	[produkt4] [int] NULL,
	[produkt5] [int] NULL,
	[produkt6] [int] NULL,
	[produkt7] [int] NULL,
	[produkt8] [int] NULL,
	[produkt9] [int] NULL,
	[produkt10] [int] NULL,
	[produkt11] [int] NULL,
	[produkt12] [int] NULL,
	[anmerkungen] [text] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_2016_projekt_werbedamen_klassisch]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_2016_projekt_werbedamen_klassisch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aussendienstler_id] [int] NOT NULL,
	[markt_id] [int] NOT NULL,
	[aktionstag1] [datetime] NULL,
	[aktionstag1_von] [varchar](max) NULL,
	[aktionstag1_bis] [varchar](max) NULL,
	[aktionstag2] [datetime] NULL,
	[aktionstag2_von] [varchar](max) NULL,
	[aktionstag2_bis] [varchar](max) NULL,
	[aktionstage] [int] NULL,
	[KW] [int] NULL,
	[standort] [varchar](max) NULL,
	[handling] [varchar](max) NULL,
	[equipment] [text] NULL,
	[anmerkungen] [text] NULL,
	[produkt1] [int] NULL,
	[produkt2] [int] NULL,
	[produkt3] [int] NULL,
	[produkt4] [int] NULL,
	[produkt5] [int] NULL,
	[produkt6] [int] NULL,
	[produkt7] [int] NULL,
	[produkt8] [int] NULL,
	[produkt9] [int] NULL,
	[produkt10] [int] NULL,
	[produkt11] [int] NULL,
	[produkt12] [int] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_bezirke]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_bezirke](
	[ID_bezirk] [int] NOT NULL,
	[VL] [nchar](10) NULL,
	[BEZ] [nvarchar](255) NULL,
	[Anrede] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[PLZ] [nvarchar](255) NULL,
	[Ort] [nvarchar](255) NULL,
	[Strasse] [nvarchar](255) NULL,
	[Telefon] [nvarchar](255) NULL,
	[kurz] [float] NULL,
	[Mobil] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL,
	[ID] [int] NOT NULL,
	[email_krueger] [nvarchar](50) NULL,
	[email_ludwig] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_keyaccounts]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_keyaccounts](
	[id] [int] NOT NULL,
	[KeyAccount] [nvarchar](255) NULL,
	[Anrede] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[PLZ] [nvarchar](255) NULL,
	[Ort] [nvarchar](255) NULL,
	[Strasse] [nvarchar](255) NULL,
	[Telefon] [nvarchar](255) NULL,
	[Mobil] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_maerkte]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_maerkte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ID_bezirk] [int] NULL,
	[BVL] [nvarchar](255) NULL,
	[AD] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[PLZ] [nvarchar](max) NULL,
	[Ort] [nvarchar](255) NULL,
	[Strasse] [nvarchar](255) NULL,
	[APMarkt] [nvarchar](255) NULL,
	[Telefon] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL,
	[Marktleiter] [nvarchar](255) NULL,
	[Handelszentrale] [nvarchar](255) NULL,
	[Typ] [nvarchar](255) NULL,
 CONSTRAINT [PK_trumpf_maerkte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trumpf_werbedamen]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trumpf_werbedamen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[Nachname] [nvarchar](255) NULL,
	[Straße] [nvarchar](255) NULL,
	[PLZ] [float] NULL,
	[Ort] [nvarchar](255) NULL,
	[Telefonnummer] [nvarchar](255) NULL,
	[Festnetz] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL,
	[Mail] [nvarchar](255) NULL,
	[Fotos] [nvarchar](255) NULL,
	[Konfektionsgröße] [nvarchar](255) NULL,
	[Aussendienst] [nvarchar](255) NULL,
	[Equipment] [nvarchar](255) NULL,
	[Note] [float] NULL,
	[Gewerbeschein] [float] NULL,
	[MWst] [float] NULL,
	[Rahmenvertrag] [float] NULL,
	[Gesundheitszeugnis] [float] NULL,
	[foto] [varchar](50) NULL,
	[aktiv] [int] NULL,
	[passwort] [varchar](50) NULL,
 CONSTRAINT [PK_trumpf_werbedamen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[auswertung_2016_einsatzbericht_fritt_gluecksrad]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_einsatzbericht_fritt_gluecksrad]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstage AS ET, dbo.trumpf_maerkte.Name AS Kunde, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_projekt_fritt_gluecksrad.KW, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.KundenkontakteMitBeratung AS [Mit Beratung], 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.KundenkontakteOhneBeratung AS [Ohne Beratung], 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.KundenkontakteGesamt AS Gesamt, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufFruchtFlowpack AS Verkauf1, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufToffeeFlowpack AS Verkauf2, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufJoghurtFrittis AS Verkauf3, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufAktionssorten AS Verkauf4, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufMinis AS Verkauf5, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufSorte AS [Beliebteste Sorte], 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungFruchtFlowpack AS Verkostung1, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungToffeeFlowpack AS Verkostung2, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungJoghurtFrittis AS Verkostung3, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungAktionssorten AS Verkostung4, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungMinis AS Verkostung5, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.Sonstiges, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.bemerkung_intern, dbo.trumpf_werbedamen.Anrede + N' ' + dbo.trumpf_werbedamen.Nachname AS Promoter, 
                      dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Strasse, dbo.trumpf_werbedamen.Vorname, 
                      dbo.trumpf_werbedamen.Nachname, dbo.trumpf_2016_projekt_fritt_gluecksrad.id, dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1_von, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1_bis, dbo.trumpf_2016_projekt_fritt_gluecksrad.produkt1, dbo.trumpf_2016_projekt_fritt_gluecksrad.produkt2, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.produkt3, dbo.trumpf_2016_projekt_fritt_gluecksrad.produkt4, dbo.trumpf_2016_projekt_fritt_gluecksrad.produkt5, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.produkt6, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.projekt_id, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.ZweitplatzierungPaletten, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.ZweitplatzierungDisplays, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.Aktionsstandort, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.aktivitaeten
FROM         dbo.trumpf_2016_projekt_fritt_gluecksrad INNER JOIN
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad ON 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.id = dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.projekt_id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_gluecksrad.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_gluecksrad.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_fritt_gluecksrad.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[Zusammenfassung_fritt_gluecksrad_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_fritt_gluecksrad_2016]
AS
SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_fritt_gluecksrad
UNION
SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_fritt_gluecksrad

GO
/****** Object:  View [dbo].[auswertung_2016_einsatzbericht_fritt_memory]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_einsatzbericht_fritt_memory]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_werbedamen.Vorname, 
                      dbo.trumpf_werbedamen.Nachname, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.BVL, 
                      dbo.trumpf_2016_projekt_fritt_memory.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_fritt_memory.aktionstag1_von, 
                      dbo.trumpf_2016_projekt_fritt_memory.aktionstag1_bis, dbo.trumpf_2016_projekt_fritt_memory.aktionstage AS ET, dbo.trumpf_2016_projekt_fritt_memory.KW, 
                      dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_einsatzbericht_fritt_memory.KundenkontakteMitBeratung AS [Mit Beratung], 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.Aktionsstandort, dbo.trumpf_2016_einsatzbericht_fritt_memory.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_fritt_memory.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.KundenkontakteOhneBeratung AS [Ohne Beratung], 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.KundenkontakteGesamt AS Gesamt, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufToffeeFlowpack AS Verkauf1, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufFruchtFlowpack AS Verkauf2, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufJoghurtFrittis AS Verkauf3, dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufAktionssorten AS Verkauf4,
                       dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufMinis AS Verkauf5, dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufSorte AS [Beliebteste Sorte], 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungToffeeFlowpack AS Verkostung1, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungFruchtFlowpack AS Verkostung2, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungJoghurtFrittis AS Verkostung3, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungAktionssorten AS Verkostung4, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungMinis AS Verkostung5, dbo.trumpf_2016_einsatzbericht_fritt_memory.Sonstiges, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.bemerkung_intern, dbo.trumpf_werbedamen.Anrede + N' ' + dbo.trumpf_werbedamen.Nachname AS Promoter, 
                      dbo.trumpf_2016_projekt_fritt_memory.id, dbo.trumpf_2016_einsatzbericht_fritt_memory.projekt_id, dbo.trumpf_2016_projekt_fritt_memory.produkt1, 
                      dbo.trumpf_2016_projekt_fritt_memory.produkt2, dbo.trumpf_2016_projekt_fritt_memory.produkt3, dbo.trumpf_2016_projekt_fritt_memory.produkt4, 
                      dbo.trumpf_2016_projekt_fritt_memory.produkt5, dbo.trumpf_2016_projekt_fritt_memory.produkt6
FROM         dbo.trumpf_2016_projekt_fritt_memory INNER JOIN
                      dbo.trumpf_2016_einsatzbericht_fritt_memory ON dbo.trumpf_2016_projekt_fritt_memory.id = dbo.trumpf_2016_einsatzbericht_fritt_memory.projekt_id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_memory.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_memory.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_fritt_memory.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[Zusammenfassung_fritt_memory_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_fritt_memory_2016]
AS
SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_fritt_memory

union

SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_fritt_memory

GO
/****** Object:  View [dbo].[auswertung_2016_einsatzbericht_schogetten]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_einsatzbericht_schogetten]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_schogetten.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_schogetten.aktionstage AS ET, dbo.trumpf_maerkte.Name AS Kunde, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_projekt_schogetten.KW, dbo.trumpf_2016_einsatzbericht_schogetten.KundenkontakteMitBeratung AS [Mit Beratung], 
                      dbo.trumpf_2016_einsatzbericht_schogetten.KundenkontakteOhneBeratung AS [Ohne Beratung], 
                      dbo.trumpf_2016_einsatzbericht_schogetten.KundenkontakteGesamt AS Gesamt, dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenStandard, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenFroop, dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenVanilleWaffel, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenCookies, dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenStandard, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenFroop, dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenVanilleWaffel, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenCookies, dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSorte AS [Beliebteste Sorte], 
                      dbo.trumpf_2016_einsatzbericht_schogetten.Sonstiges, dbo.trumpf_werbedamen.Anrede + N' ' + dbo.trumpf_werbedamen.Nachname AS Promoter, 
                      dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Strasse, dbo.trumpf_werbedamen.Vorname, 
                      dbo.trumpf_werbedamen.Nachname, dbo.trumpf_2016_projekt_schogetten.id, dbo.trumpf_2016_projekt_schogetten.aktionstag1_von, 
                      dbo.trumpf_2016_projekt_schogetten.aktionstag1_bis, dbo.trumpf_2016_projekt_schogetten.produkt1, dbo.trumpf_2016_projekt_schogetten.produkt2, 
                      dbo.trumpf_2016_projekt_schogetten.produkt3, dbo.trumpf_2016_projekt_schogetten.produkt4, dbo.trumpf_2016_einsatzbericht_schogetten.projekt_id, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.Aktionsstandort, dbo.trumpf_2016_einsatzbericht_schogetten.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_schogetten.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.bemerkung_intern
FROM         dbo.trumpf_2016_projekt_schogetten INNER JOIN
                      dbo.trumpf_2016_einsatzbericht_schogetten ON dbo.trumpf_2016_projekt_schogetten.id = dbo.trumpf_2016_einsatzbericht_schogetten.projekt_id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_schogetten.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_schogetten.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_schogetten.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[Zusammenfassung_schogetten_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_schogetten_2016]
AS

SELECT     'Verkostung' AS Info, VerkostungSchogettenStandard, VerkostungSchogettenFroop, VerkostungSchogettenVanilleWaffel, VerkostungSchogettenCookies, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_schogetten

union

SELECT     'Verkauf' AS Info, AbverkaufSchogettenStandard, AbverkaufSchogettenFroop, AbverkaufSchogettenVanilleWaffel, AbverkaufSchogettenCookies, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_schogetten

GO
/****** Object:  View [dbo].[auswertung_2016_einsatzbericht_muttertag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_einsatzbericht_muttertag]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_muttertag.aktionstag1, dbo.trumpf_2016_projekt_muttertag.KW, dbo.trumpf_2016_projekt_muttertag.aktionstage, dbo.trumpf_maerkte.AD, 
                      dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_werbedamen.Anrede + N' ' + dbo.trumpf_werbedamen.Nachname AS Promoter, dbo.trumpf_2016_einsatzbericht_muttertag.Preis1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf1Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf1Tag2 AS Verkauf1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung1Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung1Tag2 AS Verkostung1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf2Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf2Tag2 AS Verkauf2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung2Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung2Tag2 AS Verkostung2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis3, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf3Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf3Tag2 AS Verkauf3, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung3Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung3Tag2 AS Verkostung3, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis4, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf4Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf4Tag2 AS Verkauf4, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung4Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung4Tag2 AS Verkostung4, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis5, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf5Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf5Tag2 AS Verkauf5, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung5Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung5Tag2 AS Verkostung5, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis6, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkau6Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf6Tag2 AS Verkauf6, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung6Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung6Tag2 AS Verkostung6, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis7, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf7Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf7Tag2 AS Verkauf7, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung7Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung7Tag2 AS Verkostung7, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis8, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf8Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf8Tag2 AS Verkauf8, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung8Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung8Tag2 AS Verkostung8, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis9, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf9Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf9Tag2 AS Verkauf9, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung9Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung9Tag2 AS Verkostung9, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis10, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf10Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf10Tag2 AS Verkauf10, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung10Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung10Tag2 AS Verkostung10, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis11, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf11Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf11Tag2 AS Verkauf11, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung11Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung11Tag2 AS Verkostung11, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis12, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf12Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf12Tag2 AS Verkauf12, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung12Tag1 + dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung12Tag2 AS Verkostung12, 
                      dbo.trumpf_werbedamen.Vorname, dbo.trumpf_werbedamen.Nachname, dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.Strasse, dbo.trumpf_2016_projekt_muttertag.id, 
                      dbo.trumpf_2016_projekt_muttertag.aktionstag1_von, dbo.trumpf_2016_projekt_muttertag.aktionstag1_bis, dbo.trumpf_2016_projekt_muttertag.produkt1, 
                      dbo.trumpf_2016_projekt_muttertag.produkt2, dbo.trumpf_2016_projekt_muttertag.produkt3, dbo.trumpf_2016_projekt_muttertag.produkt4, 
                      dbo.trumpf_2016_projekt_muttertag.produkt5, dbo.trumpf_2016_projekt_muttertag.produkt6, dbo.trumpf_2016_projekt_muttertag.produkt7, 
                      dbo.trumpf_2016_projekt_muttertag.produkt8, dbo.trumpf_2016_projekt_muttertag.produkt9, dbo.trumpf_2016_projekt_muttertag.produkt10, 
                      dbo.trumpf_2016_projekt_muttertag.produkt11, dbo.trumpf_2016_projekt_muttertag.produkt12, dbo.trumpf_2016_einsatzbericht_muttertag.projekt_id, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.KundenkontakteMitBeratung, dbo.trumpf_2016_einsatzbericht_muttertag.KundenkontakteOhneBeratung, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Aktionsstandort, dbo.trumpf_2016_einsatzbericht_muttertag.KundenkontakteGesamt, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.ZweitplatzierungPaletten, dbo.trumpf_2016_einsatzbericht_muttertag.ZweitplatzierungDisplays, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.aktivitaeten, dbo.trumpf_2016_einsatzbericht_muttertag.bemerkung_intern
FROM         dbo.trumpf_2016_projekt_muttertag INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_muttertag.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_muttertag.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_2016_einsatzbericht_muttertag ON dbo.trumpf_2016_projekt_muttertag.id = dbo.trumpf_2016_einsatzbericht_muttertag.projekt_id INNER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_muttertag.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[Zusammenfassung_muttertag_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Zusammenfassung_muttertag_2016]
AS
SELECT     'Preis' AS Info, Preis1, Preis2, Preis3, Preis4, Preis5, Preis6, Preis7, Preis8, Preis9, Preis10, Preis11, Preis12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_muttertag
UNION
SELECT     'Reinverkauf (Displays)' AS Info, produkt1, produkt2, produkt3, produkt4, produkt5, produkt6, produkt7, produkt8, produkt9, produkt10, produkt11, produkt12, id
FROM         dbo.trumpf_2016_projekt_muttertag
UNION
SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, Verkauf6, Verkauf7, Verkauf8, Verkauf9, Verkauf10, Verkauf11, Verkauf12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_muttertag
UNION
SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, Verkostung6, Verkostung7, Verkostung8, Verkostung9, Verkostung10, 
                      Verkostung11, Verkostung12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_muttertag


GO
/****** Object:  View [dbo].[auswertung_2016_einsatzbericht_valentinstag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_einsatzbericht_valentinstag]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_valentinstag.aktionstag1, dbo.trumpf_2016_projekt_valentinstag.KW, dbo.trumpf_2016_projekt_valentinstag.aktionstage, 
                      dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_werbedamen.Anrede + N' ' + dbo.trumpf_werbedamen.Nachname AS Promoter, dbo.trumpf_2016_einsatzbericht_valentinstag.Preis1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf1Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf1Tag2 AS Verkauf1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung1Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung1Tag2 AS Verkostung1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf2Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf2Tag2 AS Verkauf2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung2Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung2Tag2 AS Verkostung2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis3, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf3Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf3Tag2 AS Verkauf3, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung3Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung3Tag2 AS Verkostung3, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis4, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf4Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf4Tag2 AS Verkauf4, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung4Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung4Tag2 AS Verkostung4, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis5, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf5Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf5Tag2 AS Verkauf5, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung5Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung5Tag2 AS Verkostung5, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis6, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkau6Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf6Tag2 AS Verkauf6, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung6Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung6Tag2 AS Verkostung6, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis7, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf7Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf7Tag2 AS Verkauf7, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung7Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung7Tag2 AS Verkostung7, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis8, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf8Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf8Tag2 AS Verkauf8, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung8Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung8Tag2 AS Verkostung8, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis9, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf9Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf9Tag2 AS Verkauf9, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung9Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung9Tag2 AS Verkostung9, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis10, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf10Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf10Tag2 AS Verkauf10, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung10Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung10Tag2 AS Verkostung10, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis11, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf11Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf11Tag2 AS Verkauf11, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung11Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung11Tag2 AS Verkostung11, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis12, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf12Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf12Tag2 AS Verkauf12, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung12Tag1 + dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung12Tag2 AS Verkostung12, 
                      dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.Strasse, dbo.trumpf_werbedamen.Vorname, dbo.trumpf_werbedamen.Nachname, 
                      dbo.trumpf_2016_projekt_valentinstag.id, dbo.trumpf_2016_projekt_valentinstag.aktionstag1_von, dbo.trumpf_2016_projekt_valentinstag.aktionstag1_bis, 
                      dbo.trumpf_2016_projekt_valentinstag.produkt1, dbo.trumpf_2016_projekt_valentinstag.produkt2, dbo.trumpf_2016_projekt_valentinstag.produkt3, 
                      dbo.trumpf_2016_projekt_valentinstag.produkt4, dbo.trumpf_2016_projekt_valentinstag.produkt5, dbo.trumpf_2016_projekt_valentinstag.produkt6, 
                      dbo.trumpf_2016_projekt_valentinstag.produkt7, dbo.trumpf_2016_projekt_valentinstag.produkt8, dbo.trumpf_2016_projekt_valentinstag.produkt9, 
                      dbo.trumpf_2016_projekt_valentinstag.produkt10, dbo.trumpf_2016_projekt_valentinstag.produkt11, dbo.trumpf_2016_projekt_valentinstag.produkt12, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.projekt_id, dbo.trumpf_2016_einsatzbericht_valentinstag.KundenkontakteMitBeratung, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.KundenkontakteOhneBeratung, dbo.trumpf_2016_einsatzbericht_valentinstag.Aktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.KundenkontakteGesamt, dbo.trumpf_2016_einsatzbericht_valentinstag.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_valentinstag.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.bemerkung_intern
FROM         dbo.trumpf_2016_projekt_valentinstag INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_valentinstag.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_valentinstag.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_2016_einsatzbericht_valentinstag ON dbo.trumpf_2016_projekt_valentinstag.id = dbo.trumpf_2016_einsatzbericht_valentinstag.projekt_id INNER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_valentinstag.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[Zusammenfassung_valentinstag_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Zusammenfassung_valentinstag_2016]
AS
SELECT     'Preis' AS Info, Preis1, Preis2, Preis3, Preis4, Preis5, Preis6, Preis7, Preis8, Preis9, Preis10, Preis11, Preis12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_valentinstag
UNION
SELECT     'Reinverkauf (Displays)' AS Info, produkt1, produkt2, produkt3, produkt4, produkt5, produkt6, produkt7, produkt8, produkt9, produkt10, produkt11, produkt12, id
FROM         dbo.trumpf_2016_projekt_valentinstag
UNION
SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, Verkauf6, Verkauf7, Verkauf8, Verkauf9, Verkauf10, Verkauf11, Verkauf12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_valentinstag
UNION
SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, Verkostung6, Verkostung7, Verkostung8, Verkostung9, Verkostung10, 
                      Verkostung11, Verkostung12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_valentinstag


GO
/****** Object:  View [dbo].[auswertung_2016_einsatzbericht_werbedamen_klassisch]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_einsatzbericht_werbedamen_klassisch]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag2, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.KW, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstage, dbo.trumpf_maerkte.AD, 
                      dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_werbedamen.Anrede + N' ' + dbo.trumpf_werbedamen.Nachname AS Promoter, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf1Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf1Tag2 AS Verkauf1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung1Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung1Tag2 AS Verkostung1,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf2Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf2Tag2 AS Verkauf2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung2Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung2Tag2 AS Verkostung2,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis3, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf3Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf3Tag2 AS Verkauf3, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung3Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung3Tag2 AS Verkostung3,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis4, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf4Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf4Tag2 AS Verkauf4, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung4Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung4Tag2 AS Verkostung4,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis5, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf5Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf5Tag2 AS Verkauf5, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung5Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung5Tag2 AS Verkostung5,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis6, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkau6Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf6Tag2 AS Verkauf6, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung6Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung6Tag2 AS Verkostung6,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis7, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf7Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf7Tag2 AS Verkauf7, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung7Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung7Tag2 AS Verkostung7,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis8, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf8Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf8Tag2 AS Verkauf8, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung8Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung8Tag2 AS Verkostung8,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis9, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf9Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf9Tag2 AS Verkauf9, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung9Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung9Tag2 AS Verkostung9,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis10, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf10Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf10Tag2 AS Verkauf10, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung10Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung10Tag2 AS Verkostung10,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf11Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf11Tag2 AS Verkauf11, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung11Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung11Tag2 AS Verkostung11,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis12, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf12Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf12Tag2 AS Verkauf12, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung12Tag1 + dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung12Tag2 AS Verkostung12,
                       dbo.trumpf_2016_projekt_werbedamen_klassisch.id, dbo.trumpf_maerkte.BVL, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1_von, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1_bis, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag2_von, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag2_bis, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.KundenkontakteMitBeratung, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.KundenkontakteOhneBeratung, dbo.trumpf_werbedamen.Vorname, dbo.trumpf_werbedamen.Nachname, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt1, dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt2, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt3, dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt4, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt5, dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt6, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt7, dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt8, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt9, dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt10, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt11, dbo.trumpf_2016_projekt_werbedamen_klassisch.produkt12, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis11, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.projekt_id, dbo.trumpf_maerkte.Strasse, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Aktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.KundenkontakteGesamt, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.bemerkung_intern
FROM         dbo.trumpf_2016_projekt_werbedamen_klassisch INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_werbedamen_klassisch.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_werbedamen_klassisch.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch ON 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.id = dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.projekt_id INNER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_werbedamen_klassisch.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[Zusammenfassung_werbedamen_klassisch_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_werbedamen_klassisch_2016]
AS
SELECT     'Preis' AS Info, Preis1, Preis2, Preis3, Preis4, Preis5, Preis6, Preis7, Preis8, Preis9, Preis10, Preis11, Preis12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_werbedamen_klassisch

union

SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, Verkostung6, Verkostung7, Verkostung8, Verkostung9, 
                      Verkostung10, Verkostung11, Verkostung12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_werbedamen_klassisch

union

SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, Verkauf6, Verkauf7, Verkauf8, Verkauf9, Verkauf10, Verkauf11, Verkauf12, projekt_id
FROM         dbo.auswertung_2016_einsatzbericht_werbedamen_klassisch

union

SELECT     'Reinverkauf (Displays)' AS Info, produkt1, produkt2, produkt3, produkt4, produkt5, produkt6, produkt7, produkt8, produkt9, produkt10, produkt11, produkt12, id
FROM         dbo.trumpf_2016_projekt_werbedamen_klassisch

GO
/****** Object:  View [dbo].[Kundenexport_Fritt_GR]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Fritt_GR]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.BEZ, dbo.trumpf_bezirke.Name AS AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, dbo.trumpf_2016_projekt_fritt_gluecksrad.KW, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1, dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1 AS aktionstag2, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstage AS ET, 'Fritt Glücksrad' AS Aktion, 'Ludwigschokolade' AS Bereich, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.anlagedatum
FROM         dbo.trumpf_2016_projekt_fritt_gluecksrad INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_gluecksrad.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_gluecksrad.aussendienstler_id = dbo.trumpf_bezirke.ID LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_fritt_gluecksrad.werbedame = dbo.trumpf_werbedamen.id
ORDER BY dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1
GO
/****** Object:  View [dbo].[Kundenexport_Fritt_Memory]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Fritt_Memory]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.BEZ, dbo.trumpf_bezirke.Name AS AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, dbo.trumpf_2016_projekt_fritt_memory.KW, 
                      dbo.trumpf_2016_projekt_fritt_memory.aktionstag1, dbo.trumpf_2016_projekt_fritt_memory.aktionstag1 AS aktionstag2, 
                      dbo.trumpf_2016_projekt_fritt_memory.aktionstage AS ET, 'Fritt Memory' AS Aktion, 'Ludwigschokolade' AS Bereich, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_fritt_memory.anlagedatum
FROM         dbo.trumpf_2016_projekt_fritt_memory INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_memory.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_memory.aussendienstler_id = dbo.trumpf_bezirke.ID LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_fritt_memory.werbedame = dbo.trumpf_werbedamen.id
ORDER BY dbo.trumpf_2016_projekt_fritt_memory.aktionstag1
GO
/****** Object:  View [dbo].[Kundenexport_Muttertag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Muttertag]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.BEZ, dbo.trumpf_bezirke.Name AS AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, dbo.trumpf_2016_projekt_muttertag.KW, 
                      dbo.trumpf_2016_projekt_muttertag.aktionstag1, dbo.trumpf_2016_projekt_muttertag.aktionstag1 AS aktionstag2, 
                      dbo.trumpf_2016_projekt_muttertag.aktionstage AS ET, 'Rosen zum Muttertag' AS Aktion, 'Ludwigschokolade' AS Bereich, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_muttertag.anlagedatum
FROM         dbo.trumpf_2016_projekt_muttertag INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_muttertag.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_muttertag.aussendienstler_id = dbo.trumpf_bezirke.ID LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_muttertag.werbedame = dbo.trumpf_werbedamen.id
ORDER BY dbo.trumpf_2016_projekt_muttertag.aktionstag1
GO
/****** Object:  View [dbo].[Kundenexport_Osterhase]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Osterhase]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.BEZ, dbo.trumpf_bezirke.Name AS AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, dbo.trumpf_2016_projekt_osterhase.KW, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstag1, dbo.trumpf_2016_projekt_osterhase.aktionstag1 AS aktionstag2, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstage AS ET, 'Osterhase' AS Aktion, 'Ludwigschokolade' AS Bereich, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_osterhase.anlagedatum
FROM         dbo.trumpf_2016_projekt_osterhase INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_osterhase.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_osterhase.aussendienstler_id = dbo.trumpf_bezirke.ID LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_osterhase.werbedame = dbo.trumpf_werbedamen.id
ORDER BY dbo.trumpf_2016_projekt_osterhase.aktionstag1
GO
/****** Object:  View [dbo].[Kundenexport_Schogetten]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Schogetten]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.BEZ, dbo.trumpf_bezirke.Name AS AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, dbo.trumpf_2016_projekt_schogetten.KW, 
                      dbo.trumpf_2016_projekt_schogetten.aktionstag1, dbo.trumpf_2016_projekt_schogetten.aktionstag1 AS aktionstag2, 
                      dbo.trumpf_2016_projekt_schogetten.aktionstage AS ET, 'Schogetten Glücksrad' AS Aktion, 'Ludwigschokolade' AS Bereich, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_schogetten.anlagedatum
FROM         dbo.trumpf_2016_projekt_schogetten INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_schogetten.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_schogetten.aussendienstler_id = dbo.trumpf_bezirke.ID LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_schogetten.werbedame = dbo.trumpf_werbedamen.id
ORDER BY dbo.trumpf_2016_projekt_schogetten.aktionstag1
GO
/****** Object:  View [dbo].[Kundenexport_Valentinstag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Valentinstag]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.BEZ, dbo.trumpf_bezirke.Name AS AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, dbo.trumpf_2016_projekt_valentinstag.KW, 
                      dbo.trumpf_2016_projekt_valentinstag.aktionstag1, dbo.trumpf_2016_projekt_valentinstag.aktionstag1 AS aktionstag2, 
                      dbo.trumpf_2016_projekt_valentinstag.aktionstage AS ET, 'Valentinstag' AS Aktion, 'Ludwigschokolade' AS Bereich, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_valentinstag.anlagedatum
FROM         dbo.trumpf_2016_projekt_valentinstag INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_valentinstag.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_valentinstag.aussendienstler_id = dbo.trumpf_bezirke.ID LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_valentinstag.werbedame = dbo.trumpf_werbedamen.id
ORDER BY dbo.trumpf_2016_projekt_valentinstag.aktionstag1
GO
/****** Object:  View [dbo].[Kundenexport_Werbedamen]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Werbedamen]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.BEZ, dbo.trumpf_bezirke.Name AS AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, dbo.trumpf_2016_projekt_werbedamen_klassisch.KW, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag2, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstage AS ET, 'Werbedamen klassisch' AS Aktion, 'Ludwigschokolade' AS Bereich, 
                      dbo.trumpf_maerkte.Typ, dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.anlagedatum
FROM         dbo.trumpf_2016_projekt_werbedamen_klassisch INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_werbedamen_klassisch.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_werbedamen_klassisch.aussendienstler_id = dbo.trumpf_bezirke.ID LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_werbedamen_klassisch.werbedame = dbo.trumpf_werbedamen.id
ORDER BY dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1
GO
/****** Object:  View [dbo].[Kundenexport_Ludwig]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kundenexport_Ludwig]
AS
SELECT        *
FROM            Kundenexport_Fritt_GR
UNION ALL
SELECT        *
FROM            Kundenexport_Fritt_Memory
UNION ALL
SELECT        *
FROM            Kundenexport_Muttertag
UNION ALL
SELECT        *
FROM            Kundenexport_Osterhase
UNION ALL
SELECT        *
FROM            Kundenexport_Schogetten
UNION ALL
SELECT        *
FROM            Kundenexport_Valentinstag
UNION ALL
SELECT        *
FROM            Kundenexport_Werbedamen
UNION ALL
SELECT        *
FROM            krueger_kaffee2016.dbo.Kundenexport_Chai_Latte
UNION ALL
SELECT        *
FROM            krueger_kaffee2016.dbo.Kundenexport_Tea_Latte
UNION ALL
SELECT        *
FROM            krueger_kaffee2016.dbo.Kundenexport_Iced
UNION ALL
SELECT        *
FROM            krueger_kaffee2016.dbo.Kundenexport_Sommersorten
UNION ALL
SELECT        *
FROM            krueger_kaffee2016.dbo.Kundenexport_Dolce_Vita
UNION ALL
SELECT        *
FROM            krueger_kaffee2016.dbo.Kundenexport_Dolce_Vita_kompaktat
GO
/****** Object:  View [dbo].[trumpf_2016_werbedamen_einsatztage]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[trumpf_2016_werbedamen_einsatztage]
AS
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_osterhase].[markt_id], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_osterhase].[aktionstag1], [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_osterhase].[werbedame], 
                      'Osterhase' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_osterhase] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_osterhase].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_osterhase].[aktionstag1] IS NOT NULL)
UNION
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_gluecksrad].[markt_id], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_gluecksrad].[aktionstag1], 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_gluecksrad].[werbedame], 'Fritt Glücksrad' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_gluecksrad] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_gluecksrad].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_gluecksrad].[aktionstag1] IS NOT NULL)
UNION
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_memory].[markt_id], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_memory].[aktionstag1], 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_memory].[werbedame], 'Fritt Memory' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_memory] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_memory].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_fritt_memory].[aktionstag1] IS NOT NULL)
UNION
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_muttertag].[markt_id], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_muttertag].[aktionstag1], 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_muttertag].[werbedame], 'Muttertag' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_muttertag] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_muttertag].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_muttertag].[aktionstag1] IS NOT NULL)
UNION
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_schogetten].[markt_id], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_schogetten].[aktionstag1], 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_schogetten].[werbedame], 'Schogetten' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_schogetten] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_schogetten].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_schogetten].[aktionstag1] IS NOT NULL)
UNION
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_valentinstag].[markt_id], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_valentinstag].[aktionstag1], 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_valentinstag].[werbedame], 'Valentinstag' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_valentinstag] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_valentinstag].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_valentinstag].[aktionstag1] IS NOT NULL)
UNION
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[markt_id], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[aktionstag1], [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[werbedame], 
                      'Werbedamen klassisch' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[aktionstag1] IS NOT NULL)
UNION
SELECT     [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[markt_id], 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[aktionstag2], [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Name] AS Markt, 
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[Ort], [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[werbedame], 
                      'Werbedamen klassisch' AS Projekt
FROM         [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch] INNER JOIN
                      [Ludwigschokolade2016].[dbo].[trumpf_maerkte] ON 
                      [Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[markt_id] = [Ludwigschokolade2016].[dbo].[trumpf_maerkte].[id]
WHERE     ([Ludwigschokolade2016].[dbo].[trumpf_2016_projekt_werbedamen_klassisch].[aktionstag2] IS NOT NULL)

GO
/****** Object:  View [dbo].[trumpf_werbedamen_einsatztage_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_werbedamen_einsatztage_2016]
AS
SELECT        COUNT(markt_id) AS Expr1, werbedame
FROM            dbo.trumpf_2016_werbedamen_einsatztage
GROUP BY werbedame
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_fritt_gluecksrad]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_fritt_gluecksrad]
AS
SELECT     dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.KW, dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1 AS Datum, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstage AS ET, dbo.trumpf_2016_fragebogen_fritt_gluecksrad.puenktlich AS pünktlich, 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.Grundunpuenktlich AS [Grund unpünktlich], 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.BeurteilungPromoter AS [Beurteilung Promoter], 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.GrundBeurteilung AS [Grund Beurteilung], 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.BeurteilungEngagement AS [Beurteilung Engagement], 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.GrundEngagement AS [Grund Engagement], 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.Abverkauf AS [Abverkauf gefördert], dbo.trumpf_2016_fragebogen_fritt_gluecksrad.GrundAbverkauf AS [Grund Abverkauf],
                       dbo.trumpf_2016_fragebogen_fritt_gluecksrad.AktionWiederholen AS [Aktion wiederholen?], dbo.trumpf_2016_fragebogen_fritt_gluecksrad.GrundAktion AS Grund, 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.Kundenresonanz AS [Kunden- resonanz], 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.VerbesserungsvorschlaegeResonanz AS [Verbesserungs- vorschläge Resonanz], 
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad.Verbesserungsvorschlaege AS [Verbesserungs- vorschläge]
FROM         dbo.trumpf_2016_projekt_fritt_gluecksrad INNER JOIN
                      dbo.trumpf_2016_fragebogen_fritt_gluecksrad ON dbo.trumpf_2016_projekt_fritt_gluecksrad.id = dbo.trumpf_2016_fragebogen_fritt_gluecksrad.projekt_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_gluecksrad.markt_id = dbo.trumpf_maerkte.id
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_fritt_memory]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_fritt_memory]
AS
SELECT     dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_2016_projekt_fritt_memory.KW, dbo.trumpf_2016_projekt_fritt_memory.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_fritt_memory.aktionstage AS ET, 
                      dbo.trumpf_2016_fragebogen_fritt_memory.puenktlich AS pünktlich, dbo.trumpf_2016_fragebogen_fritt_memory.Grundunpuenktlich AS [Grund unpünktlich], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.BeurteilungPromoter AS [Beurteilung Promoter], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.GrundBeurteilung AS [Grund Beurteilung], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.BeurteilungEngagement AS [Beurteilung Engagement], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.GrundEngagement AS [Grund Engagement], dbo.trumpf_2016_fragebogen_fritt_memory.Abverkauf AS [Abverkauf gefördert], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.GrundAbverkauf AS [Grund Abverkauf], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.AktionWiederholen AS [Aktion wiederholen?], dbo.trumpf_2016_fragebogen_fritt_memory.GrundAktion AS Grund, 
                      dbo.trumpf_2016_fragebogen_fritt_memory.Kundenresonanz AS [Kunden- resonanz], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.VerbesserungsvorschlaegeResonanz AS [Verbesserungs- vorschläge Resonanz], 
                      dbo.trumpf_2016_fragebogen_fritt_memory.Verbesserungsvorschlaege AS [Verbesserungs- vorschläge]
FROM         dbo.trumpf_2016_projekt_fritt_memory INNER JOIN
                      dbo.trumpf_2016_fragebogen_fritt_memory ON dbo.trumpf_2016_projekt_fritt_memory.id = dbo.trumpf_2016_fragebogen_fritt_memory.projekt_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_memory.markt_id = dbo.trumpf_maerkte.id
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_muttertag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_muttertag]
AS
SELECT     dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_2016_projekt_muttertag.KW, dbo.trumpf_2016_projekt_muttertag.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_muttertag.aktionstage AS ET, 
                      dbo.trumpf_2016_fragebogen_muttertag.puenktlich AS pünktlich, dbo.trumpf_2016_fragebogen_muttertag.Grundunpuenktlich AS [Grund unpünktlich], 
                      dbo.trumpf_2016_fragebogen_muttertag.BeurteilungPromoter AS [Beurteilung Promoter], 
                      dbo.trumpf_2016_fragebogen_muttertag.GrundBeurteilung AS [Grund Beurteilung], 
                      dbo.trumpf_2016_fragebogen_muttertag.BeurteilungEngagement AS [Beurteilung Engagement], 
                      dbo.trumpf_2016_fragebogen_muttertag.GrundEngagement AS [Grund Engagement], dbo.trumpf_2016_fragebogen_muttertag.Abverkauf AS [Abverkauf gefördert], 
                      dbo.trumpf_2016_fragebogen_muttertag.GrundAbverkauf AS [Grund Abverkauf], dbo.trumpf_2016_fragebogen_muttertag.AktionWiederholen AS [Aktion wiederholen?], 
                      dbo.trumpf_2016_fragebogen_muttertag.GrundAktion AS Grund, dbo.trumpf_2016_fragebogen_muttertag.Kundenresonanz AS [Kunden- resonanz], 
                      dbo.trumpf_2016_fragebogen_muttertag.VerbesserungsvorschlaegeResonanz AS [Verbesserungs- vorschläge Resonanz], 
                      dbo.trumpf_2016_fragebogen_muttertag.Verbesserungsvorschlaege AS [Verbesserungs- vorschläge]
FROM         dbo.trumpf_2016_projekt_muttertag INNER JOIN
                      dbo.trumpf_2016_fragebogen_muttertag ON dbo.trumpf_2016_projekt_muttertag.id = dbo.trumpf_2016_fragebogen_muttertag.projekt_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_muttertag.markt_id = dbo.trumpf_maerkte.id
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_osterhase]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_osterhase]
AS
SELECT     dbo.trumpf_2016_projekt_osterhase.id, dbo.trumpf_2016_fragebogen_osterhase.projekt_id, dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, 
                      dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_projekt_osterhase.KW, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_osterhase.aktionstage AS ET, 
                      dbo.trumpf_2016_fragebogen_osterhase.puenktlich AS pünktlich, dbo.trumpf_2016_fragebogen_osterhase.Grundunpuenktlich AS [Grund unpünktlich], 
                      dbo.trumpf_2016_fragebogen_osterhase.BeurteilungPromoter AS [Beurteilung Promoter], 
                      dbo.trumpf_2016_fragebogen_osterhase.GrundBeurteilung AS [Grund Beurteilung], 
                      dbo.trumpf_2016_fragebogen_osterhase.BeurteilungEngagement AS [Beurteilung Engagement], 
                      dbo.trumpf_2016_fragebogen_osterhase.GrundEngagement AS [Grund Engagement], dbo.trumpf_2016_fragebogen_osterhase.Abverkauf AS [Abverkauf gefördert], 
                      dbo.trumpf_2016_fragebogen_osterhase.GrundAbverkauf AS [Grund Abverkauf], dbo.trumpf_2016_fragebogen_osterhase.AktionWiederholen AS [Aktion wiederholen?], 
                      dbo.trumpf_2016_fragebogen_osterhase.GrundAktion AS Grund, dbo.trumpf_2016_fragebogen_osterhase.Kundenresonanz AS [Kunden- resonanz], 
                      dbo.trumpf_2016_fragebogen_osterhase.VerbesserungsvorschlaegeResonanz AS [Verbesserungs- vorschläge Resonanz], 
                      dbo.trumpf_2016_fragebogen_osterhase.Verbesserungsvorschlaege AS [Verbesserungs- vorschläge]
FROM         dbo.trumpf_2016_projekt_osterhase INNER JOIN
                      dbo.trumpf_2016_fragebogen_osterhase ON dbo.trumpf_2016_projekt_osterhase.id = dbo.trumpf_2016_fragebogen_osterhase.projekt_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_osterhase.markt_id = dbo.trumpf_maerkte.id
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_osterhase_alt]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_osterhase_alt]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstag1, dbo.trumpf_2016_projekt_osterhase.aktionstag2, dbo.trumpf_2016_projekt_osterhase.KW, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstage, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_werbedamen.Anrede + N' ' + dbo.trumpf_werbedamen.Nachname AS Promoter, dbo.trumpf_2016_projekt_osterhase.id, dbo.trumpf_maerkte.BVL, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstag1_von, dbo.trumpf_2016_projekt_osterhase.aktionstag1_bis, dbo.trumpf_2016_projekt_osterhase.aktionstag2_von, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstag2_bis, dbo.trumpf_werbedamen.Vorname, dbo.trumpf_werbedamen.Nachname, 
                      dbo.trumpf_2016_projekt_osterhase.produkt1, dbo.trumpf_2016_projekt_osterhase.produkt2, dbo.trumpf_2016_projekt_osterhase.produkt3, 
                      dbo.trumpf_2016_projekt_osterhase.produkt4, dbo.trumpf_2016_projekt_osterhase.produkt5, dbo.trumpf_2016_projekt_osterhase.produkt6, 
                      dbo.trumpf_2016_projekt_osterhase.produkt7, dbo.trumpf_2016_projekt_osterhase.produkt8, dbo.trumpf_2016_projekt_osterhase.produkt9, 
                      dbo.trumpf_2016_projekt_osterhase.produkt10, dbo.trumpf_2016_projekt_osterhase.produkt11, dbo.trumpf_2016_projekt_osterhase.produkt12, 
                      dbo.trumpf_maerkte.Strasse, dbo.trumpf_2016_fragebogen_osterhase.BeurteilungEngagement, dbo.trumpf_2016_fragebogen_osterhase.GrundEngagement, 
                      dbo.trumpf_2016_fragebogen_osterhase.AktionWiederholen, dbo.trumpf_2016_fragebogen_osterhase.GrundAktion, 
                      dbo.trumpf_2016_fragebogen_osterhase.Kundenresonanz, dbo.trumpf_2016_fragebogen_osterhase.Verbesserungsvorschlaege, 
                      dbo.trumpf_2016_fragebogen_osterhase.projekt_id
FROM         dbo.trumpf_2016_projekt_osterhase INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_osterhase.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_osterhase.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_2016_fragebogen_osterhase ON dbo.trumpf_2016_projekt_osterhase.id = dbo.trumpf_2016_fragebogen_osterhase.projekt_id INNER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_osterhase.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_schogetten]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_schogetten]
AS
SELECT     dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_2016_projekt_schogetten.KW, dbo.trumpf_2016_projekt_schogetten.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_schogetten.aktionstage AS ET, 
                      dbo.trumpf_2016_fragebogen_schogetten.puenktlich AS pünktlich, dbo.trumpf_2016_fragebogen_schogetten.Grundunpuenktlich AS [Grund unpünktlich], 
                      dbo.trumpf_2016_fragebogen_schogetten.BeurteilungPromoter AS [Beurteilung Promoter], 
                      dbo.trumpf_2016_fragebogen_schogetten.GrundBeurteilung AS [Grund Beurteilung], 
                      dbo.trumpf_2016_fragebogen_schogetten.BeurteilungEngagement AS [Beurteilung Engagement], 
                      dbo.trumpf_2016_fragebogen_schogetten.GrundEngagement AS [Grund Engagement], dbo.trumpf_2016_fragebogen_schogetten.Abverkauf AS [Abverkauf gefördert], 
                      dbo.trumpf_2016_fragebogen_schogetten.GrundAbverkauf AS [Grund Abverkauf], 
                      dbo.trumpf_2016_fragebogen_schogetten.AktionWiederholen AS [Aktion wiederholen?], dbo.trumpf_2016_fragebogen_schogetten.GrundAktion AS Grund, 
                      dbo.trumpf_2016_fragebogen_schogetten.Kundenresonanz AS [Kunden- resonanz], 
                      dbo.trumpf_2016_fragebogen_schogetten.VerbesserungsvorschlaegeResonanz AS [Verbesserungs- vorschläge Resonanz], 
                      dbo.trumpf_2016_fragebogen_schogetten.Verbesserungsvorschlaege AS [Verbesserungs- vorschläge]
FROM         dbo.trumpf_2016_projekt_schogetten INNER JOIN
                      dbo.trumpf_2016_fragebogen_schogetten ON dbo.trumpf_2016_projekt_schogetten.id = dbo.trumpf_2016_fragebogen_schogetten.projekt_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_schogetten.markt_id = dbo.trumpf_maerkte.id
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_valentinstag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_valentinstag]
AS
SELECT     dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_2016_projekt_valentinstag.KW, dbo.trumpf_2016_projekt_valentinstag.aktionstag1 AS Datum, dbo.trumpf_2016_projekt_valentinstag.aktionstage AS ET, 
                      dbo.trumpf_2016_fragebogen_valentinstag.puenktlich AS pünktlich, dbo.trumpf_2016_fragebogen_valentinstag.Grundunpuenktlich AS [Grund unpünktlich], 
                      dbo.trumpf_2016_fragebogen_valentinstag.BeurteilungPromoter AS [Beurteilung Promoter], 
                      dbo.trumpf_2016_fragebogen_valentinstag.GrundBeurteilung AS [Grund Beurteilung], 
                      dbo.trumpf_2016_fragebogen_valentinstag.BeurteilungEngagement AS [Beurteilung Engagement], 
                      dbo.trumpf_2016_fragebogen_valentinstag.GrundEngagement AS [Grund Engagement], dbo.trumpf_2016_fragebogen_valentinstag.Abverkauf AS [Abverkauf gefördert], 
                      dbo.trumpf_2016_fragebogen_valentinstag.GrundAbverkauf AS [Grund Abverkauf], 
                      dbo.trumpf_2016_fragebogen_valentinstag.AktionWiederholen AS [Aktion wiederholen?], dbo.trumpf_2016_fragebogen_valentinstag.GrundAktion AS Grund, 
                      dbo.trumpf_2016_fragebogen_valentinstag.Kundenresonanz AS [Kunden- resonanz], 
                      dbo.trumpf_2016_fragebogen_valentinstag.VerbesserungsvorschlaegeResonanz AS [Verbesserungs- vorschläge Resonanz], 
                      dbo.trumpf_2016_fragebogen_valentinstag.Verbesserungsvorschlaege AS [Verbesserungs- vorschläge]
FROM         dbo.trumpf_2016_projekt_valentinstag INNER JOIN
                      dbo.trumpf_2016_fragebogen_valentinstag ON dbo.trumpf_2016_projekt_valentinstag.id = dbo.trumpf_2016_fragebogen_valentinstag.projekt_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_valentinstag.markt_id = dbo.trumpf_maerkte.id
GO
/****** Object:  View [dbo].[auswertung_2016_fragebogen_werbedamen_klassisch]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2016_fragebogen_werbedamen_klassisch]
AS
SELECT     dbo.trumpf_maerkte.BVL, dbo.trumpf_maerkte.AD, dbo.trumpf_maerkte.Name AS Kunde, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.KW, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1 AS Datum, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstage AS ET, dbo.trumpf_2016_fragebogen_werbedamen_klassisch.puenktlich AS pünktlich, 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.Grundunpuenktlich AS [Grund unpünktlich], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.BeurteilungPromoter AS [Beurteilung Promoter], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.GrundBeurteilung AS [Grund Beurteilung], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.BeurteilungEngagement AS [Beurteilung Engagement], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.GrundEngagement AS [Grund Engagement], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.Abverkauf AS [Abverkauf gefördert], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.GrundAbverkauf AS [Grund Abverkauf], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.AktionWiederholen AS [Aktion wiederholen?], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.GrundAktion AS Grund, 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.Kundenresonanz AS [Kunden- resonanz], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.VerbesserungsvorschlaegeResonanz AS [Verbesserungs- vorschläge Resonanz], 
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch.Verbesserungsvorschlaege AS [Verbesserungs- vorschläge]
FROM         dbo.trumpf_2016_projekt_werbedamen_klassisch INNER JOIN
                      dbo.trumpf_2016_fragebogen_werbedamen_klassisch ON 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.id = dbo.trumpf_2016_fragebogen_werbedamen_klassisch.projekt_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_werbedamen_klassisch.markt_id = dbo.trumpf_maerkte.id
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Fritt_Gluecksrad_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Fritt_Gluecksrad_2016]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1, dbo.trumpf_2016_projekt_fritt_gluecksrad.KW, dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstage, 
                      dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.Aktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.GrundAktionsstandort, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.KundenkontakteMitBeratung, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.KundenkontakteOhneBeratung, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.KundenkontakteGesamt, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.ResonanzMarkt, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.ResonanzKunden, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.GruendeResonanz, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.aktivitaetenSonstige, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.platzierungen, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AnzahlPaletten, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AnzahlDisplays, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.ProdukteWettbewerber, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufFruchtFlowpack, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufToffeeFlowpack, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufJoghurtFrittis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufAktionssorten, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufMinis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.AbverkaufSorte, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungFruchtFlowpack, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungToffeeFlowpack, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungJoghurtFrittis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungAktionssorten, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.VerkostungMinis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.Sonstiges, dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.anlagedatum
FROM         dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad INNER JOIN
                      dbo.trumpf_2016_projekt_fritt_gluecksrad ON dbo.trumpf_2016_einsatzbericht_fritt_gluecksrad.projekt_id = dbo.trumpf_2016_projekt_fritt_gluecksrad.id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_gluecksrad.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_gluecksrad.aussendienstler_id = dbo.trumpf_bezirke.ID
ORDER BY dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Fritt_Memory_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Fritt_Memory_2016]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_fritt_memory.aktionstag1, dbo.trumpf_2016_projekt_fritt_memory.KW, dbo.trumpf_2016_projekt_fritt_memory.aktionstage, 
                      dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_einsatzbericht_fritt_memory.Aktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.GrundAktionsstandort, dbo.trumpf_2016_einsatzbericht_fritt_memory.KundenkontakteMitBeratung, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.KundenkontakteOhneBeratung, dbo.trumpf_2016_einsatzbericht_fritt_memory.KundenkontakteGesamt, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.ResonanzMarkt, dbo.trumpf_2016_einsatzbericht_fritt_memory.ResonanzKunden, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.GruendeResonanz, dbo.trumpf_2016_einsatzbericht_fritt_memory.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_fritt_memory.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.aktivitaetenSonstige, dbo.trumpf_2016_einsatzbericht_fritt_memory.platzierungen, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.AnzahlPaletten, dbo.trumpf_2016_einsatzbericht_fritt_memory.AnzahlDisplays, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.ProdukteWettbewerber, dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufToffeeFlowpack, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufFruchtFlowpack, dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufJoghurtFrittis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufAktionssorten, dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufMinis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.AbverkaufSorte, dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungToffeeFlowpack, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungFruchtFlowpack, dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungJoghurtFrittis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungAktionssorten, dbo.trumpf_2016_einsatzbericht_fritt_memory.VerkostungMinis, 
                      dbo.trumpf_2016_einsatzbericht_fritt_memory.Sonstiges, dbo.trumpf_2016_einsatzbericht_fritt_memory.anlagedatum
FROM         dbo.trumpf_2016_einsatzbericht_fritt_memory INNER JOIN
                      dbo.trumpf_2016_projekt_fritt_memory ON dbo.trumpf_2016_einsatzbericht_fritt_memory.projekt_id = dbo.trumpf_2016_projekt_fritt_memory.id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_memory.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_memory.aussendienstler_id = dbo.trumpf_bezirke.ID
ORDER BY dbo.trumpf_2016_projekt_fritt_memory.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Muttertag_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Muttertag_2016]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_muttertag.aktionstag1, dbo.trumpf_2016_projekt_muttertag.KW, dbo.trumpf_2016_projekt_muttertag.aktionstage, dbo.trumpf_maerkte.Name, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_einsatzbericht_muttertag.Aktionsstandort, dbo.trumpf_2016_einsatzbericht_muttertag.GrundAktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.KundenkontakteMitBeratung, dbo.trumpf_2016_einsatzbericht_muttertag.KundenkontakteOhneBeratung, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.KundenkontakteGesamt, dbo.trumpf_2016_einsatzbericht_muttertag.ResonanzMarkt, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.ResonantKunden, dbo.trumpf_2016_einsatzbericht_muttertag.GruendResonanz, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.ZweitplatzierungPaletten, dbo.trumpf_2016_einsatzbericht_muttertag.ZweitplatzierungDisplays, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.aktivitaeten, dbo.trumpf_2016_einsatzbericht_muttertag.aktivitaetenSonstige, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.AnzahlPaletten, dbo.trumpf_2016_einsatzbericht_muttertag.AnzahlDisplays, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.ProdukteWettbewerber, dbo.trumpf_2016_einsatzbericht_muttertag.Preis1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf1Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf1Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung1Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung1Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis2, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf2Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf2Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung2Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung2Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Preis3, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf3Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf3Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung3Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung3Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis4, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf4Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf4Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung4Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung4Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Preis5, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf5Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf5Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung5Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung5Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis6, dbo.trumpf_2016_einsatzbericht_muttertag.Verkau6Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf6Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung6Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung6Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis7, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf7Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf7Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung7Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung7Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Preis8, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf8Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf8Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung8Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung8Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis9, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf9Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf9Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung9Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung9Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Preis10, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf10Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf10Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung10Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung10Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Preis11, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf11Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf11Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung11Tag1, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung11Tag2, dbo.trumpf_2016_einsatzbericht_muttertag.Preis12, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf12Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkauf12Tag2, 
                      dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung12Tag1, dbo.trumpf_2016_einsatzbericht_muttertag.Verkostung12Tag2
FROM         dbo.trumpf_2016_einsatzbericht_muttertag INNER JOIN
                      dbo.trumpf_2016_projekt_muttertag ON dbo.trumpf_2016_einsatzbericht_muttertag.projekt_id = dbo.trumpf_2016_projekt_muttertag.id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_muttertag.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_muttertag.aussendienstler_id = dbo.trumpf_bezirke.ID
ORDER BY dbo.trumpf_2016_projekt_muttertag.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Schogetten_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Schogetten_2016]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_schogetten.aktionstag1, dbo.trumpf_2016_projekt_schogetten.KW, dbo.trumpf_2016_projekt_schogetten.aktionstage, 
                      dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_einsatzbericht_schogetten.Aktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.GrundAktionsstandort, dbo.trumpf_2016_einsatzbericht_schogetten.KundenkontakteMitBeratung, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.KundenkontakteOhneBeratung, dbo.trumpf_2016_einsatzbericht_schogetten.KundenkontakteGesamt, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.ResonanzMarkt, dbo.trumpf_2016_einsatzbericht_schogetten.ResonanzKunden, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.GruendeResonanz, dbo.trumpf_2016_einsatzbericht_schogetten.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_schogetten.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.aktivitaetenSonstige, dbo.trumpf_2016_einsatzbericht_schogetten.platzierungen, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.AnzahlPaletten, dbo.trumpf_2016_einsatzbericht_schogetten.AnzahlDisplays, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.ProdukteWettbewerber, dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenStandard, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenFroop, dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenVanilleWaffel, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSchogettenCookies, dbo.trumpf_2016_einsatzbericht_schogetten.AbverkaufSorte, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenStandard, dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenFroop, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenVanilleWaffel, dbo.trumpf_2016_einsatzbericht_schogetten.VerkostungSchogettenCookies, 
                      dbo.trumpf_2016_einsatzbericht_schogetten.Sonstiges, dbo.trumpf_2016_einsatzbericht_schogetten.anlagedatum
FROM         dbo.trumpf_2016_einsatzbericht_schogetten INNER JOIN
                      dbo.trumpf_2016_projekt_schogetten ON dbo.trumpf_2016_einsatzbericht_schogetten.projekt_id = dbo.trumpf_2016_projekt_schogetten.id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_schogetten.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_schogetten.aussendienstler_id = dbo.trumpf_bezirke.ID
ORDER BY dbo.trumpf_2016_projekt_schogetten.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Valentinstag_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Valentinstag_2016]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_valentinstag.aktionstag1, dbo.trumpf_2016_projekt_valentinstag.KW, dbo.trumpf_2016_projekt_valentinstag.aktionstage, 
                      dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_einsatzbericht_valentinstag.Aktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.GrundAktionsstandort, dbo.trumpf_2016_einsatzbericht_valentinstag.KundenkontakteMitBeratung, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.KundenkontakteOhneBeratung, dbo.trumpf_2016_einsatzbericht_valentinstag.KundenkontakteGesamt, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.ResonanzMarkt, dbo.trumpf_2016_einsatzbericht_valentinstag.ResonantKunden, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.GruendResonanz, dbo.trumpf_2016_einsatzbericht_valentinstag.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_valentinstag.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.aktivitaetenSonstige, dbo.trumpf_2016_einsatzbericht_valentinstag.AnzahlPaletten, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.AnzahlDisplays, dbo.trumpf_2016_einsatzbericht_valentinstag.ProdukteWettbewerber, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf1Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf1Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung1Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung1Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Preis2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf2Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf2Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung2Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung2Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis3, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf3Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf3Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung3Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung3Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Preis4, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf4Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf4Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung4Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung4Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis5, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf5Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf5Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung5Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung5Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Preis6, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkau6Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf6Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung6Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung6Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis7, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf7Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf7Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung7Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung7Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Preis8, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf8Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf8Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung8Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung8Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis9, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf9Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf9Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung9Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung9Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Preis10, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf10Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf10Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung10Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung10Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Preis11, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf11Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf11Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung11Tag1, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung11Tag2, dbo.trumpf_2016_einsatzbericht_valentinstag.Preis12, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf12Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkauf12Tag2, 
                      dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung12Tag1, dbo.trumpf_2016_einsatzbericht_valentinstag.Verkostung12Tag2
FROM         dbo.trumpf_2016_einsatzbericht_valentinstag INNER JOIN
                      dbo.trumpf_2016_projekt_valentinstag ON dbo.trumpf_2016_einsatzbericht_valentinstag.projekt_id = dbo.trumpf_2016_projekt_valentinstag.id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_valentinstag.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_valentinstag.aussendienstler_id = dbo.trumpf_bezirke.ID
ORDER BY dbo.trumpf_2016_projekt_valentinstag.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Werbedamen_Klassisch_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Werbedamen_Klassisch_2016]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag2, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.KW, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstage, dbo.trumpf_maerkte.Name, 
                      dbo.trumpf_maerkte.Ort, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Aktionsstandort, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.GrundAktionsstandort, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.KundenkontakteMitBeratung,
                       dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.KundenkontakteOhneBeratung, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.KundenkontakteGesamt, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.ResonanzMarkt, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.ResonantKunden, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.GruendResonanz, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.ZweitplatzierungPaletten, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.ZweitplatzierungDisplays, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.aktivitaeten, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.aktivitaetenSonstige, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.AnzahlPaletten, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.AnzahlDisplays, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.ProdukteWettbewerber, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf1Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf1Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung1Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung1Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf2Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf2Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung2Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung2Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis3, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf3Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf3Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung3Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung3Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis4, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf4Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf4Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung4Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung4Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis5, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf5Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf5Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung5Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung5Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis6, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkau6Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf6Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung6Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung6Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis7, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf7Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf7Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung7Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung7Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis8, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf8Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf8Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung8Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung8Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis9, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf9Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf9Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung9Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung9Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis10, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf10Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf10Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung10Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung10Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis11, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf11Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf11Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung11Tag1, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung11Tag2, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Preis12, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf12Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkauf12Tag2, 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung12Tag1, dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.Verkostung12Tag2
FROM         dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch INNER JOIN
                      dbo.trumpf_2016_projekt_werbedamen_klassisch ON 
                      dbo.trumpf_2016_einsatzbericht_werbedamen_klassisch.projekt_id = dbo.trumpf_2016_projekt_werbedamen_klassisch.id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_werbedamen_klassisch.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_werbedamen_klassisch.aussendienstler_id = dbo.trumpf_bezirke.ID
ORDER BY dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1
GO
/****** Object:  View [dbo].[Export_Fragebogen_Osterhase_2016]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Fragebogen_Osterhase_2016]
AS
SELECT     TOP (100) PERCENT dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale, dbo.trumpf_maerkte.Typ, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstag1, dbo.trumpf_2016_projekt_osterhase.aktionstag2, dbo.trumpf_2016_projekt_osterhase.KW, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstage, dbo.trumpf_maerkte.Name, dbo.trumpf_maerkte.Ort, 
                      dbo.trumpf_2016_fragebogen_osterhase.BeurteilungEngagement, dbo.trumpf_2016_fragebogen_osterhase.GrundEngagement, 
                      dbo.trumpf_2016_fragebogen_osterhase.AktionWiederholen, dbo.trumpf_2016_fragebogen_osterhase.GrundAktion, 
                      dbo.trumpf_2016_fragebogen_osterhase.Kundenresonanz, dbo.trumpf_2016_fragebogen_osterhase.Verbesserungsvorschlaege
FROM         dbo.trumpf_2016_fragebogen_osterhase INNER JOIN
                      dbo.trumpf_2016_projekt_osterhase ON dbo.trumpf_2016_fragebogen_osterhase.projekt_id = dbo.trumpf_2016_projekt_osterhase.id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_osterhase.markt_id = dbo.trumpf_maerkte.id INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_osterhase.aussendienstler_id = dbo.trumpf_bezirke.ID
ORDER BY dbo.trumpf_2016_projekt_osterhase.aktionstag1
GO
/****** Object:  View [dbo].[trumpf_2016_projektuebersicht_fritt_gluecksrad]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_2016_projektuebersicht_fritt_gluecksrad]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_bezirke.Name AS AD, 
                      dbo.trumpf_maerkte.Name AS Markt, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstag1, dbo.trumpf_2016_projekt_fritt_gluecksrad.aktionstage, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_fritt_gluecksrad.KW, 
                      dbo.trumpf_2016_projekt_fritt_gluecksrad.aussendienstler_id, dbo.trumpf_2016_projekt_fritt_gluecksrad.anmerkungen
FROM         dbo.trumpf_2016_projekt_fritt_gluecksrad INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_gluecksrad.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_gluecksrad.markt_id = dbo.trumpf_maerkte.id LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_fritt_gluecksrad.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[trumpf_2016_projektuebersicht_fritt_memory]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_2016_projektuebersicht_fritt_memory]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_bezirke.Name AS AD, 
                      dbo.trumpf_maerkte.Name AS Markt, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, 
                      dbo.trumpf_2016_projekt_fritt_memory.aktionstag1, dbo.trumpf_2016_projekt_fritt_memory.aktionstage, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_fritt_memory.KW, 
                      dbo.trumpf_2016_projekt_fritt_memory.aussendienstler_id, dbo.trumpf_2016_projekt_fritt_memory.anmerkungen
FROM         dbo.trumpf_2016_projekt_fritt_memory INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_fritt_memory.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_fritt_memory.markt_id = dbo.trumpf_maerkte.id LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_fritt_memory.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[trumpf_2016_projektuebersicht_muttertag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_2016_projektuebersicht_muttertag]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_bezirke.Name AS AD, 
                      dbo.trumpf_maerkte.Name AS Markt, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, 
                      dbo.trumpf_2016_projekt_muttertag.aktionstag1, dbo.trumpf_2016_projekt_muttertag.aktionstage, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_muttertag.KW, 
                      dbo.trumpf_2016_projekt_muttertag.aussendienstler_id, dbo.trumpf_2016_projekt_muttertag.anmerkungen
FROM         dbo.trumpf_bezirke INNER JOIN
                      dbo.trumpf_2016_projekt_muttertag ON dbo.trumpf_bezirke.ID = dbo.trumpf_2016_projekt_muttertag.aussendienstler_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_muttertag.markt_id = dbo.trumpf_maerkte.id LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_muttertag.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[trumpf_2016_projektuebersicht_osterhase]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_2016_projektuebersicht_osterhase]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_bezirke.Name AS AD, 
                      dbo.trumpf_maerkte.Name AS Markt, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, 
                      dbo.trumpf_2016_projekt_osterhase.aktionstag1, dbo.trumpf_2016_projekt_osterhase.aktionstag2, dbo.trumpf_2016_projekt_osterhase.aktionstage, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_osterhase.KW, 
                      dbo.trumpf_2016_projekt_osterhase.aussendienstler_id, dbo.trumpf_2016_projekt_osterhase.anmerkungen
FROM         dbo.trumpf_2016_projekt_osterhase INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_osterhase.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_osterhase.markt_id = dbo.trumpf_maerkte.id LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_osterhase.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[trumpf_2016_projektuebersicht_schogetten]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_2016_projektuebersicht_schogetten]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_bezirke.Name AS AD, 
                      dbo.trumpf_maerkte.Name AS Markt, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, 
                      dbo.trumpf_2016_projekt_schogetten.aktionstag1, dbo.trumpf_2016_projekt_schogetten.aktionstage, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_schogetten.KW, 
                      dbo.trumpf_2016_projekt_schogetten.aussendienstler_id, dbo.trumpf_2016_projekt_schogetten.anmerkungen
FROM         dbo.trumpf_werbedamen RIGHT OUTER JOIN
                      dbo.trumpf_bezirke INNER JOIN
                      dbo.trumpf_2016_projekt_schogetten ON dbo.trumpf_bezirke.ID = dbo.trumpf_2016_projekt_schogetten.aussendienstler_id INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_schogetten.markt_id = dbo.trumpf_maerkte.id ON 
                      dbo.trumpf_werbedamen.id = dbo.trumpf_2016_projekt_schogetten.werbedame
GO
/****** Object:  View [dbo].[trumpf_2016_projektuebersicht_valentinstag]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_2016_projektuebersicht_valentinstag]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_bezirke.Name AS AD, 
                      dbo.trumpf_maerkte.Name AS Markt, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, 
                      dbo.trumpf_2016_projekt_valentinstag.aktionstag1, dbo.trumpf_2016_projekt_valentinstag.aktionstage, 
                      dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, dbo.trumpf_2016_projekt_valentinstag.KW, 
                      dbo.trumpf_2016_projekt_valentinstag.aussendienstler_id, dbo.trumpf_2016_projekt_valentinstag.anmerkungen
FROM         dbo.trumpf_2016_projekt_valentinstag INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_valentinstag.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_valentinstag.markt_id = dbo.trumpf_maerkte.id LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_valentinstag.werbedame = dbo.trumpf_werbedamen.id
GO
/****** Object:  View [dbo].[trumpf_2016_projektuebersicht_werbedamen_klassisch]    Script Date: 06.07.2018 11:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[trumpf_2016_projektuebersicht_werbedamen_klassisch]
AS
SELECT     dbo.trumpf_bezirke.VL, dbo.trumpf_bezirke.BEZ, dbo.trumpf_maerkte.Handelszentrale AS HZ, dbo.trumpf_maerkte.Typ, dbo.trumpf_bezirke.Name AS AD, 
                      dbo.trumpf_maerkte.Name AS Markt, dbo.trumpf_maerkte.PLZ, dbo.trumpf_maerkte.Ort, dbo.trumpf_maerkte.Strasse, dbo.trumpf_maerkte.APMarkt, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag1, dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstag2, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.aktionstage, dbo.trumpf_werbedamen.Anrede + ' ' + dbo.trumpf_werbedamen.Nachname AS Werbedame, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.KW, dbo.trumpf_2016_projekt_werbedamen_klassisch.aussendienstler_id, 
                      dbo.trumpf_2016_projekt_werbedamen_klassisch.anmerkungen
FROM         dbo.trumpf_2016_projekt_werbedamen_klassisch INNER JOIN
                      dbo.trumpf_bezirke ON dbo.trumpf_2016_projekt_werbedamen_klassisch.aussendienstler_id = dbo.trumpf_bezirke.ID INNER JOIN
                      dbo.trumpf_maerkte ON dbo.trumpf_2016_projekt_werbedamen_klassisch.markt_id = dbo.trumpf_maerkte.id LEFT OUTER JOIN
                      dbo.trumpf_werbedamen ON dbo.trumpf_2016_projekt_werbedamen_klassisch.werbedame = dbo.trumpf_werbedamen.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[78] 4[5] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -18
         Left = 0
      End
      Begin Tables = 
         Begin Table = "trumpf_2016_projekt_fritt_gluecksrad"
            Begin Extent = 
               Top = 71
               Left = 398
               Bottom = 452
               Right = 709
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_einsatzbericht_fritt_gluecksrad"
            Begin Extent = 
               Top = 57
               Left = 961
               Bottom = 617
               Right = 1301
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 186
               Left = 738
               Bottom = 543
               Right = 900
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 100
               Left = 13
               Bottom = 386
               Right = 179
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 186
               Left = 184
               Bottom = 595
               Right = 368
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
         Gro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_fritt_gluecksrad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'upBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_fritt_gluecksrad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_fritt_gluecksrad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[82] 4[7] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_fritt_memory"
            Begin Extent = 
               Top = 12
               Left = 456
               Bottom = 389
               Right = 731
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_einsatzbericht_fritt_memory"
            Begin Extent = 
               Top = 0
               Left = 977
               Bottom = 549
               Right = 1270
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 133
               Left = 760
               Bottom = 443
               Right = 922
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 42
               Left = 22
               Bottom = 324
               Right = 188
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 114
               Left = 241
               Bottom = 526
               Right = 425
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
         Alias = 1875
         Table = 2355
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_fritt_memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_fritt_memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_fritt_memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[86] 4[3] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_muttertag"
            Begin Extent = 
               Top = 21
               Left = 435
               Bottom = 479
               Right = 710
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 97
               Left = 741
               Bottom = 408
               Right = 903
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 52
               Left = 29
               Bottom = 336
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_einsatzbericht_muttertag"
            Begin Extent = 
               Top = 7
               Left = 957
               Bottom = 1103
               Right = 1255
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 143
               Left = 222
               Bottom = 548
               Right = 406
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
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[82] 4[3] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_schogetten"
            Begin Extent = 
               Top = 28
               Left = 433
               Bottom = 375
               Right = 611
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_einsatzbericht_schogetten"
            Begin Extent = 
               Top = 13
               Left = 931
               Bottom = 560
               Right = 1191
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 100
               Left = 642
               Bottom = 420
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 59
               Left = 21
               Bottom = 340
               Right = 187
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 194
               Left = 219
               Bottom = 608
               Right = 403
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
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[87] 4[3] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_valentinstag"
            Begin Extent = 
               Top = 22
               Left = 396
               Bottom = 504
               Right = 682
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 148
               Left = 711
               Bottom = 475
               Right = 873
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 53
               Left = 9
               Bottom = 330
               Right = 175
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_einsatzbericht_valentinstag"
            Begin Extent = 
               Top = 6
               Left = 923
               Bottom = 665
               Right = 1238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 142
               Left = 181
               Bottom = 562
               Right = 365
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
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[85] 4[4] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_werbedamen_klassisch"
            Begin Extent = 
               Top = 21
               Left = 424
               Bottom = 543
               Right = 745
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 137
               Left = 775
               Bottom = 452
               Right = 937
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 51
               Left = 32
               Bottom = 324
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_einsatzbericht_werbedamen_klassisch"
            Begin Extent = 
               Top = 6
               Left = 980
               Bottom = 1102
               Right = 1333
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 123
               Left = 210
               Bottom = 537
               Right = 394
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
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_werbedamen_klassisch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_werbedamen_klassisch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_einsatzbericht_werbedamen_klassisch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[82] 4[4] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_fritt_gluecksrad"
            Begin Extent = 
               Top = 51
               Left = 527
               Bottom = 445
               Right = 797
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_fragebogen_fritt_gluecksrad"
            Begin Extent = 
               Top = 36
               Left = 38
               Bottom = 388
               Right = 303
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 171
               Left = 331
               Bottom = 450
               Right = 497
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_fritt_gluecksrad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_fritt_gluecksrad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[70] 4[7] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_fritt_memory"
            Begin Extent = 
               Top = 44
               Left = 594
               Bottom = 422
               Right = 887
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_fragebogen_fritt_memory"
            Begin Extent = 
               Top = 30
               Left = 25
               Bottom = 357
               Right = 334
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 151
               Left = 398
               Bottom = 434
               Right = 564
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_fritt_memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_fritt_memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[68] 4[7] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_muttertag"
            Begin Extent = 
               Top = 29
               Left = 509
               Bottom = 488
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_fragebogen_muttertag"
            Begin Extent = 
               Top = 15
               Left = 30
               Bottom = 323
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 151
               Left = 312
               Bottom = 430
               Right = 478
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[5] 2[32] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_osterhase"
            Begin Extent = 
               Top = 53
               Left = 593
               Bottom = 567
               Right = 843
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_fragebogen_osterhase"
            Begin Extent = 
               Top = 39
               Left = 36
               Bottom = 347
               Right = 314
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 162
               Left = 399
               Bottom = 444
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_osterhase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_osterhase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[76] 4[13] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_osterhase"
            Begin Extent = 
               Top = 25
               Left = 482
               Bottom = 537
               Right = 789
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 209
               Left = 826
               Bottom = 512
               Right = 988
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 55
               Left = 14
               Bottom = 342
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "trumpf_2016_fragebogen_osterhase"
            Begin Extent = 
               Top = 9
               Left = 1021
               Bottom = 333
               Right = 1286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 118
               Left = 266
               Bottom = 530
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
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_osterhase_alt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_osterhase_alt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_osterhase_alt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[84] 4[7] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_schogetten"
            Begin Extent = 
               Top = 30
               Left = 537
               Bottom = 391
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_fragebogen_schogetten"
            Begin Extent = 
               Top = 17
               Left = 28
               Bottom = 332
               Right = 304
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 179
               Left = 311
               Bottom = 478
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[72] 4[5] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_valentinstag"
            Begin Extent = 
               Top = 36
               Left = 529
               Bottom = 508
               Right = 808
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_fragebogen_valentinstag"
            Begin Extent = 
               Top = 20
               Left = 34
               Bottom = 332
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 129
               Left = 333
               Bottom = 416
               Right = 499
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[70] 4[4] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_werbedamen_klassisch"
            Begin Extent = 
               Top = 18
               Left = 673
               Bottom = 516
               Right = 988
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_fragebogen_werbedamen_klassisch"
            Begin Extent = 
               Top = 4
               Left = 24
               Bottom = 322
               Right = 411
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 116
               Left = 477
               Bottom = 398
               Right = 643
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_werbedamen_klassisch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2016_fragebogen_werbedamen_klassisch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[80] 4[8] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_einsatzbericht_fritt_gluecksrad"
            Begin Extent = 
               Top = 20
               Left = 765
               Bottom = 576
               Right = 1099
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_fritt_gluecksrad"
            Begin Extent = 
               Top = 34
               Left = 227
               Bottom = 408
               Right = 551
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 139
               Left = 582
               Bottom = 423
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 45
               Left = 35
               Bottom = 380
               Right = 197
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Fritt_Gluecksrad_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Fritt_Gluecksrad_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[89] 4[4] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_einsatzbericht_fritt_memory"
            Begin Extent = 
               Top = 13
               Left = 780
               Bottom = 599
               Right = 1069
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_fritt_memory"
            Begin Extent = 
               Top = 27
               Left = 258
               Bottom = 395
               Right = 556
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 221
               Left = 589
               Bottom = 521
               Right = 755
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 86
               Left = 65
               Bottom = 409
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Fritt_Memory_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Fritt_Memory_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[72] 4[18] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_einsatzbericht_muttertag"
            Begin Extent = 
               Top = 18
               Left = 759
               Bottom = 1114
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_muttertag"
            Begin Extent = 
               Top = 30
               Left = 217
               Bottom = 484
               Right = 460
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 141
               Left = 490
               Bottom = 432
               Right = 656
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 53
               Left = 25
               Bottom = 364
               Right = 187
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Muttertag_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Muttertag_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[88] 4[4] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_einsatzbericht_schogetten"
            Begin Extent = 
               Top = 14
               Left = 711
               Bottom = 548
               Right = 1001
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_schogetten"
            Begin Extent = 
               Top = 29
               Left = 239
               Bottom = 362
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 122
               Left = 530
               Bottom = 408
               Right = 696
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 20
               Left = 27
               Bottom = 340
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Schogetten_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Schogetten_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[90] 4[2] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_einsatzbericht_valentinstag"
            Begin Extent = 
               Top = 15
               Left = 831
               Bottom = 1111
               Right = 1068
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_valentinstag"
            Begin Extent = 
               Top = 31
               Left = 295
               Bottom = 491
               Right = 563
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 140
               Left = 593
               Bottom = 430
               Right = 759
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 60
               Left = 104
               Bottom = 375
               Right = 266
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Valentinstag_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Valentinstag_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[88] 4[3] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_einsatzbericht_werbedamen_klassisch"
            Begin Extent = 
               Top = 3
               Left = 740
               Bottom = 1099
               Right = 1086
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_werbedamen_klassisch"
            Begin Extent = 
               Top = 18
               Left = 225
               Bottom = 518
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 133
               Left = 568
               Bottom = 416
               Right = 734
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 27
               Left = 32
               Bottom = 339
               Right = 194
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Klassisch_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Klassisch_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[85] 4[5] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_fragebogen_osterhase"
            Begin Extent = 
               Top = 18
               Left = 854
               Bottom = 424
               Right = 1119
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_osterhase"
            Begin Extent = 
               Top = 33
               Left = 280
               Bottom = 554
               Right = 519
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 130
               Left = 551
               Bottom = 442
               Right = 717
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 45
               Left = 88
               Bottom = 348
               Right = 250
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Fragebogen_Osterhase_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Fragebogen_Osterhase_2016'
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
         Begin Table = "trumpf_2016_projekt_fritt_gluecksrad"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 279
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 8
               Left = 340
               Bottom = 262
               Right = 498
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 10
               Left = 629
               Bottom = 283
               Right = 783
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 6
               Left = 826
               Bottom = 254
               Right = 1002
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
      Begin ColumnWidths = 19
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Fritt_GR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Alias = 2205
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Fritt_GR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Fritt_GR'
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
         Begin Table = "trumpf_2016_projekt_fritt_memory"
            Begin Extent = 
               Top = 6
               Left = 426
               Bottom = 253
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 121
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 164
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 6
               Left = 634
               Bottom = 121
               Right = 810
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
      Begin ColumnWidths = 19
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Fritt_Memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 900
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Fritt_Memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Fritt_Memory'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Ludwig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Ludwig'
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
         Begin Table = "trumpf_2016_projekt_muttertag"
            Begin Extent = 
               Top = 6
               Left = 426
               Bottom = 264
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 121
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 315
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 6
               Left = 634
               Bottom = 121
               Right = 810
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
      Begin ColumnWidths = 19
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 90' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Muttertag'
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
         Begin Table = "trumpf_2016_projekt_osterhase"
            Begin Extent = 
               Top = 6
               Left = 426
               Bottom = 228
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 121
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 294
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 6
               Left = 634
               Bottom = 121
               Right = 810
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
      Begin ColumnWidths = 19
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 90' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Osterhase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Osterhase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Osterhase'
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
         Begin Table = "trumpf_2016_projekt_schogetten"
            Begin Extent = 
               Top = 6
               Left = 426
               Bottom = 218
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 121
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 306
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 6
               Left = 634
               Bottom = 121
               Right = 810
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
      Begin ColumnWidths = 19
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
         Width = 2535
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
         Alias = 9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'00
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Schogetten'
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
         Begin Table = "trumpf_2016_projekt_valentinstag"
            Begin Extent = 
               Top = 6
               Left = 426
               Bottom = 240
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 121
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 314
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 6
               Left = 634
               Bottom = 121
               Right = 810
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
      Begin ColumnWidths = 19
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 900
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[14] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_werbedamen_klassisch"
            Begin Extent = 
               Top = 6
               Left = 426
               Bottom = 215
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 121
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 315
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 6
               Left = 634
               Bottom = 121
               Right = 810
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
      Begin ColumnWidths = 19
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Werbedamen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Alias = 900
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Werbedamen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Kundenexport_Werbedamen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[89] 4[3] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_fritt_gluecksrad"
            Begin Extent = 
               Top = 21
               Left = 519
               Bottom = 414
               Right = 787
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 31
               Left = 807
               Bottom = 354
               Right = 969
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 51
               Left = 46
               Bottom = 345
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 120
               Left = 305
               Bottom = 558
               Right = 489
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_fritt_gluecksrad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_fritt_gluecksrad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[90] 4[3] 2[2] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_fritt_memory"
            Begin Extent = 
               Top = 27
               Left = 270
               Bottom = 410
               Right = 540
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 40
               Left = 77
               Bottom = 362
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 58
               Left = 806
               Bottom = 354
               Right = 972
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 139
               Left = 568
               Bottom = 574
               Right = 752
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_fritt_memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_fritt_memory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[90] 4[3] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 15
               Left = 45
               Bottom = 339
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_muttertag"
            Begin Extent = 
               Top = 6
               Left = 238
               Bottom = 464
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 35
               Left = 829
               Bottom = 317
               Right = 995
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 124
               Left = 538
               Bottom = 539
               Right = 722
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_muttertag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[90] 4[3] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_osterhase"
            Begin Extent = 
               Top = 14
               Left = 323
               Bottom = 527
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 29
               Left = 36
               Bottom = 346
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 44
               Left = 849
               Bottom = 326
               Right = 1015
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 173
               Left = 622
               Bottom = 585
               Right = 806
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_osterhase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_osterhase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[86] 4[4] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 181
               Left = 561
               Bottom = 600
               Right = 745
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 54
               Left = 79
               Bottom = 384
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_2016_projekt_schogetten"
            Begin Extent = 
               Top = 67
               Left = 270
               Bottom = 435
               Right = 531
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 98
               Left = 777
               Bottom = 452
               Right = 943
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_schogetten'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[89] 4[4] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_valentinstag"
            Begin Extent = 
               Top = 29
               Left = 224
               Bottom = 508
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 32
               Left = 29
               Bottom = 344
               Right = 191
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 59
               Left = 699
               Bottom = 347
               Right = 865
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 143
               Left = 494
               Bottom = 571
               Right = 678
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_valentinstag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[86] 4[5] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
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
         Begin Table = "trumpf_2016_projekt_werbedamen_klassisch"
            Begin Extent = 
               Top = 33
               Left = 216
               Bottom = 548
               Right = 539
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_bezirke"
            Begin Extent = 
               Top = 41
               Left = 25
               Bottom = 352
               Right = 187
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_maerkte"
            Begin Extent = 
               Top = 64
               Left = 766
               Bottom = 354
               Right = 932
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "trumpf_werbedamen"
            Begin Extent = 
               Top = 147
               Left = 569
               Bottom = 573
               Right = 753
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_werbedamen_klassisch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_2016_projektuebersicht_werbedamen_klassisch'
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
         Begin Table = "trumpf_2016_werbedamen_einsatztage"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 221
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_werbedamen_einsatztage_2016'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'trumpf_werbedamen_einsatztage_2016'
GO
USE [master]
GO
ALTER DATABASE [Ludwigschokolade2016] SET  READ_WRITE 
GO
