USE [master]
GO
/****** Object:  Database [TruongMamNon]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE DATABASE [TruongMamNon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TruongMamNon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TruongMamNon.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TruongMamNon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TruongMamNon_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TruongMamNon] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TruongMamNon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TruongMamNon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TruongMamNon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TruongMamNon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TruongMamNon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TruongMamNon] SET ARITHABORT OFF 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TruongMamNon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TruongMamNon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TruongMamNon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TruongMamNon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TruongMamNon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TruongMamNon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TruongMamNon] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TruongMamNon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TruongMamNon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TruongMamNon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TruongMamNon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TruongMamNon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TruongMamNon] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TruongMamNon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TruongMamNon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TruongMamNon] SET  MULTI_USER 
GO
ALTER DATABASE [TruongMamNon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TruongMamNon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TruongMamNon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TruongMamNon] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TruongMamNon] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TruongMamNon]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[RoleId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[img] [nvarchar](256) NULL,
	[Deleted] [bit] NOT NULL CONSTRAINT [DF_AspNetUsers_Deleted]  DEFAULT ((0)),
	[HoTen] [nvarchar](256) NULL,
	[NamSinh] [nchar](10) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C__MigrationHistory]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_C__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DangKyDichVu]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyDichVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaPhuHuynh] [nvarchar](128) NOT NULL,
	[NguoiThu] [nvarchar](128) NULL,
	[ThoiGianDK] [datetime] NOT NULL,
	[MaDichVu] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[ThoiGianThu] [datetime] NULL,
	[TrangThai] [bit] NOT NULL CONSTRAINT [DF_DangKyDichVu_TrangThai]  DEFAULT ((0)),
 CONSTRAINT [PK_DangKyDichVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](max) NULL,
	[MaLoaiDV] [int] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [float] NOT NULL,
	[TrangThai] [bit] NOT NULL CONSTRAINT [DF_DichVu_TrangThai]  DEFAULT ((1)),
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiemDanhGiaoViens]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanhGiaoViens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_GiaoVien] [nvarchar](128) NULL,
	[ThoiGian] [datetime] NOT NULL,
 CONSTRAINT [PK_DiemDanhGiaoViens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiemDanhHocSinhs]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanhHocSinhs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_HocSinh] [int] NULL,
	[ThoiGian] [datetime] NOT NULL,
	[NguoiDuaDon] [nvarchar](200) NULL,
	[DenVe] [nvarchar](10) NULL,
	[Id_NguoiDiemDanh] [nvarchar](128) NULL,
 CONSTRAINT [PK_DiemDanhHocSinhs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoVien_Lops]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien_Lops](
	[Id_GiaoVien] [nvarchar](128) NOT NULL,
	[Lop] [int] NOT NULL,
	[TrangThai] [nvarchar](20) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_GiaoVien_Lops] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoViens]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoViens](
	[Id] [nvarchar](128) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[img] [nvarchar](255) NULL,
	[QueQuan] [nvarchar](255) NULL,
	[DanToc] [nvarchar](20) NULL,
	[TonGiao] [nvarchar](20) NULL,
	[HKTT] [nvarchar](255) NULL,
	[SDT] [nchar](10) NULL,
	[ChuyenNganh] [nvarchar](100) NULL,
	[TrinhDo] [nvarchar](20) NULL,
	[TrinhTrangCongTac] [nvarchar](20) NULL,
	[HonNhan] [nvarchar](20) NULL,
	[SucKhoe] [nvarchar](20) NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](20) NULL,
 CONSTRAINT [PK_GiaoViens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocSinhs]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinhs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[BiDanh] [nvarchar](255) NULL,
	[DanToc] [nvarchar](255) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[img] [nvarchar](255) NULL,
	[NgayTao] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[LopHoc] [int] NOT NULL,
	[TrangThai] [nvarchar](20) NULL,
	[HKTT] [nvarchar](200) NULL,
 CONSTRAINT [PK_HocSinhs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDV]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDV](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDV] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiDV] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lop] [nvarchar](50) NOT NULL,
	[MaNhom] [int] NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhomTuoi]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomTuoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhomTuoi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuHuynh_HocSinh]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuHuynh_HocSinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_PhuHuynh] [nvarchar](128) NOT NULL,
	[Id_HocSinh] [int] NULL,
	[QuanHe] [nvarchar](30) NULL,
 CONSTRAINT [PK_PhuHuynh_HocSinh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuHuynhs]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuHuynhs](
	[HoTen] [nvarchar](255) NULL,
	[SDT] [nchar](10) NULL,
	[NamSinh] [nchar](10) NULL,
	[NoiCongTac] [nvarchar](255) NULL,
	[NgayTao] [datetime] NOT NULL,
	[Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_PhuHuynhs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 7/3/2020 3:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenThucDon] [nvarchar](100) NULL,
	[MoTa] [nvarchar](max) NULL,
	[TrangThai] [bit] NOT NULL CONSTRAINT [DF_ThucDon_TrangThai]  DEFAULT ((1)),
	[MaNhom] [int] NULL,
 CONSTRAINT [PK_ThucDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202004130218007_InitialCreate', N'IdentitySample.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2DBB61323BE65DA33C8DB802DB1DBC2489456A2BC36827C591EF249F9851425EAC29B2EDD72777BB1C0625A244F158B8764B158F4FFFEF3DFE94F2F61603DE324F52372661F4D0E6D0B1337F27CB23AB333BAFCE193FDD38FBFFFDDF4D20B5FACAF65BD13560F5A92F4CC7EA2343E759CD47DC2214A27A1EF26511A2DE9C48D42077991737C78F817E7E8C8C100610396654D3F6784FA21CE7FC0CF59445C1CD30C05B7918783947F8792798E6ADDA110A73172F1997DED61684B5FE7288C033C291AD8D679E02350668E83A56D2142228A28A87AFA25C5739A4464358FE1030A1E5F630CF596284831EFC2695DBD6F6F0E8F596F9CBA6109E566298DC281804727DC3C8EDC7C2D23DB95F9C08097B9B158AF7323D6F6FB1C05600059E0E92C4858E533FBB612719EC677984ECA869302F22A01B85FA3E4FBA4897860F56E7750D1E97872C8FE3BB0665940B3049F119CD1040507D643B6087CF7EFF8F531FA8EC9D9C9D16279F2E9C347E49D7CFC333EF9D0EC29F415EA091FE0D34312C53801DDF0B2EABF6D39623B476E58356BB429AC025C8299615BB7E8E50693157D823973FCC9B6AEFC17EC955F38B9BE101F261234A249063FEFB220408B0057E54EAB4CF6FF16A9C71F3E8E22F50E3DFBAB7CE825F930711298579F719097A64F7E5C4C2F61BCBFF16A574914B2DF22BF8AD26FF3284B5CD699C858E511252B4C45EDA64E4DDE5E946650E3D3BA44DD7F6A334D557A6BABB20EAD33134A11DB9E0DA5BE6F2BB737E3CEE318062FA716B3481BE1B4FBD5440238B0FE912172F30A1BE1EAAB8FDD9A40477D0944A063BFE5F5F032447E30C282D8430A8CC2D24F425CF5F2E708E887C8609D1F509AC27AE0FD0DA54F2DAAC33F47507D8EDD2C6144A3C0B43797F6F014117C97850BC6FEEDC91A6D681E7F8DAE904BA3E492B0561BE3DD44EEF728A397C4BB40147FA16E09C87E3EFA617F8051D439775D9CA6574066ECCD22F0B64BC06B424F8E07C3B1356AD70EC92C407EA8F748A4D5F45B59B5F64AF43514CFC4504DE79DB4A97A13AD7CD24FD5B2AA59D5A246A7AABCDA505519583F4D794DB3A279854E3D8B5AA3F97BF9088DEFF0E5B0FBEFF16DB6799BD6828619E7B042E2BF62821358C6BC0744294E483D027DD68D5D380BF9F031A16FBE37E592BEA2201B5BD45AB3215F04C69F0D39ECFECF865C4DF8FCEC7BCC2BE9710C2A2B037CAFFAFA1356F79C9334DBF67410BAB96DE1DB59034CD3E53C4D23D7CF67812600C6C317A2FEE0C359DDB18CA237723C043A0644F7D996075FA06FB64CAA7B7281034CB175EE1601C2194A5DE4A966840E7903142B77548D62755C4454EE4F8A4C603A4E5823C40E4129CC549F50755AF8C4F56314745A496AD9730B637DAF64C8251738C68409ECB4441FE1FA300853A092230D4A9785A64E8371ED443478ADA631EF7261EB7157A2135BE16487EF6CE025F7DFDE8498ED16DB0239DB4DD2470163486F1704E56795BE04900F2EFB4650E9C464202877A9B64250D1623B20A868927747D0E288DA77FCA5F3EABED1533C286F7F5B6F35D70EB829D863CFA859F89ED086420B9CA8F4BC58B042FC42358733D0939FCF52EEEACA14C9EF0F30154336B5BFABF5439D761099446D8035D13A40F965A002A44CA801CA95B1BC56EDB8173100B68CBBB5C2F2B55F826D7040C56E5E8A362A9AAF4E6572F63A7D543DABD8A090BCD761A181A32184BC78891DEF6114535C56354C1F5F788837DCE8181F8C16037578AE0623959D19DD4A2535BBADA473C886B8641B5949729F0C562A3B33BA953847BB8DA4710A06B8051B9948DCC2479A6C65A4A3DA6DAAB2A953A44BF10F53C7905735BD4571EC935523CF8A7FB1E64592D5EC87F9F0D4A3B0C070DC54938154695B49A2518256582A05D1A0E9959FA4F40251B4402CCE33F342A59A766F352CFFA5C8E6F6A90E62B90F94B5D9BFC5B55DBCC217B65BD51FE13057D0C990393579245D43017D738BA5BEA100259AE0FD2C0AB290987D2C73EBE20AAFD9BEF8A2224C1D497FC587520CA678BAA2F57B8D8D3A2FC61BA7CA8B597FACCC10268B973E68D3E626BFD48C5286A99A28A6D0D5CEC6CEE4CE0C1D2FD9591C3E5C9D086F33BB78864A13807F1A88D1487250C01A65FD51C53C9426A658D21F514A3669424A4503B46CA694084A360BD6C23358545FA3BF043589A489AE96F647D6A49334A135C56B606B7496CBFAA36A324E9AC09AE2FED875FA89BC8EEEF1FE653CC26CB2811507DDCD763003C6DB2C8AE36C808DFBFC2650E3F3402C7E63AF80F1EF7B4928E3696F134215218ECD0865C030AF3FC265B8B8FCB4DEE09B31851B6E61896FBBE137E30DA3ED9B924339EFC9552AE9D5B94F3ADF4DF959ABFB718D72F82AAAD8566946D8DE5F538AC309AB3099FF12CC021FB3C5BCAC708B88BFC4292DB23AECE3C3A363E971CEFE3C9471D2D40B346755D36B1971CCB690A0459E51E23EA1444D97D8E031490DAA44A2AF89875FCEEC7FE5AD4EF3A006FB57FEF9C0BA4EBF10FF970C0A1E930C5BFF56D33FC749AE6F3F6DEDE95388FE56BDFEE7B7A2E981759FC08C39B50E255BAE33C2E2038941DA144D37D066ED6713EF774209AF11B4A8D28458FFF1C1C2A7A33C3C28B5FC43885EFE385435EDE3828D10350F08C6C21BC584A60702EB60191F0778F093E68F03867556FF58601DD58C0F057C321C4C7E26D07F192A5BEE70ABD11C8BB6B124E576EE4CB3DE28E772D77B93928DBDD1445733AE07C06D9055BD0633DE5942F268BBA326DF7834EC5D52FBCD938CF725AFB8CEF8D86D3AF13633885BEE877E5389C37B90EAA649DDD97D7AF0B6B9660AE5EE798EE5B024E03D231B4FE8DA7DAAEFB6C9660AF3EE39D90625F4EE19D776B57FEE9869BDB7D09DA7E7AA9946862B195D2CB82BFDB6089CC3097F1101090A8FB27835A9CFF73209ABC962145857310B35279AC9829589A3C8556AB48B1DD657BEE1B77696D769176B48CF6C93CDD7FF56D9BC4EBB6C43D2E32E1287B56987BA64EE8E75AC2D1BEA3D250A0B3DE9C84BEFF2595BEFD7DF535EF0284611668FE18EF8FDA4018F629231A7CE80B45FF5BA17F6CEC65F5C84FD3BF5573504FBFB8B04BBC2AE59D5B926CBA8DCBC258DCA2A5284E61653E4C1967A9E507F895C0AC52CC69C3FFBCEE376ECA66381BD6B729FD138A3D0651C2E0221E0C59C8036F9796EB3A8F3F43ECEFF82C9185D00357D169BBF273F677EE0557A5F6962420608E65DF0882E1B4BCA22BBABD70AE92E223D81B8F92AA7E81187710060E93D99A367BC8E6E40BF1BBC42EE6B1D013481740F8468F6E9858F56090A538E51B7879FC0612F7CF9F1FF0AD86CF578540000, N'6.1.0-30225')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9fedaa46-de1f-45bb-97a7-7ad4abdf9a0d', N'Dinh dưỡng')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'17cfff7d-8105-4bb3-a709-809020368593', N'Giáo viên')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'6b09cee6-9e6a-4086-a0a5-cafb2b4aae95', N'Phụ huynh')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'18afa14b-6c57-4c21-9f6c-bdf13b90e3ff', N'Quản trị viên')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'409f4969-843e-4a30-9985-635496371d6e', N'Văn phòng')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'6b09cee6-9e6a-4086-a0a5-cafb2b4aae95', N'028b3f91-384c-4f63-9c1d-506744097dae')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'17cfff7d-8105-4bb3-a709-809020368593', N'4d16ae9e-d2a1-4e1a-8760-0a9c7dd9ef50')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'17cfff7d-8105-4bb3-a709-809020368593', N'51ca58ab-ff7b-48ec-aa0e-c6e6e986f672')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'6b09cee6-9e6a-4086-a0a5-cafb2b4aae95', N'86ae6f82-1e39-47b6-8cb1-2658f9a8c5be')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'17cfff7d-8105-4bb3-a709-809020368593', N'988af7d5-ff5b-45ec-a27b-f9e22990c11a')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'6b09cee6-9e6a-4086-a0a5-cafb2b4aae95', N'b9edeeab-a7b0-47ae-9dc4-11289ac1c7e1')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'17cfff7d-8105-4bb3-a709-809020368593', N'e00e19d1-e930-4728-93a8-e4802eed50d2')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'6b09cee6-9e6a-4086-a0a5-cafb2b4aae95', N'f4b51109-119f-44de-8dbe-962fbabdfbf3')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'17cfff7d-8105-4bb3-a709-809020368593', N'f6b66930-3c1a-49ea-ba25-157237c2dad9')
INSERT [dbo].[AspNetUserRoles] ([RoleId], [UserId]) VALUES (N'18afa14b-6c57-4c21-9f6c-bdf13b90e3ff', N'fc9fecc1-9034-48a2-b612-d70dab510e0b')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'028b3f91-384c-4f63-9c1d-506744097dae', N'ph3333@example.com', 0, N'ACSgD5fhOjv1hLoG9yl9aaR3qiKyzYphFpeshNS47cQRWOAViJhPMQ21KEU2KIqXNw==', N'99eb488e-d263-48e2-9343-1943a27e0803', N'0964684333', 0, 0, NULL, 1, 0, N'ph22333', NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'4d16ae9e-d2a1-4e1a-8760-0a9c7dd9ef50', N'haha222@gmail.com', 0, N'AJlwAIcKXYHlInvJ+qtYiL7DMtqkTI8BOi71YTgdHr20POsYUfzfufDXkyr7BRwLxw==', N'8d1e47f5-3437-4b64-82bd-23f71e8188d1', N'0964684222', 0, 0, NULL, 1, 0, N'gv12', N'avatar6.jpg', 0, N'giáo viên 122', N'2020      ')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'51ca58ab-ff7b-48ec-aa0e-c6e6e986f672', N'333333333@gmail.com', 0, N'AI54pL6q5IUc4RV4O6fFFtl9Z/4/O14wIR7syd6bse1MxNJU+cef/aDWM+8T/93F3A==', N'c88e92e2-921a-4845-aae3-ca2082ee4c8b', N'0964683333', 0, 0, NULL, 1, 0, N'gv13333', NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'86ae6f82-1e39-47b6-8cb1-2658f9a8c5be', N'admisacn@example.com', 0, N'AP8ZfrB1hm39ezAF+UXZihYzSV2ROa/stRsxxU52XLNgQw8a9R7iNGcdxjAMcGZ4FA==', N'09b4832b-d0a5-4b17-96f6-3be53c252614', N'09444444', 0, 0, NULL, 1, 0, N'pv01_daovanphu', NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'988af7d5-ff5b-45ec-a27b-f9e22990c11a', N'gv1@gmail.com', 0, N'ACdHTt46xADui22UD+vby3iZbI+2aSj2mLap6c8GYdLfC5CNQ1GNDgIXkgBLcZZqsg==', N'6b9f2165-1725-428d-b7d5-e539e91f277a', N'1', 0, 0, NULL, 1, 0, N'gv1', N'WIN_20200411_17_49_45_Pro.jpg', 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'b9edeeab-a7b0-47ae-9dc4-11289ac1c7e1', N'hahaỵ@gmail.com', 0, N'ACBhsEgaKcXQdVsjm/V0zFgqYdGsYpRsAAVX38aaD8sFwSUZm/CFUBiTs/9eorPZtA==', N'6d91a34e-c2ff-4e4b-ba06-3e6c0feace3b', N'0964686556', 0, 0, NULL, 1, 0, N'yhj', NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'e00e19d1-e930-4728-93a8-e4802eed50d2', N'2222@gmail.com', 0, N'AB+VascWM0CKWn4FYMOOsgMCLmVa3OoP2Y70d0ysXIqEqEgC7Ln8XjePCRIZ8Hd8xw==', N'a25c8a2b-ca8a-4f5b-86ae-15a227fca0a8', N'0964222222', 0, 0, NULL, 1, 0, N'gv22', NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'f4b51109-119f-44de-8dbe-962fbabdfbf3', N'haha@gmail.com', 0, N'ADUU/UgVEiqSTPrf3dwpY9tR788zwXkqNGY9tpUHq4d0eXSQ5p3LoNC4rktvnVGaCQ==', N'a4c52d77-403f-4454-8651-de38803841e5', N'0964684896', 0, 0, NULL, 1, 0, N'haha@gmail.com', N'Screenshot (16).png', 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'f6b66930-3c1a-49ea-ba25-157237c2dad9', N'a2222@gmail.com', 0, N'ACcM45n7Qhv9UG8xTuS+bi6RZSkAI4er0kXin59hNvJf7ZNB1j+QX3lTr11KYPNfEg==', N'aea4eac9-9fe1-413e-83aa-5d45a7010d90', N'0964684323', 0, 0, NULL, 1, 0, N'a2222', NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [img], [Deleted], [HoTen], [NamSinh]) VALUES (N'fc9fecc1-9034-48a2-b612-d70dab510e0b', N'admin@example.com', 1, N'AEnXqgkRImOJY3Qm6rDB2FRTTZ6pdhiNnGy3ve9hAw3ncvMepDxR/e37R3GJQCN88g==', N'796201d1-3c09-45a1-ba4f-f0605b6f6324', NULL, 0, 0, NULL, 1, 0, N'admin@example.com', N'WIN_20200411_17_49_45_Pro.jpg', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DangKyDichVu] ON 

INSERT [dbo].[DangKyDichVu] ([Id], [MaPhuHuynh], [NguoiThu], [ThoiGianDK], [MaDichVu], [GhiChu], [ThoiGianThu], [TrangThai]) VALUES (1, N'f4b51109-119f-44de-8dbe-962fbabdfbf3', N'fc9fecc1-9034-48a2-b612-d70dab510e0b', CAST(N'2020-06-22 20:40:45.597' AS DateTime), 1, NULL, CAST(N'2020-06-23 08:00:22.630' AS DateTime), 1)
INSERT [dbo].[DangKyDichVu] ([Id], [MaPhuHuynh], [NguoiThu], [ThoiGianDK], [MaDichVu], [GhiChu], [ThoiGianThu], [TrangThai]) VALUES (2, N'f4b51109-119f-44de-8dbe-962fbabdfbf3', N'fc9fecc1-9034-48a2-b612-d70dab510e0b', CAST(N'2020-06-23 07:59:06.037' AS DateTime), 2, NULL, CAST(N'2020-06-23 08:00:25.960' AS DateTime), 1)
INSERT [dbo].[DangKyDichVu] ([Id], [MaPhuHuynh], [NguoiThu], [ThoiGianDK], [MaDichVu], [GhiChu], [ThoiGianThu], [TrangThai]) VALUES (3, N'f4b51109-119f-44de-8dbe-962fbabdfbf3', N'fc9fecc1-9034-48a2-b612-d70dab510e0b', CAST(N'2020-06-23 07:59:11.443' AS DateTime), 3, NULL, CAST(N'2020-06-23 08:00:28.340' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DangKyDichVu] OFF
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MaLoaiDV], [MoTa], [Gia], [TrangThai]) VALUES (1, N'Học phí tháng 11', 1, N'<p><strong>&agrave; &aacute;klfh lb</strong></p>

<p><strong>&aacute;;fj &aacute;;f</strong></p>

<p>&nbsp;</p>

<p><strong>a sf</strong></p>

<p><strong>&agrave;g</strong></p>

<p><strong>&aacute;</strong></p>

<p><strong>g</strong></p>

<p>&nbsp;</p>
', 500, 1)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MaLoaiDV], [MoTa], [Gia], [TrangThai]) VALUES (2, N'ahlfháklpu9gpoho', 1, N'<p><em>E</em></p>

<p><u><em>Afba FHqăehcio</em></u></p>

<p><em>aG</em></p>

<p><s><em>&aacute;g</em></s></p>

<p><em>s</em></p>

<p><em>G</em></p>

<p>&nbsp;</p>
', 50022, 1)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MaLoaiDV], [MoTa], [Gia], [TrangThai]) VALUES (3, N'ahlfháklcâcsc', 1, N'<p>c&aacute;</p>
', 50033, 1)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [MaLoaiDV], [MoTa], [Gia], [TrangThai]) VALUES (5, N'285473000000000000000000000000000000', 1, N'<p>5343543</p>
', 3333, 1)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
SET IDENTITY_INSERT [dbo].[DiemDanhHocSinhs] ON 

INSERT [dbo].[DiemDanhHocSinhs] ([Id], [Id_HocSinh], [ThoiGian], [NguoiDuaDon], [DenVe], [Id_NguoiDiemDanh]) VALUES (1, 1, CAST(N'2020-04-13 11:45:00.000' AS DateTime), N'hahahah', N'Đưa đi', N'fc9fecc1-9034-48a2-b612-d70dab510e0b')
INSERT [dbo].[DiemDanhHocSinhs] ([Id], [Id_HocSinh], [ThoiGian], [NguoiDuaDon], [DenVe], [Id_NguoiDiemDanh]) VALUES (2, 1, CAST(N'2020-06-11 20:09:00.000' AS DateTime), N'hahahah', N'Đưa đi', N'988af7d5-ff5b-45ec-a27b-f9e22990c11a')
INSERT [dbo].[DiemDanhHocSinhs] ([Id], [Id_HocSinh], [ThoiGian], [NguoiDuaDon], [DenVe], [Id_NguoiDiemDanh]) VALUES (5, 1, CAST(N'2020-07-03 14:06:00.000' AS DateTime), N'', N'Đưa đi', N'988af7d5-ff5b-45ec-a27b-f9e22990c11a')
INSERT [dbo].[DiemDanhHocSinhs] ([Id], [Id_HocSinh], [ThoiGian], [NguoiDuaDon], [DenVe], [Id_NguoiDiemDanh]) VALUES (6, 1, CAST(N'2020-07-03 14:07:13.563' AS DateTime), N'', N'Đón về', N'988af7d5-ff5b-45ec-a27b-f9e22990c11a')
SET IDENTITY_INSERT [dbo].[DiemDanhHocSinhs] OFF
SET IDENTITY_INSERT [dbo].[GiaoVien_Lops] ON 

INSERT [dbo].[GiaoVien_Lops] ([Id_GiaoVien], [Lop], [TrangThai], [Id]) VALUES (N'988af7d5-ff5b-45ec-a27b-f9e22990c11a', 1, N'Đang phụ trách', 1)
INSERT [dbo].[GiaoVien_Lops] ([Id_GiaoVien], [Lop], [TrangThai], [Id]) VALUES (N'988af7d5-ff5b-45ec-a27b-f9e22990c11a', 4, N'Đang phụ trách', 2)
SET IDENTITY_INSERT [dbo].[GiaoVien_Lops] OFF
INSERT [dbo].[GiaoViens] ([Id], [HoTen], [img], [QueQuan], [DanToc], [TonGiao], [HKTT], [SDT], [ChuyenNganh], [TrinhDo], [TrinhTrangCongTac], [HonNhan], [SucKhoe], [NgayTao], [NgaySinh], [GioiTinh]) VALUES (N'4d16ae9e-d2a1-4e1a-8760-0a9c7dd9ef50', N'giáo viên 122', N'avatar6.jpg', NULL, NULL, NULL, NULL, N'0964684222', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-29 10:31:57.177' AS DateTime), CAST(N'2020-06-12 00:00:00.000' AS DateTime), N'Nữ')
INSERT [dbo].[GiaoViens] ([Id], [HoTen], [img], [QueQuan], [DanToc], [TonGiao], [HKTT], [SDT], [ChuyenNganh], [TrinhDo], [TrinhTrangCongTac], [HonNhan], [SucKhoe], [NgayTao], [NgaySinh], [GioiTinh]) VALUES (N'51ca58ab-ff7b-48ec-aa0e-c6e6e986f672', N'giáo viên 3333333', N'', NULL, NULL, NULL, NULL, N'0964683333', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-05-28 08:52:41.340' AS DateTime), CAST(N'2020-05-21 00:00:00.000' AS DateTime), N'Nữ')
INSERT [dbo].[GiaoViens] ([Id], [HoTen], [img], [QueQuan], [DanToc], [TonGiao], [HKTT], [SDT], [ChuyenNganh], [TrinhDo], [TrinhTrangCongTac], [HonNhan], [SucKhoe], [NgayTao], [NgaySinh], [GioiTinh]) VALUES (N'988af7d5-ff5b-45ec-a27b-f9e22990c11a', N'giáo viên 1', N'WIN_20200411_17_49_45_Pro.jpg', NULL, NULL, NULL, NULL, N'1         ', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-04-13 11:42:10.227' AS DateTime), CAST(N'1990-04-06 00:00:00.000' AS DateTime), N'Nữ')
INSERT [dbo].[GiaoViens] ([Id], [HoTen], [img], [QueQuan], [DanToc], [TonGiao], [HKTT], [SDT], [ChuyenNganh], [TrinhDo], [TrinhTrangCongTac], [HonNhan], [SucKhoe], [NgayTao], [NgaySinh], [GioiTinh]) VALUES (N'f6b66930-3c1a-49ea-ba25-157237c2dad9', N'giáo viên 222', N'', NULL, NULL, NULL, NULL, N'0964684323', NULL, NULL, NULL, NULL, NULL, CAST(N'2020-05-28 08:46:16.823' AS DateTime), CAST(N'2020-05-29 00:00:00.000' AS DateTime), N'Nữ')
SET IDENTITY_INSERT [dbo].[HocSinhs] ON 

INSERT [dbo].[HocSinhs] ([Id], [HoTen], [BiDanh], [DanToc], [NgaySinh], [img], [NgayTao], [GioiTinh], [LopHoc], [TrangThai], [HKTT]) VALUES (1, N'Học sinh 1', N'Hs1', N'Kinh', CAST(N'2020-06-10 00:00:00.000' AS DateTime), N'WIN_20200410_18_52_23_Pro.jpg', CAST(N'2020-04-13 11:45:17.560' AS DateTime), N'Nam', 1, NULL, NULL)
INSERT [dbo].[HocSinhs] ([Id], [HoTen], [BiDanh], [DanToc], [NgaySinh], [img], [NgayTao], [GioiTinh], [LopHoc], [TrangThai], [HKTT]) VALUES (4, N'Học sinh 2', N'Hs2', N'Kinh', CAST(N'2018-06-12 00:00:00.000' AS DateTime), N'avatar4.jpg', CAST(N'2020-06-25 08:05:27.937' AS DateTime), N'Nữ', 2, NULL, NULL)
INSERT [dbo].[HocSinhs] ([Id], [HoTen], [BiDanh], [DanToc], [NgaySinh], [img], [NgayTao], [GioiTinh], [LopHoc], [TrangThai], [HKTT]) VALUES (5, N'Học sinh 122', NULL, N'Kinh', CAST(N'2020-06-02 00:00:00.000' AS DateTime), N'avatar1.jpg', CAST(N'2020-06-29 10:34:38.737' AS DateTime), N'Nữ', 2, NULL, NULL)
INSERT [dbo].[HocSinhs] ([Id], [HoTen], [BiDanh], [DanToc], [NgaySinh], [img], [NgayTao], [GioiTinh], [LopHoc], [TrangThai], [HKTT]) VALUES (7, N'Học sinh 13', NULL, N'Kinh', CAST(N'2020-06-09 00:00:00.000' AS DateTime), N'avatar5.jpg', CAST(N'2020-06-29 10:38:37.343' AS DateTime), N'Nữ', 3, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HocSinhs] OFF
SET IDENTITY_INSERT [dbo].[LoaiDV] ON 

INSERT [dbo].[LoaiDV] ([Id], [TenLoaiDV], [MoTa]) VALUES (1, N'Học phí', NULL)
SET IDENTITY_INSERT [dbo].[LoaiDV] OFF
SET IDENTITY_INSERT [dbo].[Lop] ON 

INSERT [dbo].[Lop] ([Id], [Lop], [MaNhom]) VALUES (1, N'Mẫu giáo 2 tuổiii', 1)
INSERT [dbo].[Lop] ([Id], [Lop], [MaNhom]) VALUES (2, N'Mẫu giáo 3 tuổi', 1)
INSERT [dbo].[Lop] ([Id], [Lop], [MaNhom]) VALUES (3, N'Mẫu giáo 4 tuổi', 1)
INSERT [dbo].[Lop] ([Id], [Lop], [MaNhom]) VALUES (4, N'Mẫu giáo 5 tuổi', 1)
INSERT [dbo].[Lop] ([Id], [Lop], [MaNhom]) VALUES (10, N'Mẫu giáo 3 tuổi9999', 1)
SET IDENTITY_INSERT [dbo].[Lop] OFF
SET IDENTITY_INSERT [dbo].[NhomTuoi] ON 

INSERT [dbo].[NhomTuoi] ([Id], [TenNhom], [MoTa]) VALUES (1, N'Nhóm lớp 3 tuổi', NULL)
SET IDENTITY_INSERT [dbo].[NhomTuoi] OFF
SET IDENTITY_INSERT [dbo].[PhuHuynh_HocSinh] ON 

INSERT [dbo].[PhuHuynh_HocSinh] ([Id], [Id_PhuHuynh], [Id_HocSinh], [QuanHe]) VALUES (2, N'f4b51109-119f-44de-8dbe-962fbabdfbf3', 1, N'Bố học sinh')
INSERT [dbo].[PhuHuynh_HocSinh] ([Id], [Id_PhuHuynh], [Id_HocSinh], [QuanHe]) VALUES (3, N'028b3f91-384c-4f63-9c1d-506744097dae', 1, N'Mẹ học sinh')
INSERT [dbo].[PhuHuynh_HocSinh] ([Id], [Id_PhuHuynh], [Id_HocSinh], [QuanHe]) VALUES (4, N'028b3f91-384c-4f63-9c1d-506744097dae', 4, N'Mẹ học sinh')
INSERT [dbo].[PhuHuynh_HocSinh] ([Id], [Id_PhuHuynh], [Id_HocSinh], [QuanHe]) VALUES (5, N'f4b51109-119f-44de-8dbe-962fbabdfbf3', 5, N'Bố học sinh')
INSERT [dbo].[PhuHuynh_HocSinh] ([Id], [Id_PhuHuynh], [Id_HocSinh], [QuanHe]) VALUES (6, N'f4b51109-119f-44de-8dbe-962fbabdfbf3', 7, N'')
SET IDENTITY_INSERT [dbo].[PhuHuynh_HocSinh] OFF
INSERT [dbo].[PhuHuynhs] ([HoTen], [SDT], [NamSinh], [NoiCongTac], [NgayTao], [Id]) VALUES (N'phu huynh 33333', N'0964684333', N'2020      ', NULL, CAST(N'2020-05-28 08:54:26.653' AS DateTime), N'028b3f91-384c-4f63-9c1d-506744097dae')
INSERT [dbo].[PhuHuynhs] ([HoTen], [SDT], [NamSinh], [NoiCongTac], [NgayTao], [Id]) VALUES (N'haha', N'0964684896', N'1980      ', NULL, CAST(N'2020-04-14 16:11:02.820' AS DateTime), N'f4b51109-119f-44de-8dbe-962fbabdfbf3')
SET IDENTITY_INSERT [dbo].[ThucDon] ON 

INSERT [dbo].[ThucDon] ([Id], [TenThucDon], [MoTa], [TrangThai], [MaNhom]) VALUES (2, N'Thực đơn tuần 35', N'<table align="center" border="1" cellpadding="1" cellspacing="1" style="width:500px">
	<caption>Thực đơn tuần 35</caption>
	<tbody>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', 1, 1)
INSERT [dbo].[ThucDon] ([Id], [TenThucDon], [MoTa], [TrangThai], [MaNhom]) VALUES (3, N'Thực đơn tuần 34', N'<table align="center" border="1" cellpadding="1" cellspacing="1" style="width:500px">
	<caption><span style="font-size:28px"><strong>thực đơn</strong></span></caption>
	<tbody>
		<tr>
			<td>sc</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
		</tr>
		<tr>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
		</tr>
		<tr>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
			<td>s</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', 1, 1)
INSERT [dbo].[ThucDon] ([Id], [TenThucDon], [MoTa], [TrangThai], [MaNhom]) VALUES (4, N'ọmp''ư[hi;l', N'<table align="center" border="1" cellpadding="1" cellspacing="1" style="width:500px">
	<caption><strong><span style="font-size:26px">thực đơn</span></strong></caption>
	<tbody>
		<tr>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
		</tr>
		<tr>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', 1, 1)
INSERT [dbo].[ThucDon] ([Id], [TenThucDon], [MoTa], [TrangThai], [MaNhom]) VALUES (5, N'''1]\o]jư', N'<table align="center" border="1" cellpadding="1" cellspacing="1" style="width:500px">
	<caption><strong><span style="font-size:26px">thực đơn</span></strong></caption>
	<tbody>
		<tr>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
		</tr>
		<tr>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
			<td>2</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', 1, 1)
SET IDENTITY_INSERT [dbo].[ThucDon] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_AspNetUserRoles_AspNetUser]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_AspNetUserRoles_AspNetUser] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_DiemDanhGiaoVien_GiaoViens]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_DiemDanhGiaoVien_GiaoViens] ON [dbo].[DiemDanhGiaoViens]
(
	[Id_GiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_DiemDanhHocSinh_AspNetUsers]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_DiemDanhHocSinh_AspNetUsers] ON [dbo].[DiemDanhHocSinhs]
(
	[Id_NguoiDiemDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_DiemDanhHocSinh_HocSinhs]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_DiemDanhHocSinh_HocSinhs] ON [dbo].[DiemDanhHocSinhs]
(
	[Id_HocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_GiaoVien_Lops_GiaoViens]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_GiaoVien_Lops_GiaoViens] ON [dbo].[GiaoVien_Lops]
(
	[Id_GiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_GiaoViens_AspNetUsers]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_GiaoViens_AspNetUsers] ON [dbo].[GiaoViens]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PhuHuynh_HocSinh_HocSinhs]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PhuHuynh_HocSinh_HocSinhs] ON [dbo].[PhuHuynh_HocSinh]
(
	[Id_HocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_PhuHuynh_HocSinh_PhuHuynh]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PhuHuynh_HocSinh_PhuHuynh] ON [dbo].[PhuHuynh_HocSinh]
(
	[Id_PhuHuynh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FK_PhuHuynh_AspNetUsers]    Script Date: 7/3/2020 3:47:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PhuHuynh_AspNetUsers] ON [dbo].[PhuHuynhs]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRole]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUser]
GO
ALTER TABLE [dbo].[DangKyDichVu]  WITH CHECK ADD  CONSTRAINT [FK_DangKyDichVu_AspNetUsers] FOREIGN KEY([NguoiThu])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DangKyDichVu] CHECK CONSTRAINT [FK_DangKyDichVu_AspNetUsers]
GO
ALTER TABLE [dbo].[DangKyDichVu]  WITH CHECK ADD  CONSTRAINT [FK_DangKyDichVu_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([Id])
GO
ALTER TABLE [dbo].[DangKyDichVu] CHECK CONSTRAINT [FK_DangKyDichVu_DichVu]
GO
ALTER TABLE [dbo].[DangKyDichVu]  WITH CHECK ADD  CONSTRAINT [FK_DangKyDichVu_PhuHuynhs] FOREIGN KEY([MaPhuHuynh])
REFERENCES [dbo].[PhuHuynhs] ([Id])
GO
ALTER TABLE [dbo].[DangKyDichVu] CHECK CONSTRAINT [FK_DangKyDichVu_PhuHuynhs]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_LoaiDV] FOREIGN KEY([MaLoaiDV])
REFERENCES [dbo].[LoaiDV] ([Id])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [FK_DichVu_LoaiDV]
GO
ALTER TABLE [dbo].[DiemDanhGiaoViens]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanhGiaoViens_GiaoViens] FOREIGN KEY([Id_GiaoVien])
REFERENCES [dbo].[GiaoViens] ([Id])
GO
ALTER TABLE [dbo].[DiemDanhGiaoViens] CHECK CONSTRAINT [FK_DiemDanhGiaoViens_GiaoViens]
GO
ALTER TABLE [dbo].[DiemDanhHocSinhs]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanhHocSinh_AspNetUsers] FOREIGN KEY([Id_NguoiDiemDanh])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DiemDanhHocSinhs] CHECK CONSTRAINT [FK_DiemDanhHocSinh_AspNetUsers]
GO
ALTER TABLE [dbo].[DiemDanhHocSinhs]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanhHocSinh_HocSinhs] FOREIGN KEY([Id_HocSinh])
REFERENCES [dbo].[HocSinhs] ([Id])
GO
ALTER TABLE [dbo].[DiemDanhHocSinhs] CHECK CONSTRAINT [FK_DiemDanhHocSinh_HocSinhs]
GO
ALTER TABLE [dbo].[GiaoVien_Lops]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_Lops_GiaoViens] FOREIGN KEY([Id_GiaoVien])
REFERENCES [dbo].[GiaoViens] ([Id])
GO
ALTER TABLE [dbo].[GiaoVien_Lops] CHECK CONSTRAINT [FK_GiaoVien_Lops_GiaoViens]
GO
ALTER TABLE [dbo].[GiaoVien_Lops]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_Lops_Lop] FOREIGN KEY([Lop])
REFERENCES [dbo].[Lop] ([Id])
GO
ALTER TABLE [dbo].[GiaoVien_Lops] CHECK CONSTRAINT [FK_GiaoVien_Lops_Lop]
GO
ALTER TABLE [dbo].[GiaoViens]  WITH CHECK ADD  CONSTRAINT [FK_GiaoViens_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[GiaoViens] CHECK CONSTRAINT [FK_GiaoViens_AspNetUsers]
GO
ALTER TABLE [dbo].[HocSinhs]  WITH CHECK ADD  CONSTRAINT [FK_HocSinhs_Lop] FOREIGN KEY([LopHoc])
REFERENCES [dbo].[Lop] ([Id])
GO
ALTER TABLE [dbo].[HocSinhs] CHECK CONSTRAINT [FK_HocSinhs_Lop]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_NhomTuoi] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomTuoi] ([Id])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_NhomTuoi]
GO
ALTER TABLE [dbo].[PhuHuynh_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_PhuHuynh_HocSinh_HocSinhs] FOREIGN KEY([Id_HocSinh])
REFERENCES [dbo].[HocSinhs] ([Id])
GO
ALTER TABLE [dbo].[PhuHuynh_HocSinh] CHECK CONSTRAINT [FK_PhuHuynh_HocSinh_HocSinhs]
GO
ALTER TABLE [dbo].[PhuHuynh_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_PhuHuynh_HocSinh_PhuHuynhs] FOREIGN KEY([Id_PhuHuynh])
REFERENCES [dbo].[PhuHuynhs] ([Id])
GO
ALTER TABLE [dbo].[PhuHuynh_HocSinh] CHECK CONSTRAINT [FK_PhuHuynh_HocSinh_PhuHuynhs]
GO
ALTER TABLE [dbo].[PhuHuynhs]  WITH CHECK ADD  CONSTRAINT [FK_PhuHuynhs_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PhuHuynhs] CHECK CONSTRAINT [FK_PhuHuynhs_AspNetUsers]
GO
ALTER TABLE [dbo].[ThucDon]  WITH CHECK ADD  CONSTRAINT [FK_ThucDon_NhomTuoi] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomTuoi] ([Id])
GO
ALTER TABLE [dbo].[ThucDon] CHECK CONSTRAINT [FK_ThucDon_NhomTuoi]
GO
USE [master]
GO
ALTER DATABASE [TruongMamNon] SET  READ_WRITE 
GO
