USE [Stok_Takip]
GO
/****** Object:  Table [dbo].[kategoribilgileri]    Script Date: 9/10/2021 11:57:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoribilgileri](
	[kategori] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[markabilgileri]    Script Date: 9/10/2021 11:57:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markabilgileri](
	[kategori] [nvarchar](50) NOT NULL,
	[marka] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[müşteri]    Script Date: 9/10/2021 11:57:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[müşteri](
	[tc] [nvarchar](50) NOT NULL,
	[adsoyad] [nvarchar](50) NOT NULL,
	[telefon] [nvarchar](50) NOT NULL,
	[adres] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis]    Script Date: 9/10/2021 11:57:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis](
	[tc] [nvarchar](50) NOT NULL,
	[adsoyad] [nvarchar](50) NOT NULL,
	[telefon] [nvarchar](50) NOT NULL,
	[barkodno] [nvarchar](50) NOT NULL,
	[urunadi] [nvarchar](50) NOT NULL,
	[miktari] [int] NOT NULL,
	[satisfiyati] [decimal](18, 2) NOT NULL,
	[toplamfiyati] [decimal](18, 2) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sepet]    Script Date: 9/10/2021 11:57:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepet](
	[tc] [nvarchar](50) NOT NULL,
	[adsoyad] [nvarchar](50) NOT NULL,
	[telefon] [nvarchar](50) NOT NULL,
	[barkodno] [nvarchar](50) NOT NULL,
	[urunadi] [nvarchar](50) NOT NULL,
	[miktari] [int] NOT NULL,
	[satisfiyati] [decimal](18, 2) NOT NULL,
	[toplamfiyati] [decimal](18, 2) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun]    Script Date: 9/10/2021 11:57:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun](
	[barkodno] [nvarchar](50) NOT NULL,
	[kategori] [nvarchar](50) NOT NULL,
	[marka] [nvarchar](50) NOT NULL,
	[urunadi] [nvarchar](50) NOT NULL,
	[miktari] [int] NOT NULL,
	[alisfiyati] [decimal](18, 2) NOT NULL,
	[satisfiyati] [decimal](18, 2) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Klavye')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Mouse')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Hoparlör')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Ram')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'İşlemci')
GO
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Klavye', N'Asus')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Klavye', N'Acer')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Ram', N'Kingston')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'İşlemci', N'AMD')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'İşlemci', N'İntel')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Ram', N'Longline')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Hoparlör', N'Pionerr')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Hoparlör', N'AKG')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Mouse', N'Logitech')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Mouse', N'Microsoft')
GO
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'100', N'Mehmet Kanat', N'542 260 04 04', N'Sarayaltı Mahallesi', N'mehmet@gmail.com')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'101', N'Müslüm Albayrak', N'545 592 92 36', N'Hürriyet Mahallesi', N'muslum@gmail.com')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'102', N'Baki Aslan', N'545 769 48 99', N'Remel Mahallesi', N'baki@gmail.com')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'103', N'İbrahim Çelik', N'543 924 53 86', N'Yıldırım Mahallesi', N'ibrahim@gmail.com')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'104', N'Ferhat Çelik', N'546 512 45 51', N'Tılal Caddesi', N'ferhat@gmail.com')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'105', N'Nihat Barlin', N'546 602 11 41', N'Yalınca Caddesi', N'nihat@gmail.com')
GO
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'510', N'8.nesil', 11, CAST(112.00 AS Decimal(18, 2)), CAST(1232.00 AS Decimal(18, 2)), N'8/31/2021 2:41:55 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'520', N'Kablosuz Klavye', 6, CAST(75.00 AS Decimal(18, 2)), CAST(450.00 AS Decimal(18, 2)), N'8/31/2021 2:41:55 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'530', N'16gb ram', 13, CAST(76.00 AS Decimal(18, 2)), CAST(988.00 AS Decimal(18, 2)), N'8/31/2021 2:41:55 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'510', N'8.nesil', 9, CAST(112.00 AS Decimal(18, 2)), CAST(1008.00 AS Decimal(18, 2)), N'8/31/2021 2:42:14 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'520', N'Kablosuz Klavye', 9, CAST(75.00 AS Decimal(18, 2)), CAST(675.00 AS Decimal(18, 2)), N'8/31/2021 2:43:49 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'100', N'Mehmet Kanat', N'542 260 04 04', N'510', N'8.nesil', 7, CAST(112.00 AS Decimal(18, 2)), CAST(784.00 AS Decimal(18, 2)), N'8/31/2021 2:47:06 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'101', N'Müslüm Albayrak', N'545 592 92 36', N'520', N'Kablosuz Klavye', 4, CAST(75.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), N'8/31/2021 2:47:41 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'102', N'Baki Aslan', N'545 769 48 99', N'530', N'16gb ram', 5, CAST(76.00 AS Decimal(18, 2)), CAST(380.00 AS Decimal(18, 2)), N'8/31/2021 2:47:57 PM')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'103', N'İbrahim Çelik', N'543 924 53 86', N'540', N'5+1 Höparlör', 4, CAST(100.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), N'8/31/2021 2:48:12 PM')
GO
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'510', N'İşlemci', N'İntel', N'8.nesil', 53, CAST(98.00 AS Decimal(18, 2)), CAST(112.00 AS Decimal(18, 2)), N'8/29/2021 12:59:21 AM')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'520', N'Klavye', N'Asus', N'Kablosuz Klavye', 36, CAST(48.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), N'8/30/2021 1:48:50 PM')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'530', N'Ram', N'Kingston', N'16gb ram', 45, CAST(52.00 AS Decimal(18, 2)), CAST(76.00 AS Decimal(18, 2)), N'8/30/2021 1:49:12 PM')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'540', N'Hoparlör', N'Pionerr', N'5+1 Höparlör', 38, CAST(78.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), N'8/30/2021 1:49:38 PM')
GO
