USE [master]
GO
/****** Object:  Database [gate_IT_Projekte]    Script Date: 06.07.2018 11:04:26 ******/
CREATE DATABASE [gate_IT_Projekte]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gate_IT_Projekte', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_IT_Projekte.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gate_IT_Projekte_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\gate_IT_Projekte_log.LDF' , SIZE = 3520KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gate_IT_Projekte] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gate_IT_Projekte].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gate_IT_Projekte] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET ARITHABORT OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [gate_IT_Projekte] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gate_IT_Projekte] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gate_IT_Projekte] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET  ENABLE_BROKER 
GO
ALTER DATABASE [gate_IT_Projekte] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gate_IT_Projekte] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gate_IT_Projekte] SET  MULTI_USER 
GO
ALTER DATABASE [gate_IT_Projekte] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gate_IT_Projekte] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gate_IT_Projekte] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gate_IT_Projekte] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gate_IT_Projekte] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gate_IT_Projekte]
GO
/****** Object:  User [gateProject]    Script Date: 06.07.2018 11:04:27 ******/
CREATE USER [gateProject] FOR LOGIN [gateProject] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [gateProject]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [gateProject]
GO
ALTER ROLE [db_datareader] ADD MEMBER [gateProject]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [gateProject]
GO
/****** Object:  Table [dbo].[CalendarExceptions]    Script Date: 06.07.2018 11:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarExceptions](
	[CalendarKey] [uniqueidentifier] NOT NULL,
	[ExceptionDate] [datetime] NOT NULL,
	[IsWorkingDay] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendars]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendars](
	[ItemKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NULL,
	[ItemText] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[InheritedCalendarKey] [uniqueidentifier] NULL,
	[IsResourceCalendar] [bit] NOT NULL,
	[IsTaskCalendar] [bit] NOT NULL,
	[HasWorkingHours] [bit] NOT NULL,
	[WorkMonday] [bit] NOT NULL,
	[WorkTuesday] [bit] NOT NULL,
	[WorkWednesday] [bit] NOT NULL,
	[WorkThursday] [bit] NOT NULL,
	[WorkFriday] [bit] NOT NULL,
	[WorkSaturday] [bit] NOT NULL,
	[WorkSunday] [bit] NOT NULL,
 CONSTRAINT [PK_Calendars] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalendarWorkingHours]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarWorkingHours](
	[CalendarKey] [uniqueidentifier] NOT NULL,
	[DayOfWeek] [tinyint] NOT NULL,
	[StartHour] [real] NOT NULL,
	[EndHour] [real] NOT NULL,
	[ExceptionDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[ItemKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NOT NULL,
	[ItemText] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[Visible] [bit] NOT NULL,
	[Properties] [xml] NULL,
	[FormatStyle] [xml] NULL,
	[ParentItemKey] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ItemKey] [uniqueidentifier] NOT NULL,
	[ItemText] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[Properties] [xml] NULL,
	[Granularity] [smallint] NOT NULL,
	[MinMaxLinesVisible] [bit] NOT NULL,
	[MinMaxLineStyle] [xml] NOT NULL,
	[TodayLineVisible] [bit] NOT NULL,
	[TodayLineStyle] [xml] NOT NULL,
	[ShowWeekends] [bit] NOT NULL,
	[WeekendFormatStyle] [xml] NOT NULL,
	[ShowWorkingHours] [bit] NOT NULL,
	[ShowWeeks] [bit] NOT NULL,
	[GridLines] [bit] NOT NULL,
	[GridLineStyle] [xml] NOT NULL,
	[DefaultBarFormatStyle] [xml] NOT NULL,
	[DefaultGroupLineStyle] [xml] NOT NULL,
	[ResourceBarStyle] [xml] NOT NULL,
	[RelationLineStyle] [xml] NOT NULL,
	[RelationLineArrowWidth] [int] NOT NULL,
	[ShowCriticalPath] [bit] NOT NULL,
	[CriticalPathLineStyle] [xml] NOT NULL,
	[BarTooltips] [tinyint] NOT NULL,
	[ItemTextDisplay] [tinyint] NOT NULL,
	[BarStyle] [tinyint] NOT NULL,
	[BarHeight] [int] NOT NULL,
	[RowHeight] [int] NOT NULL,
	[PercentBarDeflateX] [int] NOT NULL,
	[PercentBarDeflateY] [int] NOT NULL,
	[RandomBarColors] [bit] NOT NULL,
	[ResourceBarStyleMode] [tinyint] NOT NULL,
	[ResourceViewFilter] [tinyint] NOT NULL,
	[ResourceStandardColor] [xml] NOT NULL,
	[ResourceOverloadColor] [xml] NOT NULL,
	[ResourceUnderloadColor] [xml] NOT NULL,
	[ShowIcons] [bit] NOT NULL,
	[ShowPriorityIcons] [bit] NOT NULL,
	[ShowStatusIcons] [bit] NOT NULL,
	[ShowOverDueIcon] [bit] NOT NULL,
	[ShowHappinessIcon] [bit] NOT NULL,
	[ShowAlignmentIcon] [bit] NOT NULL,
	[ShowCustomIcons] [bit] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[DefaultTaskType] [tinyint] NOT NULL,
	[DefaultDurationType] [tinyint] NOT NULL,
	[NewTaskCount] [int] NOT NULL,
	[ColorCyclerCurrentIndex] [int] NOT NULL,
	[ScrollOffsetY] [int] NOT NULL,
	[ResourceBarColorTolerance] [real] NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourceAllocations]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceAllocations](
	[ResourceKey] [uniqueidentifier] NOT NULL,
	[TaskKey] [uniqueidentifier] NOT NULL,
	[TaskCalendarKey] [uniqueidentifier] NULL,
	[TaskCalendarCombinationMode] [tinyint] NOT NULL,
	[ProjectKey] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Unit] [float] NOT NULL,
	[TaskText] [nvarchar](255) NULL,
	[ProjectText] [nvarchar](255) NULL,
 CONSTRAINT [PK_ResourceAllocations] PRIMARY KEY CLUSTERED 
(
	[ResourceKey] ASC,
	[TaskKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourceRelations]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceRelations](
	[TaskKey] [uniqueidentifier] NOT NULL,
	[ResourceKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NOT NULL,
	[Unit] [float] NOT NULL,
	[ProposedUnit] [float] NOT NULL,
	[Responsible] [bit] NOT NULL,
 CONSTRAINT [PK_Task2Resource] PRIMARY KEY CLUSTERED 
(
	[TaskKey] ASC,
	[ResourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resources](
	[ItemKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NULL,
	[ItemText] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[Visible] [bit] NOT NULL,
	[Properties] [xml] NULL,
	[ResourceType] [tinyint] NOT NULL,
	[Role] [nvarchar](255) NULL,
	[CostPerDay] [money] NULL,
	[CalendarKey] [uniqueidentifier] NULL,
	[ProjectCalendarCombinationMode] [tinyint] NOT NULL,
	[TaskCalendarCombinationMode] [tinyint] NOT NULL,
 CONSTRAINT [PK_Resources] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourceSkills]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceSkills](
	[ResourceKey] [uniqueidentifier] NOT NULL,
	[SkillKey] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ResourceSkills] PRIMARY KEY CLUSTERED 
(
	[ResourceKey] ASC,
	[SkillKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 06.07.2018 11:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[ItemKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NULL,
	[ItemText] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[Productivity] [float] NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskRelations]    Script Date: 06.07.2018 11:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskRelations](
	[TaskKey] [uniqueidentifier] NOT NULL,
	[DependingTaskKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NOT NULL,
	[DelayDays] [float] NOT NULL,
	[DelayDurationType] [tinyint] NOT NULL,
	[TaskRelationMode] [tinyint] NOT NULL,
	[TaskRelationType] [tinyint] NOT NULL,
 CONSTRAINT [PK_Task2Task] PRIMARY KEY CLUSTERED 
(
	[TaskKey] ASC,
	[DependingTaskKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 06.07.2018 11:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[ItemKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NOT NULL,
	[ItemText] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[Visible] [bit] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Properties] [xml] NULL,
	[FormatStyle] [xml] NULL,
	[ParentItemKey] [uniqueidentifier] NULL,
	[PercentDone] [real] NULL,
	[EarliestStartDate] [datetime] NULL,
	[LatestStartDate] [datetime] NULL,
	[EarliestEndDate] [datetime] NULL,
	[LatestEndDate] [datetime] NULL,
	[StartDateRule] [tinyint] NOT NULL,
	[EndDateRule] [tinyint] NOT NULL,
	[IsMilestone] [bit] NOT NULL,
	[Priority] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[TaskType] [tinyint] NOT NULL,
	[Estimated] [bit] NOT NULL,
	[DurationType] [tinyint] NOT NULL,
	[DurationDays] [float] NOT NULL,
	[CalendarKey] [uniqueidentifier] NULL,
	[ProjectCalendarCombinationMode] [tinyint] NOT NULL,
	[ASAP] [bit] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkPreferredResources]    Script Date: 06.07.2018 11:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPreferredResources](
	[WorkKey] [uniqueidentifier] NOT NULL,
	[ResourceKey] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_WorkPreferredResources] PRIMARY KEY CLUSTERED 
(
	[WorkKey] ASC,
	[ResourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Works]    Script Date: 06.07.2018 11:04:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Works](
	[ItemKey] [uniqueidentifier] NOT NULL,
	[TaskKey] [uniqueidentifier] NOT NULL,
	[ProjectKey] [uniqueidentifier] NOT NULL,
	[ItemText] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[WorkHours] [float] NOT NULL,
	[ProposedWorkHours] [float] NOT NULL,
	[SkillKey] [uniqueidentifier] NULL,
	[MaxEntities] [int] NOT NULL,
 CONSTRAINT [PK_Works] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_CalendarExceptions]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_CalendarExceptions] ON [dbo].[CalendarExceptions]
(
	[CalendarKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Calendars]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Calendars] ON [dbo].[Calendars]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CalendarWorkingHours]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_CalendarWorkingHours] ON [dbo].[CalendarWorkingHours]
(
	[CalendarKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Groups]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Groups] ON [dbo].[Groups]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResourceAllocations]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_ResourceAllocations] ON [dbo].[ResourceAllocations]
(
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResourceAllocations_1]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_ResourceAllocations_1] ON [dbo].[ResourceAllocations]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResourceAllocations_2]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_ResourceAllocations_2] ON [dbo].[ResourceAllocations]
(
	[TaskKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Task2Resource]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Task2Resource] ON [dbo].[ResourceRelations]
(
	[ResourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Task2Resource_1]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Task2Resource_1] ON [dbo].[ResourceRelations]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Resources]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Resources] ON [dbo].[Resources]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Skills]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Skills] ON [dbo].[Skills]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Task2Task]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Task2Task] ON [dbo].[TaskRelations]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks] ON [dbo].[Tasks]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkPreferredResources]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_WorkPreferredResources] ON [dbo].[WorkPreferredResources]
(
	[ResourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Works]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Works] ON [dbo].[Works]
(
	[TaskKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Works_1]    Script Date: 06.07.2018 11:04:29 ******/
