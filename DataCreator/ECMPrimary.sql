--USE [Primary_User]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/18/2013 21:22:42 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Language__Id__08EA5793]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Language] DROP CONSTRAINT [DF__Language__Id__08EA5793]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Language]') AND type in (N'U'))
DROP TABLE [dbo].[Language]
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 10/18/2013 21:22:42 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Membership__Id__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Membership] DROP CONSTRAINT [DF__Membership__Id__060DEAE8]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Membership]') AND type in (N'U'))
DROP TABLE [dbo].[Membership]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 10/18/2013 21:22:42 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__UserGroup__Id__03317E3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserGroup] DROP CONSTRAINT [DF__UserGroup__Id__03317E3D]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserGroup]') AND type in (N'U'))
DROP TABLE [dbo].[UserGroup]
GO
/****** Object:  Table [dbo].[UserPrimary]    Script Date: 10/18/2013 21:22:42 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__UserPrimary__Id__7F60ED59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserPrimary] DROP CONSTRAINT [DF__UserPrimary__Id__7F60ED59]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_UserPrimary_IsAdmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserPrimary] DROP CONSTRAINT [DF_UserPrimary_IsAdmin]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPrimary]') AND type in (N'U'))
DROP TABLE [dbo].[UserPrimary]
GO
/****** Object:  Table [dbo].[UserPrimary]    Script Date: 10/18/2013 21:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPrimary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserPrimary](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[FullName] [nvarchar](250) NULL,
	[ArchiveConnectionString] [varchar](500) NULL,
	[CaptureConnectionString] [varchar](500) NULL,
	[IsAdmin] [bit] NOT NULL CONSTRAINT [DF_UserPrimary_IsAdmin]  DEFAULT ((0)),
	[Photo] [varbinary](max) NULL,
	[Type] [int] NOT NULL,
	[LanguageId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UserPrimary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 10/18/2013 21:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserGroup](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [varchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 10/18/2013 21:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Membership](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[UserGroupID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Membership] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/18/2013 21:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Language]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Language](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newsequentialid()),
	[Name] [nvarchar](50) NOT NULL,
	[Format] [varchar](50) NOT NULL,
	[DateFormat] [varchar](50) NULL,
	[TimeFormat] [varchar](50) NULL,
	[ThousandChar] [varchar](1) NULL,
	[DecimalChar] [varchar](1) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
