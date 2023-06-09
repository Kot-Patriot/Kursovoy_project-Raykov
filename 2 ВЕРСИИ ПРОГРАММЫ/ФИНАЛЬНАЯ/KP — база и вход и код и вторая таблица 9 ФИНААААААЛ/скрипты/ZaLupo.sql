USE [master]
GO
/****** Object:  Database [JakJak]    Script Date: 06.04.2023 10:23:13 ******/
CREATE DATABASE [JakJak]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JakJak', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JakJak.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JakJak_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JakJak_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JakJak] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JakJak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JakJak] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JakJak] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JakJak] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JakJak] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JakJak] SET ARITHABORT OFF 
GO
ALTER DATABASE [JakJak] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JakJak] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JakJak] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JakJak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JakJak] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JakJak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JakJak] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JakJak] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JakJak] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JakJak] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JakJak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JakJak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JakJak] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JakJak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JakJak] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JakJak] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JakJak] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JakJak] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JakJak] SET  MULTI_USER 
GO
ALTER DATABASE [JakJak] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JakJak] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JakJak] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JakJak] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JakJak] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JakJak] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [JakJak] SET QUERY_STORE = OFF
GO
USE [JakJak]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Reg number] [varchar](max) NOT NULL,
	[FIO] [varchar](max) NOT NULL,
	[Adress] [varchar](max) NOT NULL,
	[Telephone] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc](
	[Code of doc] [varchar](max) NOT NULL,
	[FIO] [varchar](max) NOT NULL,
	[Specialization] [varchar](max) NOT NULL,
	[Date of birt] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Help Pac]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Help Pac](
	[Number of course] [varchar](max) NOT NULL,
	[About] [varchar](max) NOT NULL,
	[Reg number] [varchar](max) NOT NULL,
	[Date of birt] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine card]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine card](
	[Reg number] [varchar](max) NOT NULL,
	[FIO] [varchar](max) NOT NULL,
	[Date of birt] [varchar](max) NOT NULL,
	[Adress] [varchar](max) NOT NULL,
	[Group of blood] [varchar](max) NOT NULL,
	[[Medicine poli] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Othchet]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Othchet](
	[Reg number] [varchar](max) NULL,
	[Date] [varchar](max) NOT NULL,
	[FIO of pacient] [varchar](max) NOT NULL,
	[About help] [varchar](max) NOT NULL,
	[Dop about] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacient]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacient](
	[Reg number] [varchar](max) NOT NULL,
	[FIO] [varchar](max) NOT NULL,
	[Date of bir] [datetime2](7) NOT NULL,
	[Adress] [varchar](max) NOT NULL,
	[Telephone] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reception]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reception](
	[Number of reception] [varchar](max) NOT NULL,
	[Reg number] [varchar](max) NOT NULL,
	[Date and time of reception] [varchar](max) NOT NULL,
	[Direction] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker of reg]    Script Date: 06.04.2023 10:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker of reg](
	[Reg number] [varchar](max) NOT NULL,
	[FIO] [varchar](max) NOT NULL,
	[Date of birt] [varchar](max) NOT NULL,
	[Adress] [varchar](max) NULL,
	[Telephone] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [JakJak] SET  READ_WRITE 
GO
