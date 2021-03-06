USE [master]
GO
/****** Object:  Database [SmartNET]    Script Date: 06.07.2018 11:20:46 ******/
CREATE DATABASE [SmartNET]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartNET', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SmartNET.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SmartNET_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SmartNET_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SmartNET] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartNET].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartNET] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartNET] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartNET] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartNET] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartNET] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartNET] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SmartNET] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartNET] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartNET] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartNET] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartNET] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartNET] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartNET] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartNET] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartNET] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SmartNET] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartNET] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartNET] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartNET] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartNET] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartNET] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartNET] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartNET] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SmartNET] SET  MULTI_USER 
GO
ALTER DATABASE [SmartNET] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartNET] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartNET] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartNET] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SmartNET] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SmartNET]
GO
/****** Object:  Table [dbo].[Artikel]    Script Date: 06.07.2018 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artikel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Artikelgruppen_ID] [int] NULL,
	[Artikelnummer] [varchar](max) NULL,
	[EAN] [varchar](max) NULL,
	[Artikelname] [varchar](max) NULL,
	[Verpackungseinheit] [varchar](max) NULL,
	[aktiv] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artikelgruppen]    Script Date: 06.07.2018 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artikelgruppen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Artikelgruppe] [varchar](max) NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Artikelgruppen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benutzer]    Script Date: 06.07.2018 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benutzer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Berechtigung] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[Gebiet] [varchar](max) NULL,
	[Letzter_Login] [timestamp] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Benutzer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Berichtsgruppe] [int] NULL,
	[Frage] [text] NULL,
	[Antwortfeld] [varchar](max) NULL,
	[Pflichtfeld] [bit] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Berichtsfragen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen_Antworten]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen_Antworten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Berichtsfragen_ID] [int] NULL,
	[Antwort] [text] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Berichtsfragen_Antworten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Berichtsfragen_Gruppen]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Berichtsfragen_Gruppen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gruppenname] [varchar](max) NULL,
 CONSTRAINT [PK_Berichtsfragen_Gruppen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Besuche]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Besuche](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Kunden_ID] [int] NULL,
	[Benutzer_ID] [int] NULL,
	[Besuchsdatum] [date] NULL,
	[Besuchsart] [varchar](max) NULL,
	[Besuchsbemerkung] [text] NULL,
	[Zeitstempel] [datetime] NULL,
 CONSTRAINT [PK_Besuche] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Besuchsfragen]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Besuchsfragen](
	[Besuche_ID] [int] NULL,
	[Berichtsfragen_ID] [int] NULL,
	[Antwort] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distribution]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distribution](
	[Besuche_ID] [int] NULL,
	[Artikel_ID] [int] NULL,
	[Preis] [money] NULL,
	[Aktionspreis] [bit] NULL,
	[Facings] [int] NULL,
	[OutOfStock] [bit] NULL,
	[Zweitplatzierung] [int] NULL,
	[NR_Zweitplatzierung] [int] NULL,
	[NR_Ersatz] [int] NULL,
	[GNV] [varchar](max) NULL,
	[Verbesserung_Groesse] [bit] NULL,
	[Verbesserung_Position] [bit] NULL,
	[Sortimentserweiterung] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gruende_fuer_Nichtvorhandensein]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gruende_fuer_Nichtvorhandensein](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Grund] [text] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Gruende_fuer_Nichtvorhandensein] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kunden]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TDLinx] [int] NULL,
	[DirektKunde] [int] NULL,
	[KdTopNr] [int] NULL,
	[FilialNummer] [varchar](max) NULL,
	[KurzBezeichnung] [varchar](max) NULL,
	[MatchCode] [date] NULL,
	[Name1] [varchar](max) NULL,
	[Name2] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[Postfach] [int] NULL,
	[PLZ] [varchar](50) NULL,
	[PLZPf] [varchar](50) NULL,
	[Ort] [varchar](max) NULL,
	[Ortsteil] [varchar](max) NULL,
	[Land] [varchar](max) NULL,
	[Vorwahl] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Telefon2] [varchar](50) NULL,
	[Telefax] [varchar](50) NULL,
	[Mobil] [varchar](50) NULL,
	[EMail] [varchar](max) NULL,
	[AACode] [int] NULL,
	[Branche] [varchar](max) NULL,
	[CASBezirk] [int] NULL,
	[NielsenGebiet] [varchar](50) NULL,
	[PreisGruppe] [varchar](50) NULL,
	[KundenGruppe] [varchar](50) NULL,
	[KundenKlasse] [varchar](50) NULL,
	[SperrKeze] [int] NULL,
	[AktivKeze] [int] NULL,
	[VKFlaeche] [varchar](50) NULL,
	[VKFFood] [varchar](50) NOT NULL,
	[VKFNonFood] [varchar](50) NULL,
	[KAM] [int] NULL,
	[Kassen] [int] NULL,
	[KdNRInd] [varchar](50) NULL,
	[NBR] [date] NULL,
	[LBT] [date] NULL,
	[NBT] [date] NULL,
	[MandantenString] [varchar](max) NULL,
	[TourName] [varchar](max) NULL,
	[HZ] [varchar](max) NULL,
	[VL] [varchar](max) NULL,
	[MBU] [int] NULL,
	[Soll] [int] NULL,
	[Ist] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kunden_Kontakte]    Script Date: 06.07.2018 11:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunden_Kontakte](
	[Kunden_ID] [int] NULL,
	[Benutzer_ID] [int] NULL,
	[Feldname] [varchar](max) NULL,
	[Feldinhalt] [text] NULL,
	[Zeitstempel] [timestamp] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listungen]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listungen](
	[Artikel_ID] [int] NULL,
	[Kunden_ID] [int] NULL,
	[Listungstyp_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listungsbausteine]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listungsbausteine](
	[Artikel_ID] [int] NULL,
	[Zuordnungsebene] [varchar](max) NULL,
	[Zuordnungsname] [varchar](max) NULL,
	[Listungstyp_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listungstyp]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listungstyp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Listungstyp] [varchar](max) NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Listungstyp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stammtour]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stammtour](
	[TDLinx] [int] NULL,
	[Benutzer_id] [int] NULL,
	[Datum] [date] NULL,
	[Position] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taetigkeiten]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taetigkeiten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Taetigkeit] [text] NULL,
	[aktiv] [bit] NULL,
 CONSTRAINT [PK_Taetigkeiten] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tagesabrechnung]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tagesabrechnung](
	[Benutzer_ID] [int] NULL,
	[Datum] [date] NULL,
	[Taetigkeit] [text] NULL,
	[Kundenbesuche] [int] NULL,
	[Arbeitsbeginn] [time](7) NULL,
	[Arbeitsende] [time](7) NULL,
	[KM_Leistung] [int] NULL,
	[Bemerkung] [text] NULL,
	[Zeitstempel] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wochentour]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wochentour](
	[TDLinx] [int] NULL,
	[Benutzer_id] [int] NULL,
	[Datum] [date] NULL,
	[Position] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zuordnung]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zuordnung](
	[Kunden_ID] [int] NULL,
	[Benutzer_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[anzahl_besuche]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_besuche]
AS
SELECT     COUNT(id) AS gemachte_besuche, Kunden_ID
FROM         dbo.Besuche
WHERE     (Besuchsdatum < CONVERT(date, GETDATE())) AND (YEAR(Besuchsdatum) = YEAR(GETDATE()))
GROUP BY Kunden_ID
GO
/****** Object:  View [dbo].[anzahl_besuche_lt_stammtour]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[anzahl_besuche_lt_stammtour]
AS
SELECT     COUNT(id) AS gemachte_besuche, Kunden_ID
FROM         dbo.Besuche
WHERE     (Besuchsdatum < CONVERT(date, GETDATE())) AND (YEAR(Besuchsdatum) = YEAR(GETDATE())) AND (Besuchsart = 'lt. Stammtour')
GROUP BY Kunden_ID
GO
/****** Object:  View [dbo].[geplante_besuche_lt_stammtour]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[geplante_besuche_lt_stammtour]
AS
SELECT     COUNT(Datum) AS geplante_besuche, TDLinx, 'ja' AS verplant
FROM         dbo.Stammtour
WHERE     (Datum < CONVERT(date, GETDATE())) AND (YEAR(Datum) = YEAR(GETDATE()))
GROUP BY TDLinx
GO
/****** Object:  View [dbo].[letzter_besuch]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[letzter_besuch]
AS
SELECT     MAX(id) AS Expr2, Kunden_ID, MAX(Besuchsdatum) AS Expr1
FROM         dbo.Besuche
GROUP BY Kunden_ID
GO
/****** Object:  View [dbo].[naechster_Besuch_lt_Tour]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[naechster_Besuch_lt_Tour]
AS
SELECT     TDLinx, MIN(Datum) AS Expr1
FROM         dbo.Wochentour
WHERE     (Datum > GETDATE())
GROUP BY TDLinx
GO
/****** Object:  View [dbo].[kundenansicht]    Script Date: 06.07.2018 11:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[kundenansicht]
AS
SELECT     dbo.geplante_besuche_lt_stammtour.verplant, dbo.Kunden.Name1, dbo.Kunden.Strasse, dbo.Kunden.PLZ, dbo.Kunden.Ort, dbo.Kunden.CASBezirk, 
                      dbo.letzter_besuch.Expr1 AS 'L. Besuch', dbo.naechster_Besuch_lt_Tour.Expr1 AS 'Nä Tourbes.', '' AS STA, 
                      dbo.geplante_besuche_lt_stammtour.geplante_besuche AS STT, dbo.anzahl_besuche.gemachte_besuche AS IBG, 
                      dbo.anzahl_besuche_lt_stammtour.gemachte_besuche AS IBT
FROM         dbo.Kunden LEFT OUTER JOIN
                      dbo.naechster_Besuch_lt_Tour ON dbo.Kunden.TDLinx = dbo.naechster_Besuch_lt_Tour.TDLinx LEFT OUTER JOIN
                      dbo.anzahl_besuche ON dbo.Kunden.TDLinx = dbo.anzahl_besuche.Kunden_ID LEFT OUTER JOIN
                      dbo.anzahl_besuche_lt_stammtour ON dbo.Kunden.TDLinx = dbo.anzahl_besuche_lt_stammtour.Kunden_ID LEFT OUTER JOIN
                      dbo.geplante_besuche_lt_stammtour ON dbo.Kunden.TDLinx = dbo.geplante_besuche_lt_stammtour.TDLinx LEFT OUTER JOIN
                      dbo.letzter_besuch ON dbo.Kunden.TDLinx = dbo.letzter_besuch.Kunden_ID
GO
ALTER TABLE [dbo].[Berichtsfragen]  WITH CHECK ADD  CONSTRAINT [FK_Berichtsfragen_Berichtsfragen_Gruppen1] FOREIGN KEY([Berichtsgruppe])
REFERENCES [dbo].[Berichtsfragen_Gruppen] ([id])
GO
ALTER TABLE [dbo].[Berichtsfragen] CHECK CONSTRAINT [FK_Berichtsfragen_Berichtsfragen_Gruppen1]
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
         Begin Table = "Besuche"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 238
               Right = 211
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_besuche'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_besuche'
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
         Begin Table = "Besuche"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 184
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_besuche_lt_stammtour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'anzahl_besuche_lt_stammtour'
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
         Begin Table = "Stammtour"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'geplante_besuche_lt_stammtour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'geplante_besuche_lt_stammtour'
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
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 310
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "anzahl_besuche"
            Begin Extent = 
               Top = 6
               Left = 850
               Bottom = 91
               Right = 1024
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "anzahl_besuche_lt_stammtour"
            Begin Extent = 
               Top = 6
               Left = 638
               Bottom = 91
               Right = 812
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "geplante_besuche_lt_stammtour"
            Begin Extent = 
               Top = 194
               Left = 270
               Bottom = 302
               Right = 439
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "letzter_besuch"
            Begin Extent = 
               Top = 150
               Left = 542
               Bottom = 316
               Right = 696
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "naechster_Besuch_lt_Tour"
            Begin Extent = 
               Top = 157
               Left = 793
               Bottom = 242
               Right = 947
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
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kundenansicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kundenansicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kundenansicht'
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
         Begin Table = "Besuche"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 227
               Right = 211
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'letzter_besuch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'letzter_besuch'
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
         Begin Table = "Wochentour"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 171
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'naechster_Besuch_lt_Tour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'naechster_Besuch_lt_Tour'
GO
USE [master]
GO
ALTER DATABASE [SmartNET] SET  READ_WRITE 
GO
