USE [master]
GO
/****** Object:  Database [testdbdew21]    Script Date: 06.07.2018 11:21:55 ******/
CREATE DATABASE [testdbdew21]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testdbdew21', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\testdbdew21.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'testdbdew21_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\testdbdew21_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [testdbdew21] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testdbdew21].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testdbdew21] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testdbdew21] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testdbdew21] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testdbdew21] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testdbdew21] SET ARITHABORT OFF 
GO
ALTER DATABASE [testdbdew21] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testdbdew21] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testdbdew21] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testdbdew21] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testdbdew21] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testdbdew21] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testdbdew21] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testdbdew21] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testdbdew21] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testdbdew21] SET  DISABLE_BROKER 
GO
ALTER DATABASE [testdbdew21] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testdbdew21] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testdbdew21] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testdbdew21] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testdbdew21] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testdbdew21] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testdbdew21] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testdbdew21] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testdbdew21] SET  MULTI_USER 
GO
ALTER DATABASE [testdbdew21] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testdbdew21] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testdbdew21] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testdbdew21] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [testdbdew21] SET DELAYED_DURABILITY = DISABLED 
GO
USE [testdbdew21]
GO
/****** Object:  Table [dbo].[dew21_gluecksnummern]    Script Date: 06.07.2018 11:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_gluecksnummern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Paketnummer] [int] NULL,
	[Losnummer] [varchar](50) NULL,
	[eingeloest] [bit] NOT NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_dew21_gluecksnummern] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dew21_gluecksnummern_ausgabe]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_gluecksnummern_ausgabe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Paketnummer] [int] NOT NULL,
	[Veranstaltung] [varchar](max) NULL,
	[Promoter] [varchar](max) NULL,
	[ausgegeben] [bit] NOT NULL,
	[Datum] [varchar](max) NULL,
 CONSTRAINT [PK_dew21_gluecksnummern_ausgabe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dew21_gluecksnummern_gewinncodes]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_gluecksnummern_gewinncodes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gewinncode] [varchar](50) NULL,
 CONSTRAINT [PK_dew21_gluecksnummern_gewinncodes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dew21_gluecksnummern_gewinner]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_gluecksnummern_gewinner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[strasseuhausnummer] [varchar](50) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](50) NULL,
	[Gewinncode] [varchar](50) NULL,
	[registriert] [bit] NULL,
	[infoerwuenscht] [bit] NULL,
	[anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_dew21_gluecksnummern_gewinner_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dew21_stromzaehler]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_stromzaehler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stromzaehlerstand] [int] NULL,
 CONSTRAINT [PK_dew21_stromzaehler_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dew21_teilnehmer]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_teilnehmer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[strasseuhausnummer] [varchar](50) NULL,
	[plz] [varchar](50) NULL,
	[ort] [varchar](50) NULL,
	[registriert] [bit] NULL,
	[infoerwuenscht] [bit] NULL,
	[anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_dew21_teilnehmer_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dew21_teilnehmer_bilderwettbewerb]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_teilnehmer_bilderwettbewerb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[anzeigname] [varchar](50) NULL,
	[bildname] [varchar](50) NULL,
	[voting] [int] NULL,
	[registriert] [bit] NULL,
	[infoerwuenscht] [bit] NULL,
	[anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_dew21_teilnehmer_bilderwettbewerb_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dew21_teilnehmer_bilderwettbewerbdummy]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dew21_teilnehmer_bilderwettbewerbdummy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anrede] [varchar](50) NULL,
	[vorname] [varchar](50) NULL,
	[nachname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[anzeigname] [varchar](50) NULL,
	[bildname] [varchar](50) NULL,
	[voting] [int] NULL,
	[registriert] [bit] NULL,
	[infoerwuenscht] [bit] NULL,
	[anmeldezeitpunkt] [varchar](50) NULL,
 CONSTRAINT [PK_dew21_teilnehmer_bilderwettbewerbdummy_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Ausgabe_nach_Veranstaltung]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ausgabe_nach_Veranstaltung]
AS
SELECT     Veranstaltung, COUNT(id) * 80 AS Ausgabe
FROM         dbo.dew21_gluecksnummern_ausgabe
WHERE     (Veranstaltung IS NOT NULL)
GROUP BY Veranstaltung
GO
/****** Object:  View [dbo].[Ruecklauf_nach_Veranstaltung]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ruecklauf_nach_Veranstaltung]
AS
SELECT     dbo.dew21_gluecksnummern_ausgabe.Veranstaltung, COUNT(dbo.dew21_gluecksnummern.id) AS Ruecklauf
FROM         dbo.dew21_gluecksnummern INNER JOIN
                      dbo.dew21_gluecksnummern_ausgabe ON dbo.dew21_gluecksnummern.Paketnummer = dbo.dew21_gluecksnummern_ausgabe.Paketnummer
WHERE     (dbo.dew21_gluecksnummern.eingeloest = 1)
GROUP BY dbo.dew21_gluecksnummern_ausgabe.Veranstaltung
GO
/****** Object:  View [dbo].[Gluecksnummernauswertung]    Script Date: 06.07.2018 11:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gluecksnummernauswertung]
AS
SELECT     dbo.Ausgabe_nach_Veranstaltung.Veranstaltung, dbo.Ausgabe_nach_Veranstaltung.Ausgabe, dbo.Ruecklauf_nach_Veranstaltung.Ruecklauf
FROM         dbo.Ausgabe_nach_Veranstaltung INNER JOIN
                      dbo.Ruecklauf_nach_Veranstaltung ON dbo.Ausgabe_nach_Veranstaltung.Veranstaltung = dbo.Ruecklauf_nach_Veranstaltung.Veranstaltung
GROUP BY dbo.Ausgabe_nach_Veranstaltung.Veranstaltung, dbo.Ausgabe_nach_Veranstaltung.Ausgabe, dbo.Ruecklauf_nach_Veranstaltung.Ruecklauf
GO
ALTER TABLE [dbo].[dew21_gluecksnummern] ADD  CONSTRAINT [DF_dew21_gluecksnummern_eingeloest]  DEFAULT ((0)) FOR [eingeloest]
GO
ALTER TABLE [dbo].[dew21_gluecksnummern_ausgabe] ADD  CONSTRAINT [DF_dew21_gluecksnummern_ausgabe_Paketnummer]  DEFAULT ((0)) FOR [Paketnummer]
GO
ALTER TABLE [dbo].[dew21_gluecksnummern_ausgabe] ADD  CONSTRAINT [DF_dew21_gluecksnummern_ausgabe_ausgegeben]  DEFAULT ((0)) FOR [ausgegeben]
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
         Begin Table = "dew21_gluecksnummern_ausgabe"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 215
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ausgabe_nach_Veranstaltung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ausgabe_nach_Veranstaltung'
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
         Begin Table = "Ausgabe_nach_Veranstaltung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 91
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ruecklauf_nach_Veranstaltung"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 91
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gluecksnummernauswertung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gluecksnummernauswertung'
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
         Begin Table = "dew21_gluecksnummern"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 220
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dew21_gluecksnummern_ausgabe"
            Begin Extent = 
               Top = 6
               Left = 230
               Bottom = 223
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ruecklauf_nach_Veranstaltung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ruecklauf_nach_Veranstaltung'
GO
USE [master]
GO
ALTER DATABASE [testdbdew21] SET  READ_WRITE 
GO
