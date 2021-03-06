USE [master]
GO
/****** Object:  Database [WardrobeMVC]    Script Date: 5/16/2017 12:49:12 AM ******/
CREATE DATABASE [WardrobeMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeMVC.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeMVC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeMVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeMVC] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeMVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeMVC]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](200) NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](200) NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Occasions]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Occasions](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[Occassion] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Occasions] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Season] [varchar](12) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](200) NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/16/2017 12:49:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](200) NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'Baseball Cap', N'~/Content/baseballcap.jpg', 19, 3, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Beach Bag', N'~/Content/beachbag.jpg', 15, 3, 2)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'Braided Leather Belt', N'~/Content/braidedleatherbelt.jpg', 16, 5, 2)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (5, N'Denim Baseball Hat', N'~/Content/denimbaseballhat.jpg', 12, 5, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (6, N'Fanny Pack', N'~/Content/fannypack.jpg', 10, 5, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (7, N'Floral Sun Hat', N'~/Content/floralsunhat.jpg', 15, 3, 2)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (8, N'Handbag', N'~/Content/handbag.jpg', 15, 5, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (9, N'Large Purse', N'~/Content/largesatchel.jpg', 16, 5, 4)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (10, N'Orchid Hat', N'~/Content/orchidhat.jpg', 11, 3, 5)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (11, N'Semi-shine  Belt', N'~/Content/semishinebelt.jpg', 10, 5, 4)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (12, N'Stretch Belt', N'~/Content/stretchbelt.jpg', 12, 2, 2)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (13, N'Striped Backpack', N'~/Content/striped backpack.jpg', 12, 5, 2)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (14, N'Sunglasses', N'~/Content/sunglasses.jpg', 10, 3, 2)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (15, N'Tote Bag', N'~/Content/tote.jpg', 10, 5, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (16, N'Wallet', N'~/Content/wallet.jpg', 16, 5, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (17, N'Wide Leather Belt', N'~/Content/wideleatherbelt.jpg', 16, 5, 4)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Modern Fit Dress Pants', N'~/Content/blackpants.jpg', 10, 5, 3)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'Capri Leggings', N'~/Content/caprileggings.jpg', 10, 3, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Capri Sweat Pants', N'~/Content/caprisweatpants.jpg', 13, 3, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'Golf Skort', N'~/Content/golfskort.jpg', 13, 3, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (6, N'Comfort Waist Shorts', N'~/Content/bottomscomfortwaistshorts.jpg', 20, 3, 2)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (8, N'Blue Jeans', N'~/Content/bottomsbluejeans.jpg', 12, 5, 2)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (11, N'Bermuda Shorts', N'~/Content/bottomsbermuda.jpg', 11, 3, 1)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (12, N'Jean Skort', N'~/Content/bottomsjeanskort.jpg', 12, 4, 2)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (13, N'Printed Skirt', N'~/Content/bottomsprintedskirt.jpg', 24, 3, 2)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (10, N'black')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (11, N'gray')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (12, N'blue')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (13, N'light blue')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (14, N'khaki')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (15, N'tan')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (16, N'camel')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (17, N'brown')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (18, N'maroon')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (19, N'white')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (20, N'green')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (23, N'pink')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (24, N'multi-color')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (25, N'red')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (26, N'salmon / coral')
INSERT [dbo].[Colors] ([ColorID], [Color]) VALUES (27, N'other')
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[Occasions] ON 

INSERT [dbo].[Occasions] ([OccasionID], [Occassion]) VALUES (1, N'sports / exercise')
INSERT [dbo].[Occasions] ([OccasionID], [Occassion]) VALUES (2, N'casual')
INSERT [dbo].[Occasions] ([OccasionID], [Occassion]) VALUES (3, N'business casual')
INSERT [dbo].[Occasions] ([OccasionID], [Occassion]) VALUES (4, N'professional')
INSERT [dbo].[Occasions] ([OccasionID], [Occassion]) VALUES (5, N'cocktail attire')
INSERT [dbo].[Occasions] ([OccasionID], [Occassion]) VALUES (6, N'formal (black-tie)')
INSERT [dbo].[Occasions] ([OccasionID], [Occassion]) VALUES (7, N'other')
SET IDENTITY_INSERT [dbo].[Occasions] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (3, 9, 8, 3, 3)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (4, 3, 3, 2, 7)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (5, 7, 6, 9, 15)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (1, N'winter')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (2, N'spring')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (3, N'summer')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (4, N'fall')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (5, N'all seasons')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Strappy High Heel Sandals', N'~/Content/strappyhighheelsandals.jpg', 16, 3, 2)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'Casual Sneakers', N'~/Content/casualsneakers.jpg', 15, 5, 1)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Flat Wedge Sandal', N'~/Content/sandalflat.jpg', 17, 3, 2)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'High Wedge Sandals', N'~/Content/sandalwedge.jpg', 17, 3, 2)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (5, N'Lace Sling', N'~/Content/shoelacesling.jpg', 19, 2, 3)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (6, N'Platform Pump', N'~/Content/shoeplatformpump.jpg', 24, 3, 3)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (7, N'Printed Pump', N'~/Content/shoeprintedpump.jpg', 10, 4, 2)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (8, N'Pump', N'~/Content/shoepump.jpg', 15, 5, 4)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (9, N'Low Wedge Sandal', N'~/Content/shoewedgesandal.jpg', 10, 3, 2)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Denim Jacket', N'~/Content/denimjacket.jpg', 12, 5, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'Zipper Jacket', N'~/Content/zipperedactivejacket.jpg', 18, 4, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (3, N'Tankini Swim Suit', N'~/Content/tankiniswimsuit.jpg', 12, 3, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (4, N'Cardigan Sweater', N'~/Content/topcardigan.jpg', 12, 1, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (5, N'Crew Neck T-shirt', N'~/Content/topcrewneckt.jpg', 26, 3, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (6, N'Cuff Popover Blouse', N'~/Content/topcuffpopover.jpg', 19, 5, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (7, N'Halter Top', N'~/Content/tophalter.jpg', 10, 3, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (8, N'Jewel Neck Sweater', N'~/Content/topjewelnecksweater.jpg', 13, 1, 4)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (9, N'Lace Blouse', N'~/Content/toplaceblouse.jpg', 19, 5, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (10, N'Lace-up Poplin', N'~/Content/toplaceuppoplin.jpg', 10, 3, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (11, N'Open Cashmere Sweater', N'~/Content/topopencashmeresweater.jpg', 11, 1, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (12, N'Roll Tab Pocket Blouse', N'~/Content/toppocketrolltabt.jpg', 12, 5, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (13, N'Ruffle Tank', N'~/Content/topruffletank.jpg', 20, 3, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [ColorID], [SeasonID], [OccasionID]) VALUES (14, N'V-Neck T-shirt', N'~/Content/topvneckt.jpg', 10, 4, 2)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Colors]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasions]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Seasons]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Colors]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Colors]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Occasions]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Seasons]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Colors]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasions]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
USE [master]
GO
ALTER DATABASE [WardrobeMVC] SET  READ_WRITE 
GO
