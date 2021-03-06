USE [master]
GO
/****** Object:  Database [Flow]    Script Date: 5/4/2018 10:25:19 PM ******/
CREATE DATABASE [Flow]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Flow', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Flow.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Flow_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Flow_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Flow] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Flow].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Flow] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Flow] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Flow] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Flow] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Flow] SET ARITHABORT OFF 
GO
ALTER DATABASE [Flow] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Flow] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Flow] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Flow] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Flow] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Flow] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Flow] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Flow] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Flow] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Flow] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Flow] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Flow] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Flow] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Flow] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Flow] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Flow] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Flow] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Flow] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Flow] SET  MULTI_USER 
GO
ALTER DATABASE [Flow] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Flow] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Flow] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Flow] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Flow] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Flow]
GO
/****** Object:  Table [dbo].[banner]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](max) NULL,
	[title1] [nvarchar](max) NULL,
	[title2] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
	[CN] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Choose product]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choose product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category name] [nvarchar](max) NULL,
	[price] [float] NULL,
	[Color] [nvarchar](max) NULL,
	[order] [int] NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_Choose product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenCH] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gioithieu]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gioithieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[noidung] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
	[link] [nchar](10) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_Gioithieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayCapNhat] [datetime] NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[menu]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[meta] [nvarchar](50) NULL,
	[order] [int] NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MnenuCon]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MnenuCon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[meta] [nvarchar](50) NULL,
	[Order] [int] NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_MnenuCon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[news]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
	[img1] [nvarchar](50) NULL,
	[img2] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[description1] [nvarchar](max) NULL,
	[description2] [nvarchar](max) NULL,
	[detail] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
	[price] [float] NULL,
	[nguon] [nvarchar](50) NULL,
 CONSTRAINT [PK_news1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 5/4/2018 10:25:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[img] [nvarchar](50) NULL,
	[description] [ntext] NULL,
	[description1] [ntext] NULL,
	[description2] [ntext] NULL,
	[meta] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[order] [int] NULL,
	[hide] [bit] NULL,
	[categoryid] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[banner] ON 

INSERT [dbo].[banner] ([id], [image], [title1], [title2], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'banner3.jpg', N'Bạn muốn có 1 đám cưới trang trọng', N'muốn có 1 ngày tốt nghiệp hoành tráng', NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[banner] ([id], [image], [title1], [title2], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'banner4.jpg', N'hãy liên hệ với chúng tôi', N'hãy cho cơ hội để chúng tôi phục vụ bạn', NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[banner] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin], [CN]) VALUES (1, N'Hoa cưới', NULL, N'hoa-cuoi', 1, 1, NULL, 1)
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin], [CN]) VALUES (2, N'Hoa Tốt Nghiệp', NULL, N'hoa-tot-nghiep', 1, 2, NULL, 1)
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin], [CN]) VALUES (3, N'Hoa Chúc Mừng Sinh Nhật', NULL, N'hoa-chuc-mung-sinh-nhat', 1, 3, NULL, 1)
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin], [CN]) VALUES (4, N'Hoa Thăng Chức', NULL, N'hoa-thang-chuc', 1, 4, NULL, 1)
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin], [CN]) VALUES (5, N'Hoa Khai Trương', NULL, N'hoa-khai-truong', 1, 5, NULL, 1)
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin], [CN]) VALUES (6, N'Hoa Viếng', NULL, N'hoa-vieng', 1, 6, NULL, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Choose product] ON 

INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (1, N'Hoa Cưới', 50000, N'Red', NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (2, N'Hoa Tốt Nghiệp', 100000, N'Green', NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (3, N'Hoa Thăng Chức', 150000, N'Blue', NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (4, N'Hoa Sinh Nhật', 200000, N'yellow', NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (5, N'Hoa Khai Trương', 250000, N'Gray', NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (6, N'Hoa VIếng', 300000, N'Orange', NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (7, NULL, 350000, NULL, NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (8, NULL, 400000, NULL, NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (9, NULL, 450000, NULL, NULL, 1)
INSERT [dbo].[Choose product] ([id], [category name], [price], [Color], [order], [hide]) VALUES (10, NULL, 5000000, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Choose product] OFF
SET IDENTITY_INSERT [dbo].[CuaHang] ON 

INSERT [dbo].[CuaHang] ([id], [TenCH], [DiaChi], [SDT], [hide], [order]) VALUES (1, N'Flow SHop', N'Số 62, Đường Tân Hòa 2, Phường Hiệp Phú, Quận 9, Tp.CM', N'0169.645.8264', 1, 1)
SET IDENTITY_INSERT [dbo].[CuaHang] OFF
SET IDENTITY_INSERT [dbo].[Gioithieu] ON 

INSERT [dbo].[Gioithieu] ([ID], [name], [noidung], [img], [link], [meta], [hide], [order]) VALUES (15, N'Hoa Cưới', N'Hoa cưới theo tông màu pastel, phù hợp cho những cô dâu thích tông màu nhẹ nhàng Bó hoa được sử dụng chủ đạo là hoa hồng( hồng sen và hồng da, 2 loại hoa được yêu thích nhất hiện nay) kết hợp thêm hoa tú cầu với những cánh hoa mỏng manh, mang lại sự tinh tế và hài hòa cho bó hoa.', N'hoa cưới 1.jpg', NULL, NULL, 1, 1)
INSERT [dbo].[Gioithieu] ([ID], [name], [noidung], [img], [link], [meta], [hide], [order]) VALUES (16, N'Hoa Tốt Nghiệp', N'Với kiểu cắm vươn cao và thẳng đứng như những sự vươn lên mạnh mẽ tạo nên một nhịp điệu lúc cao lúc thấp cũng như cuộc sống lúc sung sướng lúc cực khổ nhưng ta cứ cố gắng thì sự thành công sẽ đến với ta vào ngày gần nhất. Thích hợp tặng dịp khai trương, sinh nhật sếp, kỷ niệm...', N'hoa tot nghiep 1.jpg', NULL, NULL, 1, 2)
INSERT [dbo].[Gioithieu] ([ID], [name], [noidung], [img], [link], [meta], [hide], [order]) VALUES (17, N'Hoa Chúc Mừng Sinh Nhật', N'Hộp hoa với tone màu hồng pastel chủ đạo đã làm say đắm bao cô nàng đáng yêu. Hộp hoa này chắc chắn sẽ là món quà tuyệt vời dành tặng cho các fangirl có sự yêu thích đặc biệt dành cho màu hồng.', N'hoa sn 2.jpg', NULL, NULL, 1, 3)
INSERT [dbo].[Gioithieu] ([ID], [name], [noidung], [img], [link], [meta], [hide], [order]) VALUES (18, N'Hoa Thăng Chức', N'Với tone màu vàng chủ đạo của hoa hướng dương và hoa hồng vàng. Hộp hoa này được các bạn florist phối hợp giữa nhiều loại hoa cùng nhiều màu sắc rực rỡ dành cho những quý ông lịch lãm, sang trọng.', N'hoa tc 3.jpg', NULL, NULL, 1, 4)
INSERT [dbo].[Gioithieu] ([ID], [name], [noidung], [img], [link], [meta], [hide], [order]) VALUES (19, N'Hoa Khai Trương', N'Với vẻ đẹp quý phái, sang trọng và độ bền cao, một chậu Lan Hồ Điệp được thiết kế tinh tế, hài hòa trên chậu sứ sang trọng sẽ giúp nổi bật không gian. Nó đem đến cho ngôi nhà sức sống và cảm hứng bất tận. Hơn thế, đây là loài hoa mang ý nghĩa của sự tròn vẹn, hoàn hảo. Nên chúng được ví như những đóa hoa tinh túy của đất trời. Vì vậy, trong những dịp chúc mừng đặc biệt như tân gia, thăng chức, nghỉ hưu, người ta thường chọn Lan Hồ Điệp. Điều đó vừa để thể hiện sự tôn kính, ngưỡng mộ. Đồng thời nó còn thay cho một lời chúc về những điều tốt đẹp trên con đường phía trước.', N'hoa kt 6.jpg', NULL, NULL, 1, 5)
INSERT [dbo].[Gioithieu] ([ID], [name], [noidung], [img], [link], [meta], [hide], [order]) VALUES (20, N'Hoa Viếng', N'
Kệ hoa chia buồn Kính viếng với tone màu trắng đen thể hiện sự tiếc thương sẽ giúp chúng ta gửi lời chia buồn sâu sắc đến với người đã khuất cùng với người thân ở lại. Kệ hoa chính là sự kết hợp giữa những nhánh lan trắng, những đóa hoa lily vàng và lá phụ tạo nên.', N'hoa vieng 4.jpg', NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Gioithieu] OFF
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([id], [TenKH], [DiaChi], [SDT], [Email], [NoiDung], [NgayCapNhat], [hide]) VALUES (1, NULL, N'62 Tân Hòa 2, Phường Hiệp Phú, quận 9 , TP.HCM', N'01696458264', N'duongchanbao2@gmail.com', N'chuyên cung cấp các loại hoa ', NULL, 1)
INSERT [dbo].[LienHe] ([id], [TenKH], [DiaChi], [SDT], [Email], [NoiDung], [NgayCapNhat], [hide]) VALUES (12, N'Dong Nhat Hao', N'O day', N'0123456789', N'Khong co', N'Khong biet ghi gi', CAST(N'2018-04-19 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[LienHe] ([id], [TenKH], [DiaChi], [SDT], [Email], [NoiDung], [NgayCapNhat], [hide]) VALUES (13, N'hungeeeeee', N'éo biet', N'124567', N'aedgdhdjncd', N'ưfwsfzwgteyhxgzsdf', CAST(N'2018-04-25 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[LienHe] OFF
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([id], [title], [link], [meta], [order], [hide]) VALUES (1, N'trang chủ', NULL, N'Trang-chu', 1, 1)
INSERT [dbo].[menu] ([id], [title], [link], [meta], [order], [hide]) VALUES (2, N'sản phẩm', NULL, N'san-pham', 2, 1)
INSERT [dbo].[menu] ([id], [title], [link], [meta], [order], [hide]) VALUES (3, N'về chúng tôi', NULL, N've-chung-toi', 3, 1)
INSERT [dbo].[menu] ([id], [title], [link], [meta], [order], [hide]) VALUES (4, N'liên hệ', NULL, N'lien-he', 4, 1)
SET IDENTITY_INSERT [dbo].[menu] OFF
SET IDENTITY_INSERT [dbo].[MnenuCon] ON 

INSERT [dbo].[MnenuCon] ([id], [title], [link], [meta], [Order], [hide]) VALUES (1, N'Hoa Cưới', NULL, N'hoa-cuoi', 1, 0)
INSERT [dbo].[MnenuCon] ([id], [title], [link], [meta], [Order], [hide]) VALUES (2, N'Hoa Tốt Nghiêp', NULL, N'hoa-tot-nghiep', 2, 0)
INSERT [dbo].[MnenuCon] ([id], [title], [link], [meta], [Order], [hide]) VALUES (3, N'Hoa chúc Mừng Sinh Nhật', NULL, N'hoa-chuc-mung-sinh-nhat', 3, 0)
INSERT [dbo].[MnenuCon] ([id], [title], [link], [meta], [Order], [hide]) VALUES (4, N'Hoa Chúc Mừng Thăng Chức ', NULL, N'hoa-thang-chuc', 4, 0)
INSERT [dbo].[MnenuCon] ([id], [title], [link], [meta], [Order], [hide]) VALUES (5, N'Hoa Khai Trương', NULL, N'hoa-khai-trương', 5, 0)
INSERT [dbo].[MnenuCon] ([id], [title], [link], [meta], [Order], [hide]) VALUES (6, N'Hoa Viếng', NULL, N'hoa-vieng', 6, 0)
SET IDENTITY_INSERT [dbo].[MnenuCon] OFF
INSERT [dbo].[news] ([id], [name], [img], [img1], [img2], [description], [description1], [description2], [detail], [meta], [hide], [order], [datebegin], [price], [nguon]) VALUES (1, N'Bông hoa đầu tiên nở ngoài trái đất', N'hoa-no-ngoai-vu-tru(1).jpg', N'hoa-no-ngoai-vu-tru(2).jpg', N'hoa-no-ngoai-vu-tru(3).jpg', N'Phi hành gia người Mỹ Scott Kelly ngày 16/1 đã đăng tải lên trang Twitter hình ảnh một hoa cúc nở trên trạm ISS, kèm theo dòng chữ “Có những dạng sống khác tồn tại trong vũ trụ” và “Bông hoa đầu tiên được trồng trên vũ trụ đã nở”.

', N'Nhóm phi hành gia trên trạm ISS trước đó đã trồng thành công rau diếp để làm thức ăn. Mặc dù vậy, đây là lần đầu tiên một bông hoa được trồng và nở trong vũ trụ. Điều này có thể đóng vai trò quan trọng cho những chuyến khám phá vũ trụ trong tương lai', N'“Con người di chuyển càng lâu và càng xa Trái đất, thì nhu cầu trồng rau làm thực phẩm, lọc không khí và thư giãm tâm lý càng lớn”, nhà khoa học Gioia Massa tại Trung tâm vũ trụ Kennedy của NASA cho biết. “Tôi nghĩ rằng hệ thống thực vật sẽ trở thành những yếu tố quan trong của bất cứ chuyến khám phá vũ trụ dài ngày nào”.

Mặc dù không ăn được, nhưng các phi hành gia đã chọn hoa cúc cam để trồng thử nghiệm trên trạm ISS để nghiên cứu một số đặc tính của nó. Kết quả thu được có thể giúp trồng các loại rau và cây ăn quả trên trạm ISS.

', N'“Việc trồng thử nghiệm hoa cúc sẽ giúp chúng tôi hiểu rõ hơn về hoa phát triển như thế nào trên trạm ISS. Điều này sẽ giúp những loài cây ăn trái như cà chua có thể được trồng thành công trong vũ trụ”, nhà khoa học Trent Smith thuộc Trung tâm vũ trụ Kennedy của NASA cho biết.', N'hoa-no-ngoai-trai-dat', 1, 1, NULL, NULL, N'Kenh14.vn')
INSERT [dbo].[news] ([id], [name], [img], [img1], [img2], [description], [description1], [description2], [detail], [meta], [hide], [order], [datebegin], [price], [nguon]) VALUES (2, N'Cận cảnh những bông hoa tuyết độc nhất vô nhị', N'hoa-tuyet (1).jpg', N'hoa-tuyet (2).jpg', N'hoa-tuyet (3).jpg', N'Bộ ảnh này thuộc về một nhiếp ảnh gia tới từ nước Nga có tên là Alexey Kljatov. Được đặt tên là "Hoa tuyết và pha lê tuyết", bộ ảnh này chủ yếu là những bức ảnh được chụp cận cảnh những bông hoa tuyết tự nhiên tuyệt đẹp vào lúc sáng sớm. Alexey cũng giới thiệu đây là sở thích của mình, những bông hoa tuyết này đều được chụp ở gần nhà anh. Điều thú vị ở những bông tuyết này là không có một bông nào giống bông nào, tất cả đều khác nhau về hình dạng: từ lăng kính đơn giản, tinh thể nhánh sao cho tới những hình tam giác kỳ lạ và có cả cột trụ nữa.', N'Còn có cả hình ngôi sao sáu cánh.', N'Hình lục giác cũng có luôn.
', NULL, N'hoa-tuyet', 1, 2, NULL, NULL, N'kenh14.vn')
INSERT [dbo].[news] ([id], [name], [img], [img1], [img2], [description], [description1], [description2], [detail], [meta], [hide], [order], [datebegin], [price], [nguon]) VALUES (3, N'Khi loài hoa bị… "ám sát" và phát nổ', N'hoa phat no (1).jpg', N'hoa phat no (2).jpg', N'hoa phat no (3).jpg', N'Những bông hoa mỏng manh khi nổ tung thành nhiều mảnh trông sẽ thế nào? Đó là điều mà nhiếp ảnh gia Martin Klimas muốn khám phá đằng sau loạt tác phẩm này. Đầu tiên anh thả các bông hoa vào nitơ lỏng để làm chúng đông cứng, sau đó bắn chúng bằng một khẩu súng hơi từ đằng sau.', N'Klimas chia sẻ anh muốn thể hiện ý tưởng một bông hoa nở bung thật nhanh, tới mức bùng nổ. Thành quả cuối cùng là những tấm ảnh đẹp và độc đáo, mang đậm nét siêu thực.', NULL, NULL, N'hoa-phat-no', 1, 3, NULL, NULL, N'Kenh14.vn')
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (1, N'Hoa Cưới', 250000, N'hoa cưới 1.jpg', N'Một ngàn lời ca ngọt ngào cũng không bằng một lời nói chân thành xuất phát từ tận trái tim và đôi khi chỉ cần những hành động quan tâm đúng lúc và một bó hoa vào những ngày đặc biệt hoặc gây bất ngờ vào những dịp cuối tuần cũng có thể nói lên trọn tấm chân tình của bạn. Bó hoa được thiết kế cầu kỳ với nhiều màu sắc nhẹ nhàng nhưng vẫn nổi bật sẽ là sự lựa chọn ý nghĩa dành tặng cho những người mà bạn yêu mến họ rất nhiều nhưng không thể hiện được lời nói.', N'123', N'fasf', N'hoa-cuoi-1', NULL, 1, 1, 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (2, N'Hoa Cưới', 250000, N'hoa cưới 2.jpg', N'Một ngàn lời ca ngọt ngào cũng không bằng một lời nói chân thành xuất phát từ tận trái tim và đôi khi chỉ cần những hành động quan tâm đúng lúc và một bó hoa vào những ngày đặc biệt hoặc gây bất ngờ vào những dịp cuối tuần cũng có thể nói lên trọn tấm chân tình của bạn. Bó hoa được thiết kế cầu kỳ với nhiều màu sắc nhẹ nhàng nhưng vẫn nổi bật sẽ là sự lựa chọn ý nghĩa dành tặng cho những người mà bạn yêu mến họ rất nhiều nhưng không thể hiện được lời nói.', N'456', N'adasd', N'hoa-cuoi-2', NULL, 2, 1, 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (3, N'Hoa Cưới', 300000, N'hoa cưới 3.jpg', N'Một ngàn lời ca ngọt ngào cũng không bằng một lời nói chân thành xuất phát từ tận trái tim và đôi khi chỉ cần những hành động quan tâm đúng lúc và một bó hoa vào những ngày đặc biệt hoặc gây bất ngờ vào những dịp cuối tuần cũng có thể nói lên trọn tấm chân tình của bạn. Bó hoa được thiết kế cầu kỳ với nhiều màu sắc nhẹ nhàng nhưng vẫn nổi bật sẽ là sự lựa chọn ý nghĩa dành tặng cho những người mà bạn yêu mến họ rất nhiều nhưng không thể hiện được lời nói.', N'789', N'adas', N'hoa-cuoi-3', NULL, 3, 1, 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (4, N'Hoa Cưới', 400000, N'hoa cưới 4.jpg', N'Một ngàn lời ca ngọt ngào cũng không bằng một lời nói chân thành xuất phát từ tận trái tim và đôi khi chỉ cần những hành động quan tâm đúng lúc và một bó hoa vào những ngày đặc biệt hoặc gây bất ngờ vào những dịp cuối tuần cũng có thể nói lên trọn tấm chân tình của bạn. Bó hoa được thiết kế cầu kỳ với nhiều màu sắc nhẹ nhàng nhưng vẫn nổi bật sẽ là sự lựa chọn ý nghĩa dành tặng cho những người mà bạn yêu mến họ rất nhiều nhưng không thể hiện được lời nói.', N'123', N'đâs', N'hoa-cuoi-4', NULL, 4, 1, 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (7, NULL, NULL, N't-img4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (8, NULL, NULL, N't-img5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (9, NULL, NULL, N't-img6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (10, NULL, NULL, N't-img7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (11, NULL, NULL, N't-img8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (12, N'Hoa Tốt Nghiệp', 150000, N'hoa tot nghiep 1.jpg', NULL, NULL, NULL, N'hoa-tot-ngiep-1', NULL, 7, 1, 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (13, N'Hoa Tốt Nghiệp ', 150000, N'hoa tot nghiep 2.jpg', NULL, NULL, NULL, N'hoa-tot-nghiep-2', NULL, 8, 1, 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (14, N'Hoa Tốt Nghiệp ', 250000, N'hoa tot nghiep 3.jpg', NULL, NULL, NULL, N'hoa-tot-nghiep-3', NULL, 9, 1, 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (15, N'Hoa Tốt Nghiệp ', 100000, N'hoa tot nghiep 4.jpg', NULL, NULL, NULL, N'hoa-tot-nghiep-4', NULL, 10, 1, 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (16, N'Hoa Tốt Nghiệp', 150000, N'hoa tot nghiep 5.jpg', NULL, NULL, NULL, N'hoa-tot-nghiep-6', NULL, 11, 1, 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (17, N'Hoa Tốt Nghiệp', 200000, N'hoa tot nghiep 6.jpg', NULL, NULL, NULL, N'hoa-tot-nghiep-6', NULL, 12, 1, 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (18, N'Hoa Sinh Nhật', 100000, N'hoa sn 1.jpg', NULL, NULL, NULL, N'Hoa-sinh-nhat- 1', NULL, 13, 1, 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (19, N'Hoa Sinh Nhật', 120000, N'hoa sn 2.jpg', NULL, NULL, NULL, N'Hoa-sinh-nhat- 2', NULL, 14, 1, 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (20, N'Hoa Sinh Nhật', 150000, N'hoa sn 3.jpg', NULL, NULL, NULL, N'Hoa-sinh-nhat- 3', NULL, 15, 1, 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (21, N'Hoa Sinh Nhật', 200000, N'hoa sn 4.jpg', NULL, NULL, NULL, N'Hoa-sinh-nhat- 4', NULL, 16, 1, 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (22, N'Hoa Sinh Nhật', 200000, N'hoa sn 5.jpg', NULL, NULL, NULL, N'Hoa-sinh-nhat- 5', NULL, 17, 1, 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (23, N'Hoa Sinh Nhật', 300000, N'hoa sn 6.jpg', NULL, NULL, NULL, N'Hoa-sinh-nhat- 6', NULL, 18, 1, 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (24, N'Hoa Thăng Chức', 50000, N'hoa sn 2.jpg', NULL, NULL, NULL, N'hoa-khai-truong-1', NULL, 19, 1, 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (25, N'Hoa Thăng Chức', 200000, N'hoa kt 2.jpg', NULL, NULL, NULL, N'hoa-khai-truong-2', NULL, 20, 1, 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (26, N'Hoa Thăng Chức', 150000, N'hoa kt 3.jpg', NULL, NULL, NULL, N'hoa-khai-truong-3', NULL, 21, 1, 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (27, N'Hoa Thăng Chức', 150000, N'hoa kt 4.jpg', NULL, NULL, NULL, N'hoa-khai-truong-4', NULL, 22, 1, 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (28, N'Hoa Thăng Chức', 100000, N'hoa kt 5.jpg', NULL, NULL, NULL, N'hoa-khai-truong-5', NULL, 23, 1, 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (29, N'Hoa Thăng Chức', 200000, N'hoa kt 6.jpg', NULL, NULL, NULL, N'hoa-khai-truong-6', NULL, 24, 1, 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (30, N'Hoa Khai Trương', 150000, N'hoa tc 1.jpg', NULL, NULL, NULL, N'hoa-thang-chuc-1', NULL, 25, 1, 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (31, N'Hoa Khai Trương', 150000, N'hoa tc 2.jpg', NULL, NULL, NULL, N'hoa-thang-chuc-2', NULL, 26, 1, 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (32, N'Hoa Khai Trương', 200000, N'hoa tc 3.jpg', NULL, NULL, NULL, N'hoa-thang-chuc-3', NULL, 27, 1, 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (33, N'Hoa Khai Trương', 200000, N'hoa tc 4.jpg', NULL, NULL, NULL, N'hoa-thang-chuc-4', NULL, 28, 1, 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (34, N'Hoa Khai Trương', 300000, N'hoa tc 5.jpg', NULL, NULL, NULL, N'hoa-thang-chuc-5', NULL, 28, 1, 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (35, N'Hoa Khai Trương', 500000, N'hoa tc 6.jpg', NULL, NULL, NULL, N'hoa-thang-chuc-6', NULL, 30, 1, 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (36, N'Hoa Viếng', 250000, N'hoa vieng 1.jpg', NULL, NULL, NULL, N'Hoa-vieng-1', NULL, 31, 1, 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (37, N'Hoa Viếng', 350000, N'hoa vieng 2.jpg', NULL, NULL, NULL, N'Hoa-vieng-2', NULL, 32, 1, 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (38, N'Hoa Viếng', 100000, N'hoa vieng 3.jpg', NULL, NULL, NULL, N'Hoa-vieng-3', NULL, 33, 1, 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (39, N'Hoa Viếng', 150000, N'hoa vieng 4.jpg', NULL, NULL, NULL, N'Hoa-vieng-4', NULL, 34, 1, 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (40, N'Hoa Viếng', 100000, N'hoa vieng 5.jpg', NULL, NULL, NULL, N'Hoa-vieng-5', NULL, 35, 1, 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (41, N'Hoa Viếng', 500000, N'hoa vieng 6.jpg', NULL, NULL, NULL, N'Hoa-vieng-6', NULL, 36, 1, 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (42, N'Hoa Cưới', 500000, N'hoa cưới 5.jpg', NULL, NULL, NULL, N'Hoa-cuoi-5', NULL, 36, 1, 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [description1], [description2], [meta], [link], [order], [hide], [categoryid], [datebegin]) VALUES (43, N'Hoa Cưới', 55000, N'hoa cưới 6.jpg', NULL, NULL, NULL, N'Hoa-cuoi-6', NULL, 37, 1, 1, NULL)
USE [master]
GO
ALTER DATABASE [Flow] SET  READ_WRITE 
GO
