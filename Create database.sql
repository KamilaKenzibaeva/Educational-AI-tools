USE [master]
GO
/****** Object:  Database [AI_Tools_Education]    Script Date: 5/16/2024 8:04:17 PM ******/
CREATE DATABASE [AI_Tools_Education]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AI_Tools_Education', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AI_Tools_Education.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AI_Tools_Education_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AI_Tools_Education_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AI_Tools_Education] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AI_Tools_Education].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AI_Tools_Education] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET ARITHABORT OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AI_Tools_Education] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AI_Tools_Education] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AI_Tools_Education] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AI_Tools_Education] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AI_Tools_Education] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AI_Tools_Education] SET  MULTI_USER 
GO
ALTER DATABASE [AI_Tools_Education] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AI_Tools_Education] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AI_Tools_Educations] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AI_Tools_Education] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AI_Tools_Education] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AI_Tools_Education] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AI_Tools_Education] SET QUERY_STORE = OFF
GO
USE [AI_Tools_Education]
GO
/****** Object:  Table [dbo].[Addition functions]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addition functions](
	[ID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL
 CONSTRAINT [PK_Addition functions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functions]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functions](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platforms]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platforms](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Platforms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ID_Price] [int] NULL,
	[ID_Function] [int] NULL,
	[ID_Addition_functions] [int] NULL,
	[Focus_on_Education] [nchar](10) NULL,
	[ID_Protection] [int] NULL,
	[ID_Company] [int] NOT NULL,
	[ID_Category] [int] NULL,
	[Website] [nvarchar](255) NULL,
	[ID_Review] [int] NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools price]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools price](
	[ID] [int] NOT NULL,
	[Free_version_available] [nchar](10) NULL,
	[Price_per_user_year] [decimal](18, 0) NULL,
	[Price_Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tools price] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools protection]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools protection](
	[ID] [int] NOT NULL,
	[Does_it_promise_Tools_protection_of_user_data] [nchar](10) NULL,
	[Data_used_for_company] [nchar](10) NULL,
	[Transferred_for_third_party] [nchar](10) NULL,
	[Details_on_data_protection] [nvarchar](max) NULL,
	[Data_protection_link] [nvarchar](255) NULL,
 CONSTRAINT [PK_Tools protection] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools Review]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools Review](
	[ID] [int] NOT NULL,
	[Review_score] [decimal](18, 0) NULL,
	[Number_of_reviewers] [decimal](18, 0) NULL,
	[Review_link] [nvarchar](255) NULL,
 CONSTRAINT [PK_Company Review] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools_Platforms]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Tools_Platforms
	(
	ID_tools int NOT NULL,
	ID_Platform int NOT NULL
	PRIMARY KEY (ID_tools, ID_Platform),
	FOREIGN KEY (ID_tools) REFERENCES dbo.Tools(ID),
    FOREIGN KEY (ID_Platform) REFERENCES dbo.Platforms(ID)
	);

CREATE TABLE [dbo].[Traning](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Traning] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
/****** Object:  Table [dbo].[Tools_Traning]    Script Date: 5/16/2024 8:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE  dbo.Tools_Traning
	(
	ID_tools int NOT NULL,
	ID_Traning int NOT NULL
	PRIMARY KEY (ID_tools, ID_Traning),
	FOREIGN KEY (ID_tools) REFERENCES dbo.Tools(ID),
    FOREIGN KEY (ID_Traning) REFERENCES dbo.Traning(ID)
	);

ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Addition_functions] FOREIGN KEY([ID_Addition_functions])
REFERENCES [dbo].[Addition functions] ([ID])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Function]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Category1] FOREIGN KEY([ID_Category])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Category1]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Company] FOREIGN KEY([ID_Company])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Company]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Company Review] FOREIGN KEY([ID_Review])
REFERENCES [dbo].[Tools Review] ([ID])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Company Review]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Function] FOREIGN KEY([ID_Function])
REFERENCES [dbo].[Functions] ([ID])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Function]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Tools price] FOREIGN KEY([ID_Price])
REFERENCES [dbo].[Tools price] ([ID])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Tools price]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Tools protection] FOREIGN KEY([ID_Protection])
REFERENCES [dbo].[Tools protection] ([ID])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Tools protection]
GO
ALTER TABLE [dbo].[Tools_Platforms]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Platforms_Platforms] FOREIGN KEY([ID_Platform])
REFERENCES [dbo].[Platforms] ([ID])
GO
ALTER TABLE [dbo].[Tools_Platforms] CHECK CONSTRAINT [FK_Tools_Platforms_Platforms]
GO
ALTER TABLE [dbo].[Tools_Platforms]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Platforms_Tools] FOREIGN KEY([ID_tools])
REFERENCES [dbo].[Tools] ([ID])
GO
ALTER TABLE [dbo].[Tools_Platforms] CHECK CONSTRAINT [FK_Tools_Platforms_Tools]
GO
ALTER TABLE [dbo].[Tools_Traning]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Traning_Tools] FOREIGN KEY([ID_tools])
REFERENCES [dbo].[Tools] ([ID])
GO
ALTER TABLE [dbo].[Tools_Traning] CHECK CONSTRAINT [FK_Tools_Traning_Tools]
GO
ALTER TABLE [dbo].[Tools_Traning]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Traning_Traning] FOREIGN KEY([ID_Traning])
REFERENCES [dbo].[Traning] ([ID])
GO
ALTER TABLE [dbo].[Tools_Traning] CHECK CONSTRAINT [FK_Tools_Traning_Traning]
GO
USE [master]
GO

