USE [master]
GO
/****** Object:  Database [DEW21]    Script Date: 20.07.2018 15:21:47 ******/
CREATE DATABASE [DEW21]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DEW21', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DEW21.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DEW21_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DEW21_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DEW21] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEW21].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEW21] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DEW21] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DEW21] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DEW21] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DEW21] SET ARITHABORT OFF 
GO
ALTER DATABASE [DEW21] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DEW21] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DEW21] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DEW21] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DEW21] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DEW21] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DEW21] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DEW21] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DEW21] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DEW21] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DEW21] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DEW21] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DEW21] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DEW21] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DEW21] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DEW21] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DEW21] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DEW21] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DEW21] SET  MULTI_USER 
GO
ALTER DATABASE [DEW21] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DEW21] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DEW21] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DEW21] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DEW21] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DEW21]
GO
/****** Object:  Table [dbo].[dew_ip]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew_ip](
	[id] [int] NULL,
	[adresse] [varchar](max) NULL,
	[Team] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leaderfassung]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leaderfassung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Strasse] [varchar](max) NULL,
	[PLZ] [varchar](50) NULL,
	[Ort] [varchar](max) NULL,
	[Telefon] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Probefahrt_Modell] [varchar](50) NULL,
	[Haendler] [varchar](max) NULL,
	[Wunschdatum] [varchar](max) NULL,
	[Wunschzeit] [varchar](max) NULL,
	[Erfassungszeitpunkt] [varchar](50) NULL,
	[Mail_versendet] [bit] NULL,
	[uebertragen] [varchar](max) NULL,
	[Einverstaendniserklaerung] [varchar](max) NULL,
	[nur_Prospekt] [varchar](max) NULL,
	[Bemerkung] [text] NULL,
 CONSTRAINT [PK_Leaderfassung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leaderfassung_Aktionen]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leaderfassung_Aktionen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Stadt] [varchar](max) NULL,
	[Beginn] [date] NULL,
	[Ende] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leads]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aktion_id] [int] NULL,
	[Anrede] [varchar](50) NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[Strasse] [varchar](50) NULL,
	[PLZ_Ort] [varchar](50) NULL,
	[Telefonnummer] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Geburtstag] [varchar](50) NULL,
	[Fahrradparkplatz] [varchar](50) NULL,
	[Fuenf_Punkte_Check] [varchar](50) NULL,
	[Ladestation] [varchar](50) NULL,
	[Gewinnspiel] [varchar](50) NULL,
	[Rueckruf_Beratung] [varchar](50) NULL,
	[Rueckruf_Beratung_Wunschtermin] [varchar](50) NULL,
	[Einverstaendnis] [varchar](50) NULL,
	[Zeitstempel] [varchar](50) NULL,
	[Erfasser] [int] NULL,
	[checkbox_tel] [varchar](50) NULL,
	[checkbox_email] [varchar](50) NULL,
	[checkbox_messenger] [varchar](50) NULL,
	[checkbox_social] [varchar](50) NULL,
	[checkbox_chat] [varchar](50) NULL,
	[unterschrift] [varchar](max) NULL,
 CONSTRAINT [PK_Leads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leads_Login]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leads_Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](50) NULL,
	[Nachname] [varchar](50) NULL,
	[Passwort] [varchar](50) NULL,
	[Letzter_Login] [varchar](50) NULL,
	[Berechtigung] [varchar](50) NULL,
 CONSTRAINT [PK_Opel_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login_Liste]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Liste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Login_id] [int] NULL,
	[Zeitstempel] [varchar](50) NULL,
 CONSTRAINT [PK_Login_Liste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matze_Knop_Event_Gatekeeper]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matze_Knop_Event_Gatekeeper](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Code] [int] NULL,
	[Zugang] [varchar](max) NULL,
	[Anwesend] [bit] NULL,
	[Uhrzeit] [varchar](max) NULL,
 CONSTRAINT [PK_Matze_Knop_Event_Gatekeeper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matze_Knop_Event_Versendung]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matze_Knop_Event_Versendung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Anrede] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[EMail] [varchar](max) NULL,
	[Bestellung] [varchar](max) NULL,
	[Code] [varchar](max) NULL,
	[VIP] [bit] NULL,
 CONSTRAINT [PK_Matze_Knop_Event_Versendung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Leadanzahl]    Script Date: 20.07.2018 15:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Leadanzahl]
AS
SELECT     COUNT(id) AS Leads, Aktion_id
FROM         dbo.Leads
GROUP BY Aktion_id

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
         Begin Table = "Leads"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 233
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Leadanzahl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Leadanzahl'
GO
USE [master]
GO
ALTER DATABASE [DEW21] SET  READ_WRITE 
GO
