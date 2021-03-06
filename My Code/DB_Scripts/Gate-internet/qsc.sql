USE [master]
GO
/****** Object:  Database [qsc]    Script Date: 06.07.2018 11:17:01 ******/
CREATE DATABASE [qsc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qsc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\qsc.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qsc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\qsc_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qsc] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qsc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qsc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qsc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qsc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qsc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qsc] SET ARITHABORT OFF 
GO
ALTER DATABASE [qsc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qsc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qsc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qsc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qsc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qsc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qsc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qsc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qsc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qsc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qsc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qsc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qsc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qsc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qsc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qsc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qsc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qsc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qsc] SET  MULTI_USER 
GO
ALTER DATABASE [qsc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qsc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qsc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qsc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qsc] SET DELAYED_DURABILITY = DISABLED 
GO
USE [qsc]
GO
/****** Object:  Table [dbo].[cebit_2014_feedback_intern]    Script Date: 06.07.2018 11:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2014_feedback_intern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_cebit_2014_feedback_intern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_2014_personal_leads]    Script Date: 06.07.2018 11:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2014_personal_leads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Erfasser] [varchar](max) NULL,
	[Empfaenger] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ_Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Telefax] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Rueckruf] [varchar](max) NULL,
	[Berufswunsch] [varchar](max) NULL,
	[Berufswunsch_Text] [varchar](max) NULL,
	[Notiz] [text] NULL,
	[Einladen] [varchar](max) NULL,
	[Absagen] [varchar](max) NULL,
	[Sonstiges] [varchar](max) NULL,
	[Sonstiges_Text] [varchar](max) NULL,
	[Eingang] [varchar](max) NULL,
	[feedback_versand] [bit] NULL,
 CONSTRAINT [PK_cebit_2014_personal_leads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_2014_qsc_befragung_intern]    Script Date: 06.07.2018 11:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2014_qsc_befragung_intern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mitarbeiter_name] [varchar](max) NULL,
	[stand] [varchar](max) NULL,
	[bereich] [varchar](max) NULL,
	[information_vorfeld_note] [int] NULL,
	[information_vorfeld_kommentar] [text] NULL,
	[darstellung_microsoft] [int] NULL,
	[darstellung_sap] [int] NULL,
	[darstellung_computerwoche] [int] NULL,
	[darstellung_kommentar] [text] NULL,
	[gespraeche_microsoft] [int] NULL,
	[gespraeche_sap] [int] NULL,
	[gespraeche_computerwoche] [int] NULL,
	[gespraeche_kommentar] [text] NULL,
	[betreuung_microsoft] [int] NULL,
	[betreuung_sap] [int] NULL,
	[betreuung_computerwoche] [int] NULL,
	[betreuung_kommentar] [text] NULL,
	[betreuung_orga] [bit] NULL,
	[betreuung_orga_kommentar] [text] NULL,
	[vermisst] [bit] NULL,
	[vermisst_kommentar] [text] NULL,
	[auftritt_microsoft] [int] NULL,
	[auftritt_sap] [int] NULL,
	[auftritt_computerwoche] [int] NULL,
	[auftritt_kommentar] [text] NULL,
	[platzierung_microsoft] [int] NULL,
	[platzierung_sap] [int] NULL,
	[platzierung_computerwoche] [int] NULL,
	[platzierung_kommentar] [text] NULL,
	[planung_orga] [int] NULL,
	[planung_orga_kommentar] [text] NULL,
	[empfehlung_2015] [bit] NULL,
	[empfehlung_2015_kommentar] [text] NULL,
	[ip] [varchar](max) NULL,
	[datum] [varchar](max) NULL,
 CONSTRAINT [PK_cebit_2014_qsc_bewertung_intern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_2014_vertrieb_leads]    Script Date: 06.07.2018 11:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_2014_vertrieb_leads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kundenart] [varchar](max) NULL,
	[Kundenbereich] [varchar](max) NULL,
	[Erfasser] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Lead_empfohlen_fuer] [varchar](max) NULL,
	[Empfehlung_Text] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ_Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Energie_Gaswirtschaft] [int] NULL,
	[Handel] [int] NULL,
	[Maschinen_Anlagebau] [int] NULL,
	[Banken_Versicherungen] [int] NULL,
	[Public_Sector] [int] NULL,
	[Konsumgueter] [int] NULL,
	[Nahrung_Genussmittel] [int] NULL,
	[Sonstige] [int] NULL,
	[Anzahl_Mitarbeiter] [varchar](max) NULL,
	[ms_private_cloud] [int] NULL,
	[ms_desktop_optimization] [int] NULL,
	[ms_collaboration] [int] NULL,
	[ms_development_apps] [int] NULL,
	[ms_communication] [int] NULL,
	[ms_app_management] [int] NULL,
	[ms_business_intelligence] [int] NULL,
	[tengo_desktop] [int] NULL,
	[tengo_mail] [int] NULL,
	[tengo_communication] [int] NULL,
	[tengo_projectroom] [int] NULL,
	[tengo_centraflex] [int] NULL,
	[sap_consulting] [int] NULL,
	[sap_erp] [int] NULL,
	[sap_applikationmanagement] [int] NULL,
	[sap_crm] [int] NULL,
	[sap_betrieb] [int] NULL,
	[sap_scm] [int] NULL,
	[sap_bibo] [int] NULL,
	[sap_grc_idm] [int] NULL,
	[sap_mobile] [int] NULL,
	[sap_hana] [int] NULL,
	[qsc_rz_infrastruktur] [int] NULL,
	[qsc_vpn] [int] NULL,
	[qsc_rz_bau] [int] NULL,
	[qsc_tk_dienste] [int] NULL,
	[qsc_wifi] [int] NULL,
	[qsc_housing] [int] NULL,
	[qsc_outsourcing] [int] NULL,
	[qsc_hosting_storage] [int] NULL,
	[qsc_FTAPI] [int] NULL,
	[Folgeaktion_Telefon] [varchar](max) NULL,
	[Folgeaktion_Infomaterial] [varchar](max) NULL,
	[Folgeaktion_Termin] [varchar](max) NULL,
	[Folgeaktion_Angebot] [varchar](max) NULL,
	[Folgeaktion_Einladung_Partnertour] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Anlagedatum] [varchar](max) NULL,
	[feedback_versand] [bit] NULL,
 CONSTRAINT [PK_cebit_2014_vertrieb_leads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cebit_qsc_2014_befragung_extern]    Script Date: 06.07.2018 11:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cebit_qsc_2014_befragung_extern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[besuch_microsoft] [int] NULL,
	[besuch_sap] [int] NULL,
	[besuch_cw] [int] NULL,
	[verstaendlich_microsoft] [int] NULL,
	[verstaendlich_sap] [int] NULL,
	[verstaendlich_kommentar] [text] NULL,
	[beratung_microsoft] [int] NULL,
	[beratung_sap] [int] NULL,
	[beratung_cw] [int] NULL,
	[beratung_kommentar] [text] NULL,
	[positives] [bit] NULL,
	[positiv_kommentar] [text] NULL,
	[negatives] [bit] NULL,
	[negativ_kommentar] [text] NULL,
	[aufmerksamkeit_internetseite] [int] NULL,
	[aufmerksamkeit_blog] [int] NULL,
	[aufmerksamkeit_fp_print] [int] NULL,
	[aufmerksamkeit_fp_online] [int] NULL,
	[aufmerksamkeit_mailing] [int] NULL,
	[aufmerksamkeit_einladung] [int] NULL,
	[aufmerksamkeit_sonstiges] [int] NULL,
	[aufmerksamkeit_sonstiges_text] [text] NULL,
	[bewertung_microsoft] [int] NULL,
	[bewertung_sap] [int] NULL,
	[bewertung_cw] [int] NULL,
	[bewertung_kommentar] [text] NULL,
	[ip] [varchar](max) NULL,
	[datum] [varchar](max) NULL,
 CONSTRAINT [PK_cebit_qsc_2014_befragung_extern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eurocis_2015_qsc_termine]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eurocis_2015_qsc_termine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma] [varchar](max) NULL,
	[position] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[termin] [bit] NULL,
	[tag] [varchar](max) NULL,
	[verifiziert] [bit] NULL,
	[ip_adresse] [varchar](max) NULL,
	[datum_anmeldung] [varchar](max) NULL,
	[datum_verifizierung] [varchar](max) NULL,
	[tickets] [int] NOT NULL,
	[berater] [int] NULL,
	[schluessel] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[schluessel_generiert] [bit] NOT NULL,
	[UniqueID] [varchar](max) NULL,
 CONSTRAINT [PK_eurocis_2015_qsc_termine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eworld_2015_qsc_termine]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eworld_2015_qsc_termine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma] [varchar](max) NULL,
	[position] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[termin] [bit] NULL,
	[tag] [varchar](max) NULL,
	[verifiziert] [bit] NULL,
	[ip_adresse] [varchar](max) NULL,
	[datum_anmeldung] [varchar](max) NULL,
	[datum_verifizierung] [varchar](max) NULL,
	[tickets] [int] NOT NULL,
	[berater] [int] NULL,
	[schluessel] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[schluessel_generiert] [bit] NOT NULL,
	[UniqueID] [varchar](max) NULL,
 CONSTRAINT [PK_eworld_2015_qsc_termine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eworld_2015_tickets]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eworld_2015_tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[stadt] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[telefonnummer] [varchar](max) NULL,
	[firma] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[interne_ID] [varchar](max) NULL,
	[ticket] [varchar](max) NULL,
	[besitzer] [int] NULL,
	[oberbesitzer] [int] NULL,
	[datum_versendung] [varchar](max) NULL,
	[versendet] [bit] NOT NULL,
 CONSTRAINT [PK_eworld_2015_tickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eworld_2015_tickets_login]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eworld_2015_tickets_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[passwort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_eworld_2015_tickets_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[it_sa_2014_befragung_extern]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_sa_2014_befragung_extern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[besuch_dienstag] [int] NULL,
	[besuch_mittwoch] [int] NULL,
	[besuch_donnerstag] [int] NULL,
	[verstaendlich] [int] NULL,
	[verstaendlich_kommentar] [text] NULL,
	[beratung] [int] NULL,
	[beratung_kommentar] [text] NULL,
	[positives] [bit] NULL,
	[positiv_kommentar] [text] NULL,
	[negatives] [bit] NULL,
	[negativ_kommentar] [text] NULL,
	[aufmerksamkeit_internetseite] [int] NULL,
	[aufmerksamkeit_blog] [int] NULL,
	[aufmerksamkeit_fp_print] [int] NULL,
	[aufmerksamkeit_fp_online] [int] NULL,
	[aufmerksamkeit_mailing] [int] NULL,
	[aufmerksamkeit_einladung] [int] NULL,
	[aufmerksamkeit_sonstiges] [int] NULL,
	[aufmerksamkeit_sonstiges_text] [text] NULL,
	[bewertung] [int] NULL,
	[bewertung_kommentar] [text] NULL,
	[ip] [varchar](max) NULL,
	[datum] [varchar](max) NULL,
 CONSTRAINT [PK_it_sa_qsc_2014_befragung_extern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[it_sa_2014_qsc_termine]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_sa_2014_qsc_termine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[termin] [bit] NULL,
	[tag] [varchar](max) NULL,
	[verifiziert] [bit] NULL,
	[ip_adresse] [varchar](max) NULL,
	[datum_anmeldung] [varchar](max) NULL,
	[datum_verifizierung] [varchar](max) NULL,
	[tickets] [int] NOT NULL,
	[berater] [int] NULL,
	[schluessel] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[schluessel_generiert] [bit] NOT NULL,
 CONSTRAINT [PK_it_sa_2014_qsc_termine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[it_sa_2014_tickets]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_sa_2014_tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[stadt] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[telefonnummer] [varchar](max) NULL,
	[firma] [varchar](max) NULL,
	[funktion] [varchar](max) NULL,
	[ticket] [varchar](max) NULL,
	[besitzer] [int] NULL,
	[oberbesitzer] [int] NULL,
	[datum_versendung] [varchar](max) NULL,
	[versendet] [bit] NOT NULL,
 CONSTRAINT [PK_it_sa_2014_tickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[it_sa_2014_tickets_login]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_sa_2014_tickets_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[passwort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_it_sa_2014_tickets_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[it_sa_2014_vertrieb_leads]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_sa_2014_vertrieb_leads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kundenart] [varchar](max) NULL,
	[Erfasser] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Lead_empfohlen_fuer] [varchar](max) NULL,
	[Empfehlung_Text] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ_Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Energie_Gaswirtschaft] [int] NULL,
	[Handel] [int] NULL,
	[Maschinen_Anlagebau] [int] NULL,
	[Banken_Versicherungen] [int] NULL,
	[Public_Sector] [int] NULL,
	[Konsumgueter] [int] NULL,
	[Nahrung_Genussmittel] [int] NULL,
	[Sonstige] [int] NULL,
	[Sonstige_text] [text] NULL,
	[Anzahl_Mitarbeiter] [varchar](max) NULL,
	[ms_private_cloud] [int] NULL,
	[ms_collaboration] [int] NULL,
	[ms_communication] [int] NULL,
	[ms_business_intelligence] [int] NULL,
	[ms_desktop_optimization] [int] NULL,
	[ms_development_apps] [int] NULL,
	[ms_app_management] [int] NULL,
	[tengo_desktop] [int] NULL,
	[tengo_mail] [int] NULL,
	[tengo_communication] [int] NULL,
	[tengo_projectroom] [int] NULL,
	[tengo_centraflex] [int] NULL,
	[sap_consulting] [int] NULL,
	[sap_applikationmanagement] [int] NULL,
	[sap_betrieb] [int] NULL,
	[sap_erp] [int] NULL,
	[sap_crm] [int] NULL,
	[sap_scm] [int] NULL,
	[sap_bibo] [int] NULL,
	[sap_grc_idm] [int] NULL,
	[sap_mobile] [int] NULL,
	[sap_hana] [int] NULL,
	[sap_fiori] [int] NULL,
	[qsc_rz_infrastruktur] [int] NULL,
	[qsc_rz_bau] [int] NULL,
	[qsc_wifi] [int] NULL,
	[qsc_outsourcing] [int] NULL,
	[qsc_FTAPI] [int] NULL,
	[qsc_vpn] [int] NULL,
	[qsc_tk_dienste] [int] NULL,
	[qsc_housing] [int] NULL,
	[qsc_hosting_storage] [int] NULL,
	[Folgeaktion_Telefon] [varchar](max) NULL,
	[Folgeaktion_Infomaterial] [varchar](max) NULL,
	[Folgeaktion_Termin] [varchar](max) NULL,
	[Folgeaktion_Angebot] [varchar](max) NULL,
	[Folgeaktion_Einladung_Businessfruehstueck] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Anlagedatum] [varchar](max) NULL,
	[feedback_versand] [bit] NULL,
 CONSTRAINT [PK_it_sa_2014_vertrieb_leads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itk_reminder]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itk_reminder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
 CONSTRAINT [PK_itk_reminder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itk_round_table_11_2015]    Script Date: 06.07.2018 11:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itk_round_table_11_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Termin_Hamburg] [varchar](max) NULL,
	[Termin_Koeln] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Unternehmen] [varchar](max) NULL,
	[Position] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitteilung] [text] NULL,
	[Verifiziert] [bit] NOT NULL,
	[IP] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
	[Quelle] [varchar](max) NULL,
 CONSTRAINT [PK_itk_round_table_11_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itk_round_table_11_2015_anmeldung]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itk_round_table_11_2015_anmeldung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Termin_Hamburg] [varchar](max) NULL,
	[Termin_Koeln] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Telefax] [varchar](max) NULL,
	[Unternehmen] [varchar](max) NULL,
	[Position] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[Hausnummer] [varchar](50) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitteilung] [text] NULL,
	[Verifiziert] [bit] NOT NULL,
	[IP] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
	[Quelle] [varchar](max) NULL,
 CONSTRAINT [PK_itk_round_table_11_2015_anmeldung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itk_round_table_2014]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itk_round_table_2014](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Termin_Hamburg] [varchar](max) NULL,
	[Termin_Koeln] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Unternehmen] [varchar](max) NULL,
	[Position] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Mitteilung] [text] NULL,
	[Verifiziert] [bit] NOT NULL,
	[IP] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[Anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_itk_round_table_2014] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ITK_Roundtable_Umfrage_2015]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITK_Roundtable_Umfrage_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Bereich] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[Hausnummer] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Kennen_Anzeige] [int] NULL,
	[Kennen_QSC] [int] NULL,
	[Kennen_Blog] [int] NULL,
	[Kennen_Social_Media] [int] NULL,
	[Kennen_Sonstiges] [int] NULL,
	[Kennen_Suchmaschine] [int] NULL,
	[Kennen_Fachpresse] [int] NULL,
	[Kennen_Messen] [int] NULL,
	[Kennen_Info_AG] [int] NULL,
	[Branche_Dienstleistungen] [int] NULL,
	[Branche_Information] [int] NULL,
	[Branche_Handel] [int] NULL,
	[Branche_Kosumgueter] [int] NULL,
	[Branche_Finanzleistungen] [int] NULL,
	[Branche_Energie_und_Wasserversorgung] [int] NULL,
	[Branche_Koerperschaften] [int] NULL,
	[Branche_Gastgewerbe] [int] NULL,
	[Branche_Unterhaltung] [int] NULL,
	[Branche_Verkehr] [int] NULL,
	[Branche_Baugewerbe] [int] NULL,
	[Branche_Landwirtschaft] [int] NULL,
	[Branche_Bergbau] [int] NULL,
	[Branche_Erziehung] [int] NULL,
	[Branche_Sozialwesen] [int] NULL,
	[Empfehlung_Vergangenheit] [varchar](50) NULL,
	[Interesse_Telekommunikation] [int] NULL,
	[Interesse_Outsourcing] [int] NULL,
	[Interesse_Handel] [int] NULL,
	[Interesse_Cloud_Services] [int] NULL,
	[Interesse_Consulting] [int] NULL,
	[Interesse_Rechenzentrum] [int] NULL,
	[Interesse_Breitbandausbau] [int] NULL,
	[Interesse_Sonstiges] [text] NULL,
	[Zukunft_Newsletter] [int] NULL,
	[Zukunft_Pressemitteilungen] [int] NULL,
	[Zukunft_Studien] [int] NULL,
	[Zukunft_Einladungen] [int] NULL,
	[Zukunft_Fallbeispiele] [int] NULL,
	[Zukunft_Sonstiges] [text] NULL,
	[IP_Adresse] [varchar](max) NULL,
	[Zeitpunkt] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[benutzer] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_gate]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_gate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[benutzer] [varchar](max) NULL,
	[passwort] [varchar](max) NULL,
 CONSTRAINT [PK_login_gate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partnertour_2014_anmeldung]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnertour_2014_anmeldung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hamburg] [varchar](max) NULL,
	[Muenchen] [varchar](max) NULL,
	[Stuttgart] [varchar](max) NULL,
	[Frankfurt] [varchar](max) NULL,
	[Koeln] [varchar](max) NULL,
	[Berlin] [varchar](max) NULL,
	[besuchszeit] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Firma] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Mobil] [varchar](max) NULL,
	[umfrage_presseartikel] [int] NULL,
	[umfrage_qsc_blog] [int] NULL,
	[umfrage_crn_online] [int] NULL,
	[umfrage_funkschau_online] [int] NULL,
	[umfrage_lan_line_online] [int] NULL,
	[umfrage_markt_und_mittelstand] [int] NULL,
	[email_aastra] [int] NULL,
	[email_ftapi] [int] NULL,
	[email_jabra] [int] NULL,
	[email_microsoft] [int] NULL,
	[email_panasonic] [int] NULL,
	[email_qsc] [int] NULL,
	[email_channel_partner] [int] NULL,
	[email_crn] [int] NULL,
	[distributor_allnet] [int] NULL,
	[distributor_herweck] [int] NULL,
	[distributor_michael_telecom] [int] NULL,
	[distributor_also] [int] NULL,
	[distributor_qsc_partner] [int] NULL,
	[distributor_sonstige] [int] NULL,
	[distributor_qsc_partner_text] [varchar](max) NULL,
	[distributor_sonstige_text] [varchar](max) NULL,
	[Eingang] [varchar](max) NULL,
	[schluessel] [varchar](max) NULL,
	[Verifizierung] [bit] NULL,
	[schluessel_generiert] [bit] NULL,
	[email_versand] [bit] NOT NULL,
 CONSTRAINT [PK_partnertour_2014_anmeldung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partnertour_2014_befragung]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnertour_2014_befragung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Stadt] [varchar](max) NULL,
	[Veranstaltungsort] [int] NULL,
	[Veranstaltung] [int] NULL,
	[Zeitfenster] [int] NULL,
	[Erwartungen_erfuellt] [int] NULL,
	[Kooperationspartner_informativ] [bit] NULL,
	[Kooperationspartner_informativ_nein] [text] NULL,
	[Kooperationspartner_informativ_wer] [text] NULL,
	[Vortrag_Microsoft] [int] NULL,
	[Vortrag_tengo] [int] NULL,
	[Vortrag_FTAPI] [int] NULL,
	[Vortrag_QSC_Wifi] [int] NULL,
	[Vortrag_ITK_Produkte] [int] NULL,
	[Gewuenschte_Themen] [text] NULL,
	[Zufriedenheit_Veranstaltungsorganisation] [int] NULL,
	[Weiterempfehlung] [bit] NULL,
	[Weiterempfehlung_kommentar] [text] NULL,
	[Bemerkungen_Anregungen_Wuensche] [text] NULL,
	[ip] [varchar](max) NULL,
	[datum] [varchar](max) NULL,
 CONSTRAINT [PK_partnertour_2014_befragung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partnertour_2014_vertrieb_leads]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnertour_2014_vertrieb_leads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Partnerart] [varchar](max) NULL,
	[Erfasser] [varchar](max) NULL,
	[Datum] [varchar](max) NULL,
	[Lead_empfohlen_fuer] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Firma] [varchar](max) NULL,
	[Abteilung] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ_Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Aastra_SIP_Trunk] [int] NULL,
	[Aastra_SIP_DECT] [int] NULL,
	[Aastra_SIP_Telefone] [int] NULL,
	[Aastra_6721ip_un_6725ip] [int] NULL,
	[FTAPI_Sicher_Versand_grosser_Daten] [int] NULL,
	[FTAPI_End_to_End_Datenraum] [int] NULL,
	[FTAPI_Zertifizierung] [int] NULL,
	[FTAPI_Reselling] [int] NULL,
	[Jabra_schnurlos] [int] NULL,
	[Jabra_schnurgebunden] [int] NULL,
	[Jabra_Contact_Center] [int] NULL,
	[Jabra_Mobile_Worker] [int] NULL,
	[Jabra_UC_Loesungen] [int] NULL,
	[Jabra_MultiUse] [int] NULL,
	[Jabra_Gesamtueberblick] [int] NULL,
	[Jabra_Musterkoffer] [int] NULL,
	[Jabra_Win_Partnerprogramm] [int] NULL,
	[Jabra_Teststellung] [int] NULL,
	[Panasonic_SIP_Terminal] [int] NULL,
	[Panasonic_Multicell] [int] NULL,
	[Panasonic_Trunking] [int] NULL,
	[QSC_IPfonie] [int] NULL,
	[QSC_IP_Telefonie] [int] NULL,
	[QSC_Highspeed_Internet] [int] NULL,
	[QSC_Standortvernetzung] [int] NULL,
	[QSC_Rechenzentrumsdienste] [int] NULL,
	[QSC_FTAPI_Verschluesselung] [int] NULL,
	[QSC_Wifi] [int] NULL,
	[QSC_tengo] [int] NULL,
	[tengo_centraflex] [int] NULL,
	[tengo_desktop] [int] NULL,
	[tengo_mail] [int] NULL,
	[tengo_communication] [int] NULL,
	[tengo_projectroom] [int] NULL,
	[tengo_consulting] [int] NULL,
	[Folgeaktion_Telefon] [varchar](max) NULL,
	[Folgeaktion_Termin] [varchar](max) NULL,
	[Folgeaktion_Infomaterial] [varchar](max) NULL,
	[Folgeaktion_Angebot] [varchar](max) NULL,
	[Folgeaktion_Zertifizierung] [varchar](max) NULL,
	[partner_Systemhaus] [int] NULL,
	[partner_Haendler] [int] NULL,
	[partner_Systemintegrator] [int] NULL,
	[partner_ISP] [int] NULL,
	[partner_Reseller] [int] NULL,
	[partner_UVP] [int] NULL,
	[partner_UVP_Text] [varchar](max) NULL,
	[hauptgeschaeft_Reselling] [int] NULL,
	[hauptgeschaeft_Vermittlung] [int] NULL,
	[hauptgeschaeft_TK_Know_how] [int] NULL,
	[hauptgeschaeft_eigenes_Rechenzentrum] [int] NULL,
	[hauptgeschaeft_IT] [int] NULL,
	[hauptgeschaeft_WAN_Service] [int] NULL,
	[hauptgeschaeft_Mobile] [int] NULL,
	[Anzahl_Mitarbeiter] [varchar](max) NULL,
	[Umsatz] [varchar](max) NULL,
	[Branche] [varchar](max) NULL,
	[Anzahl_Kunden] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Anlagedatum] [varchar](max) NULL,
	[feedback_versand] [bit] NULL,
 CONSTRAINT [PK_partnertour_2014_vertrieb_leads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partnertour_2015_anmeldung]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnertour_2015_anmeldung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Berlin] [varchar](max) NULL,
	[Hamburg] [varchar](max) NULL,
	[Koeln] [varchar](max) NULL,
	[Sinsheim] [varchar](max) NULL,
	[Muenchen] [varchar](max) NULL,
	[besuchszeit] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
	[Firma] [varchar](max) NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](max) NULL,
	[Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[Mobil] [varchar](max) NULL,
	[umfrage_qsc] [int] NULL,
	[umfrage_qsc_blog] [int] NULL,
	[umfrage_xing] [int] NULL,
	[umfrage_facebook] [int] NULL,
	[umfrage_funkschau_handel] [int] NULL,
	[umfrage_telekom_handel] [int] NULL,
	[umfrage_channel_partner] [int] NULL,
	[email_microsoft] [int] NULL,
	[email_panasonic] [int] NULL,
	[email_starface] [int] NULL,
	[email_qsc] [int] NULL,
	[email_crn] [int] NULL,
	[email_channel_partner] [int] NULL,
	[email_funkschau_handel] [int] NULL,
	[zeitschrift_telekom_handel] [int] NULL,
	[distributor_allnet] [int] NULL,
	[distributor_herweck] [int] NULL,
	[distributor_michael_telecom] [int] NULL,
	[distributor_ALSO] [int] NULL,
	[distributor_qsc_partner_text] [varchar](max) NULL,
	[distributor_sonstige_text] [varchar](max) NULL,
	[Eingang] [varchar](max) NULL,
	[schluessel] [varchar](max) NULL,
	[Verifizierung] [bit] NULL,
	[schluessel_generiert] [bit] NULL,
	[email_versand] [bit] NOT NULL,
	[UniqueID] [varchar](max) NULL,
 CONSTRAINT [PK_partnertour_2015_anmeldung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partnertour_2015_befragung]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partnertour_2015_befragung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Stadt] [varchar](max) NULL,
	[Veranstaltungsort] [int] NULL,
	[Veranstaltung] [int] NULL,
	[Zeitfenster] [int] NULL,
	[Erwartungen_erfuellt] [int] NULL,
	[Kooperationspartner_informativ] [bit] NULL,
	[Kooperationspartner_informativ_nein] [text] NULL,
	[Kooperationspartner_informativ_wer] [text] NULL,
	[Vortrag_Microsoft] [int] NULL,
	[Vortrag_tengo] [int] NULL,
	[Vortrag_FTAPI] [int] NULL,
	[Vortrag_ALLIP] [int] NULL,
	[Gewuenschte_Themen] [text] NULL,
	[Zufriedenheit_Veranstaltungsorganisation] [int] NULL,
	[Weiterempfehlung] [bit] NULL,
	[Weiterempfehlung_kommentar] [text] NULL,
	[Bemerkungen_Anregungen_Wuensche] [text] NULL,
	[Funkschau_Handel] [bit] NULL,
	[CRN] [bit] NULL,
	[Channel_Partner] [bit] NULL,
	[Telecom_Handel] [bit] NULL,
	[Internet_World_Business] [bit] NULL,
	[Sonstige_Titel] [bit] NULL,
	[Sonstige_Titel_name] [text] NULL,
	[ip] [varchar](max) NULL,
	[datum] [varchar](max) NULL,
 CONSTRAINT [PK_partnertour_2015_befragung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tankstelle_und_mittelstand_2015]    Script Date: 06.07.2018 11:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tankstelle_und_mittelstand_2015](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[termin] [varchar](max) NULL,
	[termin_wunsch] [varchar](max) NULL,
	[mitteilung] [text] NULL,
	[tickets] [varchar](max) NULL,
	[ticketanzahl] [int] NULL,
	[gast_info_teilnehmer] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[firma] [varchar](max) NULL,
	[position] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[verifiziert] [bit] NULL,
	[ip] [varchar](max) NULL,
	[code] [varchar](max) NULL,
	[anmeldezeitpunkt] [varchar](max) NULL,
 CONSTRAINT [PK_tankstelle_und_mittelstand_2015] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tankstelle_und_mittelstand_2015_V2]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tankstelle_und_mittelstand_2015_V2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[termin] [varchar](max) NULL,
	[termin_wunsch] [varchar](max) NULL,
	[mitteilung] [text] NULL,
	[tickets] [varchar](max) NULL,
	[anrede] [varchar](max) NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[firma] [varchar](max) NULL,
	[position] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[telefon] [varchar](max) NULL,
	[mobil] [varchar](max) NULL,
	[strasse] [varchar](max) NULL,
	[plz] [varchar](max) NULL,
	[ort] [varchar](max) NULL,
	[verifiziert] [bit] NULL,
	[ip] [varchar](max) NULL,
	[code] [varchar](max) NULL,
	[anmeldezeitpunkt] [varchar](max) NULL,
	[ticketanzahl] [int] NULL,
	[gast1_vorname] [varchar](max) NULL,
	[gast1_nachname] [varchar](max) NULL,
	[gast1_firma] [varchar](max) NULL,
	[gast1_email] [varchar](max) NULL,
	[gast2_vorname] [varchar](max) NULL,
	[gast2_nachname] [varchar](max) NULL,
	[gast2_firma] [varchar](max) NULL,
	[gast2_email] [varchar](max) NULL,
	[gast3_vorname] [varchar](max) NULL,
	[gast3_nachname] [varchar](max) NULL,
	[gast3_firma] [varchar](max) NULL,
	[gast3_email] [varchar](max) NULL,
 CONSTRAINT [PK_tankstelle_und_mittelstand_2015_V2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[leads_produkte_10]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[leads_produkte_10]
AS
SELECT     '10.03.2014' AS Datum, SUM(ms_private_cloud) AS Private_Cloud, SUM(ms_desktop_optimization) AS [Desktop Optimization], SUM(ms_collaboration) 
                      AS Collaboration, SUM(ms_development_apps) AS [Development Apps], SUM(ms_communication) AS Communication, SUM(ms_app_management) 
                      AS [App Management], SUM(ms_business_intelligence) AS [Business Intelligence], SUM(tengo_desktop) AS [Tengo Desktop], SUM(tengo_mail) 
                      AS [Tengo Mail], SUM(tengo_communication) AS [Tengo Communication], SUM(tengo_projectroom) AS [Tengo Projectroom], SUM(tengo_centraflex) 
                      AS [Tengo Centraflex], SUM(sap_consulting) AS [SAP Consulting], SUM(sap_erp) AS [SAP ERP], SUM(sap_applikationmanagement) 
                      AS [SAP Applikationsmanagement], SUM(sap_crm) AS [SAP CRM], SUM(sap_betrieb) AS [SAP Betrieb], SUM(sap_scm) AS [SAP SCM], SUM(sap_bibo) 
                      AS [SAP BiBo], SUM(sap_grc_idm) AS [SAP GRC IDM], SUM(sap_mobile) AS [SAP Mobile], SUM(sap_hana) AS [SAP Hana], SUM(qsc_rz_infrastruktur) 
                      AS [RZ-Infrastruktur], SUM(qsc_vpn) AS VPN, SUM(qsc_rz_bau) AS [RZ-Bau], SUM(qsc_tk_dienste) AS [TK-Dienste], SUM(qsc_wifi) AS WIFI, 
                      SUM(qsc_housing) AS Housing, SUM(qsc_outsourcing) AS Outsourcing, SUM(qsc_hosting_storage) AS [Hosting. Storage], SUM(qsc_FTAPI) 
                      AS FTAPI
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
HAVING      (Datum = '10.03.2014')

GO
/****** Object:  View [dbo].[leads_produkte_11]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[leads_produkte_11]
AS
SELECT     '11.03.2014' AS Datum, SUM(ms_private_cloud) AS Private_Cloud, SUM(ms_desktop_optimization) AS [Desktop Optimization], SUM(ms_collaboration) 
                      AS Collaboration, SUM(ms_development_apps) AS [Development Apps], SUM(ms_communication) AS Communication, SUM(ms_app_management) 
                      AS [App Management], SUM(ms_business_intelligence) AS [Business Intelligence], SUM(tengo_desktop) AS [Tengo Desktop], SUM(tengo_mail) 
                      AS [Tengo Mail], SUM(tengo_communication) AS [Tengo Communication], SUM(tengo_projectroom) AS [Tengo Projectroom], SUM(tengo_centraflex) 
                      AS [Tengo Centraflex], SUM(sap_consulting) AS [SAP Consulting], SUM(sap_erp) AS [SAP ERP], SUM(sap_applikationmanagement) 
                      AS [SAP Applikationsmanagement], SUM(sap_crm) AS [SAP CRM], SUM(sap_betrieb) AS [SAP Betrieb], SUM(sap_scm) AS [SAP SCM], SUM(sap_bibo) 
                      AS [SAP BiBo], SUM(sap_grc_idm) AS [SAP GRC IDM], SUM(sap_mobile) AS [SAP Mobile], SUM(sap_hana) AS [SAP Hana], SUM(qsc_rz_infrastruktur) 
                      AS [RZ-Infrastruktur], SUM(qsc_vpn) AS VPN, SUM(qsc_rz_bau) AS [RZ-Bau], SUM(qsc_tk_dienste) AS [TK-Dienste], SUM(qsc_wifi) AS WIFI, 
                      SUM(qsc_housing) AS Housing, SUM(qsc_outsourcing) AS Outsourcing, SUM(qsc_hosting_storage) AS [Hosting. Storage], SUM(qsc_FTAPI) 
                      AS FTAPI
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
HAVING      (Datum = '11.03.2014')

GO
/****** Object:  View [dbo].[leads_produkte_12]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[leads_produkte_12]
AS
SELECT     '12.03.2014' AS Datum, SUM(ms_private_cloud) AS Private_Cloud, SUM(ms_desktop_optimization) AS [Desktop Optimization], SUM(ms_collaboration) 
                      AS Collaboration, SUM(ms_development_apps) AS [Development Apps], SUM(ms_communication) AS Communication, SUM(ms_app_management) 
                      AS [App Management], SUM(ms_business_intelligence) AS [Business Intelligence], SUM(tengo_desktop) AS [Tengo Desktop], SUM(tengo_mail) 
                      AS [Tengo Mail], SUM(tengo_communication) AS [Tengo Communication], SUM(tengo_projectroom) AS [Tengo Projectroom], SUM(tengo_centraflex) 
                      AS [Tengo Centraflex], SUM(sap_consulting) AS [SAP Consulting], SUM(sap_erp) AS [SAP ERP], SUM(sap_applikationmanagement) 
                      AS [SAP Applikationsmanagement], SUM(sap_crm) AS [SAP CRM], SUM(sap_betrieb) AS [SAP Betrieb], SUM(sap_scm) AS [SAP SCM], SUM(sap_bibo) 
                      AS [SAP BiBo], SUM(sap_grc_idm) AS [SAP GRC IDM], SUM(sap_mobile) AS [SAP Mobile], SUM(sap_hana) AS [SAP Hana], SUM(qsc_rz_infrastruktur) 
                      AS [RZ-Infrastruktur], SUM(qsc_vpn) AS VPN, SUM(qsc_rz_bau) AS [RZ-Bau], SUM(qsc_tk_dienste) AS [TK-Dienste], SUM(qsc_wifi) AS WIFI, 
                      SUM(qsc_housing) AS Housing, SUM(qsc_outsourcing) AS Outsourcing, SUM(qsc_hosting_storage) AS [Hosting. Storage], SUM(qsc_FTAPI) 
                      AS FTAPI
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
HAVING      (Datum = '12.03.2014')
GO
/****** Object:  View [dbo].[leads_produkte_13]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[leads_produkte_13]
AS
SELECT     '13.03.2014' AS Datum, SUM(ms_private_cloud) AS Private_Cloud, SUM(ms_desktop_optimization) AS [Desktop Optimization], SUM(ms_collaboration) 
                      AS Collaboration, SUM(ms_development_apps) AS [Development Apps], SUM(ms_communication) AS Communication, SUM(ms_app_management) 
                      AS [App Management], SUM(ms_business_intelligence) AS [Business Intelligence], SUM(tengo_desktop) AS [Tengo Desktop], SUM(tengo_mail) 
                      AS [Tengo Mail], SUM(tengo_communication) AS [Tengo Communication], SUM(tengo_projectroom) AS [Tengo Projectroom], SUM(tengo_centraflex) 
                      AS [Tengo Centraflex], SUM(sap_consulting) AS [SAP Consulting], SUM(sap_erp) AS [SAP ERP], SUM(sap_applikationmanagement) 
                      AS [SAP Applikationsmanagement], SUM(sap_crm) AS [SAP CRM], SUM(sap_betrieb) AS [SAP Betrieb], SUM(sap_scm) AS [SAP SCM], SUM(sap_bibo) 
                      AS [SAP BiBo], SUM(sap_grc_idm) AS [SAP GRC IDM], SUM(sap_mobile) AS [SAP Mobile], SUM(sap_hana) AS [SAP Hana], SUM(qsc_rz_infrastruktur) 
                      AS [RZ-Infrastruktur], SUM(qsc_vpn) AS VPN, SUM(qsc_rz_bau) AS [RZ-Bau], SUM(qsc_tk_dienste) AS [TK-Dienste], SUM(qsc_wifi) AS WIFI, 
                      SUM(qsc_housing) AS Housing, SUM(qsc_outsourcing) AS Outsourcing, SUM(qsc_hosting_storage) AS [Hosting. Storage], SUM(qsc_FTAPI) 
                      AS FTAPI
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
HAVING      (Datum = '13.03.2014')

GO
/****** Object:  View [dbo].[leads_produkte_14]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[leads_produkte_14]
AS
SELECT     '14.03.2014' AS Datum, SUM(ms_private_cloud) AS Private_Cloud, SUM(ms_desktop_optimization) AS [Desktop Optimization], SUM(ms_collaboration) 
                      AS Collaboration, SUM(ms_development_apps) AS [Development Apps], SUM(ms_communication) AS Communication, SUM(ms_app_management) 
                      AS [App Management], SUM(ms_business_intelligence) AS [Business Intelligence], SUM(tengo_desktop) AS [Tengo Desktop], SUM(tengo_mail) 
                      AS [Tengo Mail], SUM(tengo_communication) AS [Tengo Communication], SUM(tengo_projectroom) AS [Tengo Projectroom], SUM(tengo_centraflex) 
                      AS [Tengo Centraflex], SUM(sap_consulting) AS [SAP Consulting], SUM(sap_erp) AS [SAP ERP], SUM(sap_applikationmanagement) 
                      AS [SAP Applikationsmanagement], SUM(sap_crm) AS [SAP CRM], SUM(sap_betrieb) AS [SAP Betrieb], SUM(sap_scm) AS [SAP SCM], SUM(sap_bibo) 
                      AS [SAP BiBo], SUM(sap_grc_idm) AS [SAP GRC IDM], SUM(sap_mobile) AS [SAP Mobile], SUM(sap_hana) AS [SAP Hana], SUM(qsc_rz_infrastruktur) 
                      AS [RZ-Infrastruktur], SUM(qsc_vpn) AS VPN, SUM(qsc_rz_bau) AS [RZ-Bau], SUM(qsc_tk_dienste) AS [TK-Dienste], SUM(qsc_wifi) AS WIFI, 
                      SUM(qsc_housing) AS Housing, SUM(qsc_outsourcing) AS Outsourcing, SUM(qsc_hosting_storage) AS [Hosting. Storage], SUM(qsc_FTAPI) 
                      AS FTAPI
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
HAVING      (Datum = '14.03.2014')

GO
/****** Object:  View [dbo].[leads_produkte_gesamt]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[leads_produkte_gesamt]
AS
SELECT     * 
FROM     leads_produkte_10

union    

SELECT     * 
FROM     leads_produkte_11

union

SELECT     * 
FROM     leads_produkte_12

union

SELECT     * 
FROM     leads_produkte_13

union

SELECT     * 
FROM     leads_produkte_14



GO
/****** Object:  View [dbo].[cebit_leads_pro_tag]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cebit_leads_pro_tag]
AS
SELECT     TOP (100) PERCENT Datum, COUNT(id) AS Anzahl
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
ORDER BY Datum
GO
/****** Object:  View [dbo].[eworld_tickets_summe]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[eworld_tickets_summe]
AS
SELECT     besitzer, COUNT(id) AS Expr1
FROM         eworld_2015_tickets
GROUP BY besitzer
GO
/****** Object:  View [dbo].[it_sa_tickets_summe]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[it_sa_tickets_summe]
AS
SELECT     besitzer, COUNT(id) AS Expr1
FROM         it_sa_2014_tickets
GROUP BY besitzer
GO
/****** Object:  View [dbo].[leads_vertrieb_gesamt]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[leads_vertrieb_gesamt]
AS
SELECT     TOP (100) PERCENT Datum, SUM(CASE WHEN cebit_2014_vertrieb_leads.Lead_empfohlen_fuer = 'Direkter Vertrieb' THEN 1 ELSE 0 END) 
                      AS [Direkter Vertrieb], SUM(CASE WHEN cebit_2014_vertrieb_leads.Lead_empfohlen_fuer = 'Indirekter Vertrieb' THEN 1 ELSE 0 END) 
                      AS [Indirekter Vertrieb], SUM(CASE WHEN cebit_2014_vertrieb_leads.Lead_empfohlen_fuer = 'Professional Services' THEN 1 ELSE 0 END) 
                      AS [Professional Services], SUM(CASE WHEN cebit_2014_vertrieb_leads.Lead_empfohlen_fuer = 'tengo GmbH' THEN 1 ELSE 0 END) AS [tengo GmbH],
                       SUM(CASE WHEN cebit_2014_vertrieb_leads.Lead_empfohlen_fuer = 'Sonstige' THEN 1 ELSE 0 END) AS Sonstige
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
ORDER BY Datum
GO
/****** Object:  View [dbo].[leads_vertrieb_kundenart]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[leads_vertrieb_kundenart]
AS
SELECT     TOP (100) PERCENT Datum, SUM(CASE WHEN cebit_2014_vertrieb_leads.Kundenart = 'Neukunde' THEN 1 ELSE 0 END) AS Neukunde, 
                      SUM(CASE WHEN cebit_2014_vertrieb_leads.Kundenart = 'Neupartner' THEN 1 ELSE 0 END) AS Neupartner, 
                      SUM(CASE WHEN cebit_2014_vertrieb_leads.Kundenart = 'Bestandskunde' THEN 1 ELSE 0 END) AS Bestandskunde, 
                      SUM(CASE WHEN cebit_2014_vertrieb_leads.Kundenart = 'Bestandspartner' THEN 1 ELSE 0 END) AS Bestandspartner
FROM         dbo.cebit_2014_vertrieb_leads
GROUP BY Datum
ORDER BY Datum
GO
/****** Object:  View [dbo].[partnertour_2014_anmeldung_auswertung]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[partnertour_2014_anmeldung_auswertung]
AS
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Hamburg' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 1) AND (Hamburg = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'München' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand =1) AND (Muenchen = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Stuttgart' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 1) AND (Stuttgart = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Frankfurt' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 1) AND (Frankfurt = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Köln' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 1) AND (koeln = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Berlin' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 1) AND (Berlin = 'ja')       
GO
/****** Object:  View [dbo].[partnertour_2014_anmeldung_email]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[partnertour_2014_anmeldung_email]
AS
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Hamburg' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 0) AND (Hamburg = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'München' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 0) AND (Muenchen = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Stuttgart' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 0) AND (Stuttgart = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Frankfurt' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 0) AND (Frankfurt = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Köln' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 0) AND (koeln = 'ja')
UNION ALL
SELECT     id, Anrede, Vorname, Nachname, EMail, 'Berlin' AS ort, Firma
FROM         dbo.partnertour_2014_anmeldung
WHERE     (email_versand = 0) AND (Berlin = 'ja')
GO
/****** Object:  View [dbo].[Partnertour2014_leaduebersicht]    Script Date: 06.07.2018 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Partnertour2014_leaduebersicht]
AS
SELECT     Datum, COUNT(CASE WHEN Lead_empfohlen_fuer = 'Aastra' THEN 1 ELSE NULL END) AS Aastra, 
                      COUNT(CASE WHEN Lead_empfohlen_fuer = 'FTAPI' THEN 1 ELSE NULL END) AS FTAPI, 
                      COUNT(CASE WHEN Lead_empfohlen_fuer = 'Jabra' THEN 1 ELSE NULL END) AS Jabra, 
                      COUNT(CASE WHEN Lead_empfohlen_fuer = 'Microsoft' THEN 1 ELSE NULL END) AS Microsoft, 
                      COUNT(CASE WHEN Lead_empfohlen_fuer = 'Panasonic' THEN 1 ELSE NULL END) AS Panasonic, 
                      COUNT(CASE WHEN Lead_empfohlen_fuer = 'QSC AG' THEN 1 ELSE NULL END) AS QSC_AG
FROM         dbo.partnertour_2014_vertrieb_leads
GROUP BY Datum
GO
ALTER TABLE [dbo].[eurocis_2015_qsc_termine] ADD  CONSTRAINT [DF_eurocis_2015_qsc_termine_ticket]  DEFAULT ((0)) FOR [tickets]
GO
ALTER TABLE [dbo].[eworld_2015_qsc_termine] ADD  CONSTRAINT [DF_eworld_2015_qsc_termine_ticket]  DEFAULT ((0)) FOR [tickets]
GO
ALTER TABLE [dbo].[it_sa_2014_qsc_termine] ADD  CONSTRAINT [DF_it_sa_2014_qsc_termine_ticket]  DEFAULT ((0)) FOR [tickets]
GO
ALTER TABLE [dbo].[itk_round_table_11_2015] ADD  CONSTRAINT [DF_Table_5_verifiziert]  DEFAULT ((0)) FOR [Verifiziert]
GO
ALTER TABLE [dbo].[itk_round_table_11_2015_anmeldung] ADD  CONSTRAINT [DF_itk_round_table_11_2015_anmeldung_Verifiziert]  DEFAULT ((0)) FOR [Verifiziert]
GO
ALTER TABLE [dbo].[itk_round_table_2014] ADD  CONSTRAINT [DF_Table_1_verifiziert]  DEFAULT ((0)) FOR [Verifiziert]
GO
ALTER TABLE [dbo].[partnertour_2014_anmeldung] ADD  CONSTRAINT [DF_partnertour_2014_anmeldung_email_versand]  DEFAULT ((0)) FOR [email_versand]
GO
ALTER TABLE [dbo].[partnertour_2015_anmeldung] ADD  CONSTRAINT [DF_partnertour_2015_anmeldung_email_versand]  DEFAULT ((0)) FOR [email_versand]
GO
ALTER TABLE [dbo].[tankstelle_und_mittelstand_2015] ADD  CONSTRAINT [DF__tankstell__verif__123EB7A3]  DEFAULT ((0)) FOR [verifiziert]
GO
ALTER TABLE [dbo].[tankstelle_und_mittelstand_2015_V2] ADD  DEFAULT ((0)) FOR [verifiziert]
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
         Begin Table = "cebit_2014_vertrieb_leads"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 326
               Right = 288
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'cebit_leads_pro_tag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'cebit_leads_pro_tag'
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
         Begin Table = "cebit_2014_vertrieb_leads"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 295
               Right = 288
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
      Begin ColumnWidths = 34
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2310
         Alias = 3030
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_produkte_12'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_produkte_12'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_produkte_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_produkte_gesamt'
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
         Begin Table = "cebit_2014_vertrieb_leads"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 313
               Right = 288
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_vertrieb_gesamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_vertrieb_gesamt'
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
         Begin Table = "cebit_2014_vertrieb_leads"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 288
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_vertrieb_kundenart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'leads_vertrieb_kundenart'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'partnertour_2014_anmeldung_auswertung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'partnertour_2014_anmeldung_auswertung'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'partnertour_2014_anmeldung_email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'partnertour_2014_anmeldung_email'
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
         Begin Table = "partnertour_2014_vertrieb_leads"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 176
               Right = 319
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Partnertour2014_leaduebersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Partnertour2014_leaduebersicht'
GO
USE [master]
GO
ALTER DATABASE [qsc] SET  READ_WRITE 
GO
