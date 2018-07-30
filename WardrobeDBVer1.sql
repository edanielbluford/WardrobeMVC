USE [master]
GO
/****** Object:  Database [WardrobeDBV1]    Script Date: 7/29/2018 7:15:00 PM ******/
CREATE DATABASE [WardrobeDBV1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDBV1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDBV1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDBV1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDBV1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDBV1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDBV1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDBV1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDBV1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDBV1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDBV1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDBV1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDBV1] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDBV1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDBV1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDBV1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDBV1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDBV1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDBV1]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/29/2018 7:15:00 PM ******/
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
/****** Object:  Table [dbo].[Accessories]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/29/2018 7:15:00 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/29/2018 7:15:00 PM ******/
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [int] NULL,
	[Type] [nchar](10) NULL,
	[Season] [nchar](10) NULL,
	[Occasion] [nchar](10) NULL,
	[TopID] [int] NULL,
	[BottomID] [int] NULL,
	[ShoesID] [int] NULL,
	[AcccessoryID] [int] NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 7/29/2018 7:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Photo] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201807271515386_InitialCreate', N'WardrobeMVCVer1.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC2E52276983E6867576DBB7052DD18EB012A595A83441D12FEB433FA9BFD0A144DD78D1C5566C67B1C0C222876786C321391C0EF3DF3FFF8EDF3EFA9EF180A3D80DC8C43C18ED9B062676E0B864393113BAF8FE8DF9F6A7AFBF1A9F39FEA3F121A73B6274D092C413F39ED2F0D8B262FB1EFB281EF9AE1D0571B0A0233BF02DE404D6E1FEFE8FD6C1818501C2042CC318BF4B08757D9C7EC0E73420360E6982BCABC0C15ECCCBA16696A21AD7C8C771886C3C317F47911305737CF5610AE21C8CB216A671E2B908A499616F611A889080220AB21EBF8FF18C460159CE422840DEDD5388816E81BC18F33E1C97E45DBBB37FC8BA63950D73283B8969E0F7043C38E2FAB1C4E62B69D92CF4071A3C034DD327D6EB548B13F3C2C169D1BBC00305880C8FA75EC48827E655C1E2240EAF311DE50D4719E47904707F06D1A7511571CFE8DC6EAFB0A7C3D13EFBB7674C138F26119E109CD008797BC66D32F75CFB37FC74177CC2647274305F1CBD79F51A3947AF7FC047AFAA3D85BE025DAD008A6EA320C411C8861745FF4DC3AAB7B3C48645B34A9B4C2B604B30354CE30A3D5E62B2A4F730690EDF98C6B9FB889DBC841BD77BE2C24C8246344AE0F33AF13C34F770516F35F264FF37703D7CF57A10AED7E8C15DA6432FF0878913C1BC7A87BDB436BE77C36C7AD5C6FB23273B8F029F7DD7ED2BABFD380B92C8669D09B42477285A625A976E6C95C6DBC9A419D4F0669DA3EEBE69334965F35692B20EAD321372169B9E0DB9BCCFCBB7B3C59D84210C5E6A5A4C234D06A7DEB04602C29E21D0952674D0D5840874ED4B5E11CF7CE47A032C891DB88047B270231F17BDFC39000344A4B7CCB7288E6145707E45F17D83E8F07300D167D84E2230D419457EF8ECDC6EEF0382AF137FCEEC7F73BC061B9ABB3F837364D3203A23ACD5DA789781FD2948E819714E11C5EFA99D03B2CF3BD7EF0E30883827B68DE3F81C8C193BD3001CEE1CF082D0A3C3DE706C91DAB64B32F590EBAB7D126139FD9893967E899A42F24D34642AFFA449D4CB60E9926EA2E6A47A51338A565139595F511958374939A55ED094A055CE8C6A308F2F1DA1E15DBE1476F77DBEF5366FDD5A5051E30C5648FC0B26388265CCB94594E2889423D065DDD886B3900E1F63FAEC7B53CAE903F292A159AD341BD24560F8D990C2EEFE6C48C584E207D7615E498783504E0CF09DE8D567ACF6392748B6E9E950EBE6A6996F660DD04D9793380E6C379D058A10180F60D4E5071FCE688F6664BD112322D0313074976D7950027D3345A3BA21A7D8C3141B277616229CA2D8468EAC46E890D343B07C475508564646EAC27D27F1044BC7116B84D821288699EA122A4F0B97D86E88BC562D092D3B6E61ACEF050FB1E61487983086AD9AE8C25C1D086102147C844169D3D0D8AA585CB3216ABC56DD98B7B9B0E5B84BF1898DD8648BEFACB14BEEBF3D8B61366B6C03C6D9AC922E0268837ADB30507E56E96A00E2C165D70C543831690C94BB541B31D0BAC6B660A07595BC3803CD8EA85DC75F38AFEE9A79D60FCA9BDFD61BD5B505DBACE963C74C33F33DA10D85163892CDF374CE2AF123551CCE404E7E3E8BB9AB2B9A08039F615A0FD994FEAED20FB59A4144236A022C0DAD05945F074A40D284EA215C1ECB6B948E7B113D60F3B85B232C5FFB05D88A0DC8D8D56BD10AA1FEF25434CE4EA78FA26785354846DEE9B050C1511884B878D53BDE4129BAB8ACAC982EBE701F6FB8D2313E180D0A6AF15C354ACA3B33B89672D36CD792CA21EBE392ADA525C17DD26829EFCCE05AE236DAAE248553D0C32D584B45F52D7CA0C996473A8ADDA6A81B5B59C6142F185B9AD4AAF1150A43972C2BA956BCC498657956D3EF67FD938FFC0CC3B263450E52216DC18906115A62A1165883A4E76E14D35344D11CB138CFD4F12532E5DEAA59FE7396D5ED531EC47C1FC8A9D9EFAC85E612BFB6DFCA0E09C739875EFACCAB4943E90A1B50373758FA1BF250A488DE4F032FF189DEC9D2B7CEEEF0AAEDB31219616C09F24B4E94A431C9D5ADABBFD3E0C81363C0812AFC98D5074B0FA15379EE855695AEF34CF52879A0AA8AA20B5E6D6DF0740E4DEF0113FDC5FEE3D58AF03CF38B27A9540178514F8C4A9E830456A9EB8E5A4F45A962D66BBA230AF9265548A1AA8794D5AC929A90D58A95F0341A555374E720E79154D1E5DAEEC88A8C922AB4A27A056C85CC625D775445D249155851DD1DBBCC401117D21DDEC1B4A798B5B6B0ECB0BBDE1EA6C1789E5571982DB072A75F05AA14F7C4E2B7F612182FDF498BD29EF8D6B2A82CCEB19E456930F42B50ED46BCBE00355EE3EB316BD7DCB545BEE99A5F8FD7CF6E9FD53AA4439F4852702F0E7FC2216FCC0F5CED8F6CA4135846621AB91A61837F8A29F6478C6034FBEC4D3D17B3E53C27B842C45DE09866A91DE6E1FEC1A1F0466777DECB5871EC788A03ABEED14C7DCC3690A5451E5064DFA348CE9958E34D49092A85A32F88831F27E65F69ABE334B2C17EA5C57BC645FC9EB89F13A8B88B126CFC2DE7800E9363DFE1554721E8DF2FE2B94477955FFCF1316BBA67DC44309D8E8D7D41D1AB0C7FFD11452F69B2A66B48B3F2D38A973BDB6AEF1594A8C26C59FD79C2DCA5833C4DC8A5FCC6478FDFF6154DF9FC602D44C51383A1F00651A1EE09C12A58DAE7030E7CD2F4F940BFCEAA9F13AC229AF629814BFA83890F09BA2F4379CB2DEE438A43D32696A454CFAD89D86B65656E7B6F92F2B5D79AE8724E760FB841F3AED773515E583EF3605BA7225D7930EC6DDAFDB3E728EF4A5A72E9B46F371B799309C80D974B5F54DEF10E64CA29327FB69F5DBC695BD34581773C45B35F0EF18E191BDFE6B79F29BC6963D3058877DCD87AE503EF98AD6D6BFFDCB2A575DE42B79EDD2B272A696E735451E4B6ECDD2CE40EC7FF790046907994D9A34B75BA5853AA6B0BC39244CF549FA7263296268EC457A26866DBAFAF7CC36FEC2CA76966ABC9EE6CE2CDD7FF46DE9CA699B72667721B79C7CAAC45552E78CB3AD6944AF592F28C6B3D69496B6FF3591BAFE65F525AF1204AA9CD1ECDEDF2CBC9221E4425434E9D1E59C3F24531EC9D95BFD908FB77EC2E4B08F6171C09B66BBB664173411641BE790B12E5244284E60A53E4C0967A125177816C0AD52C009DBE1A4F837AEC1A648E9D0B7293D030A1D065ECCFBD5AC08B39014DFCD3D4E8BACCE39B907DC5437401C47459E0FE86FC9CB89E53C87DAE880969209877C1C3BD6C2C290BFB2E9F0AA4EB807404E2EA2B9CA23BEC871E80C53764861EF02AB281F95DE225B29FCA08A00EA47D20EA6A1F9FBA6819213FE618657BF8041B76FCC79FFE075AC65B15BA540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1c7d7ca9-9c6b-466c-b7b1-a9c05ee1ce5d', N'ernest@done.com', 0, N'AAA48tHaoMy4t00f2hUV2kMiybc6Xspw/V4by7HVE/2TdSYxDcrPpMam+K/z9bWE6Q==', N'99f9410b-984d-42f9-8689-94f1fa530dd1', NULL, 0, 0, NULL, 1, 0, N'ernest@done.com')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/29/2018 7:15:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/29/2018 7:15:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/29/2018 7:15:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/29/2018 7:15:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/29/2018 7:15:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/29/2018 7:15:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AcccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDBV1] SET  READ_WRITE 
GO
