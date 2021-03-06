USE [master]
GO
/****** Object:  Database [FSZ]    Script Date: 06.07.2018 09:52:39 ******/
CREATE DATABASE [FSZ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FSZ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\FSZ.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FSZ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\FSZ_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FSZ] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FSZ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FSZ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FSZ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FSZ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FSZ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FSZ] SET ARITHABORT OFF 
GO
ALTER DATABASE [FSZ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FSZ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FSZ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FSZ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FSZ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FSZ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FSZ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FSZ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FSZ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FSZ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FSZ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FSZ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FSZ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FSZ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FSZ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FSZ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FSZ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FSZ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FSZ] SET  MULTI_USER 
GO
ALTER DATABASE [FSZ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FSZ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FSZ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FSZ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FSZ] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FSZ]
GO
/****** Object:  Table [dbo].[fsz_aktion]    Script Date: 06.07.2018 09:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fsz_aktion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[strasse] [varchar](50) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](50) NULL,
	[gluecksnummer] [varchar](50) NULL,
	[anmeldezeitpunkt] [varchar](50) NULL,
	[ip_adresse] [varchar](50) NULL,
	[registriert] [bit] NULL,
	[opt_in] [bit] NULL,
	[opt_in_code] [varchar](50) NULL,
 CONSTRAINT [PK_fsz_aktion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Auswertung]    Script Date: 06.07.2018 09:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Auswertung]
AS
SELECT     TOP (100) PERCENT anrede AS Anrede, vorname AS Vorname, nachname AS Nachname, email AS [E-Mail], strasse AS Straße, plz AS PLZ, ort AS Ort, 
                      gluecksnummer AS Glücksnummer, anmeldezeitpunkt AS Anmeldezeitpunkt
FROM         dbo.fsz_aktion
WHERE     (registriert = 1)
ORDER BY Nachname
GO
ALTER TABLE [dbo].[fsz_aktion] ADD  CONSTRAINT [DF_fsz_aktion_opt_in]  DEFAULT ((0)) FOR [opt_in]
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
         Begin Table = "fsz_aktion"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 283
               Right = 203
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Auswertung'
GO
USE [master]
GO
ALTER DATABASE [FSZ] SET  READ_WRITE 
GO
