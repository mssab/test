USE [master]
GO
/****** Object:  Database [meine_anmeldung]    Script Date: 06.07.2018 11:15:11 ******/
CREATE DATABASE [meine_anmeldung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'meine_anmeldung', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\meine_anmeldung.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'meine_anmeldung_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\meine_anmeldung_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [meine_anmeldung] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [meine_anmeldung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [meine_anmeldung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [meine_anmeldung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [meine_anmeldung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [meine_anmeldung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [meine_anmeldung] SET ARITHABORT OFF 
GO
ALTER DATABASE [meine_anmeldung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [meine_anmeldung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [meine_anmeldung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [meine_anmeldung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [meine_anmeldung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [meine_anmeldung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [meine_anmeldung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [meine_anmeldung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [meine_anmeldung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [meine_anmeldung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [meine_anmeldung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [meine_anmeldung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [meine_anmeldung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [meine_anmeldung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [meine_anmeldung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [meine_anmeldung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [meine_anmeldung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [meine_anmeldung] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [meine_anmeldung] SET  MULTI_USER 
GO
ALTER DATABASE [meine_anmeldung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [meine_anmeldung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [meine_anmeldung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [meine_anmeldung] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [meine_anmeldung] SET DELAYED_DURABILITY = DISABLED 
GO
USE [meine_anmeldung]
GO
/****** Object:  Table [dbo].[korfmann_anmeldung]    Script Date: 06.07.2018 11:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[korfmann_anmeldung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firma] [varchar](max) NULL,
	[filiale] [varchar](50) NULL,
	[anrede] [varchar](50) NULL,
	[titel] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[funktion] [varchar](max) NULL,
	[strasse] [varchar](50) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](50) NULL,
	[telefon] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[pate] [varchar](50) NULL,
	[begleitperson] [varchar](50) NULL,
	[code] [varchar](50) NULL,
 CONSTRAINT [PK_korfmann_anmeldung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[korfmann_anmeldung_zurueck]    Script Date: 06.07.2018 11:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[korfmann_anmeldung_zurueck](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anmeldung_id] [int] NULL,
	[anrede] [varchar](50) NULL,
	[titel] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[strasse] [varchar](50) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[teilnahme] [varchar](50) NULL,
	[vegetarier] [varchar](50) NULL,
	[sonstiges] [varchar](max) NULL,
	[bemerkung] [text] NULL,
	[eingegangen] [varchar](50) NULL,
	[anwesend] [bit] NOT NULL,
	[check_in] [varchar](max) NULL,
 CONSTRAINT [PK_korfmann_anmeldung_zurueck] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[korfmann_passwortanfrage]    Script Date: 06.07.2018 11:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[korfmann_passwortanfrage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vorname] [varchar](max) NULL,
	[nachname] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[eingegangen] [varchar](max) NULL,
 CONSTRAINT [PK_korfmann_passwortanfrage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[korfmann_export]    Script Date: 06.07.2018 11:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[korfmann_export]
AS
SELECT     dbo.korfmann_anmeldung.firma, dbo.korfmann_anmeldung.filiale, dbo.korfmann_anmeldung_zurueck.anrede, dbo.korfmann_anmeldung_zurueck.titel, 
                      dbo.korfmann_anmeldung_zurueck.vorname, dbo.korfmann_anmeldung_zurueck.nachname, dbo.korfmann_anmeldung_zurueck.strasse, 
                      dbo.korfmann_anmeldung_zurueck.plz, dbo.korfmann_anmeldung_zurueck.ort, dbo.korfmann_anmeldung_zurueck.email, 
                      dbo.korfmann_anmeldung_zurueck.teilnahme, dbo.korfmann_anmeldung_zurueck.vegetarier, dbo.korfmann_anmeldung_zurueck.sonstiges, 
                      dbo.korfmann_anmeldung_zurueck.bemerkung, dbo.korfmann_anmeldung_zurueck.eingegangen, dbo.korfmann_anmeldung.code, 
                      dbo.korfmann_anmeldung.id
FROM         dbo.korfmann_anmeldung INNER JOIN
                      dbo.korfmann_anmeldung_zurueck ON dbo.korfmann_anmeldung.id = dbo.korfmann_anmeldung_zurueck.anmeldung_id
GO
ALTER TABLE [dbo].[korfmann_anmeldung_zurueck] ADD  CONSTRAINT [DF_korfmann_anmeldung_zurueck_anwesend]  DEFAULT ((0)) FOR [anwesend]
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
         Begin Table = "korfmann_anmeldung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 318
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "korfmann_anmeldung_zurueck"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 310
               Right = 384
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
      Begin ColumnWidths = 10
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'korfmann_export'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'korfmann_export'
GO
USE [master]
GO
ALTER DATABASE [meine_anmeldung] SET  READ_WRITE 
GO
