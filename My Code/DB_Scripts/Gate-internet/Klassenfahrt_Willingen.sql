USE [master]
GO
/****** Object:  Database [Klassenfahrt_Willingen]    Script Date: 06.07.2018 11:09:52 ******/
CREATE DATABASE [Klassenfahrt_Willingen]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Klassenfahrt_Willingen', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Klassenfahrt_Willingen.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Klassenfahrt_Willingen_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Klassenfahrt_Willingen_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Klassenfahrt_Willingen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET ARITHABORT OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET  MULTI_USER 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Klassenfahrt_Willingen]
GO
/****** Object:  Table [dbo].[login]    Script Date: 06.07.2018 11:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](max) NULL,
	[Nachname] [varchar](max) NULL,
	[Passwort] [varchar](max) NULL,
	[passwort_generiert] [bit] NULL,
	[freigabe_bilder] [bit] NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teilnehmer_chat]    Script Date: 06.07.2018 11:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teilnehmer_chat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_login] [int] NOT NULL,
	[benutzername] [varchar](50) NULL,
	[betreff] [varchar](50) NULL,
	[chat] [varchar](max) NULL,
	[aktiv] [bit] NULL,
	[anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_teilnehmer_chat_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Top5_Chat]    Script Date: 06.07.2018 11:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Top5_Chat]
AS
SELECT     TOP (5) betreff, chat, benutzername, anmeldezeitpunkt
FROM         dbo.teilnehmer_chat
WHERE     (aktiv = 1)
ORDER BY id DESC
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
         Begin Table = "teilnehmer_chat"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 188
               Right = 203
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Top5_Chat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Top5_Chat'
GO
USE [master]
GO
ALTER DATABASE [Klassenfahrt_Willingen] SET  READ_WRITE 
GO
