USE [ShopNuocHoa]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK__Users__role_id__1273C1CD]
GO
ALTER TABLE [dbo].[ProductImage] DROP CONSTRAINT [FK__ProductIm__produ__1FCDBCEB]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK__Product__categor__1CF15040]
GO
ALTER TABLE [dbo].[Payment] DROP CONSTRAINT [FK__Payment__order_i__182C9B23]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK__Orders__user_id__15502E78]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Hashtag] DROP CONSTRAINT [FK__Hashtag__product__22AA2996]
GO
ALTER TABLE [dbo].[FeedBackImage] DROP CONSTRAINT [FK__FeedBackI__feedB__2B3F6F97]
GO
ALTER TABLE [dbo].[FeedBack] DROP CONSTRAINT [FK__FeedBack__user_i__276EDEB3]
GO
ALTER TABLE [dbo].[FeedBack] DROP CONSTRAINT [FK__FeedBack__produc__286302EC]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[StaffLogs]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StaffLogs]') AND type in (N'U'))
DROP TABLE [dbo].[StaffLogs]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImage]') AND type in (N'U'))
DROP TABLE [dbo].[ProductImage]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payment]') AND type in (N'U'))
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[Hashtag]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hashtag]') AND type in (N'U'))
DROP TABLE [dbo].[Hashtag]
GO
/****** Object:  Table [dbo].[FeedBackImage]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedBackImage]') AND type in (N'U'))
DROP TABLE [dbo].[FeedBackImage]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedBack]') AND type in (N'U'))
DROP TABLE [dbo].[FeedBack]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/23/2023 6:57:25 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
USE [master]
GO
/****** Object:  Database [ShopNuocHoa]    Script Date: 3/23/2023 6:57:25 PM ******/
DROP DATABASE [ShopNuocHoa]
GO
/****** Object:  Database [ShopNuocHoa]    Script Date: 3/23/2023 6:57:25 PM ******/
CREATE DATABASE [ShopNuocHoa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopNuocHoa', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ShopNuocHoa.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopNuocHoa_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ShopNuocHoa_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopNuocHoa] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopNuocHoa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopNuocHoa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ShopNuocHoa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopNuocHoa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopNuocHoa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopNuocHoa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopNuocHoa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopNuocHoa] SET  MULTI_USER 
GO
ALTER DATABASE [ShopNuocHoa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopNuocHoa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopNuocHoa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopNuocHoa] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ShopNuocHoa]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[feedBack_id] [int] IDENTITY(1,1) NOT NULL,
	[feed_back] [nvarchar](500) NULL,
	[full_name] [nvarchar](255) NOT NULL,
	[rated_star] [float] NULL,
	[status] [nvarchar](255) NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[image] [nvarchar](max) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK__FeedBack__7012E8436CC3501E] PRIMARY KEY CLUSTERED 