CREATE NONCLUSTERED INDEX [IX_Works_1] ON [dbo].[Works]
(
	[ProjectKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalendarExceptions] ADD  CONSTRAINT [DF_CalendarExceptions_IsWorkingDay]  DEFAULT ((0)) FOR [IsWorkingDay]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_IsResourceCalendar]  DEFAULT ((0)) FOR [IsResourceCalendar]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_IsTaskCalendar]  DEFAULT ((0)) FOR [IsTaskCalendar]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_InheritedWorkingDays]  DEFAULT ((0)) FOR [HasWorkingHours]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_WorkMonday]  DEFAULT ((0)) FOR [WorkMonday]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_WorkTuesday]  DEFAULT ((0)) FOR [WorkTuesday]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_WorkWednesday]  DEFAULT ((0)) FOR [WorkWednesday]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_WorkThursday]  DEFAULT ((0)) FOR [WorkThursday]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_WorkFriday]  DEFAULT ((0)) FOR [WorkFriday]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_WorkSaturday]  DEFAULT ((0)) FOR [WorkSaturday]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_WorkSunday]  DEFAULT ((0)) FOR [WorkSunday]
GO
ALTER TABLE [dbo].[Groups] ADD  CONSTRAINT [DF_Groups_Visible]  DEFAULT ((1)) FOR [Visible]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_MinMaxLinesVisible]  DEFAULT ((1)) FOR [MinMaxLinesVisible]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_TodayLineVisible]  DEFAULT ((1)) FOR [TodayLineVisible]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowWeekends]  DEFAULT ((1)) FOR [ShowWeekends]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowWorkingHours]  DEFAULT ((1)) FOR [ShowWorkingHours]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowWeeks]  DEFAULT ((1)) FOR [ShowWeeks]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_GridLines]  DEFAULT ((0)) FOR [GridLines]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowCriticalPath]  DEFAULT ((1)) FOR [ShowCriticalPath]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_RandomBarColors]  DEFAULT ((1)) FOR [RandomBarColors]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowIcons]  DEFAULT ((0)) FOR [ShowIcons]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowPriorityIcons]  DEFAULT ((0)) FOR [ShowPriorityIcons]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowStatusIcons]  DEFAULT ((0)) FOR [ShowStatusIcons]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowOverDueIcon]  DEFAULT ((0)) FOR [ShowOverDueIcon]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowHappinessIcon]  DEFAULT ((0)) FOR [ShowHappinessIcon]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowAlignmentIcon]  DEFAULT ((0)) FOR [ShowAlignmentIcon]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ShowCustomIcons]  DEFAULT ((0)) FOR [ShowCustomIcons]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_NewTaskCount]  DEFAULT ((0)) FOR [NewTaskCount]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ColorCyclerCurrentIndex]  DEFAULT ((0)) FOR [ColorCyclerCurrentIndex]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ScrollOffsetY]  DEFAULT ((0)) FOR [ScrollOffsetY]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF_Projects_ResourceBarColorTolerance]  DEFAULT ((0.1)) FOR [ResourceBarColorTolerance]
GO
ALTER TABLE [dbo].[ResourceRelations] ADD  CONSTRAINT [DF_ResourceRelations_Unit]  DEFAULT ((1.0)) FOR [Unit]
GO
ALTER TABLE [dbo].[ResourceRelations] ADD  CONSTRAINT [DF_ResourceRelations_ProposedUnit]  DEFAULT ((-1.0)) FOR [ProposedUnit]
GO
ALTER TABLE [dbo].[ResourceRelations] ADD  CONSTRAINT [DF_Task2Resource_Responsible]  DEFAULT ((0)) FOR [Responsible]
GO
ALTER TABLE [dbo].[Resources] ADD  CONSTRAINT [DF_Resources_Visible]  DEFAULT ((1)) FOR [Visible]
GO
ALTER TABLE [dbo].[Skills] ADD  CONSTRAINT [DF_Skills_Productivity]  DEFAULT ((1.0)) FOR [Productivity]
GO
ALTER TABLE [dbo].[TaskRelations] ADD  CONSTRAINT [DF_TaskRelations_DelayDays]  DEFAULT ((0)) FOR [DelayDays]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_Visible]  DEFAULT ((1)) FOR [Visible]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_IsMilestone]  DEFAULT ((0)) FOR [IsMilestone]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_Estimated]  DEFAULT ((0)) FOR [Estimated]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_DurationDays]  DEFAULT ((0)) FOR [DurationDays]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_ASAP]  DEFAULT ((0)) FOR [ASAP]
GO
ALTER TABLE [dbo].[Works] ADD  CONSTRAINT [DF_Works_WorkHours]  DEFAULT ((0)) FOR [WorkHours]
GO
ALTER TABLE [dbo].[Works] ADD  CONSTRAINT [DF_Works_ProposedWorkHours]  DEFAULT ((-1.0)) FOR [ProposedWorkHours]
GO
ALTER TABLE [dbo].[Works] ADD  CONSTRAINT [DF_Works_MaxEntities]  DEFAULT ((0)) FOR [MaxEntities]
GO
ALTER TABLE [dbo].[CalendarExceptions]  WITH NOCHECK ADD  CONSTRAINT [FK_CalendarExceptions_Calendars1] FOREIGN KEY([CalendarKey])
REFERENCES [dbo].[Calendars] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalendarExceptions] CHECK CONSTRAINT [FK_CalendarExceptions_Calendars1]
GO
ALTER TABLE [dbo].[Calendars]  WITH NOCHECK ADD  CONSTRAINT [FK_Calendars_Projects] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Projects] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Calendars] NOCHECK CONSTRAINT [FK_Calendars_Projects]
GO
ALTER TABLE [dbo].[CalendarWorkingHours]  WITH NOCHECK ADD  CONSTRAINT [FK_CalendarWorkingHours_Calendars1] FOREIGN KEY([CalendarKey])
REFERENCES [dbo].[Calendars] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalendarWorkingHours] CHECK CONSTRAINT [FK_CalendarWorkingHours_Calendars1]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Projects] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Projects] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Projects]
GO
ALTER TABLE [dbo].[ResourceAllocations]  WITH CHECK ADD  CONSTRAINT [FK_ResourceAllocations_Projects] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Projects] ([ItemKey])
GO
ALTER TABLE [dbo].[ResourceAllocations] CHECK CONSTRAINT [FK_ResourceAllocations_Projects]
GO
ALTER TABLE [dbo].[ResourceAllocations]  WITH CHECK ADD  CONSTRAINT [FK_ResourceAllocations_Resources] FOREIGN KEY([ResourceKey])
REFERENCES [dbo].[Resources] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceAllocations] CHECK CONSTRAINT [FK_ResourceAllocations_Resources]
GO
ALTER TABLE [dbo].[ResourceAllocations]  WITH CHECK ADD  CONSTRAINT [FK_ResourceAllocations_Tasks] FOREIGN KEY([TaskKey])
REFERENCES [dbo].[Tasks] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceAllocations] CHECK CONSTRAINT [FK_ResourceAllocations_Tasks]
GO
ALTER TABLE [dbo].[ResourceRelations]  WITH CHECK ADD  CONSTRAINT [FK_ResourceRelations_Resources] FOREIGN KEY([ResourceKey])
REFERENCES [dbo].[Resources] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceRelations] CHECK CONSTRAINT [FK_ResourceRelations_Resources]
GO
ALTER TABLE [dbo].[ResourceRelations]  WITH CHECK ADD  CONSTRAINT [FK_ResourceRelations_Tasks] FOREIGN KEY([TaskKey])
REFERENCES [dbo].[Tasks] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceRelations] CHECK CONSTRAINT [FK_ResourceRelations_Tasks]
GO
ALTER TABLE [dbo].[Resources]  WITH NOCHECK ADD  CONSTRAINT [FK_Resources_Projects] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Projects] ([ItemKey])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Projects]
GO
ALTER TABLE [dbo].[ResourceSkills]  WITH CHECK ADD  CONSTRAINT [FK_ResourceSkills_Resources] FOREIGN KEY([ResourceKey])
REFERENCES [dbo].[Resources] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceSkills] CHECK CONSTRAINT [FK_ResourceSkills_Resources]
GO
ALTER TABLE [dbo].[ResourceSkills]  WITH CHECK ADD  CONSTRAINT [FK_ResourceSkills_Skills] FOREIGN KEY([SkillKey])
REFERENCES [dbo].[Skills] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceSkills] CHECK CONSTRAINT [FK_ResourceSkills_Skills]
GO
ALTER TABLE [dbo].[Skills]  WITH CHECK ADD  CONSTRAINT [FK_Skills_Projects] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Projects] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Skills] CHECK CONSTRAINT [FK_Skills_Projects]
GO
ALTER TABLE [dbo].[TaskRelations]  WITH CHECK ADD  CONSTRAINT [FK_TaskRelations_Tasks] FOREIGN KEY([TaskKey])
REFERENCES [dbo].[Tasks] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaskRelations] CHECK CONSTRAINT [FK_TaskRelations_Tasks]
GO
ALTER TABLE [dbo].[TaskRelations]  WITH NOCHECK ADD  CONSTRAINT [FK_TaskRelations_Tasks1] FOREIGN KEY([DependingTaskKey])
REFERENCES [dbo].[Tasks] ([ItemKey])
GO
ALTER TABLE [dbo].[TaskRelations] NOCHECK CONSTRAINT [FK_TaskRelations_Tasks1]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Projects] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Projects] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Projects]
GO
ALTER TABLE [dbo].[WorkPreferredResources]  WITH CHECK ADD  CONSTRAINT [FK_WorkPreferredResources_Resources] FOREIGN KEY([ResourceKey])
REFERENCES [dbo].[Resources] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkPreferredResources] CHECK CONSTRAINT [FK_WorkPreferredResources_Resources]
GO
ALTER TABLE [dbo].[WorkPreferredResources]  WITH CHECK ADD  CONSTRAINT [FK_WorkPreferredResources_Works] FOREIGN KEY([WorkKey])
REFERENCES [dbo].[Works] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkPreferredResources] CHECK CONSTRAINT [FK_WorkPreferredResources_Works]
GO
ALTER TABLE [dbo].[Works]  WITH CHECK ADD  CONSTRAINT [FK_Works_Projects] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Projects] ([ItemKey])
GO
ALTER TABLE [dbo].[Works] CHECK CONSTRAINT [FK_Works_Projects]
GO
ALTER TABLE [dbo].[Works]  WITH CHECK ADD  CONSTRAINT [FK_Works_Skills] FOREIGN KEY([SkillKey])
REFERENCES [dbo].[Skills] ([ItemKey])
GO
ALTER TABLE [dbo].[Works] CHECK CONSTRAINT [FK_Works_Skills]
GO
ALTER TABLE [dbo].[Works]  WITH CHECK ADD  CONSTRAINT [FK_Works_Tasks] FOREIGN KEY([TaskKey])
REFERENCES [dbo].[Tasks] ([ItemKey])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Works] CHECK CONSTRAINT [FK_Works_Tasks]
GO
ALTER TABLE [dbo].[TaskRelations]  WITH CHECK ADD  CONSTRAINT [CK_TaskRelations] CHECK  (([TaskKey]<>[DependingTaskKey]))
GO
ALTER TABLE [dbo].[TaskRelations] CHECK CONSTRAINT [CK_TaskRelations]
GO
USE [master]
GO
ALTER DATABASE [gate_IT_Projekte] SET  READ_WRITE 
GO
