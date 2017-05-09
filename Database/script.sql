USE [master]
GO
/****** Object:  Database [TimeKeeping]    Script Date: 3/12/2017 7:37:39 PM ******/
CREATE DATABASE [TimeKeeping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TImeKeeping', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TImeKeeping.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TImeKeeping_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TImeKeeping_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TimeKeeping] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimeKeeping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimeKeeping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimeKeeping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimeKeeping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimeKeeping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimeKeeping] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimeKeeping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TimeKeeping] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TimeKeeping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimeKeeping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimeKeeping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimeKeeping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimeKeeping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimeKeeping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimeKeeping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimeKeeping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimeKeeping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TimeKeeping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimeKeeping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimeKeeping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimeKeeping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimeKeeping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimeKeeping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimeKeeping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimeKeeping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TimeKeeping] SET  MULTI_USER 
GO
ALTER DATABASE [TimeKeeping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimeKeeping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimeKeeping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimeKeeping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TimeKeeping]
GO
/****** Object:  Table [dbo].[tb_Admin]    Script Date: 3/12/2017 7:37:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idQuyen] [int] NULL,
	[taiKhoan] [varchar](50) NULL,
	[matKhau] [varchar](50) NULL,
	[ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Ca]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Ca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenCa] [nvarchar](50) NULL,
	[timeBD] [time](7) NULL,
	[timeKT] [time](7) NULL,
 CONSTRAINT [PK_tb_Ca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ChamCong]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ChamCong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNV] [int] NULL,
	[thang] [int] NULL,
	[nam] [int] NULL,
	[1] [varchar](50) NULL,
	[2] [varchar](50) NULL,
	[3] [varchar](50) NULL,
	[4] [varchar](50) NULL,
	[5] [varchar](50) NULL,
	[6] [varchar](50) NULL,
	[7] [varchar](50) NULL,
	[8] [varchar](50) NULL,
	[9] [varchar](50) NULL,
	[10] [varchar](50) NULL,
	[11] [varchar](50) NULL,
	[12] [varchar](50) NULL,
	[13] [varchar](50) NULL,
	[14] [varchar](50) NULL,
	[15] [varchar](50) NULL,
	[16] [varchar](50) NULL,
	[17] [varchar](50) NULL,
	[18] [varchar](50) NULL,
	[19] [varchar](50) NULL,
	[20] [varchar](50) NULL,
	[21] [varchar](50) NULL,
	[22] [varchar](50) NULL,
	[23] [varchar](50) NULL,
	[24] [varchar](50) NULL,
	[25] [varchar](50) NULL,
	[26] [varchar](50) NULL,
	[27] [varchar](50) NULL,
	[28] [varchar](50) NULL,
	[29] [varchar](50) NULL,
	[30] [varchar](50) NULL,
	[31] [varchar](50) NULL,
 CONSTRAINT [PK_tb_ChamCong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_ChucVu]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChucVu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[moTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_ChucVu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Luong]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Luong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idChucVu] [int] NULL,
	[luongCB] [real] NULL,
	[hesoLuong] [real] NOT NULL,
 CONSTRAINT [PK_tb_Luong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ho] [nvarchar](50) NULL,
	[ten] [nvarchar](50) NULL,
	[idChucVu] [int] NULL,
	[idNhom] [int] NULL,
	[ca] [varchar](50) NULL,
	[ngayVaoLam] [date] NULL,
	[taiKhoan] [varchar](50) NULL,
	[matKhau] [varchar](50) NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Nhom]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Nhom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenNhom] [nvarchar](200) NULL,
	[idPhong] [int] NULL,
 CONSTRAINT [PK_tb_Nhom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Phong]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenPhong] [nvarchar](200) NULL,
 CONSTRAINT [PK_tb_Phong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Quyen]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Quyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Quyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_TraLuong]    Script Date: 3/12/2017 7:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TraLuong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNV] [int] NULL,
	[thang] [int] NULL,
	[nam] [int] NULL,
	[tongLuong] [real] NULL,
	[bonus] [real] NULL,
	[daTra] [bit] NULL,
 CONSTRAINT [PK_tb_TraLuong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tb_Admin]  WITH CHECK ADD  CONSTRAINT [FK_tb_Admin_tb_Quyen] FOREIGN KEY([idQuyen])
REFERENCES [dbo].[tb_Quyen] ([id])
GO
ALTER TABLE [dbo].[tb_Admin] CHECK CONSTRAINT [FK_tb_Admin_tb_Quyen]
GO
ALTER TABLE [dbo].[tb_ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_tb_ChamCong_tb_NhanVien] FOREIGN KEY([idNV])
REFERENCES [dbo].[tb_NhanVien] ([id])
GO
ALTER TABLE [dbo].[tb_ChamCong] CHECK CONSTRAINT [FK_tb_ChamCong_tb_NhanVien]
GO
ALTER TABLE [dbo].[tb_Luong]  WITH CHECK ADD  CONSTRAINT [FK_tb_Luong_tb_ChucVu] FOREIGN KEY([idChucVu])
REFERENCES [dbo].[tb_ChucVu] ([id])
GO
ALTER TABLE [dbo].[tb_Luong] CHECK CONSTRAINT [FK_tb_Luong_tb_ChucVu]
GO
ALTER TABLE [dbo].[tb_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tb_NhanVien_tb_ChucVu] FOREIGN KEY([idChucVu])
REFERENCES [dbo].[tb_ChucVu] ([id])
GO
ALTER TABLE [dbo].[tb_NhanVien] CHECK CONSTRAINT [FK_tb_NhanVien_tb_ChucVu]
GO
ALTER TABLE [dbo].[tb_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tb_NhanVien_tb_Nhom] FOREIGN KEY([idNhom])
REFERENCES [dbo].[tb_Nhom] ([id])
GO
ALTER TABLE [dbo].[tb_NhanVien] CHECK CONSTRAINT [FK_tb_NhanVien_tb_Nhom]
GO
ALTER TABLE [dbo].[tb_Nhom]  WITH CHECK ADD  CONSTRAINT [FK_tb_Nhom_tb_Phong] FOREIGN KEY([idPhong])
REFERENCES [dbo].[tb_Phong] ([id])
GO
ALTER TABLE [dbo].[tb_Nhom] CHECK CONSTRAINT [FK_tb_Nhom_tb_Phong]
GO
ALTER TABLE [dbo].[tb_TraLuong]  WITH CHECK ADD  CONSTRAINT [FK_tb_TraLuong_tb_NhanVien] FOREIGN KEY([idNV])
REFERENCES [dbo].[tb_NhanVien] ([id])
GO
ALTER TABLE [dbo].[tb_TraLuong] CHECK CONSTRAINT [FK_tb_TraLuong_tb_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [TimeKeeping] SET  READ_WRITE 
GO