(
	[feedBack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBackImage]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackImage](
	[feedBackImage_id] [int] IDENTITY(1,1) NOT NULL,
	[feedBack_image] [nvarchar](max) NULL,
	[feedBack_id] [int] NULL,
 CONSTRAINT [PK__FeedBack__033BCA835861AAE8] PRIMARY KEY CLUSTERED 
(
	[feedBackImage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hashtag]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hashtag](
	[hashtag_id] [int] IDENTITY(1,1) NOT NULL,
	[hashtag_name] [nvarchar](255) NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hashtag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[total_price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[order_date] [date] NULL,
	[user_id] [int] NULL,
	[total_price] [float] NULL,
	[note] [nvarchar](255) NULL,
 CONSTRAINT [PK__Orders__465962297AF45368] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_method] [nvarchar](255) NULL,
	[order_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[status] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[capacity] [nvarchar](255) NULL,
	[brand] [nvarchar](255) NULL,
	[price] [float] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK__Product__47027DF514FEDAB8] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[productImage_id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productImage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffLogs]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffLogs](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[time_in] [datetime] NULL,
	[time_out] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/23/2023 6:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[gender] [varchar](10) NULL,
	[email] [varchar](255) NULL,
	[phone_number] [int] NULL,
	[address] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[role_id] [int] NULL,
	[image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Man')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Woman')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([feedBack_id], [feed_back], [full_name], [rated_star], [status], [user_id], [product_id], [image], [date]) VALUES (1, N'a', N'NguyenDuc', 1, N'true', 2, 44, N'https://drive.google.com/uc?id=1-PPvtdHZu7TwJNjwK6ZZJBahIVDavi2d', NULL)
INSERT [dbo].[FeedBack] ([feedBack_id], [feed_back], [full_name], [rated_star], [status], [user_id], [product_id], [image], [date]) VALUES (2, N'amazing, can it run???', N'NguyenDuc', 5, N'true', 2, 9, N'https://drive.google.com/uc?id=19sCT-0BtbNze3jq4QuXaRFLMHxNGdyov', NULL)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBackImage] ON 

INSERT [dbo].[FeedBackImage] ([feedBackImage_id], [feedBack_image], [feedBack_id]) VALUES (1, N'', 1)
INSERT [dbo].[FeedBackImage] ([feedBackImage_id], [feedBack_image], [feedBack_id]) VALUES (2, N'images\cat.jpg', 2)
SET IDENTITY_INSERT [dbo].[FeedBackImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Hashtag] ON 

INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (1, N'Bess', 1)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (2, N'Adelaide', 2)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (3, N'Alayne', 3)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (4, N'Winifred', 4)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (5, N'Gwyn', 5)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (6, N'Cassie', 6)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (7, N'Pavla', 7)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (8, N'Tedra', 8)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (9, N'De', 9)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (10, N'Rozella', 10)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (11, N'Wilhelmine', 11)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (12, N'Angelia', 12)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (13, N'Karon', 13)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (14, N'Karrah', 14)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (15, N'Doti', 15)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (16, N'Anestassia', 16)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (17, N'Rhodia', 17)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (18, N'Audy', 18)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (19, N'Kimberly', 19)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (20, N'Vivianne', 20)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (21, N'Rebecca', 21)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (22, N'Cristionna', 22)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (23, N'Marleen', 23)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (24, N'Raquel', 24)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (25, N'Gisela', 25)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (26, N'Robyn', 26)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (27, N'Lizbeth', 27)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (28, N'Tanya', 28)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (29, N'Kessia', 29)
INSERT [dbo].[Hashtag] ([hashtag_id], [hashtag_name], [product_id]) VALUES (30, N'Linell', 30)
SET IDENTITY_INSERT [dbo].[Hashtag] OFF
GO
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (10, 22, 93, 2, 186)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (11, 24, 74, 1, 74)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (12, 24, 74, 1, 74)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (13, 24, 74, 1, 74)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (14, 1, 82.5, 1, 82.5)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (15, 15, 70, 1, 70)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (16, 46, 46.090000152587891, 10, 460.89999389648438)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (17, 15, 70, 1, 70)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (17, 37, 64.75, 1, 64.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (17, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (17, 45, 57.25, 1, 57.25)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (17, 46, 46.090000152587891, 1, 46.090000152587891)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (18, 49, 46.090000152587891, 2, 92.180000305175781)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (19, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (20, 46, 46.090000152587891, 1, 46.090000152587891)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (21, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (21, 46, 46.090000152587891, 1, 46.090000152587891)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (22, 24, 74, 1, 74)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (22, 49, 46.090000152587891, 1, 46.090000152587891)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (23, 45, 57.25, 1, 57.25)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (24, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (25, 1, 82.5, 1, 82.5)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (25, 29, 75, 1, 75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (25, 45, 57.25, 2, 114.5)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (26, 22, 93, 1, 93)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (26, 23, 97, 1, 97)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (27, 17, 93, 1, 93)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (27, 47, 74.5, 1, 74.5)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (28, 24, 74, 2, 148)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (29, 17, 93, 1, 93)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (29, 37, 64.75, 1, 64.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (30, 29, 75, 1, 75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (31, 49, 46.090000152587891, 1, 46.090000152587891)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (32, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (33, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (34, 4, 109, 1, 109)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (34, 9, 117, 1, 117)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (35, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (35, 47, 74.5, 1, 74.5)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (36, 23, 97, 1, 97)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (36, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (37, 44, 53.75, 1, 53.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (38, 1, 82.5, 1, 82.5)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (38, 9, 117, 2, 234)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (38, 23, 97, 1, 97)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (38, 37, 64.75, 1, 64.75)
INSERT [dbo].[OrderDetail] ([order_id], [product_id], [price], [quantity], [total_price]) VALUES (38, 39, 110, 1, 110)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (1, N'Nguyenhailong7', N'Ngo Tat To', N'1', CAST(N'2023-05-01' AS Date), 8, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (2, N'', N'Binh Chuan', N'2', CAST(N'2023-01-01' AS Date), 5, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (3, N'Nguyenhailong4', N'Long bien', N'3', CAST(N'2022-03-12' AS Date), 5, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (4, N'Nguyenhailong5', N'Dien bien', N'1', CAST(N'2022-03-03' AS Date), 6, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (5, N'Nguyenhailong6', N'lai chau', N'1', CAST(N'2022-10-10' AS Date), 7, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (6, N'Nguyenhailong6', N'long an', N'1', CAST(N'2022-10-06' AS Date), 7, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (7, N'Nguyenhailong6', N'hai phong', N'1', CAST(N'2022-12-06' AS Date), 7, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (8, N'Nguyenhailong8', N'can gio', N'1', CAST(N'2022-11-09' AS Date), 9, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (9, N'Nguyenhailong7', N'can tho', N'1', CAST(N'2022-05-05' AS Date), 8, NULL, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (10, N'user', N'Suite 18', N'ACTIVE', CAST(N'2023-02-23' AS Date), 2, 186, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (11, N'user', N'Suite 18', N'ACTIVE', CAST(N'2023-02-23' AS Date), 2, 74, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (12, N'user', N'Suite 18', N'ACTIVE', CAST(N'2023-02-25' AS Date), 2, 74, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (13, N'user', N'Suite 18', N'ACTIVE', CAST(N'2023-02-25' AS Date), 2, 74, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (14, N'user', N'Suite 18', N'confirmed', CAST(N'2023-02-25' AS Date), 2, 82.5, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (15, N'user', N'Suite 18', N'confirmed', CAST(N'2023-02-28' AS Date), 2, 70, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (16, N'user', N'Suite 18', N'confirmed', CAST(N'2023-03-01' AS Date), 2, 0, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (17, N'NguyenDuc', N'123 đường 321', N'confirmed', CAST(N'2023-03-02' AS Date), 2, 291.83999633789062, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (18, N'NguyenDuc', N'123 đường 321', N'confirmed', CAST(N'2023-03-02' AS Date), 2, 92.180000305175781, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (19, N'NguyenDuc', N'123 đường 321', N'confirmed', CAST(N'2023-03-02' AS Date), 2, 53.75, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (20, N'NguyenDuc', N'123 đường 321', N'confirmed', CAST(N'2023-03-03' AS Date), 2, 46.090000152587891, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (21, N'NguyenDuc', N'123 đường 321', N'cancel', CAST(N'2023-03-08' AS Date), 2, 99.839996337890625, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (22, N'NguyenDuc', N'123 đường 321', N'cancel', CAST(N'2023-03-08' AS Date), 2, 120.08999633789063, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (23, N'NguyenDuc', N'123 đường 321', N'cancel', CAST(N'2023-03-09' AS Date), 2, 57.25, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (24, N'NguyenDuc', N'123 đường 321', N'CANCELED', CAST(N'2023-03-09' AS Date), 2, 53.75, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (25, N'NguyenDuc', N'123 đường 321', N'CANCELED', CAST(N'2023-03-09' AS Date), 2, 272, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (26, N'NguyenDuc', N'123 đường 321', N'CANCELED', CAST(N'2023-03-09' AS Date), 2, 190, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (27, N'NguyenDuc', N'123 đường 321', N'CANCELED', CAST(N'2023-03-09' AS Date), 2, 167.5, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (28, N'NguyenDuc', N'123 đường 321', N'CANCELED', CAST(N'2023-03-09' AS Date), 2, 148, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (29, N'NguyenDuc', N'123 đường 321', N'confirmed', CAST(N'2023-03-09' AS Date), 2, 157.75, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (30, N'NguyenDuc', N'123 đường 321', N'CONFIRMED', CAST(N'2023-03-09' AS Date), 2, 75, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (31, N'NguyenDuc', N'123 đường 321', N'FINISHED', CAST(N'2023-03-09' AS Date), 2, 46.090000152587891, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (32, N'NguyenDuc', N'123 đường 321', N'PROCESSING', CAST(N'2023-03-10' AS Date), 2, 53.75, NULL)
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (33, N'NguyenDuc', N'123 đường 321', N'FINISHED', CAST(N'2023-03-13' AS Date), 2, 53.75, N'')
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (34, N'NguyenDuc', N'123 đường 321', N'PROCESSING', CAST(N'2023-03-13' AS Date), 2, 226, N'')
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (35, N'NguyenDuc', N'123 đường 321', N'PROCESSING', CAST(N'2023-03-14' AS Date), 2, 128.25, N'')
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (36, N'NguyenDuc', N'123 đường 321', N'PROCESSING', CAST(N'2023-03-15' AS Date), 2, 150.75, N'')
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (37, N'NguyenDuc', N'123 đường 321', N'PROCESSING', CAST(N'2023-03-20' AS Date), 2, 53.75, N'')
INSERT [dbo].[Orders] ([order_id], [full_name], [address], [status], [order_date], [user_id], [total_price], [note]) VALUES (38, N'NguyenDuc', N'123 đường 321', N'FINISHED', CAST(N'2023-03-23' AS Date), 2, 588.25, N'')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (1, N'shipcode', 1)
INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (2, N'paypal', 2)
INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (3, N'paypal', 3)
INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (4, N'paypal', 4)
INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (5, N'paypal', 6)
INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (6, N'paypal', 7)
INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (7, N'paypal', 8)
INSERT [dbo].[Payment] ([payment_id], [payment_method], [order_id]) VALUES (8, N'paypal', 9)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (1, N'Serge Lutens Nuit De Cellophane ', 97, N'NEW', N'Nuit De Cellophane is a floral perfume for women released in 2009, with white floral, fruity, sweet, and citrus main accords. Created by perfumer Christopher Sheldrake, it features notes of apricot, mandarin, osmanthus, and white flowers, and is perfect for spring days with its soft sillage and moderate longevity.', N'50', N'Chanel', 82.5, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (2, N'Chanel''s Coco Noir ', 100, N'AVAILABLE', N'Chanel''s Coco Noir perfume is a fragrance inspired by Gabrielle, the owner of Chanel, and her memories under the night sky in Venice. It opens with fresh notes of Bergamot and Grapefruit, settles into Jasmine and Daffodils, and finishes with the warm and intimate scents of white musk and frankincense.', N'100', N'Chanel', 155, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (3, N'Allure Homme Sport Eau Extreme ', 100, N'1', N'Chanel Allure Homme Sport Eau Extreme, created by Jacques Polge in 2012, is a masculine fragrance inspired by sports miracles. It features a sophisticated blend of sour, cool pepper, mint, mandarin, and oriental woody notes, along with musk and sage, leaving a strong and impressive impression from the first encounter.', N'100', N'Chanel', 135, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (4, N'Eau de Parfum Spray ', 99, N'NEW', N'Chanel N°5 Eau De Parfum Spray is a blend of natural ingredients that combines cool rose petals, vetiver essential oil, orange blossom, and ylang-ylang for its top notes. With the added scents of Grasse jasmine, wood, and frankincense, it offers a modern yet elegant take on the classic Coco No. 5 fragrance. The unique and unforgettable "ghostly" scent has made it a popular choice among women.', N'50', N'Chanel', 109, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (5, N'Bleu-de-Chanel-Parfum ', 100, N'NEW', N'Bleu De Chanel Parfum is a passionate and vibrant woody scent. Start off feeling fresh and healthy. Then there are regal notes of sandalwood of New Caledonia, opening rich and powerful nuances in rich and delicate notes.', N'100', N'Chanel', 146, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (6, N'Coco Mademoiselle ', 100, N'AVAILABLE', N'COCO MADEMOISELLE Eau de Parfum is an amber fragrance that embodies a lively and uplifting scent. With fresh and vibrant orange notes, it quickly awakens the senses, followed by a seductive blend of jasmine and rose, before settling into pure notes of patchouli and vetiver.', N'100 ', N'Chanel', 135, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (7, N'Chance Eau Tendre', 100, N'NEW', N'A scent with a focus on jasmine and rose essences. With floral and fruity scents, the product is a complete and gentle version that celebrates femininity.', N'50', N'Chanel', 113, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (8, N'Chance Eau Fraîche ', 100, N'AVAILABLE', N'Chanel''s Chance Eau Fraiche is a chypre floral fragrance for women, launched in 2007. Its top notes are lemon and cedar, followed by pink pepper, hyacinth, and jasmine, and finished with base notes of teak, iris, amber, patchouli, vetiver, and musk.', N'100', N'Chanel', 127, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (9, N'CHANEL BLEU DE After Shave Balm ', 97, N'NEW', N'Chanel Bleu De Chanel After Shave Balm is the meeting of power and luxury. This aromatic woody fragrance combines the freshness of citrus fruits and the strength of an aroma, with the woody breath of dry cedar notes. Sandalwood from New Caledonia gives it a warm and sensual trail.', N'90', N'Chanel', 117, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (10, N'CHANEL Allure Homme ', 100, N'NEW', N'Chanel''s Allure Homme Sport is a fragrance for sports enthusiasts who aspire to conquer the top and immerse themselves in the victory glaze. Its top notes of orange, tangerine, and sea water provide a refreshing opening, while pepper, neroli, and cedar wood create a masculine heart. The base notes of tonka bean, amber, vanilla, vetiver, and musk make the scent linger all day long.', N'100', N'Chanel', 115, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (11, N'YSL La Nuit de l`Homme ', 100, N'1', N'La Nuit De L''Homme by YSL is a scent that exudes the mood of an old instrumental music, a half-smoked cigarette, and a rainy day. With notes of cardamom, bergamot, cedarwood, lavender, vetiver, and Persian dill, this fragrance is like a "girl killer" with its irresistible attraction and instinct of a man full of love experience. Lavender is YSL''s favorite weapon in instigating "girl attraction," while the attractive charm of clover, post, and fennel Persian leaves no room for hesitation. La Nuit De L''Homme''s charm and coolness speak for themselves, making it a must-try fragrance for any perfume fanatic.', N'100', N'YSL', 106, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (12, N'YSL Libre EDP ', 100, N'1', N'Resection of Left Ovary, Via Natural or Artificial Opening With Percutaneous Endoscopic Assistance', N'90', N'YSL', 109, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (13, N'YSL Y Le ', 100, N'1', N'Revision of External Fixation Device in Right Pelvic Bone, External Approach', N'100', N'YSL', 124, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (14, N'YSL Black Opium EDP ', 100, N'1', N'Fragmentation in Cecum, Percutaneous Approach', N'50', N'YSL', 102, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (15, N'YSL Mon Paris ', 98, N'1', N'Replacement of Left Brachial Artery with Synthetic Substitute, Percutaneous Endoscopic Approach', N'30', N'YSL', 70, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (16, N' Flora Gorgeous Jasmine ', 100, N'1', N'Flora Gorgeous Jasmine is a fragrance featuring the beautiful scent of jasmine, which is fresh, pure, and sexy. The fragrance is boldly painted, allowing us to enjoy it from start to finish and notice the nuances of the other scents surrounding the jasmine. The fragrance transforms from sweet and sour citrus notes to warm myrrh and gentle sandalwood, making the jasmine lively and cute.', N'100', N'Gucci', 133, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (17, N'Guilty Pour Homme ', 98, N'1', N'Gucci Guilty Pour Homme is a fragrance that makes us feel like heroes, full of enthusiasm and courage, ready to face our passions. It features top notes of Lavender and Amalfi Lemon, African orange blossom in the middle, and a combination of Patchouli, Cedar, and Vanilla in the base that creates a powerful and satisfying adventure.', N'90', N'Gucci', 93, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (18, N'Bloom Ambrosia di Fiori', 100, N'1', N'Gucci Bloom Ambrosia di Fiori is an upgraded version of the original Gucci Bloom Eau de Parfum, featuring a combination of jasmine, tuberose and hyacinth. The fragrance is further enriched with the addition of irises and roses. The new design is luxurious with a red dress and classic motif.', N'100', N'Gucci', 114, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (19, N'GUCCI Bloom ', 100, N'1', N'Gucci Bloom EDP For Her features jasmine and tuberose as the top and middle notes, with the last note being the flower of the military man. This fragrance represents Italian beauty and exudes a graceful, life-filled aroma of white flowers. The scent also contains a hint of fresh bitterness, reminiscent of tea.', N'70', N'Gucci', 84, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (20, N'GUCCI Bamboo ', 100, N'NEW', N'Gucci Bamboo perfume features a delicate and pleasant fragrance inspired by bamboo, with top notes of bergamot, tangerine, pear, and orange blossom, and middle notes of tuberose, ylang-ylang, and jasmine. The base notes of ambergris, sandalwood, vanilla, and musk add a warm and soft finish to this elegant fragrance. The bamboo-shaped bottle cap design adds to the overall allure of the fragrance.', N'75', N'Gucci', 118, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (21, N'Guilty Pour Femme ', 100, N'1', N'Gucci Guilty Femme features a floral and powdery scent with prominent notes of lilac, violet, and geranium. The fragrance also has a touch of sweetness from oranges and tangerines and a hint of spiciness from pink pepper. Launched in 2019 with Lana Del Rey as the image representation, the perfume embodies the beauty of freedom and women''s independence.', N'90', N'Gucci', 134, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (22, N'Guilty Black Pour Homme ', 97, N'1', N'Gucci Guilty and Gucci Guilty Intense are popular fragrances known for their daring and provocative scents. Gucci Guilty Black Pour Homme follows in the footsteps of its predecessors, embodying the thrill of indulging in sinful pleasures with an added air of spontaneity and extravagance. The fragrance features a combination of coriander and lavender in the top notes, which may seem overwhelming to some but settle into a fresh and provocative layer of neroli and orange blossom. The scent finishes with a masculine and peachy aroma of patchouli and cedar, making it the perfect embodiment of guilty pleasure.', N'90', N'Gucci', 93, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (23, N'Guilty Cologne ', 97, N'1', N'Gucci Guilty Cologne Pour Homme is a popular fragrance from the Italian fashion brand. It combines flowers and musk with classic herb scents. The fragrance starts with a cheerful blend of juniper berry, rosemary, and bergamot. The middle notes are green cypress, heliotrope, and violet, creating a fresh and energetic floral scent for men. The base notes of white musk, cedarwood, and patchouli provide a soft woody and powdery finish.', N'90', N'Gucci', 97, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (24, N'Flora Gorgeous Gardenia ', 94, N'1', N'Gucci Flora perfume has a light and fresh scent with a combination of pear and berries. It has strong and passionate heart notes of lingering jasmine and dreamy daisies. The base note is a perfect mix of patchouli and brown sugar.', N'100', N'Gucci', 74, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (25, N'Flora Emerald Gardenia ', 100, N'1', N'Gucci Flora Emerald Gardenia is a limited edition fragrance that is perfect for those who love floral scents. It starts with a fruity blend of Watermelon, Lemon, and Pear. The fragrance then transforms into a soft and feminine floral scent of Lotus, Gardenia, and Porcelain. Finally, Cedarwood, Sandalwood, and Musk create a warm and sensual base note.', N'90', N'Gucci', 99, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (26, N'Miss Dior Rose N''Roses ', 100, N'1', N'Miss Dior Rose N''Roses is a new fragrance for women from the Miss Dior line. It has floral notes and is categorized as a fresh and radiant Eau de Toilette. The top notes are Geranium, Italian Mandarin and Bergamot. In the middle, there are two types of roses, Grasse and Damask. The fragrance ends with Musk. It is ideal for young, fresh women to wear to work, going out, coffee dates, or romantic events.', N'100', N'Dior', 120, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (27, N'Dior Homme ', 100, N'1', N'Dior Homme 2020 is all about the rich wood scent. Cashmere Wood provides warmth, while Cedarwood adds a mild spiciness. Patchouli and Red Pepper also offer subtle spice. Musk brings a deep, lingering and evocative aroma. Vetiver adds a classic and generous touch to this fragrance, perfect for a man who wants to capture the emotions of those around him.', N'100', N'Dior', 108, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (28, N'Miss Dior Blooming Bouquet ', 100, N'1', N'Miss Dior Blooming Bouquet is a classic perfume that has made its mark on the scent market. It opens with a fresh and light citrus scent of Sicilian tangerine. The scent then transitions to the essence of blooming bouquet with peony, rose, and fruity notes of apricot and peach. It concludes with white musk, adding a clean and gentle element to the scent. This perfume is suitable for spring and summer and is perfect for the office or a weekend date with friends.', N'100', N'Dior', 140, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (29, N'J’adore Parfum d’Eau ', 98, N'1', N'Dior J''adore Parfum d''Eau is the first alcohol-free perfume by Dior, featuring a natural fragrance that offers a long-lasting and passionate scent. It''s a reinvented bouquet of J''adore flowers with stronger natural ingredients, such as fresh neroli, jasmine sambac, and Chinese magnolia. The design of the perfume bottle is a pearl white version with a velvety soft material.', N'30', N'Dior', 75, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (30, N'DIOR Sauvage ', 100, N'NEW', N'Dior Sauvage is a classic men''s fragrance with a green and masculine scent. It features dominant notes of lemon, pepper, and ambroxan, which give it a spicy and seductive aroma. Despite mixed opinions, it remains popular and maintains its unique style. The fragrance is inspired by the ocean and lasts for up to 7 years. Dior Sauvage is perfect for men who want to feel masculine, elegant, and a bit wild, just like the campaign''s star, Johnny Depp.', N'300', N'Dior', 215, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (31, N'DIOR Poison ', 0, N'1', N'Dior Hypnotic Poison EDP is a women''s perfume that exudes a sweet and seductive fragrance. The licorice and almond top notes lead into an elegant jasmine sambac and orange blossom heart, and the fragrance ends with a soft and sweet vanilla and tonka bean base. It is housed in a unique, poison apple-shaped bottle that adds mystery and intrigue to the scent.', N'50', N'Dior', 92, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (32, N'DIOR Pure Poison ', 100, N'1', N'Dior Pure Poison Eau de Parfum is a seductive floral scent with a mix of fresh bergamot, mandarin, sweet jasmine, and passionate white flowers like orange blossom and gardenia. It finishes with a deep blend of sandalwood, white amber, cedar and white musk, creating a sophisticated and irresistible fragrance for women.', N'50', N'Dior', 106.62, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (33, N'DIOR Eau Sauvage ', 100, N'1', N'Dior Eau Sauvage Parfum is a 2017 release that''s a fresh and warm version of the classic scent. It opens with sweet citrus notes of bergamot and barberry, followed by a romantic touch of lavender. The middle notes feature vetiver for a pure woody scent, intensified by warm elemi. The base notes contain Eastern spices for a spicy finish.', N'100', N'Dior', 118.6, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (34, N'DIOR Addict ', 100, N'1', N'Dior Addict Eau Fraiche is a refreshing fragrance that brings a sense of freedom and ease, like a cool shower. Its notes of orange blossom, lily of the valley, and freesia create a gentle and shy scent. The fragrance is addicting due to its innate comfort and friendliness. The clean musk, bergamot, and green floral notes blend perfectly to create a courteous and elegant scent that leaves a lasting impression.', N'100', N'Dior', 150.9, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (35, N'DIOR Diorella ', 100, N'1', N'Diorella perfume is a special scent with healing power that can soothe and energize your soul. The perfume is perfect for any occasion and is available in 100ml. The scent is full of vitality with Amalfi lemon and honeysuckle, and the vetiver adds softness to the fragrance. The perfume is perfect for spring and summer and is a gentle scent with EDT concentration that can be used day and night.', N'100', N'Dior', 129, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (36, N'Prada Amber Intense ', 100, N'1', N'Prada''s Amber Pour Homme Intense is the updated and intensified version of their debut male fragrance from 2006. This fragrance exudes sophistication and masculinity with a blend of traditional and modern ingredients. With Italian bergamot, Somalia myrrh, Indonesian patchouli, and vanilla from Madagascar, this oriental fougere fragrance is both fresh and intense. The sleek and stylish bottle is colored in a bold black and features a silver plate inscribed with the fragrance''s main notes. Experience the perfect balance of classic and contemporary with Prada Amber Pour Homme Intense.', N'100', N'Prada', 107, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (37, N'Prada Candy Night ', 97, N'1', N'Lively, energetic, and sweetly sensuous, it''s a delectable gourmand scent that''s appealingly youthful while remaining beautifully balanced and elegant. Fresh, sunny top notes include a refreshing hint of ripe, juicy orange. Decadent, creamy swirls of caramel and chocolate bring a hint of richness to the scent, while a sultry dose of delicate white musk finishes your experience on a light but passionate note.', N'75', N'Prada', 64.75, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (38, N'Prada Infusion D''oeillet ', 100, N'1', N'Infusion collection from Prada began in 2007 with Infusion d''Iris edition. The fragrances of this collection were launched as limited editions. In 2015, Prada returns this collection as permanent. It presents 6 fragrances: the re-launched Infusion d''Iris, Infusion de Fleur d''Oranger from 2009 and Infusion de Vetiver from 2010, and three new editions Infusion d''Iris Cedre, Infusion d''Amande and Infusion d''Oeillet.
Perfumer Daniela (Roche) Andrier collaborated with Miuccia Prada to create this collection of six elegant and sophisticated unisex fragrances. Each fragrance is an interpretation of natural ingredients and the contrast between traditionalism and modernity.
', N'100', N'Prada', 94.5, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (39, N'Prada L''Homme L''Eau ', 99, N'1', N'Experience the irresistible allure of our fragrance, where fresh green notes of ginger and neroli blend seamlessly with the luxurious scents of amber and iris. This exquisite composition is then anchored by a warm and inviting base of sandalwood, cedarwood, and chalk, culminating in a scent that is both refreshing and sensually complex. Let our fragrance transport you to a world of indulgent luxury and sophistication, where every moment is a celebration of your unique beauty and style.', N'100', N'Prada', 110, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (40, N'Prada L''Homme Intense ', 100, N'1', N'Experience the irresistible allure of Prada L''Homme Intense. Evolving from the luxurious scent of iris and amber to a rich blend of leather, patchouli, and tonka bean, this fragrance is a true masterpiece. With its sleek opaque bottle, Prada L''Homme Intense embodies the multifaceted essence of the modern Prada man. Indulge in the multi-layered experience of this exquisite fragrance and leave a lasting impression wherever you go.', N'100', N'Prada', 94.64, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (41, N'Prada Les Infusions Mimosa ', 100, N'1', N'Allow the crisp floral essence of Les Infusion De Mimosa by Prada take everyone''s breath away around you, with its radiant top notes of Mandarin & Anise (Aniseed), tender mid notes of Rose & Mimosa on an unforgettable base of Woody notes.', N'100', N'Prada', 131, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (42, N'Prada Luna Rossa Carbon ', 100, N'1', N'Prada Luna Rossa Carbon is a masculine fragrance with notes of Ambroxan and lavender. It combines the provocative charm of Dior Sauvage with refreshing bergamot and black pepper. The result is a unique and irresistible scent, perfect for the modern man who wants to stand out.', N'50', N'Prada', 77, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (43, N'Anthology L''Imperatrice 3 ', 100, N'1', N'Experience the explosion of elegance and freshness with Dolce&Gabbana''s L''Imperatrice 3. Part of the D&G Anthology collection, this fragrance was launched in 2009 and represents the queen of creativity, desire, and charm for women. With top notes of Pink Pepper, Kiwi, and Rhubarb, and middle notes of Primrose, Jasmine, and Watermelon, L''Imperatrice 3 is a refreshing scent of a sunny summer day. The fragrance ends with base notes of Musk, Sandalwood, and Lemon Leaves, adding a characteristic sweetness and charm to the overall experience.', N'100', N'DvG', 77.81, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (44, N'Light Blue intense ', 91, N'1', N'Light Blue is a manly scent for enterprising and sophisticated males looking to round out their style and presence with urbane charm. Musk wood, incense, and oak moss provide the base for this aroma. Strength and suave are carried through to the middle tones of Szechuan pepper, rosemary, and rosewood.
These tantalizing hints of masculinity all act to support the front notes of unique citrus, bergamot, and juniper. Woodsy yet clean, this aroma gives those experiencing it a primal sense of confidence.
', N'125', N'DvG', 53.75, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (45, N'D&G Light Blue ', 96, N'1', N'The fragrance starts with a tinge of green apple, supported by Sicily cedar notes and hints of bluebell. Those enjoying this fragrance are treated to more depth than the initial bouquet with middle tones of jasmine and bamboo. This treat for the nose is finished with amber and musk to round out the delicate yet powerful aroma into something simply wonderful to experience. It comes in a calming ivory and light blue flacon.', N'100', N'DvG', 57.25, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (46, N'The One Grey Intense ', 87, N'1', N'The fragrance opens with spicy notes of cardamom and coriander, which are mixed with the sharp, fresh scents of grapefruit and basil. In the middle, the heart notes are both floral and grassy with lavandin and geranium. At the base are the strong sensual notes of tobacco, patchouli, and labdanum.', N'100', N'DvG', 46.09, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (47, N'D&G Eau De Toilette ', 98, N'1', N'Introduced in 1992, Dolce & Gabbana offers an intense and feminine scent for the confident woman. With a powerful combination of sweet and bitter notes, this women''s fragrance by the Dolce & Gabbana design house is perfect for pairing with evening wear.
Surround yourself with citrus top notes of mandarin orange combined with floral notes of freesia for a light and airy aroma that leads into a heart of jasmine and coriander. This revitalizing fragrance offers a silky sandalwood base for a finishing touch that lingers.
', N'100', N'DvG', 74.5, 2)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (48, N'D&G The One EDP', 100, N'1', N'Dolce & Gabbana The One EDP is the perfect scent for the mature, confident and brave man. With notes of Grapefruit, Basil and Coriander, the scent is intense and awakening. The combination of Ginger, Cardamom and Orange Blossom creates a deep and delicate attraction. But it''s the masculine aftertaste of Tobacco and Amber that truly captures the essence of a mature man. This scent is a symbol of the man that you desire, one with life experience and a strong, masculine presence. Give yourself a chance to get to know Dolce & Gabbana The One EDP.', N'100', N'DvG', 111.88, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (49, N'K By Dolce & Gabbana ', 96, N'1', N'A Mediterranean woody aromatic. K by Dolce&Gabbana embodies the charismatic and generous spirit. It means respecting traditions while embracing modernity.
The Mediterranean citrus freshness of blood orange and Sicilian lemon scent embrace the senses. Heart notes ignite the citruses with the amber accents of clary sage, married with crisp geranium and energizing lavandin.
An unexpected spark of fiery pimento essence gives to K by Dolce&Gabbana a strong personality. Then comes the sensuality of cedarwood, blended with two elegant and masculine ingredients: green vetiver and patchouli. K by Dolce&Gabbana is a blazing, charismatic trail of lingering seduction.
', N'100', N'DvG', 46.09, 1)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (50, NULL, 100, N'1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([product_id], [product_name], [quantity], [status], [description], [capacity], [brand], [price], [category_id]) VALUES (51, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (1, N'https://drive.google.com/uc?id=15ZoCmdmP1cNaXbwddKr_EFBCNJNO8HIl', 1)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (2, N'https://drive.google.com/uc?id=1KDAmZdXb-VJyhQgqP9PK3qIeKc8i210F', 2)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (3, N'https://drive.google.com/uc?id=1gLxCYcDYwDTNbcp-J0fug1gF5CDoA15B', 3)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (4, N'https://drive.google.com/uc?id=1jP0PgvlQXZzh2dFTcyPwKnxfopbXVkM1', 4)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (5, N'https://drive.google.com/uc?id=1pLjdYX-kcG7Mk-Limjp6YvyzCqhusgA7', 5)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (6, N'https://drive.google.com/uc?id=1rm61E-l8kb5cUJq--Da_fJvyVbBgkT7D', 6)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (7, N'https://drive.google.com/uc?id=1KUrF_XAjh2CDooxGW5b15VYO1Qw2IkFa', 7)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (8, N'https://drive.google.com/uc?id=1ndp_8pZWtI4xukyVHRZNR6f_FteoSK9a', 8)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (9, N'https://drive.google.com/uc?id=19sCT-0BtbNze3jq4QuXaRFLMHxNGdyov', 9)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (10, N'https://drive.google.com/uc?id=1aAO-jfWGYwvDPAKS14aySU0hcBf4D2V3', 10)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (11, N'https://drive.google.com/uc?id=1ZofTbNudGgMnXOCOysPdcKswK6rlE7NJ', 11)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (12, N'https://drive.google.com/uc?id=1oXiE0Z24HaTyDFoMsZ5UegrSKo_Wprmp', 12)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (13, N'https://drive.google.com/uc?id=1UydW686j6CfugZ7QVL0XEcjLeK3oNgA7', 13)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (14, N'https://drive.google.com/uc?id=1J6w8UyQJslG1WGANWsIhDKqxCnw2QDd1', 14)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (15, N'https://drive.google.com/uc?id=1xyRgySX83IsxjyiqV8x0VkcQjfKNnV7B', 15)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (16, N'https://drive.google.com/uc?id=1sTxnzwiVv6eaxK_sNZyPzjWm9XXbH33m', 16)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (17, N'https://drive.google.com/uc?id=1Ol_ORva-dqw2IhQXs_wftWB2XIKOA3-Q', 17)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (18, N'https://drive.google.com/uc?id=1f-3VBcQwwzsC9x6TaAtSOVw_bXcLb67w', 18)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (19, N'https://drive.google.com/uc?id=1iHeCG0Yx6k03rG3Wi2sA684w0V-6P_ri', 19)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (20, N'https://drive.google.com/uc?id=1BRHFxl6vOAOWKAv5qcN8rFhvIRwHPWuS', 20)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (21, N'https://drive.google.com/uc?id=121GMLoXeRmyJ1nQVnm9xYs-xo8CZsKle', 21)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (22, N'https://drive.google.com/uc?id=1hwZKdMFk9DLsrcsr-aCceY5qRnUUsB2o', 22)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (23, N'https://drive.google.com/uc?id=1feNz-cY1-CsVheW3HU838_U8wfg30u7g', 23)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (24, N'https://drive.google.com/uc?id=1AfzrBIUszntz8Y0awx5sre8O-xqHfAT_', 24)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (25, N'https://drive.google.com/uc?id=15JoUOxovzllPzsFt4U6JZqsMMSe3sPEb', 25)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (26, N'https://drive.google.com/uc?id=1jtOmDK4HknqzyFBxiT_xtoqXMmN7Ohry', 26)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (27, N'https://drive.google.com/uc?id=1EiFlMdxEFjAaR4cBeJDDbmvoh5Zebmo_', 27)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (28, N'https://drive.google.com/uc?id=1hJUsCV86463G5KLIOpyYK-906CcJBaAO', 28)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (29, N'https://drive.google.com/uc?id=1_iNllheaMP-POtSIjtuoCUyJeNon8twH', 29)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (30, N'https://drive.google.com/uc?id=1Rgu7W4u4kdEgFRF07JaU-ul4d3FNCfx9', 30)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (31, N'https://drive.google.com/uc?id=1xHdAfEsoHse0gduI7Wgdbqtnm129Xk6T', 31)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (32, N'https://drive.google.com/uc?id=1RZMgkZVJF8YtNabzfPlW8mSisoQAX-Ak', 32)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (33, N'https://drive.google.com/uc?id=18qIpMl8ON1LjVRe-ewysPSDg_ua1rhLu', 33)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (34, N'https://drive.google.com/uc?id=16jjosgLlTpRW9C1W76PGVShvV9AzNwIx', 34)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (35, N'https://drive.google.com/uc?id=1OObADz6hfAq-Ag5LNQxdtDl4YiRFmSDd', 35)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (36, N'https://drive.google.com/uc?id=1Rt9XK-dhLzWU3YY_glzxl9CRDVrjAgwo', 36)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (37, N'https://drive.google.com/uc?id=1MqrWrGPxWKgemT7jz8g8ORNcSARg3RpB', 37)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (38, N'https://drive.google.com/uc?id=1uiOs430QZcrXv7cxteE7qNcN3EnMEnOP', 38)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (39, N'https://drive.google.com/uc?id=18_MgUON9zDdrQhdWInwrnWJHdxBi5woo', 39)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (40, N'https://drive.google.com/uc?id=1Z81Bqo53TRZNIwjG--MdA24jwPAyBNL-', 40)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (41, N'https://drive.google.com/uc?id=1rVgKhW2A7ISKrHPHS6oNKjO0hw_czVjB', 41)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (42, N'https://drive.google.com/uc?id=198RH2tnP9XC6kuZgH-5UQPjBQQCb2UqE', 42)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (43, N'https://drive.google.com/uc?id=1_aXncKH-ojxjFfVkOH_Nnm54GzkcqLtt', 43)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (44, N'https://drive.google.com/uc?id=1-PPvtdHZu7TwJNjwK6ZZJBahIVDavi2d', 44)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (45, N'https://drive.google.com/uc?id=1f7t3Mm2T9tPa3gtfyd0NxvJh3fOpuTy9', 45)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (46, N'https://drive.google.com/uc?id=1ZomXfTG1qqAcJkMXMVrIbeJQiaDTws-6', 46)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (47, N'https://drive.google.com/uc?id=1z-A262VvSyH7UBlS17PZEhnVqVUb2DyL', 47)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (48, N'https://drive.google.com/uc?id=1igAqSyVO8d9sGj2WvVkoltVRmKQy4Wkt', 48)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (49, N'https://drive.google.com/uc?id=1UMc60kcfqVP_-YybPo3VCRKq0S8e23jv', 49)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (50, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (51, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (52, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (53, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (54, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (55, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (56, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (57, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (58, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (59, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (60, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (61, N'a', NULL)
INSERT [dbo].[ProductImage] ([productImage_id], [image], [product_id]) VALUES (62, N'a', NULL)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'staff')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'customer')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (4, N'users')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[StaffLogs] ON 

INSERT [dbo].[StaffLogs] ([log_id], [email], [time_in], [time_out]) VALUES (1, N'user@gmail.com', CAST(N'2023-03-23T12:41:41.000' AS DateTime), CAST(N'2023-03-23T15:43:10.000' AS DateTime))
INSERT [dbo].[StaffLogs] ([log_id], [email], [time_in], [time_out]) VALUES (2, N'user@gmail.com', CAST(N'2023-03-23T14:25:27.000' AS DateTime), CAST(N'2023-03-23T15:43:10.000' AS DateTime))
INSERT [dbo].[StaffLogs] ([log_id], [email], [time_in], [time_out]) VALUES (3, N'user@gmail.com', CAST(N'2023-03-23T14:45:13.000' AS DateTime), CAST(N'2023-03-23T15:43:10.000' AS DateTime))
INSERT [dbo].[StaffLogs] ([log_id], [email], [time_in], [time_out]) VALUES (4, N'user@gmail.com', CAST(N'2023-03-23T14:47:29.000' AS DateTime), CAST(N'2023-03-23T15:43:10.000' AS DateTime))
INSERT [dbo].[StaffLogs] ([log_id], [email], [time_in], [time_out]) VALUES (5, N'staff@gmail.com', CAST(N'2023-03-23T15:43:20.000' AS DateTime), CAST(N'2023-03-23T15:43:44.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[StaffLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (1, N'hongducnguyenho', N'CJlHD5VzqsB7h7T8nTQMPX/mIwQ=', N'Male', N'hongducnguyenho0@gmail.com', 975899123, N'PO Box 87876', N'ACTIVE', 1, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (2, N'NguyenDuc', N'CJlHD5VzqsB7h7T8nTQMPX/mIwQ=', N'Male', N'user@gmail.com', 123456789, N'123 đường 321', N'ACTIVE', 2, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (3, N'staff', N'CJlHD5VzqsB7h7T8nTQMPX/mIwQ=', N'Male', N'staff@gmail.com', 975899123, N'Room 1346', N'ACTIVE', 3, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (4, N'Nguyenhailong3', N'11223344', N'Male', N'longnh3@gmail.com', 975899123, N'PO Box 83437', N'ACTIVE', 3, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (5, N'Nguyenhailong4', N'11223344', N'Male', N'longnh4@gmail.com', 975899123, N'Room 25', N'ACTIVE', 3, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (6, N'Nguyenhailong5', N'11223344', N'Female', N'longnh5@gmail.com', 975899123, N'Suite 27', N'ACTIVE', 3, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (7, N'Nguyenhailong6', N'11223344', N'Female', N'longnh6@gmail.com', 975899123, N'Apt 1631', N'ACTIVE', 3, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (8, N'Nguyenhailong7', N'11223344', N'Male', N'longnh7@gmail.com', 975899123, N'PO Box 26761', N'ACTIVE', 4, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (9, N'Nguyenhailong8', N'11223344', N'Female', N'longnh8@gmail.com', 975899123, N'Suite 9', N'ACTIVE', 4, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (10, N'Nguyenhailong9', N'11223344', N'Male', N'longnh9@gmail.com', 975899123, N'Suite 8', N'ACTIVE', 4, N'https://drive.google.com/uc?id=1jWw-k5u5HIlruCw_6JMceKEYh_-Z3ltu')
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (11, N'Nguyen Van A', N'PwCrBLuL6Bsef1qV78KDjCO9eb0=', N'Male', N'nguyenVanA@gmail.com', 836935789, N'123 đường 321', N'ACTIVE', 2, NULL)
INSERT [dbo].[Users] ([user_id], [full_name], [password], [gender], [email], [phone_number], [address], [status], [role_id], [image]) VALUES (12, N'Nguyen Ho Hong Duc (K16_HCM)', NULL, NULL, N'ducnhhse161458@fpt.edu.vn', NULL, NULL, N'ACTIVE', 2, N'https://lh3.googleusercontent.com/a/AGNmyxY2VYUJI4qsHmWB46tSX4GXFahuo9xx-ZKbq1IT=s96-c')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK__FeedBack__produc__286302EC] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK__FeedBack__produc__286302EC]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK__FeedBack__user_i__276EDEB3] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK__FeedBack__user_i__276EDEB3]
GO
ALTER TABLE [dbo].[FeedBackImage]  WITH CHECK ADD  CONSTRAINT [FK__FeedBackI__feedB__2B3F6F97] FOREIGN KEY([feedBack_id])
REFERENCES [dbo].[FeedBack] ([feedBack_id])
GO
ALTER TABLE [dbo].[FeedBackImage] CHECK CONSTRAINT [FK__FeedBackI__feedB__2B3F6F97]
GO
ALTER TABLE [dbo].[Hashtag]  WITH CHECK ADD  CONSTRAINT [FK__Hashtag__product__22AA2996] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Hashtag] CHECK CONSTRAINT [FK__Hashtag__product__22AA2996]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__user_id__15502E78] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__user_id__15502E78]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK__Payment__order_i__182C9B23] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK__Payment__order_i__182C9B23]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__1CF15040] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__1CF15040]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK__ProductIm__produ__1FCDBCEB] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK__ProductIm__produ__1FCDBCEB]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
USE [master]
GO
ALTER DATABASE [ShopNuocHoa] SET  READ_WRITE 
GO
