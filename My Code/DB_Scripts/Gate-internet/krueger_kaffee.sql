USE [master]
GO
/****** Object:  Database [krueger_kaffee]    Script Date: 06.07.2018 11:10:32 ******/
CREATE DATABASE [krueger_kaffee]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'krueger_kaffee', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\krueger_kaffee.mdf' , SIZE = 37888KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'krueger_kaffee_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\krueger_kaffee_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [krueger_kaffee] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [krueger_kaffee].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [krueger_kaffee] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [krueger_kaffee] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [krueger_kaffee] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [krueger_kaffee] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [krueger_kaffee] SET ARITHABORT OFF 
GO
ALTER DATABASE [krueger_kaffee] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [krueger_kaffee] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [krueger_kaffee] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [krueger_kaffee] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [krueger_kaffee] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [krueger_kaffee] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [krueger_kaffee] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [krueger_kaffee] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [krueger_kaffee] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [krueger_kaffee] SET  DISABLE_BROKER 
GO
ALTER DATABASE [krueger_kaffee] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [krueger_kaffee] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [krueger_kaffee] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [krueger_kaffee] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [krueger_kaffee] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [krueger_kaffee] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [krueger_kaffee] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [krueger_kaffee] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [krueger_kaffee] SET  MULTI_USER 
GO
ALTER DATABASE [krueger_kaffee] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [krueger_kaffee] SET DB_CHAINING OFF 
GO
ALTER DATABASE [krueger_kaffee] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [krueger_kaffee] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [krueger_kaffee] SET DELAYED_DURABILITY = DISABLED 
GO
USE [krueger_kaffee]
GO
/****** Object:  Table [dbo].[krueger_2015_einsatzbericht_family_sampling]    Script Date: 06.07.2018 11:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_einsatzbericht_family_sampling](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Beurteilung_Aktionsstandort] [int] NULL,
	[Grund_Beurteilung_Aktionsstandort] [text] NULL,
	[Aktionsstandort] [varchar](50) NULL,
	[Sonstiger_Aktionsstandort] [text] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[SamplingSachets] [int] NULL,
	[Flyer] [int] NULL,
	[KundenAnregungAktion] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[Bestand_vorAktion_Produkt1] [int] NULL,
	[Bestand_vorAktion_Produkt2] [int] NULL,
	[Bestand_vorAktion_Produkt3] [int] NULL,
	[Bestand_vorAktion_Produkt4] [int] NULL,
	[Bestand_vorAktion_Produkt5] [int] NULL,
	[Bestand_vorAktion_Produkt6] [int] NULL,
	[Bestand_vorAktion_Produkt7] [int] NULL,
	[Bestand_vorAktion_Produkt8] [int] NULL,
	[Bestand_vorAktion_Produkt9] [int] NULL,
	[Bestand_vorAktion_Produkt10] [int] NULL,
	[Bestand_vorAktion_Produkt11] [int] NULL,
	[Bestand_vorAktion_Produkt12] [int] NULL,
	[Bestand_vorAktion_Produkt13] [int] NULL,
	[Betsnad_vorAktion_Produkt14] [int] NULL,
	[Bestand_vorAktion_Produkt15] [int] NULL,
	[Bestand_vorAktion_Produkt16] [int] NULL,
	[Bestand_vorAktion_Produkt17] [int] NULL,
	[Bestand_vorAktion_Produkt18] [int] NULL,
	[Bestand_vorAktion_Produkt19] [int] NULL,
	[Bestand_vorAktion_Produkt20] [int] NULL,
	[Bestand_vorAktion_Produkt21] [int] NULL,
	[Bestand_vorAktion_Produkt22] [int] NULL,
	[Bestand_vorAktion_Produkt23] [int] NULL,
	[Bestand_vorAktion_Produkt24] [int] NULL,
	[Bestand_vorAktion_Produkt25] [int] NULL,
	[Bestand_nachAktion_Produkt1] [int] NULL,
	[Bestand_nachAktion_Produkt2] [int] NULL,
	[Bestand_nachAktion_Produkt3] [int] NULL,
	[Bestand_nachAktion_Produkt4] [int] NULL,
	[Bestand_nachAktion_Produkt5] [int] NULL,
	[Bestand_nachAktion_Produkt6] [int] NULL,
	[Bestand_nachAktion_Produkt7] [int] NULL,
	[Bestand_nachAktion_Produkt8] [int] NULL,
	[Bestand_nachAktion_Produkt9] [int] NULL,
	[Bestand_nachAktion_Produkt10] [int] NULL,
	[Bestand_nachAktion_Produkt11] [int] NULL,
	[Bestand_nachAktion_Produkt12] [int] NULL,
	[Bestand_nachAktion_Produkt13] [int] NULL,
	[Bestand_nachAktion_Produkt14] [int] NULL,
	[Bestand_nachAktion_Produkt15] [int] NULL,
	[Bestand_nachAktion_Produkt16] [int] NULL,
	[Bestand_nachAktion_Produkt17] [int] NULL,
	[Bestand_nachAktion_Produkt18] [int] NULL,
	[Bestand_nachAktion_Produkt19] [int] NULL,
	[Bestand_nachAktion_Produkt20] [int] NULL,
	[Bestand_nachAktion_Produkt21] [int] NULL,
	[Bestand_nachAktion_Produkt22] [int] NULL,
	[Bestand_nachAktion_Produkt23] [int] NULL,
	[Bestand_nachAktion_Produkt24] [int] NULL,
	[Bestand_nachAktion_Produkt25] [int] NULL,
	[anlagedatum] [varchar](50) NULL,
 CONSTRAINT [PK_krueger_2015_einsatzbericht_werbedamen_family_sampling] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_einsatzbericht_werbedamen_chai_latte]    Script Date: 06.07.2018 11:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_einsatzbericht_werbedamen_chai_latte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Beurteilung_Aktionsstandort] [int] NULL,
	[Grund_Beurteilung_Aktionsstandort] [text] NULL,
	[Aktionsstandort] [varchar](50) NULL,
	[Sonstiger_Aktionsstandort] [text] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[KundenAnregungAktion] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[Aktionspreis] [bit] NULL,
	[Preis_Produkt1] [decimal](18, 2) NULL,
	[Preis_Produkt2] [decimal](18, 2) NULL,
	[Preis_Produkt3] [decimal](18, 2) NULL,
	[Preis_Produkt4] [decimal](18, 2) NULL,
	[Preis_Produkt5] [decimal](18, 2) NULL,
	[Preis_Produkt6] [decimal](18, 2) NULL,
	[Preis_Produkt7] [decimal](18, 2) NULL,
	[Preis_Produkt8] [decimal](18, 2) NULL,
	[Preis_Produkt9] [decimal](18, 2) NULL,
	[Preis_Produkt10] [decimal](18, 2) NULL,
	[Preis_Produkt11] [decimal](18, 2) NULL,
	[Preis_Produkt12] [decimal](18, 2) NULL,
	[Preis_Produkt13] [decimal](18, 2) NULL,
	[Preis_Produkt14] [decimal](18, 2) NULL,
	[Preis_Produkt15] [decimal](18, 2) NULL,
	[Preis_Produkt16] [decimal](18, 2) NULL,
	[Preis_Produkt17] [decimal](18, 2) NULL,
	[Preis_Produkt18] [decimal](18, 2) NULL,
	[Preis_Produkt19] [decimal](18, 2) NULL,
	[Preis_Produkt20] [decimal](18, 2) NULL,
	[Preis_Produkt21] [decimal](18, 2) NULL,
	[Preis_Produkt22] [decimal](18, 2) NULL,
	[Preis_Produkt23] [decimal](18, 2) NULL,
	[Preis_Produkt24] [decimal](18, 2) NULL,
	[Preis_Produkt25] [decimal](18, 2) NULL,
	[VerkaufTag1_Produkt1] [int] NULL,
	[VerkaufTag1_Produkt2] [int] NULL,
	[VerkaufTag1_Produkt3] [int] NULL,
	[VerkaufTag1_Produkt4] [int] NULL,
	[VerkaufTag1_Produkt5] [int] NULL,
	[VerkaufTag1_Produkt6] [int] NULL,
	[VerkaufTag1_Produkt7] [int] NULL,
	[VerkaufTag1_Produkt8] [int] NULL,
	[VerkaufTag1_Produkt9] [int] NULL,
	[VerkaufTag1_Produkt10] [int] NULL,
	[VerkaufTag1_Produkt11] [int] NULL,
	[VerkaufTag1_Produkt12] [int] NULL,
	[VerkaufTag1_Produkt13] [int] NULL,
	[VerkaufTag1_Produkt14] [int] NULL,
	[VerkaufTag1_Produkt15] [int] NULL,
	[VerkaufTag1_Produkt16] [int] NULL,
	[VerkaufTag1_Produkt17] [int] NULL,
	[VerkaufTag1_Produkt18] [int] NULL,
	[VerkaufTag1_Produkt19] [int] NULL,
	[VerkaufTag1_Produkt20] [int] NULL,
	[VerkaufTag1_Produkt21] [int] NULL,
	[VerkaufTag1_Produkt22] [int] NULL,
	[VerkaufTag1_Produkt23] [int] NULL,
	[VerkaufTag1_Produkt24] [int] NULL,
	[VerkaufTag1_Produkt25] [int] NULL,
	[VerkaufTag2_Produkt1] [int] NULL,
	[VerkaufTag2_Produkt2] [int] NULL,
	[VerkaufTag2_Produkt3] [int] NULL,
	[VerkaufTag2_Produkt4] [int] NULL,
	[VerkaufTag2_Produkt5] [int] NULL,
	[VerkaufTag2_Produkt6] [int] NULL,
	[VerkaufTag2_Produkt7] [int] NULL,
	[VerkaufTag2_Produkt8] [int] NULL,
	[VerkaufTag2_Produkt9] [int] NULL,
	[VerkaufTag2_Produkt10] [int] NULL,
	[VerkaufTag2_Produkt11] [int] NULL,
	[VerkaufTag2_Produkt12] [int] NULL,
	[VerkaufTag2_Produkt13] [int] NULL,
	[VerkaufTag2_Produkt14] [int] NULL,
	[VerkaufTag2_Produkt15] [int] NULL,
	[VerkaufTag2_Produkt16] [int] NULL,
	[VerkaufTag2_Produkt17] [int] NULL,
	[VerkaufTag2_Produkt18] [int] NULL,
	[VerkaufTag2_Produkt19] [int] NULL,
	[VerkaufTag2_Produkt20] [int] NULL,
	[VerkaufTag2_Produkt21] [int] NULL,
	[VerkaufTag2_Produkt22] [int] NULL,
	[VerkaufTag2_Produkt23] [int] NULL,
	[VerkaufTag2_Produkt24] [int] NULL,
	[VerkaufTag2_Produkt25] [int] NULL,
	[VerkostungTag1_Produkt1] [int] NULL,
	[VerkostungTag1_Produkt2] [int] NULL,
	[VerkostungTag1_Produkt3] [int] NULL,
	[VerkostungTag1_Produkt4] [int] NULL,
	[VerkostungTag1_Produkt5] [int] NULL,
	[VerkostungTag1_Produkt6] [int] NULL,
	[VerkostungTag1_Produkt7] [int] NULL,
	[VerkostungTag1_Produkt8] [int] NULL,
	[VerkostungTag1_Produkt9] [int] NULL,
	[VerkostungTag1_Produkt10] [int] NULL,
	[VerkostungTag1_Produkt11] [int] NULL,
	[VerkostungTag1_Produkt12] [int] NULL,
	[VerkostungTag1_Produkt13] [int] NULL,
	[VerkostungTag1_Produkt14] [int] NULL,
	[VerkostungTag1_Produkt15] [int] NULL,
	[VerkostungTag1_Produkt16] [int] NULL,
	[VerkostungTag1_Produkt17] [int] NULL,
	[VerkostungTag1_Produkt18] [int] NULL,
	[VerkostungTag1_Produkt19] [int] NULL,
	[VerkostungTag1_Produkt20] [int] NULL,
	[VerkostungTag1_Produkt21] [int] NULL,
	[VerkostungTag1_Produkt22] [int] NULL,
	[VerkostungTag1_Produkt23] [int] NULL,
	[VerkostungTag1_Produkt24] [int] NULL,
	[VerkostungTag1_Produkt25] [int] NULL,
	[VerkostungTag2_Produkt1] [int] NULL,
	[VerkostungTag2_Produkt2] [int] NULL,
	[VerkostungTag2_Produkt3] [int] NULL,
	[VerkostungTag2_Produkt4] [int] NULL,
	[VerkostungTag2_Produkt5] [int] NULL,
	[VerkostungTag2_Produkt6] [int] NULL,
	[VerkostungTag2_Produkt7] [int] NULL,
	[VerkostungTag2_Produkt8] [int] NULL,
	[VerkostungTag2_Produkt9] [int] NULL,
	[VerkostungTag2_Produkt10] [int] NULL,
	[VerkostungTag2_Produkt11] [int] NULL,
	[VerkostungTag2_Produkt12] [int] NULL,
	[VerkostungTag2_Produkt13] [int] NULL,
	[VerkostungTag2_Produkt14] [int] NULL,
	[VerkostungTag2_Produkt15] [int] NULL,
	[VerkostungTag2_Produkt16] [int] NULL,
	[VerkostungTag2_Produkt17] [int] NULL,
	[VerkostungTag2_Produkt18] [int] NULL,
	[VerkostungTag2_Produkt19] [int] NULL,
	[VerkostungTag2_Produkt20] [int] NULL,
	[VerkostungTag2_Produkt21] [int] NULL,
	[VerkostungTag2_Produkt22] [int] NULL,
	[VerkostungTag2_Produkt23] [int] NULL,
	[VerkostungTag2_Produkt24] [int] NULL,
	[VerkostungTag2_Produkt25] [int] NULL,
	[anlagedatum] [varchar](50) NULL,
 CONSTRAINT [PK_krueger_2015_einsatzbericht_werbedamen_chai_latte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_einsatzbericht_werbedamen_dolce_vita]    Script Date: 06.07.2018 11:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_einsatzbericht_werbedamen_dolce_vita](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Beurteilung_Aktionsstandort] [int] NULL,
	[Grund_Beurteilung_Aktionsstandort] [text] NULL,
	[Aktionsstandort] [varchar](50) NULL,
	[Sonstiger_Aktionsstandort] [text] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[KundenAnregungAktion] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[Aktionspreis] [bit] NULL,
	[Preis_Produkt1] [decimal](18, 2) NULL,
	[Preis_Produkt2] [decimal](18, 2) NULL,
	[Preis_Produkt3] [decimal](18, 2) NULL,
	[Preis_Produkt4] [decimal](18, 2) NULL,
	[Preis_Produkt5] [decimal](18, 2) NULL,
	[Preis_Produkt6] [decimal](18, 2) NULL,
	[Preis_Produkt7] [decimal](18, 2) NULL,
	[Preis_Produkt8] [decimal](18, 2) NULL,
	[Preis_Produkt9] [decimal](18, 2) NULL,
	[Preis_Produkt10] [decimal](18, 2) NULL,
	[Preis_Produkt11] [decimal](18, 2) NULL,
	[Preis_Produkt12] [decimal](18, 2) NULL,
	[Preis_Produkt13] [decimal](18, 2) NULL,
	[Preis_Produkt14] [decimal](18, 2) NULL,
	[Preis_Produkt15] [decimal](18, 2) NULL,
	[Preis_Produkt16] [decimal](18, 2) NULL,
	[Preis_Produkt17] [decimal](18, 2) NULL,
	[Preis_Produkt18] [decimal](18, 2) NULL,
	[Preis_Produkt19] [decimal](18, 2) NULL,
	[Preis_Produkt20] [decimal](18, 2) NULL,
	[Preis_Produkt21] [decimal](18, 2) NULL,
	[Preis_Produkt22] [decimal](18, 2) NULL,
	[Preis_Produkt23] [decimal](18, 2) NULL,
	[Preis_Produkt24] [decimal](18, 2) NULL,
	[Preis_Produkt25] [decimal](18, 2) NULL,
	[VerkaufTag1_Produkt1] [int] NULL,
	[VerkaufTag1_Produkt2] [int] NULL,
	[VerkaufTag1_Produkt3] [int] NULL,
	[VerkaufTag1_Produkt4] [int] NULL,
	[VerkaufTag1_Produkt5] [int] NULL,
	[VerkaufTag1_Produkt6] [int] NULL,
	[VerkaufTag1_Produkt7] [int] NULL,
	[VerkaufTag1_Produkt8] [int] NULL,
	[VerkaufTag1_Produkt9] [int] NULL,
	[VerkaufTag1_Produkt10] [int] NULL,
	[VerkaufTag1_Produkt11] [int] NULL,
	[VerkaufTag1_Produkt12] [int] NULL,
	[VerkaufTag1_Produkt13] [int] NULL,
	[VerkaufTag1_Produkt14] [int] NULL,
	[VerkaufTag1_Produkt15] [int] NULL,
	[VerkaufTag1_Produkt16] [int] NULL,
	[VerkaufTag1_Produkt17] [int] NULL,
	[VerkaufTag1_Produkt18] [int] NULL,
	[VerkaufTag1_Produkt19] [int] NULL,
	[VerkaufTag1_Produkt20] [int] NULL,
	[VerkaufTag1_Produkt21] [int] NULL,
	[VerkaufTag1_Produkt22] [int] NULL,
	[VerkaufTag1_Produkt23] [int] NULL,
	[VerkaufTag1_Produkt24] [int] NULL,
	[VerkaufTag1_Produkt25] [int] NULL,
	[VerkaufTag2_Produkt1] [int] NULL,
	[VerkaufTag2_Produkt2] [int] NULL,
	[VerkaufTag2_Produkt3] [int] NULL,
	[VerkaufTag2_Produkt4] [int] NULL,
	[VerkaufTag2_Produkt5] [int] NULL,
	[VerkaufTag2_Produkt6] [int] NULL,
	[VerkaufTag2_Produkt7] [int] NULL,
	[VerkaufTag2_Produkt8] [int] NULL,
	[VerkaufTag2_Produkt9] [int] NULL,
	[VerkaufTag2_Produkt10] [int] NULL,
	[VerkaufTag2_Produkt11] [int] NULL,
	[VerkaufTag2_Produkt12] [int] NULL,
	[VerkaufTag2_Produkt13] [int] NULL,
	[VerkaufTag2_Produkt14] [int] NULL,
	[VerkaufTag2_Produkt15] [int] NULL,
	[VerkaufTag2_Produkt16] [int] NULL,
	[VerkaufTag2_Produkt17] [int] NULL,
	[VerkaufTag2_Produkt18] [int] NULL,
	[VerkaufTag2_Produkt19] [int] NULL,
	[VerkaufTag2_Produkt20] [int] NULL,
	[VerkaufTag2_Produkt21] [int] NULL,
	[VerkaufTag2_Produkt22] [int] NULL,
	[VerkaufTag2_Produkt23] [int] NULL,
	[VerkaufTag2_Produkt24] [int] NULL,
	[VerkaufTag2_Produkt25] [int] NULL,
	[VerkostungTag1_Produkt1] [int] NULL,
	[VerkostungTag1_Produkt2] [int] NULL,
	[VerkostungTag1_Produkt3] [int] NULL,
	[VerkostungTag1_Produkt4] [int] NULL,
	[VerkostungTag1_Produkt5] [int] NULL,
	[VerkostungTag1_Produkt6] [int] NULL,
	[VerkostungTag1_Produkt7] [int] NULL,
	[VerkostungTag1_Produkt8] [int] NULL,
	[VerkostungTag1_Produkt9] [int] NULL,
	[VerkostungTag1_Produkt10] [int] NULL,
	[VerkostungTag1_Produkt11] [int] NULL,
	[VerkostungTag1_Produkt12] [int] NULL,
	[VerkostungTag1_Produkt13] [int] NULL,
	[VerkostungTag1_Produkt14] [int] NULL,
	[VerkostungTag1_Produkt15] [int] NULL,
	[VerkostungTag1_Produkt16] [int] NULL,
	[VerkostungTag1_Produkt17] [int] NULL,
	[VerkostungTag1_Produkt18] [int] NULL,
	[VerkostungTag1_Produkt19] [int] NULL,
	[VerkostungTag1_Produkt20] [int] NULL,
	[VerkostungTag1_Produkt21] [int] NULL,
	[VerkostungTag1_Produkt22] [int] NULL,
	[VerkostungTag1_Produkt23] [int] NULL,
	[VerkostungTag1_Produkt24] [int] NULL,
	[VerkostungTag1_Produkt25] [int] NULL,
	[VerkostungTag2_Produkt1] [int] NULL,
	[VerkostungTag2_Produkt2] [int] NULL,
	[VerkostungTag2_Produkt3] [int] NULL,
	[VerkostungTag2_Produkt4] [int] NULL,
	[VerkostungTag2_Produkt5] [int] NULL,
	[VerkostungTag2_Produkt6] [int] NULL,
	[VerkostungTag2_Produkt7] [int] NULL,
	[VerkostungTag2_Produkt8] [int] NULL,
	[VerkostungTag2_Produkt9] [int] NULL,
	[VerkostungTag2_Produkt10] [int] NULL,
	[VerkostungTag2_Produkt11] [int] NULL,
	[VerkostungTag2_Produkt12] [int] NULL,
	[VerkostungTag2_Produkt13] [int] NULL,
	[VerkostungTag2_Produkt14] [int] NULL,
	[VerkostungTag2_Produkt15] [int] NULL,
	[VerkostungTag2_Produkt16] [int] NULL,
	[VerkostungTag2_Produkt17] [int] NULL,
	[VerkostungTag2_Produkt18] [int] NULL,
	[VerkostungTag2_Produkt19] [int] NULL,
	[VerkostungTag2_Produkt20] [int] NULL,
	[VerkostungTag2_Produkt21] [int] NULL,
	[VerkostungTag2_Produkt22] [int] NULL,
	[VerkostungTag2_Produkt23] [int] NULL,
	[VerkostungTag2_Produkt24] [int] NULL,
	[VerkostungTag2_Produkt25] [int] NULL,
	[anlagedatum] [varchar](50) NULL,
 CONSTRAINT [PK_krueger_2015_einsatzbericht_werbedamen_dolce_vita] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_einsatzbericht_werbedamen_tea_latte]    Script Date: 06.07.2018 11:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_einsatzbericht_werbedamen_tea_latte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[Beurteilung_Aktionsstandort] [int] NULL,
	[Grund_Beurteilung_Aktionsstandort] [text] NULL,
	[Aktionsstandort] [varchar](50) NULL,
	[Sonstiger_Aktionsstandort] [text] NULL,
	[KundenkontakteOhneBeratung] [int] NULL,
	[KundenkontakteMitBeratung] [int] NULL,
	[KundenkontakteGesamt] [int] NULL,
	[KundenAnregungAktion] [text] NULL,
	[ZweitplatzierungPaletten] [int] NULL,
	[ZweitplatzierungDisplays] [int] NULL,
	[Aktionspreis] [bit] NULL,
	[Preis_Produkt1] [decimal](18, 2) NULL,
	[Preis_Produkt2] [decimal](18, 2) NULL,
	[Preis_Produkt3] [decimal](18, 2) NULL,
	[Preis_Produkt4] [decimal](18, 2) NULL,
	[Preis_Produkt5] [decimal](18, 2) NULL,
	[Preis_Produkt6] [decimal](18, 2) NULL,
	[Preis_Produkt7] [decimal](18, 2) NULL,
	[Preis_Produkt8] [decimal](18, 2) NULL,
	[Preis_Produkt9] [decimal](18, 2) NULL,
	[Preis_Produkt10] [decimal](18, 2) NULL,
	[Preis_Produkt11] [decimal](18, 2) NULL,
	[Preis_Produkt12] [decimal](18, 2) NULL,
	[Preis_Produkt13] [decimal](18, 2) NULL,
	[Preis_Produkt14] [decimal](18, 2) NULL,
	[Preis_Produkt15] [decimal](18, 2) NULL,
	[Preis_Produkt16] [decimal](18, 2) NULL,
	[Preis_Produkt17] [decimal](18, 2) NULL,
	[Preis_Produkt18] [decimal](18, 2) NULL,
	[Preis_Produkt19] [decimal](18, 2) NULL,
	[Preis_Produkt20] [decimal](18, 2) NULL,
	[Preis_Produkt21] [decimal](18, 2) NULL,
	[Preis_Produkt22] [decimal](18, 2) NULL,
	[Preis_Produkt23] [decimal](18, 2) NULL,
	[Preis_Produkt24] [decimal](18, 2) NULL,
	[Preis_Produkt25] [decimal](18, 2) NULL,
	[VerkaufTag1_Produkt1] [int] NULL,
	[VerkaufTag1_Produkt2] [int] NULL,
	[VerkaufTag1_Produkt3] [int] NULL,
	[VerkaufTag1_Produkt4] [int] NULL,
	[VerkaufTag1_Produkt5] [int] NULL,
	[VerkaufTag1_Produkt6] [int] NULL,
	[VerkaufTag1_Produkt7] [int] NULL,
	[VerkaufTag1_Produkt8] [int] NULL,
	[VerkaufTag1_Produkt9] [int] NULL,
	[VerkaufTag1_Produkt10] [int] NULL,
	[VerkaufTag1_Produkt11] [int] NULL,
	[VerkaufTag1_Produkt12] [int] NULL,
	[VerkaufTag1_Produkt13] [int] NULL,
	[VerkaufTag1_Produkt14] [int] NULL,
	[VerkaufTag1_Produkt15] [int] NULL,
	[VerkaufTag1_Produkt16] [int] NULL,
	[VerkaufTag1_Produkt17] [int] NULL,
	[VerkaufTag1_Produkt18] [int] NULL,
	[VerkaufTag1_Produkt19] [int] NULL,
	[VerkaufTag1_Produkt20] [int] NULL,
	[VerkaufTag1_Produkt21] [int] NULL,
	[VerkaufTag1_Produkt22] [int] NULL,
	[VerkaufTag1_Produkt23] [int] NULL,
	[VerkaufTag1_Produkt24] [int] NULL,
	[VerkaufTag1_Produkt25] [int] NULL,
	[VerkaufTag2_Produkt1] [int] NULL,
	[VerkaufTag2_Produkt2] [int] NULL,
	[VerkaufTag2_Produkt3] [int] NULL,
	[VerkaufTag2_Produkt4] [int] NULL,
	[VerkaufTag2_Produkt5] [int] NULL,
	[VerkaufTag2_Produkt6] [int] NULL,
	[VerkaufTag2_Produkt7] [int] NULL,
	[VerkaufTag2_Produkt8] [int] NULL,
	[VerkaufTag2_Produkt9] [int] NULL,
	[VerkaufTag2_Produkt10] [int] NULL,
	[VerkaufTag2_Produkt11] [int] NULL,
	[VerkaufTag2_Produkt12] [int] NULL,
	[VerkaufTag2_Produkt13] [int] NULL,
	[VerkaufTag2_Produkt14] [int] NULL,
	[VerkaufTag2_Produkt15] [int] NULL,
	[VerkaufTag2_Produkt16] [int] NULL,
	[VerkaufTag2_Produkt17] [int] NULL,
	[VerkaufTag2_Produkt18] [int] NULL,
	[VerkaufTag2_Produkt19] [int] NULL,
	[VerkaufTag2_Produkt20] [int] NULL,
	[VerkaufTag2_Produkt21] [int] NULL,
	[VerkaufTag2_Produkt22] [int] NULL,
	[VerkaufTag2_Produkt23] [int] NULL,
	[VerkaufTag2_Produkt24] [int] NULL,
	[VerkaufTag2_Produkt25] [int] NULL,
	[VerkostungTag1_Produkt1] [int] NULL,
	[VerkostungTag1_Produkt2] [int] NULL,
	[VerkostungTag1_Produkt3] [int] NULL,
	[VerkostungTag1_Produkt4] [int] NULL,
	[VerkostungTag1_Produkt5] [int] NULL,
	[VerkostungTag1_Produkt6] [int] NULL,
	[VerkostungTag1_Produkt7] [int] NULL,
	[VerkostungTag1_Produkt8] [int] NULL,
	[VerkostungTag1_Produkt9] [int] NULL,
	[VerkostungTag1_Produkt10] [int] NULL,
	[VerkostungTag1_Produkt11] [int] NULL,
	[VerkostungTag1_Produkt12] [int] NULL,
	[VerkostungTag1_Produkt13] [int] NULL,
	[VerkostungTag1_Produkt14] [int] NULL,
	[VerkostungTag1_Produkt15] [int] NULL,
	[VerkostungTag1_Produkt16] [int] NULL,
	[VerkostungTag1_Produkt17] [int] NULL,
	[VerkostungTag1_Produkt18] [int] NULL,
	[VerkostungTag1_Produkt19] [int] NULL,
	[VerkostungTag1_Produkt20] [int] NULL,
	[VerkostungTag1_Produkt21] [int] NULL,
	[VerkostungTag1_Produkt22] [int] NULL,
	[VerkostungTag1_Produkt23] [int] NULL,
	[VerkostungTag1_Produkt24] [int] NULL,
	[VerkostungTag1_Produkt25] [int] NULL,
	[VerkostungTag2_Produkt1] [int] NULL,
	[VerkostungTag2_Produkt2] [int] NULL,
	[VerkostungTag2_Produkt3] [int] NULL,
	[VerkostungTag2_Produkt4] [int] NULL,
	[VerkostungTag2_Produkt5] [int] NULL,
	[VerkostungTag2_Produkt6] [int] NULL,
	[VerkostungTag2_Produkt7] [int] NULL,
	[VerkostungTag2_Produkt8] [int] NULL,
	[VerkostungTag2_Produkt9] [int] NULL,
	[VerkostungTag2_Produkt10] [int] NULL,
	[VerkostungTag2_Produkt11] [int] NULL,
	[VerkostungTag2_Produkt12] [int] NULL,
	[VerkostungTag2_Produkt13] [int] NULL,
	[VerkostungTag2_Produkt14] [int] NULL,
	[VerkostungTag2_Produkt15] [int] NULL,
	[VerkostungTag2_Produkt16] [int] NULL,
	[VerkostungTag2_Produkt17] [int] NULL,
	[VerkostungTag2_Produkt18] [int] NULL,
	[VerkostungTag2_Produkt19] [int] NULL,
	[VerkostungTag2_Produkt20] [int] NULL,
	[VerkostungTag2_Produkt21] [int] NULL,
	[VerkostungTag2_Produkt22] [int] NULL,
	[VerkostungTag2_Produkt23] [int] NULL,
	[VerkostungTag2_Produkt24] [int] NULL,
	[VerkostungTag2_Produkt25] [int] NULL,
	[anlagedatum] [varchar](50) NULL,
 CONSTRAINT [PK_krueger_2015_einsatzbericht_werbedamen_tea_latte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_fragebogen_family_sampling]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_fragebogen_family_sampling](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_krueger_2015_fragebogen_family_sampling] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_fragebogen_werbedamen_chai_latte]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_fragebogen_werbedamen_chai_latte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_krueger_2015_fragebogen_werbedamen_chai_latte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_fragebogen_werbedamen_dolce_vita]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_fragebogen_werbedamen_dolce_vita](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_krueger_2015_fragebogen_werbedamen_dolce_vita] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_fragebogen_werbedamen_tea_latte]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_fragebogen_werbedamen_tea_latte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projekt_id] [int] NOT NULL,
	[BeurteilungEngagement] [int] NULL,
	[GrundEngagement] [text] NULL,
	[puenktlich] [varchar](50) NULL,
	[Grundunpuenktlich] [text] NULL,
	[AktionWiederholen] [varchar](50) NULL,
	[GrundAktion] [text] NULL,
	[Kundenresonanz] [int] NULL,
	[Verbesserungsvorschlaege] [text] NULL,
	[anlagedatum] [text] NULL,
 CONSTRAINT [PK_krueger_2015_fragebogen_werbedamen_tea_latte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_projekt_family_sampling]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_projekt_family_sampling](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vl_id] [int] NOT NULL,
	[ad_id] [int] NOT NULL,
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
	[equipment] [text] NULL,
	[anmerkungen] [text] NULL,
	[modul] [int] NULL,
	[abnahme] [text] NULL,
	[aktion] [text] NULL,
	[promoter_anzahl] [int] NULL,
	[versand_zubehoer_an] [varchar](max) NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_projekt_werbedamen_chai_latte]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_projekt_werbedamen_chai_latte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vl_id] [int] NOT NULL,
	[ad_id] [int] NOT NULL,
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
	[equipment] [text] NULL,
	[anmerkungen] [text] NULL,
	[modul] [int] NULL,
	[abnahme] [text] NULL,
	[aktion] [text] NULL,
	[promoter_anzahl] [int] NULL,
	[versand_zubehoer_an] [varchar](max) NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_projekt_werbedamen_dolce_vita]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_projekt_werbedamen_dolce_vita](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vl_id] [int] NOT NULL,
	[ad_id] [int] NOT NULL,
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
	[equipment] [text] NULL,
	[anmerkungen] [text] NULL,
	[modul] [int] NULL,
	[abnahme] [text] NULL,
	[aktion] [text] NULL,
	[promoter_anzahl] [int] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_2015_projekt_werbedamen_tea_latte]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_2015_projekt_werbedamen_tea_latte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vl_id] [int] NOT NULL,
	[ad_id] [int] NOT NULL,
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
	[equipment] [text] NULL,
	[anmerkungen] [text] NULL,
	[modul] [int] NULL,
	[abnahme] [text] NULL,
	[aktion] [text] NULL,
	[promoter_anzahl] [int] NULL,
	[werbedame] [int] NULL,
	[anlagedatum] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_bezirke]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_bezirke](
	[ID_bezirk] [int] NOT NULL,
	[VL] [nchar](10) NULL,
	[BEZ] [nvarchar](255) NULL,
	[Anrede] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[PLZ] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[krueger_handelszentren]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_handelszentren](
	[id] [int] NOT NULL,
	[HZ] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_kaufhaustypen]    Script Date: 06.07.2018 11:10:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_kaufhaustypen](
	[id] [int] NOT NULL,
	[typ] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_keyaccounts]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_keyaccounts](
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
/****** Object:  Table [dbo].[krueger_login]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_login](
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
/****** Object:  Table [dbo].[krueger_maerkte]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_maerkte](
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
 CONSTRAINT [PK_krueger_maerkte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krueger_werbedamen]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krueger_werbedamen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [nvarchar](255) NULL,
	[Vorname] [nvarchar](255) NULL,
	[Nachname] [nvarchar](255) NULL,
	[Straße] [nvarchar](255) NULL,
	[PLZ] [nvarchar](50) NULL,
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
 CONSTRAINT [PK_krueger_werbedamen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_chai_latte]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_chai_latte](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_dolce_vita]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_dolce_vita](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_family_sampling]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_family_sampling](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkte_tea_latte]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkte_tea_latte](
	[Tabellenheader] [varchar](max) NULL,
	[Produktname] [varchar](max) NULL,
	[aktiv] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[auswertung_2015_einsatzbericht_werbedamen_dolce_vita]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2015_einsatzbericht_werbedamen_dolce_vita]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag1, dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.KW, dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstage, dbo.krueger_maerkte.Name, 
                      dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Promoter, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt1 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt1 AS
                       Verkauf1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt1 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt1
                       AS Verkostung1, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt2 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt2 AS
                       Verkauf2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt2 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt2
                       AS Verkostung2, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt3 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt3 AS
                       Verkauf3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt3 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt3
                       AS Verkostung3, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt4 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt4 AS
                       Verkauf4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt4 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt4
                       AS Verkostung4, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt5 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt5 AS
                       Verkauf5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt5 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt5
                       AS Verkostung5, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt6 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt6 AS
                       Verkauf6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt6 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt6
                       AS Verkostung6, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt7 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt7 AS
                       Verkauf7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt7 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt7
                       AS Verkostung7, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt8 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt8 AS
                       Verkauf8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt8 + dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt8
                       AS Verkostung8, dbo.krueger_2015_projekt_werbedamen_dolce_vita.id, dbo.krueger_maerkte.BVL, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag1_von, dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag1_bis, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag2_von, dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag2_bis, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.KundenkontakteOhneBeratung, dbo.krueger_werbedamen.Vorname, dbo.krueger_werbedamen.Nachname, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.projekt_id, dbo.krueger_maerkte.Strasse, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.ZweitplatzierungPaletten, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.ZweitplatzierungDisplays, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.KundenkontakteGesamt, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Beurteilung_Aktionsstandort, dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, 
                      krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName
FROM         dbo.krueger_2015_projekt_werbedamen_dolce_vita INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.ad_id = dbo.krueger_bezirke.ID INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita ON 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.id = dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.projekt_id LEFT OUTER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.werbedame = dbo.krueger_werbedamen.id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.vl_id = krueger_bezirke_1.ID
GO
/****** Object:  View [dbo].[Zusammenfassung_werbedamen_dolce_vita_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_werbedamen_dolce_vita_2015]
AS
SELECT     'Preis' AS Info, Preis_Produkt1, Preis_Produkt2, Preis_Produkt3, Preis_Produkt4, Preis_Produkt5, Preis_Produkt6, Preis_Produkt7, Preis_Produkt8, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_dolce_vita

union

SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, Verkostung6, Verkostung7, Verkostung8, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_dolce_vita

union

SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, Verkauf6, Verkauf7, Verkauf8, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_dolce_vita

GO
/****** Object:  View [dbo].[auswertung_2015_einsatzbericht_werbedamen_chai_latte]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2015_einsatzbericht_werbedamen_chai_latte]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag1, dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.KW, dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstage, dbo.krueger_maerkte.Name, 
                      dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Promoter, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt1 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt1 AS
                       Verkauf1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt1 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt1
                       AS Verkostung1, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt2 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt2 AS
                       Verkauf2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt2 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt2
                       AS Verkostung2, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt3 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt3 AS
                       Verkauf3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt3 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt3
                       AS Verkostung3, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt4 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt4 AS
                       Verkauf4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt4 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt4
                       AS Verkostung4, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt5 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt5 AS
                       Verkauf5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt5 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt5
                       AS Verkostung5, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt6 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt6 AS
                       Verkauf6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt6 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt6
                       AS Verkostung6, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt7 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt7 AS
                       Verkauf7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt7 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt7
                       AS Verkostung7, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt8 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt8 AS
                       Verkauf8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt8 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt8
                       AS Verkostung8, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt9 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt9 AS
                       Verkauf9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt9 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt9
                       AS Verkostung9, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt10 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt10
                       AS Verkauf10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt10 + dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt10
                       AS Verkostung10, dbo.krueger_2015_projekt_werbedamen_chai_latte.id, dbo.krueger_maerkte.BVL, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag1_von, dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag1_bis, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag2_von, dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag2_bis, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.KundenkontakteOhneBeratung, dbo.krueger_werbedamen.Vorname, dbo.krueger_werbedamen.Nachname, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.projekt_id, dbo.krueger_maerkte.Strasse, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.ZweitplatzierungPaletten, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.ZweitplatzierungDisplays, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.KundenkontakteGesamt, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Beurteilung_Aktionsstandort, dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, 
                      krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName
FROM         dbo.krueger_2015_projekt_werbedamen_chai_latte INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_chai_latte.ad_id = dbo.krueger_bezirke.ID INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_werbedamen_chai_latte.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte ON 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.id = dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.projekt_id LEFT OUTER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_werbedamen_chai_latte.werbedame = dbo.krueger_werbedamen.id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_werbedamen_chai_latte.vl_id = krueger_bezirke_1.ID
GO
/****** Object:  View [dbo].[Zusammenfassung_werbedamen_chai_latte_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_werbedamen_chai_latte_2015]
AS
SELECT     'Preis' AS Info, Preis_Produkt1, Preis_Produkt2, Preis_Produkt3, Preis_Produkt4, Preis_Produkt5, Preis_Produkt6, Preis_Produkt7, Preis_Produkt8, Preis_Produkt9, Preis_Produkt10, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_chai_latte

union

SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, Verkostung6, Verkostung7, Verkostung8, Verkostung9, Verkostung10, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_chai_latte

union

SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, Verkauf6, Verkauf7, Verkauf8, Verkauf9, Verkauf10, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_chai_latte

GO
/****** Object:  View [dbo].[auswertung_2015_einsatzbericht_werbedamen_tea_latte]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2015_einsatzbericht_werbedamen_tea_latte]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag1, dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.KW, dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstage, dbo.krueger_maerkte.Name, 
                      dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Promoter, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt1 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt1 AS Verkauf1,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt1 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt1
                       AS Verkostung1, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt2 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt2 AS Verkauf2,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt2 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt2
                       AS Verkostung2, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt3 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt3 AS Verkauf3,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt3 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt3
                       AS Verkostung3, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt4 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt4 AS Verkauf4,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt4 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt4
                       AS Verkostung4, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt5 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt5 AS Verkauf5,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt5 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt5
                       AS Verkostung5, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt6 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt6 AS Verkauf6,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt6 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt6
                       AS Verkostung6, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt7 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt7 AS Verkauf7,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt7 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt7
                       AS Verkostung7, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt8 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt8 AS Verkauf8,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt8 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt8
                       AS Verkostung8, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt9 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt9 AS Verkauf9,
                       dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt9 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt9
                       AS Verkostung9, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt10 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt10 AS
                       Verkauf10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt10 + dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt10
                       AS Verkostung10, dbo.krueger_2015_projekt_werbedamen_tea_latte.id, dbo.krueger_maerkte.BVL, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag1_von, dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag1_bis, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag2_von, dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag2_bis, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.KundenkontakteOhneBeratung, dbo.krueger_werbedamen.Vorname, dbo.krueger_werbedamen.Nachname, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.projekt_id, dbo.krueger_maerkte.Strasse, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.ZweitplatzierungPaletten, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.ZweitplatzierungDisplays, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.KundenkontakteGesamt, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Beurteilung_Aktionsstandort, dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, 
                      krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName
FROM         dbo.krueger_2015_projekt_werbedamen_tea_latte INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_tea_latte.ad_id = dbo.krueger_bezirke.ID INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_werbedamen_tea_latte.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte ON 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.id = dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.projekt_id LEFT OUTER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_werbedamen_tea_latte.werbedame = dbo.krueger_werbedamen.id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_werbedamen_tea_latte.vl_id = krueger_bezirke_1.ID
GO
/****** Object:  View [dbo].[Zusammenfassung_werbedamen_tea_latte_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_werbedamen_tea_latte_2015]
AS
SELECT     'Preis' AS Info, Preis_Produkt1, Preis_Produkt2, Preis_Produkt3, Preis_Produkt4, Preis_Produkt5, Preis_Produkt6, Preis_Produkt7, Preis_Produkt8, Preis_Produkt9, Preis_Produkt10, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_tea_latte

union

SELECT     'Verkostung' AS Info, Verkostung1, Verkostung2, Verkostung3, Verkostung4, Verkostung5, Verkostung6, Verkostung7, Verkostung8, Verkostung9, Verkostung10, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_tea_latte

union

SELECT     'Verkauf' AS Info, Verkauf1, Verkauf2, Verkauf3, Verkauf4, Verkauf5, Verkauf6, Verkauf7, Verkauf8, Verkauf9, Verkauf10, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_werbedamen_tea_latte

GO
/****** Object:  View [dbo].[auswertung_2015_einsatzbericht_family_sampling]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[auswertung_2015_einsatzbericht_family_sampling]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstag1, dbo.krueger_2015_projekt_family_sampling.aktionstag2, dbo.krueger_2015_projekt_family_sampling.KW, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstage, dbo.krueger_maerkte.Name, dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, 
                      dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Promoter, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt1 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt1 AS
                       Sampling1, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt2 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt2 AS
                       Sampling2, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt3 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt3 AS
                       Sampling3, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt4 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt4 AS
                       Sampling4, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt5 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt5 AS
                       Sampling5, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt6 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt6 AS
                       Sampling6, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt7 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt7 AS
                       Sampling7, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt8 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt8 AS
                       Sampling8, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt9 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt9 AS
                       Sampling9, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt10 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt10
                       AS Sampling10, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt11 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt11
                       AS Sampling11, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt12 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt12
                       AS Sampling12, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt13 - dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt13
                       AS Sampling13, dbo.krueger_2015_projekt_family_sampling.id, dbo.krueger_maerkte.BVL, dbo.krueger_2015_projekt_family_sampling.aktionstag1_von, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstag1_bis, dbo.krueger_2015_projekt_family_sampling.aktionstag2_von, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstag2_bis, dbo.krueger_2015_einsatzbericht_family_sampling.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.KundenkontakteOhneBeratung, dbo.krueger_werbedamen.Vorname, dbo.krueger_werbedamen.Nachname, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.projekt_id, dbo.krueger_maerkte.Strasse, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.ZweitplatzierungPaletten, dbo.krueger_2015_einsatzbericht_family_sampling.ZweitplatzierungDisplays, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Aktionsstandort, dbo.krueger_2015_einsatzbericht_family_sampling.KundenkontakteGesamt, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Beurteilung_Aktionsstandort, dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, 
                      krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName
FROM         dbo.krueger_2015_projekt_family_sampling INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_family_sampling.ad_id = dbo.krueger_bezirke.ID INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_family_sampling.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_2015_einsatzbericht_family_sampling ON 
                      dbo.krueger_2015_projekt_family_sampling.id = dbo.krueger_2015_einsatzbericht_family_sampling.projekt_id LEFT OUTER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_family_sampling.werbedame = dbo.krueger_werbedamen.id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_family_sampling.vl_id = krueger_bezirke_1.ID
GO
/****** Object:  View [dbo].[Zusammenfassung_family_sampling_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Zusammenfassung_family_sampling_2015]
AS
SELECT     'Sampling' AS Info, Sampling1, Sampling2, Sampling3, Sampling4, Sampling5, Sampling6, Sampling7, Sampling8, Sampling9, Sampling10, Sampling11, Sampling12, Sampling13, projekt_id
FROM         dbo.auswertung_2015_einsatzbericht_family_sampling

GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Family_Sampling_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Family_Sampling_2015]
AS
SELECT     TOP (100) PERCENT dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstag1, dbo.krueger_2015_projekt_family_sampling.aktionstag2, dbo.krueger_2015_projekt_family_sampling.KW, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstage, dbo.krueger_maerkte.Name, dbo.krueger_maerkte.Ort, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Beurteilung_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Grund_Beurteilung_Aktionsstandort, dbo.krueger_2015_einsatzbericht_family_sampling.Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Sonstiger_Aktionsstandort, dbo.krueger_2015_einsatzbericht_family_sampling.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.KundenkontakteOhneBeratung, dbo.krueger_2015_einsatzbericht_family_sampling.KundenkontakteGesamt, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.SamplingSachets, dbo.krueger_2015_einsatzbericht_family_sampling.Flyer, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.KundenAnregungAktion, dbo.krueger_2015_einsatzbericht_family_sampling.ZweitplatzierungPaletten, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.ZweitplatzierungDisplays, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt1, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt2, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt3, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt4, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt5, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt6, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt7, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt8, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt9, dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt11, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt11, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt12, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt12, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_vorAktion_Produkt13, 
                      dbo.krueger_2015_einsatzbericht_family_sampling.Bestand_nachAktion_Produkt13
FROM         dbo.krueger_2015_einsatzbericht_family_sampling INNER JOIN
                      dbo.krueger_2015_projekt_family_sampling ON 
                      dbo.krueger_2015_einsatzbericht_family_sampling.projekt_id = dbo.krueger_2015_projekt_family_sampling.id INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_family_sampling.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_family_sampling.ad_id = dbo.krueger_bezirke.ID
ORDER BY dbo.krueger_2015_projekt_family_sampling.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Werbedamen_Chai_Latte_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Werbedamen_Chai_Latte_2015]
AS
SELECT     TOP (100) PERCENT dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag1, dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.KW, dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstage, dbo.krueger_maerkte.Name, 
                      dbo.krueger_maerkte.Ort, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Beurteilung_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Grund_Beurteilung_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Aktionsstandort, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Sonstiger_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.KundenkontakteOhneBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.KundenkontakteGesamt, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.KundenAnregungAktion, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.ZweitplatzierungPaletten, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.ZweitplatzierungDisplays, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Aktionspreis, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt1, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt1, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt2, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt2, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt3, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt3, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt4, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt4, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt5, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt5, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt6, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt6, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt7, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt7, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt8, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt8, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt9, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt9, dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.Preis_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag1_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkaufTag2_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag1_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.VerkostungTag2_Produkt10
FROM         dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte INNER JOIN
                      dbo.krueger_2015_projekt_werbedamen_chai_latte ON 
                      dbo.krueger_2015_einsatzbericht_werbedamen_chai_latte.projekt_id = dbo.krueger_2015_projekt_werbedamen_chai_latte.id INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_werbedamen_chai_latte.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_chai_latte.ad_id = dbo.krueger_bezirke.ID
ORDER BY dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Werbedamen_Dolce_Vita_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Werbedamen_Dolce_Vita_2015]
AS
SELECT     TOP (100) PERCENT dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag1, dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.KW, dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstage, dbo.krueger_maerkte.Name, 
                      dbo.krueger_maerkte.Ort, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Beurteilung_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Grund_Beurteilung_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Aktionsstandort, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Sonstiger_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.KundenkontakteOhneBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.KundenkontakteGesamt, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.KundenAnregungAktion, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.ZweitplatzierungPaletten, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.ZweitplatzierungDisplays, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Aktionspreis, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt1, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt1, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt2, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt2, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt3, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt3, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt4, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt4, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt5, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt5, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt6, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt6, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt7, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt7, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.Preis_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag1_Produkt8, dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkaufTag2_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag1_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.VerkostungTag2_Produkt8
FROM         dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita INNER JOIN
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita ON 
                      dbo.krueger_2015_einsatzbericht_werbedamen_dolce_vita.projekt_id = dbo.krueger_2015_projekt_werbedamen_dolce_vita.id INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.ad_id = dbo.krueger_bezirke.ID
ORDER BY dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag1
GO
/****** Object:  View [dbo].[Export_Einsatzbericht_Werbedamen_Tea_Latte_2015]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Export_Einsatzbericht_Werbedamen_Tea_Latte_2015]
AS
SELECT     TOP (100) PERCENT dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag1, dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.KW, dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstage, dbo.krueger_maerkte.Name, 
                      dbo.krueger_maerkte.Ort, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Beurteilung_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Grund_Beurteilung_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Aktionsstandort, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Sonstiger_Aktionsstandort, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.KundenkontakteMitBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.KundenkontakteOhneBeratung, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.KundenkontakteGesamt, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.KundenAnregungAktion, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.ZweitplatzierungPaletten, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.ZweitplatzierungDisplays, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Aktionspreis, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt1, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt1, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt1, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt1, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt2, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt2, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt2, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt3, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt3, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt3, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt4, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt4, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt4, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt5, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt5, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt5, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt6, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt6, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt6, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt7, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt7, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt7, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt8, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt8, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt8, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt9, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt9, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt9, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.Preis_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag1_Produkt10, dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkaufTag2_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag1_Produkt10, 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.VerkostungTag2_Produkt10
FROM         dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte INNER JOIN
                      dbo.krueger_2015_projekt_werbedamen_tea_latte ON 
                      dbo.krueger_2015_einsatzbericht_werbedamen_tea_latte.projekt_id = dbo.krueger_2015_projekt_werbedamen_tea_latte.id INNER JOIN
                      dbo.krueger_maerkte ON dbo.krueger_2015_projekt_werbedamen_tea_latte.markt_id = dbo.krueger_maerkte.id INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_tea_latte.ad_id = dbo.krueger_bezirke.ID
ORDER BY dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag1
GO
/****** Object:  View [dbo].[krueger_2015_projektuebersicht_chai_latte]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[krueger_2015_projektuebersicht_chai_latte]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName, 
                      dbo.krueger_maerkte.Name AS Markt, dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, dbo.krueger_maerkte.Strasse, dbo.krueger_maerkte.APMarkt, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag1, dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.aktionstage, dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Werbedame, 
                      dbo.krueger_2015_projekt_werbedamen_chai_latte.KW, dbo.krueger_2015_projekt_werbedamen_chai_latte.anmerkungen
FROM         dbo.krueger_maerkte INNER JOIN
                      dbo.krueger_2015_projekt_werbedamen_chai_latte INNER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_werbedamen_chai_latte.werbedame = dbo.krueger_werbedamen.id ON 
                      dbo.krueger_maerkte.id = dbo.krueger_2015_projekt_werbedamen_chai_latte.markt_id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_werbedamen_chai_latte.vl_id = krueger_bezirke_1.ID INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_chai_latte.ad_id = dbo.krueger_bezirke.ID
GO
/****** Object:  View [dbo].[krueger_2015_projektuebersicht_dolce_vita]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[krueger_2015_projektuebersicht_dolce_vita]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName, 
                      dbo.krueger_maerkte.Name AS Markt, dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, dbo.krueger_maerkte.Strasse, dbo.krueger_maerkte.APMarkt, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag1, dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.aktionstage, dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Werbedame, 
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita.KW, dbo.krueger_2015_projekt_werbedamen_dolce_vita.anmerkungen
FROM         dbo.krueger_maerkte INNER JOIN
                      dbo.krueger_2015_projekt_werbedamen_dolce_vita INNER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.werbedame = dbo.krueger_werbedamen.id ON 
                      dbo.krueger_maerkte.id = dbo.krueger_2015_projekt_werbedamen_dolce_vita.markt_id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.vl_id = krueger_bezirke_1.ID INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_dolce_vita.ad_id = dbo.krueger_bezirke.ID
GO
/****** Object:  View [dbo].[krueger_2015_projektuebersicht_family_sampling]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[krueger_2015_projektuebersicht_family_sampling]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName, 
                      dbo.krueger_maerkte.Name AS Markt, dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, dbo.krueger_maerkte.Strasse, dbo.krueger_maerkte.APMarkt, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstag1, dbo.krueger_2015_projekt_family_sampling.aktionstag2, 
                      dbo.krueger_2015_projekt_family_sampling.aktionstage, dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Werbedame, 
                      dbo.krueger_2015_projekt_family_sampling.KW, dbo.krueger_2015_projekt_family_sampling.anmerkungen
FROM         dbo.krueger_maerkte INNER JOIN
                      dbo.krueger_2015_projekt_family_sampling INNER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_family_sampling.werbedame = dbo.krueger_werbedamen.id ON 
                      dbo.krueger_maerkte.id = dbo.krueger_2015_projekt_family_sampling.markt_id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_family_sampling.vl_id = krueger_bezirke_1.ID INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_family_sampling.ad_id = dbo.krueger_bezirke.ID
GO
/****** Object:  View [dbo].[krueger_2015_projektuebersicht_tea_latte]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[krueger_2015_projektuebersicht_tea_latte]
AS
SELECT     dbo.krueger_bezirke.VL, dbo.krueger_bezirke.BEZ, dbo.krueger_maerkte.Handelszentrale AS HZ, dbo.krueger_maerkte.Typ, 
                      dbo.krueger_bezirke.Vorname + N' ' + dbo.krueger_bezirke.Name AS AD, krueger_bezirke_1.Vorname + N' ' + krueger_bezirke_1.Name AS VLName, 
                      dbo.krueger_maerkte.Name AS Markt, dbo.krueger_maerkte.PLZ, dbo.krueger_maerkte.Ort, dbo.krueger_maerkte.Strasse, dbo.krueger_maerkte.APMarkt, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag1, dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstag2, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.aktionstage, dbo.krueger_werbedamen.Anrede + N' ' + dbo.krueger_werbedamen.Nachname AS Werbedame, 
                      dbo.krueger_2015_projekt_werbedamen_tea_latte.KW, dbo.krueger_2015_projekt_werbedamen_tea_latte.anmerkungen
FROM         dbo.krueger_maerkte INNER JOIN
                      dbo.krueger_2015_projekt_werbedamen_tea_latte INNER JOIN
                      dbo.krueger_werbedamen ON dbo.krueger_2015_projekt_werbedamen_tea_latte.werbedame = dbo.krueger_werbedamen.id ON 
                      dbo.krueger_maerkte.id = dbo.krueger_2015_projekt_werbedamen_tea_latte.markt_id INNER JOIN
                      dbo.krueger_bezirke AS krueger_bezirke_1 ON dbo.krueger_2015_projekt_werbedamen_tea_latte.vl_id = krueger_bezirke_1.ID INNER JOIN
                      dbo.krueger_bezirke ON dbo.krueger_2015_projekt_werbedamen_tea_latte.ad_id = dbo.krueger_bezirke.ID
GO
/****** Object:  View [dbo].[krueger_2015_werbedamen_einsatztage]    Script Date: 06.07.2018 11:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[krueger_2015_werbedamen_einsatztage]
AS
SELECT     [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[markt_id], 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[aktionstag1], [krueger_kaffee].[dbo].[krueger_maerkte].[Name] AS Markt, 
                      [krueger_kaffee].[dbo].[krueger_maerkte].[Ort], [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[werbedame], 
                      'Werbedamen Dolce Vita' AS Projekt
FROM         [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita] INNER JOIN
                      [krueger_kaffee].[dbo].[krueger_maerkte] ON 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[markt_id] = [krueger_kaffee].[dbo].[krueger_maerkte].[id]
WHERE     ([krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[aktionstag1] IS NOT NULL)
UNION
SELECT     [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[markt_id], 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[aktionstag2], [krueger_kaffee].[dbo].[krueger_maerkte].[Name] AS Markt, 
                      [krueger_kaffee].[dbo].[krueger_maerkte].[Ort], [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[werbedame], 
                      'Werbedamen Dolce Vita' AS Projekt
FROM         [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita] INNER JOIN
                      [krueger_kaffee].[dbo].[krueger_maerkte] ON 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[markt_id] = [krueger_kaffee].[dbo].[krueger_maerkte].[id]
WHERE     ([krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_dolce_vita].[aktionstag2] IS NOT NULL)
UNION
SELECT     [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[markt_id], [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[aktionstag1], 
                      [krueger_kaffee].[dbo].[krueger_maerkte].[Name] AS Markt, [krueger_kaffee].[dbo].[krueger_maerkte].[Ort], 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[werbedame], 'Werbedamen Chai Latte' AS Projekt
FROM         [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte] INNER JOIN
                      [krueger_kaffee].[dbo].[krueger_maerkte] ON 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[markt_id] = [krueger_kaffee].[dbo].[krueger_maerkte].[id]
WHERE     ([krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[aktionstag1] IS NOT NULL)
UNION
SELECT     [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[markt_id], [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[aktionstag2], 
                      [krueger_kaffee].[dbo].[krueger_maerkte].[Name] AS Markt, [krueger_kaffee].[dbo].[krueger_maerkte].[Ort], 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[werbedame], 'Werbedamen Chai Latte' AS Projekt
FROM         [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte] INNER JOIN
                      [krueger_kaffee].[dbo].[krueger_maerkte] ON 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[markt_id] = [krueger_kaffee].[dbo].[krueger_maerkte].[id]
WHERE     ([krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_chai_latte].[aktionstag2] IS NOT NULL)
UNION
SELECT     [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[markt_id], [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[aktionstag1], 
                      [krueger_kaffee].[dbo].[krueger_maerkte].[Name] AS Markt, [krueger_kaffee].[dbo].[krueger_maerkte].[Ort], 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[werbedame], 'Werbedamen Tea Latte' AS Projekt
FROM         [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte] INNER JOIN
                      [krueger_kaffee].[dbo].[krueger_maerkte] ON 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[markt_id] = [krueger_kaffee].[dbo].[krueger_maerkte].[id]
WHERE     ([krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[aktionstag1] IS NOT NULL)
UNION
SELECT     [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[markt_id], [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[aktionstag2], 
                      [krueger_kaffee].[dbo].[krueger_maerkte].[Name] AS Markt, [krueger_kaffee].[dbo].[krueger_maerkte].[Ort], 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[werbedame], 'Werbedamen Tea Latte' AS Projekt
FROM         [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte] INNER JOIN
                      [krueger_kaffee].[dbo].[krueger_maerkte] ON 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[markt_id] = [krueger_kaffee].[dbo].[krueger_maerkte].[id]
WHERE     ([krueger_kaffee].[dbo].[krueger_2015_projekt_werbedamen_tea_latte].[aktionstag2] IS NOT NULL)
UNION
SELECT     [krueger_kaffee].[dbo].[krueger_2015_projekt_family_sampling].[markt_id], [krueger_kaffee].[dbo].[krueger_2015_projekt_family_sampling].[aktionstag1], 
                      [krueger_kaffee].[dbo].[krueger_maerkte].[Name] AS Markt, [krueger_kaffee].[dbo].[krueger_maerkte].[Ort], 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_family_sampling].[werbedame], 'Family Sampling' AS Projekt
FROM         [krueger_kaffee].[dbo].[krueger_2015_projekt_family_sampling] INNER JOIN
                      [krueger_kaffee].[dbo].[krueger_maerkte] ON 
                      [krueger_kaffee].[dbo].[krueger_2015_projekt_family_sampling].[markt_id] = [krueger_kaffee].[dbo].[krueger_maerkte].[id]
WHERE     ([krueger_kaffee].[dbo].[krueger_2015_projekt_family_sampling].[aktionstag1] IS NOT NULL)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[40] 2[38] 3) )"
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
         Begin Table = "krueger_2015_projekt_family_sampling"
            Begin Extent = 
               Top = 17
               Left = 435
               Bottom = 422
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 234
               Left = 243
               Bottom = 551
               Right = 405
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 101
               Left = 776
               Bottom = 374
               Right = 942
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_einsatzbericht_family_sampling"
            Begin Extent = 
               Top = 1
               Left = 959
               Bottom = 488
               Right = 1341
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 388
               Left = 779
               Bottom = 796
               Right = 963
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 5
               Left = 37
               Bottom = 316
               Right = 199
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
      En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_family_sampling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 12390
         Alias = 2760
         Table = 4155
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_family_sampling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_family_sampling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[20] 4[8] 2[69] 3) )"
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
         Begin Table = "krueger_2015_projekt_werbedamen_chai_latte"
            Begin Extent = 
               Top = 26
               Left = 473
               Bottom = 437
               Right = 670
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 301
               Left = 285
               Bottom = 615
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 126
               Left = 699
               Bottom = 406
               Right = 865
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_einsatzbericht_werbedamen_chai_latte"
            Begin Extent = 
               Top = 10
               Left = 921
               Bottom = 610
               Right = 1327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 437
               Left = 700
               Bottom = 857
               Right = 884
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 25
               Left = 37
               Bottom = 342
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_chai_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 13020
         Alias = 1740
         Table = 4710
         Output = 1575
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_chai_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_chai_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[4] 2[46] 3) )"
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
         Begin Table = "krueger_2015_projekt_werbedamen_dolce_vita"
            Begin Extent = 
               Top = 71
               Left = 414
               Bottom = 473
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 261
               Left = 196
               Bottom = 599
               Right = 358
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 157
               Left = 755
               Bottom = 454
               Right = 921
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_einsatzbericht_werbedamen_dolce_vita"
            Begin Extent = 
               Top = 56
               Left = 933
               Bottom = 630
               Right = 1295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 461
               Left = 756
               Bottom = 888
               Right = 940
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 16
               Left = 9
               Bottom = 326
               Right = 171
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_dolce_vita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 12990
         Alias = 2325
         Table = 6075
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_dolce_vita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_dolce_vita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[4] 2[56] 3) )"
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
         Begin Table = "krueger_2015_projekt_werbedamen_tea_latte"
            Begin Extent = 
               Top = 42
               Left = 413
               Bottom = 442
               Right = 764
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 253
               Left = 222
               Bottom = 608
               Right = 384
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 122
               Left = 795
               Bottom = 417
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_einsatzbericht_werbedamen_tea_latte"
            Begin Extent = 
               Top = 26
               Left = 975
               Bottom = 566
               Right = 1358
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 436
               Left = 795
               Bottom = 848
               Right = 979
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 377
               Right = 200
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
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_tea_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 13035
         Alias = 1290
         Table = 4665
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_tea_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'auswertung_2015_einsatzbericht_werbedamen_tea_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[86] 4[2] 2[5] 3) )"
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
         Begin Table = "krueger_2015_einsatzbericht_family_sampling"
            Begin Extent = 
               Top = 27
               Left = 917
               Bottom = 628
               Right = 1269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_family_sampling"
            Begin Extent = 
               Top = 45
               Left = 303
               Bottom = 461
               Right = 602
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 171
               Left = 632
               Bottom = 483
               Right = 798
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 51
               Left = 105
               Bottom = 371
               Right = 267
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Family_Sampling_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Family_Sampling_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[84] 4[4] 2[8] 3) )"
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
         Begin Table = "krueger_2015_einsatzbericht_werbedamen_chai_latte"
            Begin Extent = 
               Top = 34
               Left = 972
               Bottom = 512
               Right = 1339
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_werbedamen_chai_latte"
            Begin Extent = 
               Top = 51
               Left = 406
               Bottom = 449
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 172
               Left = 777
               Bottom = 469
               Right = 943
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 143
               Left = 213
               Bottom = 460
               Right = 375
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Chai_Latte_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Chai_Latte_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[86] 4[9] 2[3] 3) )"
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
         Begin Table = "krueger_2015_einsatzbericht_werbedamen_dolce_vita"
            Begin Extent = 
               Top = 2
               Left = 811
               Bottom = 662
               Right = 1184
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_werbedamen_dolce_vita"
            Begin Extent = 
               Top = 18
               Left = 237
               Bottom = 399
               Right = 553
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 120
               Left = 582
               Bottom = 410
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 62
               Left = 45
               Bottom = 369
               Right = 207
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
         Column = 3315
         Alias = 2580
         Table = 4530
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Dolce_Vita_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Dolce_Vita_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[90] 4[3] 2[6] 3) )"
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
         Begin Table = "krueger_2015_einsatzbericht_werbedamen_tea_latte"
            Begin Extent = 
               Top = 30
               Left = 1031
               Bottom = 546
               Right = 1384
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_werbedamen_tea_latte"
            Begin Extent = 
               Top = 44
               Left = 339
               Bottom = 446
               Right = 659
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 125
               Left = 688
               Bottom = 433
               Right = 854
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 61
               Left = 146
               Bottom = 392
               Right = 308
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
         Column = 4515
         Alias = 900
         Table = 5115
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Tea_Latte_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Export_Einsatzbericht_Werbedamen_Tea_Latte_2015'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[81] 4[5] 2[5] 3) )"
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
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 45
               Left = 1098
               Bottom = 336
               Right = 1275
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_werbedamen_chai_latte"
            Begin Extent = 
               Top = 0
               Left = 499
               Bottom = 412
               Right = 828
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 119
               Left = 858
               Bottom = 534
               Right = 1065
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 21
               Left = 77
               Bottom = 340
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 250
               Left = 297
               Bottom = 570
               Right = 469
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
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_chai_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_chai_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_chai_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[31] 2[21] 3) )"
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
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 52
               Left = 1082
               Bottom = 335
               Right = 1249
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_werbedamen_dolce_vita"
            Begin Extent = 
               Top = 11
               Left = 508
               Bottom = 413
               Right = 843
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 149
               Left = 874
               Bottom = 556
               Right = 1075
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 29
               Left = 61
               Bottom = 353
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 115
               Left = 318
               Bottom = 439
               Right = 480
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
         Column = 6615
         Alias = 1710
         Table = 4680
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_dolce_vita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_dolce_vita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_dolce_vita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[70] 4[6] 2[5] 3) )"
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
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 48
               Left = 1016
               Bottom = 329
               Right = 1182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_family_sampling"
            Begin Extent = 
               Top = 2
               Left = 463
               Bottom = 408
               Right = 750
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 118
               Left = 779
               Bottom = 536
               Right = 963
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 5
               Left = 26
               Bottom = 336
               Right = 188
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 206
               Left = 272
               Bottom = 504
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
         Filter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_family_sampling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_family_sampling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_family_sampling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[77] 4[5] 2[9] 3) )"
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
         Begin Table = "krueger_maerkte"
            Begin Extent = 
               Top = 56
               Left = 1115
               Bottom = 330
               Right = 1281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_2015_projekt_werbedamen_tea_latte"
            Begin Extent = 
               Top = 10
               Left = 469
               Bottom = 395
               Right = 807
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_werbedamen"
            Begin Extent = 
               Top = 133
               Left = 837
               Bottom = 561
               Right = 1021
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke_1"
            Begin Extent = 
               Top = 17
               Left = 73
               Bottom = 326
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "krueger_bezirke"
            Begin Extent = 
               Top = 249
               Left = 280
               Bottom = 556
               Right = 442
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
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_tea_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_tea_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_projektuebersicht_tea_latte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[17] 2[16] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_werbedamen_einsatztage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'krueger_2015_werbedamen_einsatztage'
GO
USE [master]
GO
ALTER DATABASE [krueger_kaffee] SET  READ_WRITE 
GO
