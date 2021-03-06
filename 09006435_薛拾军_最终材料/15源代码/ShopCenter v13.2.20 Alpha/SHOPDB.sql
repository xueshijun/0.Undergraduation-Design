/****** Object:  View [dbo].[ItemsAllWithAllImg]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemsAllWithAllImg]'))
DROP VIEW [dbo].[ItemsAllWithAllImg]
GO
/****** Object:  View [dbo].[ItemsAllWithNoImg]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemsAllWithNoImg]'))
DROP VIEW [dbo].[ItemsAllWithNoImg]
GO
/****** Object:  View [dbo].[ItemsImages]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemsImages]'))
DROP VIEW [dbo].[ItemsImages]
GO
/****** Object:  View [dbo].[myCarItems]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[myCarItems]'))
DROP VIEW [dbo].[myCarItems]
GO
/****** Object:  View [dbo].[ProductCategory]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategory]'))
DROP VIEW [dbo].[ProductCategory]
GO
/****** Object:  View [dbo].[ArticleAll]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ArticleAll]'))
DROP VIEW [dbo].[ArticleAll]
GO
/****** Object:  View [dbo].[ArticlesClassCountByCID]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ArticlesClassCountByCID]'))
DROP VIEW [dbo].[ArticlesClassCountByCID]
GO
/****** Object:  View [dbo].[ImageDistinct]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ImageDistinct]'))
DROP VIEW [dbo].[ImageDistinct]
GO
/****** Object:  View [dbo].[ItemListByBrand]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemListByBrand]'))
DROP VIEW [dbo].[ItemListByBrand]
GO
/****** Object:  View [dbo].[ImagsWithItems]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ImagsWithItems]'))
DROP VIEW [dbo].[ImagsWithItems]
GO
/****** Object:  Table [dbo].[IndexOnShow]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IndexOnShow]') AND type in (N'U'))
DROP TABLE [dbo].[IndexOnShow]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admins]') AND type in (N'U'))
DROP TABLE [dbo].[Admins]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Items]') AND type in (N'U'))
DROP TABLE [dbo].[Items]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images]') AND type in (N'U'))
DROP TABLE [dbo].[Images]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[BuyLog]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BuyLog]') AND type in (N'U'))
DROP TABLE [dbo].[BuyLog]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[ArticleClass]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArticleClass]') AND type in (N'U'))
DROP TABLE [dbo].[ArticleClass]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Articles]') AND type in (N'U'))
DROP TABLE [dbo].[Articles]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[ScrolingShow]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScrolingShow]') AND type in (N'U'))
DROP TABLE [dbo].[ScrolingShow]
GO
/****** Object:  Table [dbo].[User]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[ViewLogs]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewLogs]') AND type in (N'U'))
DROP TABLE [dbo].[ViewLogs]
GO
/****** Object:  Table [dbo].[VIP]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
DROP TABLE [dbo].[VIP]
GO
/****** Object:  Table [dbo].[JingDong]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JingDong]') AND type in (N'U'))
DROP TABLE [dbo].[JingDong]
GO
/****** Object:  Table [dbo].[LoginLog]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginLog]') AND type in (N'U'))
DROP TABLE [dbo].[LoginLog]
GO
/****** Object:  Table [dbo].[MyCar]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyCar]') AND type in (N'U'))
DROP TABLE [dbo].[MyCar]
GO
/****** Object:  Default [DF_Items_ProductID]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_ProductID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_ProductID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [DF_Items_ProductID]
END


End
GO
/****** Object:  Default [DF_Items_BrandID]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_BrandID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_BrandID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [DF_Items_BrandID]
END


End
GO
/****** Object:  Default [DF_Items_SeckillPrice]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_SeckillPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_SeckillPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [DF_Items_SeckillPrice]
END


End
GO
/****** Object:  Default [DF_Items_ClickTimes]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_ClickTimes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_ClickTimes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [DF_Items_ClickTimes]
END


End
GO
/****** Object:  Default [DF_Items_ViewTimes]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_ViewTimes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_ViewTimes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [DF_Items_ViewTimes]
END


End
GO
/****** Object:  Default [DF_Items_BuyTimes]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_BuyTimes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_BuyTimes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [DF_Items_BuyTimes]
END


End
GO
/****** Object:  Default [DF_Items_IsSecondKill]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_IsSecondKill]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_IsSecondKill]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [DF_Items_IsSecondKill]
END


End
GO
/****** Object:  Default [DF_MyCar_IsPay]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MyCar_IsPay]') AND parent_object_id = OBJECT_ID(N'[dbo].[MyCar]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MyCar_IsPay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MyCar] DROP CONSTRAINT [DF_MyCar_IsPay]
END


End
GO
/****** Object:  Default [DF_MyCar_Visible]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MyCar_Visible]') AND parent_object_id = OBJECT_ID(N'[dbo].[MyCar]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MyCar_Visible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MyCar] DROP CONSTRAINT [DF_MyCar_Visible]
END


End
GO
/****** Object:  Default [DF_MyCar_Count]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MyCar_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[MyCar]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MyCar_Count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MyCar] DROP CONSTRAINT [DF_MyCar_Count]
END


End
GO
/****** Object:  Default [DF_User_VID]    Script Date: 02/24/2013 22:39:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_VID]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_User_VID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_User_VID]
END


End
GO
/****** Object:  Table [dbo].[MyCar]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyCar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MyCar](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NULL,
	[UserID] [int] NULL,
	[IsPay] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[AddDate] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Visible] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_MyCar] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[MyCar] ON
INSERT [dbo].[MyCar] ([CarID], [ItemID], [UserID], [IsPay], [AddDate], [Visible], [Count]) VALUES (1, 2, 1, N'false', N'2012-4-27 22:34:00', N'true', 1)
INSERT [dbo].[MyCar] ([CarID], [ItemID], [UserID], [IsPay], [AddDate], [Visible], [Count]) VALUES (2, 3, 1, N'true', N'2012-4-27 22:34:00', N'true', 2)
INSERT [dbo].[MyCar] ([CarID], [ItemID], [UserID], [IsPay], [AddDate], [Visible], [Count]) VALUES (37, 27, 1, N'false', N'2013/1/24 14:13:54', N'true', 4)
SET IDENTITY_INSERT [dbo].[MyCar] OFF
/****** Object:  Table [dbo].[LoginLog]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginLog](
	[LLogID] [int] IDENTITY(1,1) NOT NULL,
	[LUserID] [int] NULL,
	[LLocationX] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LLocationY] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LDate] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LisHidden] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_LoginLog] PRIMARY KEY CLUSTERED 
(
	[LLogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[LoginLog] ON
INSERT [dbo].[LoginLog] ([LLogID], [LUserID], [LLocationX], [LLocationY], [LDate], [LisHidden]) VALUES (1, 1, N'118.798859', N'31.986742', N'2013/1/29', N'False')
SET IDENTITY_INSERT [dbo].[LoginLog] OFF
/****** Object:  Table [dbo].[JingDong]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JingDong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JingDong](
	[JID] [int] IDENTITY(1,1) NOT NULL,
	[JNum] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[JTitle] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[JUrl] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[JCategory] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[JPrice] [text] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_JingDong] PRIMARY KEY CLUSTERED 
(
	[JID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[JingDong] ON
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (66, N'￥218.00', N'Zippo打火机经典铬沙仿旧碎花207', N'http://www.360buy.com/product/100012.html', N'礼品火机烟具Zippo芝宝打火机', N'66.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (67, N'100028', N'新贵（NEWMEN）小屁股 MP-201 高级柔性护腕垫', N'http://www.360buy.com/product/100028.html', N'外设产品鼠标垫新贵新贵MP-201', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (68, N'￥228.00', N'Zippo打火机经典铬沙子200', N'http://www.360buy.com/product/100041.html', N'礼品火机烟具Zippo芝宝打火机', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (69, N'100053', N'施德楼（STAEDTLER）S317WP4 油性光盘笔 套装（采用特殊墨水，书写流畅）', N'http://www.360buy.com/product/100053.html', N'办公文仪刻录碟片/附件施德楼施德楼S317WP4', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (70, N'100073', N'松下（Panasonic）DV数码摄像带1盒', N'http://www.360buy.com/product/100073.html', N'摄影摄像摄像机松下松下数码摄像带', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (71, N'100077', N'施德楼（STAEDTLER）S317-9 黑色 光盘笔（采用特殊墨水，书写流畅）', N'http://www.360buy.com/product/100077.html', N'办公文仪刻录碟片/附件施德楼施德楼S317-9', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (72, N'￥218.00', N'Zippo打火机经典铬缎纱205', N'http://www.360buy.com/product/100111.html', N'礼品火机烟具Zippo芝宝打火机', N'66.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (73, N'100142', N'施德楼（STAEDTLER）S313-2 红色 油性光盘笔（采用特殊墨水，书写流畅）', N'http://www.360buy.com/product/100142.html', N'办公文仪刻录碟片/附件施德楼施德楼S313-2', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (74, N'100143', N'施德楼（STAEDTLER）S313-3 蓝色 油性光盘笔（采用特殊墨水，书写流畅）', N'http://www.360buy.com/product/100143.html', N'办公文仪刻录碟片/附件施德楼施德楼S313-3', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (75, N'100150', N'索尼（SONY）DV数码摄像带1个', N'http://www.360buy.com/product/100150.html', N'摄影摄像摄像机索尼索尼数码摄像带', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (76, N'100284', N'突破转换插头（德标）TZ-38插座2联', N'http://www.360buy.com/product/100284.html', N'生活电器插座突破突破TZ-38', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (77, N'100293', N'惠普（HP）C6578D 78号彩色墨盒（适用PSC750 Officejet5110 v40）', N'http://www.360buy.com/product/100293.html', N'办公打印墨盒惠普惠普C6578D78', N'215.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (78, N'100294', N'惠普（HP）C6615DA 15号黑色墨盒（适用HP PSC 750 HP Officejet v40 5110）', N'http://www.360buy.com/product/100294.html', N'办公打印墨盒惠普惠普C6615DA15', N'215.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (79, N'100295', N'惠普（HP）51645AA 45号黑色墨盒（适用Deskjet710c 830c 850c 870cxi）', N'http://www.360buy.com/product/100295.html', N'办公打印墨盒惠普惠普51645AA45', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (80, N'100297', N'惠普（HP）C8727A 27号 黑色墨盒（适用Officejet 5608 5609 5679）', N'http://www.360buy.com/product/100297.html', N'办公打印墨盒惠普惠普C8727A27', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (81, N'100298', N'惠普（HP）C8817AA 817号彩色墨盒(适用Deskjet F2238 F2288 D1568 4308)', N'http://www.360buy.com/product/100298.html', N'办公打印墨盒惠普惠普C8817AA817', N'185.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (82, N'100299', N'惠普（HP）C8816AA 816号黑色墨盒(适用 Deskjet D2468 Officejet 4308 4338)', N'http://www.360buy.com/product/100299.html', N'办公打印墨盒惠普惠普C8816AA816', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (83, N'100300', N'惠普（HP）C6656AA 56号黑色墨盒（适用Officejet 5608）', N'http://www.360buy.com/product/100300.html', N'办公打印墨盒惠普惠普C6656AA56', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (84, N'100301', N'惠普（HP）C6657AA 57号 彩色墨盒（适用2410 6110 7960 Deskjet 9680）', N'http://www.360buy.com/product/100301.html', N'办公打印墨盒惠普惠普C6657A57', N'225.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (85, N'100303', N'惠普（HP）LaserJet C7115A黑色硒鼓(适用LaserJet 1000 1005 1200系列)', N'http://www.360buy.com/product/100303.html', N'办公打印硒鼓惠普惠普LaserJetC7115A', N'459.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (86, N'100305', N'惠普（HP）LaserJet C3906F 黑色硒鼓（适用 LaserJet 5L 6L 3100 3150 ）', N'http://www.360buy.com/product/100305.html', N'办公打印硒鼓惠普惠普LaserJetC3906F', N'435.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (87, N'100306', N'突破转换插头（英标）TZ-32', N'http://www.360buy.com/product/100306.html', N'生活电器插座突破突破TZ-32', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (88, N'100307', N'突破转换插头（新国标插孔）TZ-31', N'http://www.360buy.com/product/100307.html', N'生活电器插座突破突破TZ-31', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (89, N'100332', N'爱普生（Epson）T009 彩色墨盒 C13T009133（适用PH-900/1290/1270）', N'http://www.360buy.com/product/100332.html', N'办公打印墨盒爱普生爱普生T009', N'178.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (90, N'￥78.00', N'吉列（Gillette）锋速3 剃须刀', N'http://www.360buy.com/product/100375.html', N'男士护理剃须护理吉列吉列锋速3 剃须刀', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (91, N'￥69.00', N'吉列（Gillette）锋速3突破 剃须刀', N'http://www.360buy.com/product/100376.html', N'男士护理剃须护理吉列吉列锋速3突破', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (92, N'100391', N'酷冷至尊（CoolerMaster）黄金导热硅脂', N'http://www.360buy.com/product/100391.html', N'电脑配件散热器酷冷至尊酷冷至尊黄金导热硅脂', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (93, N'￥79.00', N'吉列（Gillette）锋速3突破 刀片（4刀片）', N'http://www.360buy.com/product/100401.html', N'男士护理剃须护理吉列吉列锋速3突破', N'71.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (94, N'￥68.00', N'吉列（Gillette）锋速3刀片（4刀头）', N'http://www.360buy.com/product/100418.html', N'男士护理剃须护理吉列吉列锋速3代刀片', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (95, N'100421', N'航嘉（Huntkey）电源 冷静王钻石版2.3 额定300W', N'http://www.360buy.com/product/100421.html', N'电脑配件电源航嘉航嘉钻石版', N'209.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (96, N'100470', N'施德楼（STAEDTLER）S318-9 黑色 光盘笔（采用特殊墨水，书写流畅）', N'http://www.360buy.com/product/100470.html', N'办公文仪刻录碟片/附件施德楼施德楼S318-9', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (97, N'100471', N'施德楼（STAEDTLER）S318-2 红色 光盘笔（采用特殊墨水，书写流畅）', N'http://www.360buy.com/product/100471.html', N'办公文仪刻录碟片/附件施德楼施德楼S318-2', N'13.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (98, N'100572', N'施德楼（STAEDTLER）S313-9 黑色 光盘笔（采用特殊墨水,书写流畅）', N'http://www.360buy.com/product/100572.html', N'办公文仪刻录碟片/附件施德楼施德楼S313-9', N'13.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (99, N'100597', N'安普（AMP）6-219586-4 原装超五类网线 蓝箱 305米', N'http://www.360buy.com/product/100597.html', N'外设产品线缆安普安普网线', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (100, N'100773', N'施德楼（STAEDTLER）M317-3 蓝色 光盘笔（采用特殊墨水,书写流畅）', N'http://www.360buy.com/product/100773.html', N'办公文仪刻录碟片/附件施德楼施德楼M317-3', N'13.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (101, N'100781', N'航嘉（Huntkey）电源 磐石500 额定400W', N'http://www.360buy.com/product/100781.html', N'电脑配件电源航嘉航嘉磐石500', N'379.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (102, N'100934', N'爱普生（Epson）1900K2黑色色带芯 C13S010072（适用LQ-1600K3/1900K2+）', N'http://www.360buy.com/product/100934.html', N'办公打印色带爱普生爱普生1900K2', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (103, N'100935', N'爱普生（Epson）LQ-300K+ 黑色色带芯 C13S010067（适用LQ-300K/300K+/580K）', N'http://www.360buy.com/product/100935.html', N'办公打印色带爱普生爱普生LQ-300K', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (104, N'100940', N'惠普（HP）LaserJet C4129X 黑色硒鼓（适用 LaserJet 5000 5100 Series）', N'http://www.360buy.com/product/100940.html', N'办公打印硒鼓惠普惠普LaserJetC4129X', N'1179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (105, N'100941', N'惠普（HP）LaserJet Q2613A 黑色硒鼓（适用LaserJet 1300）', N'http://www.360buy.com/product/100941.html', N'办公打印硒鼓惠普惠普LaserJetQ2613A', N'528.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (106, N'100942', N'惠普（HP）LaserJet Q2624A 黑色硒鼓（适用LaserJet 1150）', N'http://www.360buy.com/product/100942.html', N'办公打印硒鼓惠普惠普LaserJetQ2624A', N'519.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (107, N'101077', N'佳能（Canon）EP-22 黑色硒鼓（适用LBP-810/1120）', N'http://www.360buy.com/product/101077.html', N'办公打印硒鼓佳能佳能EP-22', N'351.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (108, N'101078', N'佳能（Canon）E16 鼓粉组件（适用FC270/288/290/298/PC920/PC950）', N'http://www.360buy.com/product/101078.html', N'办公打印硒鼓佳能佳能E16', N'493.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (109, N'101081', N'佳能（Canon）NPG-20 黑色墨粉(适用IR1600/2000)', N'http://www.360buy.com/product/101081.html', N'办公打印墨粉佳能佳能NPG-20', N'175.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (110, N'101085', N'佳能（Canon）CRG 303 黑色硒鼓（适用LBP-2900 3000）', N'http://www.360buy.com/product/101085.html', N'办公打印硒鼓佳能佳能CRG 303', N'395.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (111, N'￥22.00', N'Zippo火机专用棉芯', N'http://www.360buy.com/product/101110.html', N'礼品火机烟具Zippo芝宝火机专用棉芯', N'5.50')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (112, N'￥12.00', N'Zippo火机专用火石(6粒装)', N'http://www.360buy.com/product/101111.html', N'礼品火机烟具Zippo芝宝专用火石', N'5.50')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (113, N'￥35.00', N'Zippo火机油125ml(不能航空运输)', N'http://www.360buy.com/product/101114.html', N'礼品火机烟具Zippo芝宝火机油', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (114, N'￥368.00', N'Zippo打火机 四代锡打火机363', N'http://www.360buy.com/product/101142.html', N'礼品火机烟具Zippo芝宝打火机', N'158.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (115, N'￥368.00', N'Zippo打火机四代铜362', N'http://www.360buy.com/product/101143.html', N'礼品火机烟具Zippo芝宝打火机', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (116, N'￥508.00', N'Zippo打火机森林之王20287', N'http://www.360buy.com/product/101145.html', N'礼品火机烟具Zippo芝宝打火机', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (117, N'￥508.00', N'Zippo打火机牛头骨20286', N'http://www.360buy.com/product/101146.html', N'礼品火机烟具Zippo芝宝打火机', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (118, N'￥508.00', N'Zippo打火机占边之铜徽章254BJB929', N'http://www.360buy.com/product/101148.html', N'礼品火机烟具Zippo芝宝打火机', N'198.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (119, N'￥478.00', N'Zippo打火机哈雷雄鹰展翅200HDH284', N'http://www.360buy.com/product/101149.html', N'礼品火机烟具Zippo芝宝打火机', N'155.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (120, N'￥478.00', N'Zippo打火机 哈雷地球鹰200HDH231', N'http://www.360buy.com/product/101150.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (121, N'￥508.00', N'Zippo打火机积丹尼之铜标志254BJD428', N'http://www.360buy.com/product/101152.html', N'礼品火机烟具Zippo芝宝打火机', N'168.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (122, N'￥32.00', N'ZIPPO火机可配用便携式油壶', N'http://www.360buy.com/product/101528.html', N'礼品火机烟具Zippo芝宝油壶', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (123, N'101609', N'漫步者（EDIFIER） R201T06 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/101609.html', N'时尚影音音箱漫步者漫步者R201T06', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (124, N'101610', N'漫步者（EDIFIER） E3100 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/101610.html', N'时尚影音音箱漫步者漫步者E3100', N'339.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (125, N'101613', N'漫步者（EDIFIER） R231T09 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/101613.html', N'时尚影音音箱漫步者漫步者R231T09', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (126, N'101646', N'漫步者（EDIFIER） H500 头戴式耳机 黑色', N'http://www.360buy.com/product/101646.html', N'时尚影音耳机/耳麦漫步者耳 机Edifier', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (127, N'101647', N'漫步者（EDIFIER） H800 头戴式耳机 黑色', N'http://www.360buy.com/product/101647.html', N'时尚影音耳机/耳麦漫步者漫步者H800', N'230.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (128, N'101651', N'漫步者（EDIFIER） R1900TIII 2.0声道 多媒体有源音箱 黑色', N'http://www.360buy.com/product/101651.html', N'时尚影音音箱漫步者漫步者R1900TIII', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (129, N'101665', N'漫步者（EDIFIER） R800TC 2.0声道 多媒体音箱 黑色', N'http://www.360buy.com/product/101665.html', N'时尚影音音箱漫步者漫步者R800TC', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (130, N'101666', N'漫步者（EDIFIER） R1000TC 北美版 2.0声道 多媒体音箱', N'http://www.360buy.com/product/101666.html', N'时尚影音音箱漫步者漫步者R1000TC', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (131, N'101709', N'安普（AMP）6-219507-4 原装超五类网线 白箱 305米', N'http://www.360buy.com/product/101709.html', N'外设产品线缆安普安普网线', N'889.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (132, N'￥16.00', N'西妮5.5洗液男士型100ml', N'http://www.360buy.com/product/101733.html', N'男士护理身体护理西妮西妮洗液', N'9.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (133, N'￥16.00', N'西妮5.5洗液女士专用（新配方）100ml', N'http://www.360buy.com/product/101735.html', N'女性护理洗液西妮西妮洗液', N'9.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (134, N'101842', N'罗技（Logitech）木星轨迹球', N'http://www.360buy.com/product/101842.html', N'外设产品鼠标罗技罗技星轨迹球', N'175.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (135, N'102017', N'惠威（HiVi）多媒体音箱 M-20W 2.1声道', N'http://www.360buy.com/product/102017.html', N'时尚影音音箱惠威惠威M-20W', N'750.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (136, N'102020', N'惠威（HiVi）多媒体音箱 杜希S400 2.1声道 银色', N'http://www.360buy.com/product/102020.html', N'时尚影音音箱惠威惠威S400', N'380.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (137, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列双子座0.6223.8GEMI', N'http://www.360buy.com/product/102181.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (138, N'￥378.00', N'维氏VICTORINOX瑞士军刀标准系列猎人迷彩1.3713.94', N'http://www.360buy.com/product/102191.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (139, N'￥458.00', N'维氏VICTORINOX瑞士军刀野外系列猎手0.8873', N'http://www.360buy.com/product/102192.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (140, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列水瓶0.6223.8.AQUA', N'http://www.360buy.com/product/102194.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (141, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列巨蟹0.6223.2CANC', N'http://www.360buy.com/product/102195.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (142, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列双鱼座0.6223.2PISC', N'http://www.360buy.com/product/102196.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (143, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列摩羯座0.6223.3CAPR', N'http://www.360buy.com/product/102197.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (144, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列天蝎0.6223.2SCOR', N'http://www.360buy.com/product/102198.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (145, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列射手座0.6223.SAG', N'http://www.360buy.com/product/102208.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (146, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列金牛座0.6223.TAUR', N'http://www.360buy.com/product/102209.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (147, N'￥798.00', N'维氏VICTORINOX瑞士军刀标准系列瑞士冠军1.6795', N'http://www.360buy.com/product/102210.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'337.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (148, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列处女座0.6223.VIRG', N'http://www.360buy.com/product/102211.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (149, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列狮子座0.6223.LEO', N'http://www.360buy.com/product/102212.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'98.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (150, N'￥928.00', N'维氏VICTORINOX瑞士军刀透明系列电脑大师1.7725.T', N'http://www.360buy.com/product/102213.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'439.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (151, N'￥308.00', N'维氏VICTORINOX瑞士军刀标准系列攀登者1.3703', N'http://www.360buy.com/product/102214.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (152, N'￥348.00', N'维氏VICTORINOX瑞士军刀标准系列猎人1.3713', N'http://www.360buy.com/product/102215.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (153, N'￥448.00', N'维氏VICTORINOX瑞士军刀标准系列豪华修补匠1.4723', N'http://www.360buy.com/product/102216.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (154, N'￥153.00', N'维氏VICTORINOX瑞士军刀迷你系列服务员0.3303', N'http://www.360buy.com/product/102221.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (155, N'￥193.00', N'维氏VICTORINOX瑞士军刀迷你系列运动员0.3803', N'http://www.360buy.com/product/102222.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (156, N'￥198.00', N'维氏VICTORINOX瑞士军刀星座系列白羊座0.6223.ARIE', N'http://www.360buy.com/product/102268.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (157, N'102312', N'品胜（PISEN）QM71D 数码相机电池', N'http://www.360buy.com/product/102312.html', N'数码配件电池/充电器品胜品胜SONY QM71D', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (158, N'￥379.00', N'维氏VICTORINOX瑞士军刀礼盒套装(1.3703+军刀皮套+礼盒)', N'http://www.360buy.com/product/102322.html', N'礼品瑞士军刀维氏维氏礼盒套装(1.3703+军刀皮套+礼盒)', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (159, N'￥168.00', N'维氏VICTORINOX瑞士军刀迷你系列新兵0.2503', N'http://www.360buy.com/product/102328.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'71.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (160, N'￥238.00', N'维氏VICTORINOX瑞士军刀迷你系列逍遥派0.6363', N'http://www.360buy.com/product/102332.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'107.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (161, N'￥598.00', N'维氏VICTORINOX瑞士军刀标准系列工匠1.3773', N'http://www.360buy.com/product/102333.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (162, N'￥258.00', N'维氏VICTORINOX瑞士军刀瑞士卡系列0.7106(灰+红刀)', N'http://www.360buy.com/product/102334.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (163, N'￥258.00', N'维氏VICTORINOX瑞士军刀瑞士卡系列0.7103(黑+红刀)', N'http://www.360buy.com/product/102335.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'128.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (164, N'￥258.00', N'维氏VICTORINOX瑞士军刀瑞士卡系列0.7122.T2', N'http://www.360buy.com/product/102336.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (165, N'102392', N'品胜（PISEN）EL5 数码相机电池', N'http://www.360buy.com/product/102392.html', N'数码配件电池/充电器品胜品胜EL5', N'66.00')
GO
print 'Processed 100 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (166, N'102412', N'品胜（PISEN）BP511 数码相机电池', N'http://www.360buy.com/product/102412.html', N'数码配件电池/充电器品胜品胜BP511', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (167, N'102414', N'品胜（PISEN）NB3L 数码相机电池', N'http://www.360buy.com/product/102414.html', N'数码配件电池/充电器品胜品胜NB3L', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (168, N'102415', N'品胜（PISEN）NB2L 数码相机电池', N'http://www.360buy.com/product/102415.html', N'数码配件电池/充电器品胜品胜NB2L', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (169, N'102416', N'品胜（PISEN）NB1L 数码相机电池', N'http://www.360buy.com/product/102416.html', N'数码配件电池/充电器品胜品胜NB1L', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (170, N'102503', N'三菱（MITSUBISHI）DVD-R 16速 4.7G 标准版 台产 单片盒装5片 刻录盘', N'http://www.360buy.com/product/102503.html', N'办公文仪刻录碟片/附件三菱三菱DVD-R', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (171, N'102504', N'漫步者（EDIFIER） S2000V 2.0声道 多媒体音箱', N'http://www.360buy.com/product/102504.html', N'时尚影音音箱漫步者漫步者S2000V', N'1789.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (172, N'102644', N'航嘉（Huntkey）磐石400 电源（ATX 2.31版/额定350W）', N'http://www.360buy.com/product/102644.html', N'电脑配件电源航嘉航嘉磐石400', N'275.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (173, N'102674', N'思科（Cisco）SG100-24（SR2024T） 24口千兆+2光口非网管交换机', N'http://www.360buy.com/product/102674.html', N'网络产品交换机思科思科SR2024T', N'1499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (174, N'102714', N'松下（Panasonic）DV清洗带1盒', N'http://www.360buy.com/product/102714.html', N'摄影摄像摄像机松下松下数码摄像带', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (175, N'102818', N'声丽（Senic） ST-808 耳麦 头戴式 双插头 线控 网吧专用 黑色', N'http://www.360buy.com/product/102818.html', N'时尚影音耳机/耳麦硕美科硕美科ST-808', N'23.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (176, N'102845', N'友讯（D-Link）10/100M DFE-530TX PCI网卡', N'http://www.360buy.com/product/102845.html', N'网络产品网卡D-Link友讯DFE-530TX', N'42.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (177, N'102846', N'TP-LINK TF-3239DL 10/100M自适应PCI网卡', N'http://www.360buy.com/product/102846.html', N'网络产品网卡TP-LINKTP-LINKTF-3239DL', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (178, N'￥718.00', N'Zippo打火机贵族花20903', N'http://www.360buy.com/product/102918.html', N'礼品火机烟具Zippo芝宝打火机', N'209.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (179, N'￥438.00', N'Zippo打火机蓝腰带20894', N'http://www.360buy.com/product/102921.html', N'礼品火机烟具Zippo芝宝打火机', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (180, N'￥508.00', N'Zippo打火机高山鹰20854', N'http://www.360buy.com/product/102924.html', N'礼品火机烟具Zippo芝宝打火机', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (181, N'￥508.00', N'Zippo打火机木狼行20855', N'http://www.360buy.com/product/102925.html', N'礼品火机烟具Zippo芝宝打火机', N'158.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (182, N'102939', N'威宝（Verbatim）CD-R 52速 700M 台产 桶装10片 光雕刻录盘', N'http://www.360buy.com/product/102939.html', N'办公文仪刻录碟片/附件Verbatim威宝DVD-R', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (183, N'102940', N'威宝（Verbatim）CD-RW 12速 台产 可重复擦写 单片盒装 刻录盘', N'http://www.360buy.com/product/102940.html', N'办公文仪刻录碟片/附件Verbatim威宝CD-RW 12速', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (184, N'102974', N'品胜（PISEN）“小灵充”快速充电器套装（小灵充+800mAh AAA镍氢充电电池*2）', N'http://www.360buy.com/product/102974.html', N'数码配件电池/充电器品胜品胜充电器套装', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (185, N'103003', N'品胜（PISEN）AA镍氢充电电池池 1800mAh（2只装）', N'http://www.360buy.com/product/103003.html', N'数码配件电池/充电器品胜品胜1800mAh', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (186, N'103134', N'品胜（PISEN）AAA镍氢充电电池 600mAh （2只装）', N'http://www.360buy.com/product/103134.html', N'数码配件电池/充电器品胜品胜600mAh', N'14.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (187, N'103135', N'品胜（PISEN）AAA镍氢充电电池 800mAh（2只装）', N'http://www.360buy.com/product/103135.html', N'数码配件电池/充电器品胜品胜800mAh', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (188, N'103165', N'飞科 (FLYCO) FS607 浮动往复式剃须刀', N'http://www.360buy.com/product/103165.html', N'个护健康剃须刀飞科飞科FS607', N'33.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (189, N'￥310.00', N'乐扣乐扣保鲜盒10件套HPL836S001', N'http://www.360buy.com/product/103182.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒10件套', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (190, N'103223', N'品胜（PISEN）快易充AA/AAA镍氢电池充电器', N'http://www.360buy.com/product/103223.html', N'数码配件电池/充电器品胜品胜充电器', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (191, N'103238', N'佳能（Canon）BCI-24C 彩色墨盒 2支装', N'http://www.360buy.com/product/103238.html', N'办公打印墨盒佳能佳能BCI-24C', N'232.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (192, N'103249', N'麦克赛尔（maxell）CD-R 48速 700M MQ系列 5片盒装 刻录盘', N'http://www.360buy.com/product/103249.html', N'办公文仪刻录碟片/附件maxell麦克赛尔CD-R 48速', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (193, N'103289', N'铁三角（Audio-Technica）ATH-AD900 HIFI耳机', N'http://www.360buy.com/product/103289.html', N'时尚影音耳机/耳麦铁三角铁三角ATH-AD900', N'1745.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (194, N'103306', N'铁三角（Audio-Technica）ATH-AD1000 HIFI耳机', N'http://www.360buy.com/product/103306.html', N'时尚影音耳机/耳麦铁三角铁三角ATH-AD1000', N'2380.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (195, N'103307', N'铁三角（audio-technica） ATH-AD2000 HIFI头戴式耳机', N'http://www.360buy.com/product/103307.html', N'时尚影音耳机/耳麦铁三角铁三角ATH-AD2000', N'4380.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (196, N'103336', N'漫步者（EDIFIER） R501T04 5.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/103336.html', N'时尚影音音箱漫步者漫步者R501T04', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (197, N'103352', N'铁三角（Audio-Technica）AT-HA20耳机放大器', N'http://www.360buy.com/product/103352.html', N'时尚影音耳机/耳麦铁三角铁三角AT-HA20', N'850.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (198, N'103376', N'品胜（PISEN）NB4L数码相机电池', N'http://www.360buy.com/product/103376.html', N'数码配件电池/充电器品胜品胜NB4L', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (199, N'103377', N'品胜数码摄像机/数码相机电池充电器（索尼FM50）', N'http://www.360buy.com/product/103377.html', N'数码配件电池/充电器品胜品胜FM50', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (200, N'103403', N'森海塞尔（Sennheiser）耳机 HD650 开放动圈式高保真耳机', N'http://www.360buy.com/product/103403.html', N'时尚影音耳机/耳麦森海塞尔森海塞尔HD650', N'2659.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (201, N'103415', N'森海塞尔（Sennheiser）耳机 HD280 Pro 封闭动圈式专业监听级耳机', N'http://www.360buy.com/product/103415.html', N'时尚影音耳机/耳麦森海塞尔森海塞尔HD280 pro DJ', N'829.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (202, N'103428', N'航嘉（Huntkey）电源 冷静王至尊版 ATX12V 2.3版 额定400W', N'http://www.360buy.com/product/103428.html', N'电脑配件电源航嘉航嘉至尊版', N'369.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (203, N'103463', N'品胜（PISEN）AA镍氢充电电池 2300mAh（2只装）', N'http://www.360buy.com/product/103463.html', N'数码配件电池/充电器品胜品胜2300mAh', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (204, N'103464', N'品胜（PISEN）快易充充电电池套装 (快易充+2300mAh AA镍氢充电电池*4)', N'http://www.360buy.com/product/103464.html', N'数码配件电池/充电器品胜品胜2300mAh5', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (205, N'103546', N'品胜（PISEN）数码宝电池充电器（数码宝充电器+600mAh AAA镍氢充电电池*2）', N'http://www.360buy.com/product/103546.html', N'数码配件电池/充电器品胜品胜600mAh', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (206, N'￥108.30', N'乐扣乐扣5L药箱HPL891', N'http://www.360buy.com/product/103593.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣药箱', N'69.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (207, N'103662', N'Gigaset | SIEMENS 西门子802办公电话(淡灰）', N'http://www.360buy.com/product/103662.html', N'生活电器电话机西门子西门子802', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (208, N'103666', N'Gigaset | SIEMENS 西门子802办公电话(黑色)', N'http://www.360buy.com/product/103666.html', N'生活电器电话机西门子西门子802', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (209, N'103689', N'松下（Panasonic） EV2610 按摩器', N'http://www.360buy.com/product/103689.html', N'个护健康按摩器松下松下EV2610', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (210, N'103692', N'肯高（KenKo）原装 UV 77mm', N'http://www.360buy.com/product/103692.html', N'摄影摄像滤镜肯高肯高77mm', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (211, N'103714', N'漫步者（EDIFIER） R333T 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/103714.html', N'时尚影音音箱漫步者漫步者R333T', N'419.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (212, N'103786', N'品胜（PISEN）5001 数码相机电池', N'http://www.360buy.com/product/103786.html', N'数码配件电池/充电器品胜品胜5001', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (213, N'103800', N'科密(comet) C-968 多功能大型高保密办公碎纸机（碎9张纸/碎光盘/卡片/书钉针/24升纸屑桶）', N'http://www.360buy.com/product/103800.html', N'办公打印碎纸机科密科密C-968', N'1999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (214, N'103827', N'佳能（Canon）LASERSHOT LBP2900 黑白激光打印机', N'http://www.360buy.com/product/103827.html', N'办公打印打印机佳能佳能LASERSHOTLBP2900', N'939.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (215, N'103835', N'惠普（HP）LaserJet 1020 Plus 黑白激光打印机', N'http://www.360buy.com/product/103835.html', N'办公打印打印机惠普惠普LaserJet 1020', N'1159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (216, N'103889', N'惠普（HP）LaserJet Q2612A黑色硒鼓(适用1010 1012 1015 1020 3050 M1005 M1319f)', N'http://www.360buy.com/product/103889.html', N'办公打印硒鼓惠普惠普LaserJetQ2612A', N'419.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (217, N'103890', N'惠普（HP）C8766ZZ 855号彩色墨盒（适用Photosmart B8338 9808 K7108）', N'http://www.360buy.com/product/103890.html', N'办公打印墨盒惠普惠普C8766ZZ855', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (218, N'103891', N'爱普生（Epson）T0473 洋红色墨盒 C13T047380（适用StylusC63/C65/CX3500）', N'http://www.360buy.com/product/103891.html', N'办公打印墨盒爱普生爱普生T0473', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (219, N'103892', N'惠普（HP）C8816BA 816号 简黑墨盒（适用F2238 F2288 4308 7268）', N'http://www.360buy.com/product/103892.html', N'办公打印墨盒惠普惠普C8816BA816', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (220, N'103893', N'惠普（HP）C9363ZZ 857号彩色墨盒（适用B8338 Deskjet 9808 K7108）', N'http://www.360buy.com/product/103893.html', N'办公打印墨盒惠普惠普C9363ZZ857', N'275.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (221, N'103894', N'爱普生（Epson）T057 黑色墨盒 C13T057180（适用ME1/ME1+/ME100）', N'http://www.360buy.com/product/103894.html', N'办公打印墨盒爱普生爱普生T057', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (222, N'103895', N'爱普生（Epson）T058 彩色墨盒 C13T058080（适用ME1/ME100）', N'http://www.360buy.com/product/103895.html', N'办公打印墨盒爱普生爱普生T058', N'72.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (223, N'103905', N'爱普生（Epson）T0474 黄色墨盒 C13T047480（适用StylusC63/C65/X3500）', N'http://www.360buy.com/product/103905.html', N'办公打印墨盒爱普生爱普生T0474', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (224, N'103906', N'爱普生（Epson）T0472 青色墨盒 C13T047280（适用StylusC63/C65/CX3500）', N'http://www.360buy.com/product/103906.html', N'办公打印墨盒爱普生爱普生T0472', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (225, N'103907', N'爱普生（Epson）T0461 黑色墨盒 C13T046180（适用StylusC63/C65）', N'http://www.360buy.com/product/103907.html', N'办公打印墨盒爱普生爱普生T0461', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (226, N'103908', N'惠普（HP）C8765ZZ 852号 黑色墨盒（适用B8338 Deskjet 9808 Officejet H470b）', N'http://www.360buy.com/product/103908.html', N'办公打印墨盒惠普惠普C8765ZZ852', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (227, N'103942', N'地狱火(FIRE-PAD）二代鼠标垫（HELL 2代）', N'http://www.360buy.com/product/103942.html', N'外设产品鼠标垫地狱火地狱火HELL 2代', N'22.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (228, N'￥45.00', N'乐扣700ML运动杯HPP712', N'http://www.360buy.com/product/104039.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣运动杯', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (229, N'104080', N'TP-LINK TL-R460+ 多功能宽带路由器', N'http://www.360buy.com/product/104080.html', N'网络产品路由器TP-LINKTP-LINKTL-R460+', N'188.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (230, N'104151', N'爱普生（EPSON）LQ-630K 针式打印机（80列平推式）', N'http://www.360buy.com/product/104151.html', N'办公打印打印机爱普生爱普生LQ-630K', N'1569.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (231, N'104153', N'爱普生（EPSON）LQ-1600KIIIH 针式打印机（136列卷筒式）', N'http://www.360buy.com/product/104153.html', N'办公打印打印机爱普生爱普生LQ-1600KIIIH', N'2599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (232, N'￥30.00', N'乐扣350ML运动杯HPP708', N'http://www.360buy.com/product/104220.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣运动杯', N'19.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (233, N'￥38.00', N'乐扣500ML运动水壶HPP710', N'http://www.360buy.com/product/104237.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣水壶', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (234, N'104255', N'超频三（pccooler）小鱼儿 纯铜北桥散热器', N'http://www.360buy.com/product/104255.html', N'电脑配件散热器超频三超频三小鱼儿', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (235, N'104256', N'超频三（pccooler）金鱼 纯铜显存散热片', N'http://www.360buy.com/product/104256.html', N'电脑配件散热器超频三超频三金鱼', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (236, N'104259', N'超频三（pccooler）冰蚕 纯铜内存散热片', N'http://www.360buy.com/product/104259.html', N'电脑配件散热器超频三超频三冰蚕', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (237, N'104316', N'麦克赛尔（maxell）DVD-R 16速 4.7G 台产 桶装10片 刻录盘', N'http://www.360buy.com/product/104316.html', N'办公文仪刻录碟片/附件maxell麦克赛尔DVD-R 16速', N'21.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (238, N'104318', N'麦克赛尔（maxell）DVD+R 16速 4.7G 台产 桶装10片 刻录盘', N'http://www.360buy.com/product/104318.html', N'办公文仪刻录碟片/附件maxell麦克赛尔DVD+R 16速', N'21.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (239, N'104428', N'肯高（KenKo）原装 UV 67mm', N'http://www.360buy.com/product/104428.html', N'摄影摄像滤镜肯高肯高67mm', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (240, N'104469', N'惠普（HP）C4844A 10号黑色墨盒（适用Business Inkjet 2000 2500系列）', N'http://www.360buy.com/product/104469.html', N'办公打印墨盒惠普惠普C4844A', N'215.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (241, N'104508', N'惠普（HP）LaserJet Q5949A黑色硒鼓(适用LaserJet1320 3392)', N'http://www.360buy.com/product/104508.html', N'办公打印硒鼓惠普惠普LaserJetQ5949A', N'539.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (242, N'104527', N'爱普生（Epson）T0491 黑色墨盒 C13T049180（适用Photo R230/R210/R310 ）', N'http://www.360buy.com/product/104527.html', N'办公打印墨盒爱普生爱普生T0491', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (243, N'104528', N'爱普生（Epson）T0492 青色墨盒 C13T049280（适用Photo R210/230/310）', N'http://www.360buy.com/product/104528.html', N'办公打印墨盒爱普生爱普生T0492', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (244, N'104529', N'爱普生（Epson）T0493 洋红色墨盒 C13T049380（适用Photo R210/230/310）', N'http://www.360buy.com/product/104529.html', N'办公打印墨盒爱普生爱普生T0493', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (245, N'104530', N'爱普生（Epson）T0494 黄色墨盒 C13T049480（适用Photo R210/230/310）', N'http://www.360buy.com/product/104530.html', N'办公打印墨盒爱普生爱普生T0494', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (246, N'104531', N'爱普生（Epson）T0495 淡青色墨盒 C13T049580（适用PhotoR210/230/310）', N'http://www.360buy.com/product/104531.html', N'办公打印墨盒爱普生爱普生T0495', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (247, N'104532', N'爱普生（Epson）T0496 淡洋红色墨盒 C13T049680（适用PhotoR210/230/310）', N'http://www.360buy.com/product/104532.html', N'办公打印墨盒爱普生爱普生T0496', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (248, N'104537', N'三星（SAMSUNG）ML-1710D3 黑色硒鼓（适用ML-1510 1710 1740 1750,SCX-4016 4116 4216F )', N'http://www.360buy.com/product/104537.html', N'办公打印硒鼓三星三星ML-1710D3', N'566.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (249, N'104538', N'爱普生（Epson）T007 黑色墨盒 C13T007133（适用790/870/875DC）', N'http://www.360buy.com/product/104538.html', N'办公打印墨盒爱普生爱普生T007', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (250, N'104539', N'爱普生（Epson）T008 彩色墨盒 C13T008133（适用790/870/875DC）', N'http://www.360buy.com/product/104539.html', N'办公打印墨盒爱普生爱普生T008', N'120.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (251, N'104544', N'爱普生（Epson）T026 黑色墨盒 C13T026131（适用Photo810/830/830U）', N'http://www.360buy.com/product/104544.html', N'办公打印墨盒爱普生爱普生T026', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (252, N'104545', N'爱普生（Epson）T027 彩色墨盒 C13T027133BC（适用Photo810/830/830U）', N'http://www.360buy.com/product/104545.html', N'办公打印墨盒爱普生爱普生T027', N'125.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (253, N'104546', N'爱普生（Epson）T028 黑色墨盒 C13T028131（适用STYLUS C60/C61/CX3100）', N'http://www.360buy.com/product/104546.html', N'办公打印墨盒爱普生爱普生T028', N'180.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (254, N'104549', N'TP-LINK TL-SF1016S 16口百兆非网管交换机', N'http://www.360buy.com/product/104549.html', N'网络产品交换机TP-LINKTP-LINKTL-SF1016s', N'265.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (255, N'104550', N'TP-LINK TL-SF1024S 24口百兆非网管交换机', N'http://www.360buy.com/product/104550.html', N'网络产品交换机TP-LINKTP-LINKTL-SF1024S', N'395.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (256, N'104584', N'肯高（KenKo）原装 UV 62mm', N'http://www.360buy.com/product/104584.html', N'摄影摄像滤镜肯高肯高62mm', N'73.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (257, N'￥20.00', N'乐扣乐扣470ML搅拌杯HPL931H', N'http://www.360buy.com/product/104608.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣搅拌杯', N'11.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (258, N'￥26.00', N'乐扣乐扣690ML搅拌杯HPL934H', N'http://www.360buy.com/product/104609.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣搅拌杯', N'17.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (259, N'104616', N'飞科 (FLYCO) FS325 浮动旋转式剃须刀 三刀头', N'http://www.360buy.com/product/104616.html', N'个护健康剃须刀飞科飞科FS325', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (260, N'104638', N'TP-LINK TL-R478 高速宽带路由器', N'http://www.360buy.com/product/104638.html', N'网络产品路由器TP-LINKTP-LINKTL-R478', N'389.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (261, N'104737', N'乐之邦（MUSILAND）莫邪Digital 2010版 声卡（PCI接口）', N'http://www.360buy.com/product/104737.html', N'电脑配件声卡/扩展卡乐之邦乐之邦莫邪Digital 2010版', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (262, N'104743', N'漫步者（EDIFIER） R233T 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/104743.html', N'时尚影音音箱漫步者漫步者R233T 2.1', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (263, N'104748', N'威刚（ADATA）万紫千红 DDR 400 1G台式机内存条', N'http://www.360buy.com/product/104748.html', N'电脑配件内存威刚威刚万紫千红 DDR400 1G', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (264, N'104774', N'肯高（KenKo）原装 UV 58mm', N'http://www.360buy.com/product/104774.html', N'摄影摄像滤镜肯高肯高58mm', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (265, N'104785', N'飞科 (FLYCO) FS326 浮动旋转式剃须刀 三刀头 1小时快充 豪华精美皮套', N'http://www.360buy.com/product/104785.html', N'个护健康剃须刀飞科飞科FS326', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (266, N'104786', N'飞科 (FLYCO) FS820 浮动旋转式剃须刀 双刀头', N'http://www.360buy.com/product/104786.html', N'个护健康剃须刀飞科飞科FS820', N'52.00')
GO
print 'Processed 200 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (267, N'104810', N'航嘉（Huntkey）宽幅王二代 电源（额定350W）', N'http://www.360buy.com/product/104810.html', N'电脑配件电源航嘉航嘉宽幅王', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (268, N'104848', N'信发（TRNFA) 837B 12位数电子计算器', N'http://www.360buy.com/product/104848.html', N'办公文仪计算器信发信发837B', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (269, N'104851', N'信发（TRNFA) TR-1200V 12位数快速反应电子计算器', N'http://www.360buy.com/product/104851.html', N'办公文仪计算器信发信发TR-1200V', N'17.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (270, N'104852', N'佳能（Canon）WS-1200H 12位数电子计算器', N'http://www.360buy.com/product/104852.html', N'办公文仪计算器佳能佳能WS-1200H 12', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (271, N'￥408.00', N'Zippo打火机蓝冰和平21055', N'http://www.360buy.com/product/104854.html', N'礼品火机烟具Zippo芝宝打火机', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (272, N'￥368.00', N'维氏VICTORINOX瑞士军刀迷你小冠军0.6385', N'http://www.360buy.com/product/104875.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (273, N'104889', N'肯高（KenKo）原装CPL 55mm圆偏振镜', N'http://www.360buy.com/product/104889.html', N'摄影摄像滤镜肯高肯高55mm', N'163.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (274, N'104899', N'肯高（KenKo）原装CPL 58mm圆偏振镜', N'http://www.360buy.com/product/104899.html', N'摄影摄像滤镜肯高肯高58mm', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (275, N'104900', N'肯高（KenKo）原装CPL 77mm圆偏振镜', N'http://www.360buy.com/product/104900.html', N'摄影摄像滤镜肯高肯高77mm', N'378.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (276, N'104903', N'肯高（Kenko）MC UV 30mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/104903.html', N'摄影摄像滤镜肯高肯高30mm', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (277, N'104908', N'肯高（Kenko）MC UV 37mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/104908.html', N'摄影摄像滤镜肯高肯高37mm', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (278, N'104911', N'肯高（Kenko）MC UV 55mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/104911.html', N'摄影摄像滤镜肯高肯高55mm', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (279, N'104939', N'肯高（Kenko）MC UV 58mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/104939.html', N'摄影摄像滤镜肯高肯高58mm', N'86.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (280, N'104948', N'肯高（KenKo）原装 UV 55mm', N'http://www.360buy.com/product/104948.html', N'摄影摄像滤镜肯高肯高55mm', N'52.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (281, N'104984', N'肯高（KenKo）原装 UV 52mm', N'http://www.360buy.com/product/104984.html', N'摄影摄像滤镜肯高肯高52mm', N'56.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (282, N'105010', N'TT 8cm三色炫灯机箱风扇（A1907）红蓝绿三色灯/8025', N'http://www.360buy.com/product/105010.html', N'电脑配件散热器TtTTA1907 8cm三色炫灯机箱风扇', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (283, N'105011', N'肯高（KenKo）原装 UV 43mm', N'http://www.360buy.com/product/105011.html', N'摄影摄像滤镜肯高肯高43mm', N'60.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (284, N'105012', N'TT 9cm蓝色炫光机箱风扇（A1911）三颗蓝灯/9025', N'http://www.360buy.com/product/105012.html', N'电脑配件散热器Tt散热器A1911', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (285, N'105014', N'TT 12cm蓝色炫光机箱风扇（A1926）三颗蓝灯/12025', N'http://www.360buy.com/product/105014.html', N'电脑配件散热器TtTTA1926 12cm蓝色炫光机箱风扇', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (286, N'105015', N'TT 12cm三色炫光机箱风扇（A1929）红蓝绿三色灯/12025', N'http://www.360buy.com/product/105015.html', N'电脑配件散热器TtTTA1929', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (287, N'105086', N'尼康（Nikon） AF-S DX 12-24mm f/4G 自动对焦镜头', N'http://www.360buy.com/product/105086.html', N'摄影摄像镜头尼康尼康AF-S DX 12-24mm f/4G', N'7699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (288, N'105087', N'尼康（Nikon） AF-S 17-35mm f/2.8D 镜头', N'http://www.360buy.com/product/105087.html', N'摄影摄像镜头尼康尼康AF-S 17-35mm f/2.8D', N'10949.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (289, N'105088', N'尼康（Nikon） AF-S DX 17-55mm f/2.8G IF-ED 自动对焦镜头S型', N'http://www.360buy.com/product/105088.html', N'摄影摄像镜头尼康尼康AF-S DX 17-55mm f/2.8G IF-ED', N'9999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (290, N'105125', N'尼康（Nikon） 50mm 1.4D 镜头', N'http://www.360buy.com/product/105125.html', N'摄影摄像镜头尼康尼康50mm 1.4D', N'1999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (291, N'105126', N'尼康（Nikon） 50mm 1.8D 镜头', N'http://www.360buy.com/product/105126.html', N'摄影摄像镜头尼康尼康50mm 1.8D', N'749.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (292, N'105129', N'尼康（Nikon） AF 70-300mm f/4-5.6G 镜头', N'http://www.360buy.com/product/105129.html', N'摄影摄像镜头尼康尼康70-300mm F/4-5.6G', N'749.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (293, N'105130', N'尼康（Nikon） AF 80-200mm f/2.8D ED 镜头', N'http://www.360buy.com/product/105130.html', N'摄影摄像镜头尼康尼康AF 80-200mm f/2.8D ED', N'6989.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (294, N'105132', N'尼康（Nikon） AF 80-400mm f/4.5-5.6D ED VR 防抖镜头', N'http://www.360buy.com/product/105132.html', N'摄影摄像镜头尼康尼康AF 80-400mm f/4.5-5.6D ED VR', N'9899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (295, N'105227', N'GODEX条码打印机专用卷纸 （双排）', N'http://www.360buy.com/product/105227.html', N'办公打印打印机GODEXGODEX卷纸', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (296, N'105229', N'GODEX条码打印机专用色带', N'http://www.360buy.com/product/105229.html', N'办公打印打印机GODEXGODEX专用色带', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (297, N'105278', N'秋叶原（CHOSERL）Q552 升级版多层屏蔽USB2.0传输线 1.5米', N'http://www.360buy.com/product/105278.html', N'外设产品线缆秋叶原秋叶原Q552', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (298, N'105297', N'威宝（Verbatim）DVD+R 16速 4.7G 10片盒装 光雕 刻录盘', N'http://www.360buy.com/product/105297.html', N'办公文仪刻录碟片/附件Verbatim威宝DVD+R', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (299, N'105298', N'秋叶原（CHOSERL）MTS-92 国标高级旅游专用转换器（带地线）', N'http://www.360buy.com/product/105298.html', N'外设产品插座秋叶原秋叶原MTS-92', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (300, N'105303', N'秋叶原（CHOSERL）MTS-97 一转二高级电源转换器', N'http://www.360buy.com/product/105303.html', N'外设产品插座秋叶原秋叶原MTS-97', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (301, N'105304', N'秋叶原（CHOSERL）MTS-98 一转三高级电源转换器', N'http://www.360buy.com/product/105304.html', N'外设产品插座秋叶原秋叶原MTS-98', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (302, N'105305', N'秋叶原（CHOSERL）Q550 升级版镀金插头逐行扫描VGA线 针/针 3米', N'http://www.360buy.com/product/105305.html', N'外设产品线缆秋叶原秋叶原Q550', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (303, N'105365', N'三堡（SANBAO）HT-210C 网线钳', N'http://www.360buy.com/product/105365.html', N'外设产品电脑工具三堡三堡HT-210C', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (304, N'105425', N'漫步者（EDIFIER） E1100 PLUS 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/105425.html', N'时尚影音音箱漫步者漫步者E1100有源音箱', N'309.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (305, N'105480', N'惠普（HP）LaserJet Q6000A黑色硒鼓（适用LaserJet 1600 2600 2605系列 CM1015 CM1017）', N'http://www.360buy.com/product/105480.html', N'办公打印硒鼓惠普惠普LaserJetQ6000A', N'509.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (306, N'105520', N'惠普（HP）LaserJet Q6002A 黄色硒鼓（适用LaserJet 1600 2600 2605系列 CM1015 CM1017）', N'http://www.360buy.com/product/105520.html', N'办公打印硒鼓惠普惠普LaserJetQ6002A', N'559.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (307, N'105521', N'惠普（HP）LaserJet Q6003A 品红色硒鼓（适用LaserJet 1600 2600 2605系列 CM1015 CM1017）', N'http://www.360buy.com/product/105521.html', N'办公打印硒鼓惠普惠普LaserJetQ6003A', N'559.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (308, N'105579', N'肯高（KenKo）MC UV 67mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/105579.html', N'摄影摄像滤镜肯高肯高MC UV 67mm', N'142.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (309, N'105580', N'肯高（KenKo）MC UV 72mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/105580.html', N'摄影摄像滤镜肯高肯高MC UV 72mm', N'143.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (310, N'105581', N'肯高（Kenko）MC UV 77mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/105581.html', N'摄影摄像滤镜肯高肯高77mm', N'186.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (311, N'105582', N'肯高（KenKo）原装CPL 62mm圆偏振镜', N'http://www.360buy.com/product/105582.html', N'摄影摄像滤镜肯高肯高62mm', N'206.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (312, N'105583', N'肯高（KenKo）原装CPL 72mm圆偏振镜', N'http://www.360buy.com/product/105583.html', N'摄影摄像滤镜肯高肯高72mm', N'315.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (313, N'105590', N'肯高（KenKo）原装 UV 37mm', N'http://www.360buy.com/product/105590.html', N'摄影摄像滤镜肯高肯高37mm', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (314, N'105644', N'航嘉（Huntkey）电源 多核DH6 额定400W', N'http://www.360buy.com/product/105644.html', N'电脑配件电源航嘉航嘉DH6', N'309.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (315, N'105645', N'铼德（RITEK）CD-R 48速 800M 90分钟 桶装25片 大容量 刻录盘', N'http://www.360buy.com/product/105645.html', N'办公文仪刻录碟片/附件铼德铼德CD-R 48', N'32.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (316, N'105646', N'铼德（RITEK）CD-R 32速 Audio 音乐专用 桶装25片 刻录盘', N'http://www.360buy.com/product/105646.html', N'办公文仪刻录碟片/附件铼德铼德CD-R 32速', N'33.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (317, N'105720', N'创新（Creative）Audigy Value 声卡（PCI接口）', N'http://www.360buy.com/product/105720.html', N'电脑配件声卡/扩展卡创新创新Audigy Value', N'239.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (318, N'105936', N'创新（Creative） Headset HS-300耳麦', N'http://www.360buy.com/product/105936.html', N'时尚影音耳机/耳麦创新创新HS-300', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (319, N'105943', N'创新（Creative） EP-630耳塞(黑）', N'http://www.360buy.com/product/105943.html', N'时尚影音耳机/耳麦创新创新EP-630', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (320, N'￥478.00', N'Zippo打火机蓝冰哈雷幽灵20711', N'http://www.360buy.com/product/106032.html', N'礼品火机烟具Zippo芝宝打火机', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (321, N'106037', N'罗技（Logitech）回旋钛翼 3D飞行摇杆', N'http://www.360buy.com/product/106037.html', N'外设产品游戏设备罗技罗技回旋钛翼', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (322, N'106056', N'品胜 NP20 数码电池 适用于卡西欧Z3/Z4/Z8/S100/S500/S600/S880/z60/Z70/Z75', N'http://www.360buy.com/product/106056.html', N'数码配件电池/充电器品胜品胜NP20', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (323, N'106060', N'品胜（PISEN）NB5L 数码相机电池', N'http://www.360buy.com/product/106060.html', N'数码配件电池/充电器品胜品胜NB5L', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (324, N'106096', N'宝罗（Paull）专业数码包BL-3001', N'http://www.360buy.com/product/106096.html', N'数码配件数码包宝罗宝罗BL-3001', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (325, N'106098', N'宝罗（Paull）专业数码包BL-2024 适用于500D/450D/D90/D3000/A500L/A330等', N'http://www.360buy.com/product/106098.html', N'数码配件数码包宝罗宝罗BL-2024', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (326, N'106102', N'北通（Betop）瞬风130 BTP-3130 自动巡航方向盘', N'http://www.360buy.com/product/106102.html', N'外设产品游戏设备北通北通BTP－3130', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (327, N'106112', N'TCL HCD868（37） 来电显示电话机（米白）', N'http://www.360buy.com/product/106112.html', N'生活电器电话机TCLTCLHCD868（37）', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (328, N'106116', N'TCL HCD868（17B） 来电显示电话机（灰白）', N'http://www.360buy.com/product/106116.html', N'生活电器电话机TCLTCLHCD868（17b）', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (329, N'106241', N'品胜（PISEN）FP90 数码相机电池（厚）', N'http://www.360buy.com/product/106241.html', N'数码配件电池/充电器品胜品胜FP90', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (330, N'106276', N'泰格斯（Targus）ASP01AP 可伸缩旅行线锁', N'http://www.360buy.com/product/106276.html', N'电脑整机笔记本配件泰格斯泰格斯ASP01AP', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (331, N'106323', N'金士顿（Kingston）DDR2 667 1GB台式机内存条', N'http://www.360buy.com/product/106323.html', N'电脑配件内存金士顿金士顿DDR2 667 1GB台式机内存条', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (332, N'106353', N'品胜（PISEN）BLM1 数码相机电池', N'http://www.360buy.com/product/106353.html', N'数码配件电池/充电器品胜品胜BLM1', N'117.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (333, N'106401', N'镭拓（Rantopad）H1丝滑系列鼠标垫（小黑森林）', N'http://www.360buy.com/product/106401.html', N'外设产品鼠标垫Rantopad镭拓H1小黑森林', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (334, N'106402', N'镭拓（Rantopad）H1丝滑系列鼠标垫（小冰蓝）', N'http://www.360buy.com/product/106402.html', N'外设产品鼠标垫Rantopad镭拓H1小冰蓝', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (335, N'106408', N'镭拓（Rantopad）H3丝滑系列鼠标垫（大黑森林）', N'http://www.360buy.com/product/106408.html', N'外设产品鼠标垫Rantopad镭拓H3大黑森林', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (336, N'106409', N'镭拓（Rantopad）H3丝滑系列鼠标垫（大冰蓝）', N'http://www.360buy.com/product/106409.html', N'外设产品鼠标垫Rantopad镭拓H3大冰蓝', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (337, N'106433', N'金河田（Golden field）电脑机箱 飓风-8197B 银黑色（含355WB额定230W电源）', N'http://www.360buy.com/product/106433.html', N'电脑配件机箱金河田金河田8197B', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (338, N'106596', N'宝罗（Paull）专业摄影包BL-5019', N'http://www.360buy.com/product/106596.html', N'数码配件数码包宝罗宝罗BL-5019', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (339, N'106611', N'漫步者（EDIFIER） H180 立体声耳塞 黑色', N'http://www.360buy.com/product/106611.html', N'时尚影音耳机/耳麦漫步者漫步者H180', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (340, N'106612', N'漫步者（EDIFIER） H180 立体声耳塞 白色', N'http://www.360buy.com/product/106612.html', N'时尚影音耳机/耳麦漫步者漫步者H180', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (341, N'106646', N'漫步者（EDIFIER） R303T 2.1声道 多媒体音箱 白色', N'http://www.360buy.com/product/106646.html', N'时尚影音音箱漫步者漫步者R303T', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (342, N'106647', N'漫步者（EDIFIER） R303T 2.1声道 多媒体音箱 银色', N'http://www.360buy.com/product/106647.html', N'时尚影音音箱漫步者漫步者R303T', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (343, N'106676', N'漫步者（EDIFIER） R101T06 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/106676.html', N'时尚影音音箱漫步者漫步者R101T06', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (344, N'106679', N'漫步者（EDIFIER） R133T 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/106679.html', N'时尚影音音箱漫步者漫步者R133T', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (345, N'106683', N'漫步者（EDIFIER） R201TIII 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/106683.html', N'时尚影音音箱漫步者漫步者R201T III', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (346, N'￥599.00', N'泰格斯（Targus）商务多用-笔记本便携包 TCG350AP（最大可以放置14.1寸笔记本电脑）', N'http://www.360buy.com/product/106798.html', N'功能箱包电脑数码包泰格斯泰格斯TCG350AP', N'368.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (347, N'106869', N'秋叶原（CHOSERL）YF4002 3.5mm立体声插头-RCA插座×2音频转换器', N'http://www.360buy.com/product/106869.html', N'外设产品线缆秋叶原秋叶原YF4002', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (348, N'106873', N'秋叶原（CHOSEAL）YF-4004N 3.5mm立体声插头-3.5mm立体声插座×2音频转换器', N'http://www.360buy.com/product/106873.html', N'外设产品线缆秋叶原秋叶原YF-4004N', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (349, N'106874', N'秋叶原（CHOSERL）YF4005 3.5mm公头转6.35mm母头立体声转换器', N'http://www.360buy.com/product/106874.html', N'外设产品线缆秋叶原秋叶原YF4005', N'10.50')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (350, N'106875', N'秋叶原（CHOSERL）YF4006 3.5mm插座-6.35mm插头立体声转换头', N'http://www.360buy.com/product/106875.html', N'外设产品线缆秋叶原秋叶原YF-4006', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (351, N'106876', N'秋叶原（CHOSERL）Q549 VGA色差转换线D-SUB 15pin公插-3RCA公插 1.8米', N'http://www.360buy.com/product/106876.html', N'外设产品线缆秋叶原秋叶原Q-549', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (352, N'106878', N'秋叶原高保真专业音频线（两莲花对两莲花24K镀金RCA端子） 1.5米 QB773', N'http://www.360buy.com/product/106878.html', N'外设产品线缆秋叶原秋叶原QB773', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (353, N'106892', N'飞利浦（Philips）HR1861 榨汁机 700瓦马达', N'http://www.360buy.com/product/106892.html', N'厨房电器料理/榨汁机飞利浦飞利浦HR1861', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (354, N'106948', N'秋叶原（CHOSERL）YF4001 RCA插头-RCA插座×2音频转换器', N'http://www.360buy.com/product/106948.html', N'外设产品线缆秋叶原秋叶原YF4001', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (355, N'106970', N'秋叶原（CHOSERL）YF1616 6位分控新国标超值插座 5米', N'http://www.360buy.com/product/106970.html', N'外设产品插座秋叶原秋叶原YF1616', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (356, N'107140', N'佳能（Canon）BCI-3EBK 黑色墨盒（适用i6500/i6100 MP730）', N'http://www.360buy.com/product/107140.html', N'办公打印墨盒佳能佳能BCI-3EBK', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (357, N'107164', N'佳能（Canon）BCI-6C 蓝色墨盒（适用于S900）', N'http://www.360buy.com/product/107164.html', N'办公打印墨盒佳能佳能BCI-6C', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (358, N'107165', N'佳能（Canon）BCI-6M 红色墨盒（适用于S900）', N'http://www.360buy.com/product/107165.html', N'办公打印墨盒佳能佳能BCI-6M', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (359, N'107166', N'佳能（Canon）BCI-6Y 黄色墨盒(适用于S900)', N'http://www.360buy.com/product/107166.html', N'办公打印墨盒佳能佳能BCI-6Y', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (360, N'107243', N'佳能（Canon）PGI-5BK 黑色墨盒（适用IP4200/MP500）', N'http://www.360buy.com/product/107243.html', N'办公打印墨盒佳能佳能PGI-5BK', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (361, N'107245', N'佳能（Canon）CL-41 彩色墨盒（适用IP1180/1980 MX308/318 MP198）', N'http://www.360buy.com/product/107245.html', N'办公打印墨盒佳能佳能CL-41', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (362, N'107249', N'佳能（Canon）CLI-8BK 黑色墨盒（适用IP4200 MP500）', N'http://www.360buy.com/product/107249.html', N'办公打印墨盒佳能佳能CLI-8BK', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (363, N'107250', N'佳能（Canon）CLI-8C 青色墨盒（适用IP4200 MP500）', N'http://www.360buy.com/product/107250.html', N'办公打印墨盒佳能佳能CLI-8C', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (364, N'107252', N'佳能（Canon）CLI-8M 红色墨盒（适用IP4200 MP500）', N'http://www.360buy.com/product/107252.html', N'办公打印墨盒佳能佳能CLI-8M', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (365, N'107254', N'佳能（Canon）CLI-8Y 黄色墨盒（适用IP4200 MP500）', N'http://www.360buy.com/product/107254.html', N'办公打印墨盒佳能佳能CLI-8Y', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (366, N'107256', N'德生(Tecsun) R-9700DX 高灵敏二次变频立体声收音机(银色)', N'http://www.360buy.com/product/107256.html', N'生活电器收录/音机德生德生R-9700DX', N'178.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (367, N'107310', N'德生（Tecsun）R-9710收音机学生外国电台专用(褐色)', N'http://www.360buy.com/product/107310.html', N'生活电器收录/音机德生德生R-9710', N'129.00')
GO
print 'Processed 300 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (368, N'107311', N'三星（SAMSUNG）SCX-4216D3黑色硒鼓（适用SCX-4216F,SF-560 565P )', N'http://www.360buy.com/product/107311.html', N'办公打印硒鼓三星三星SCX-4216D3', N'558.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (369, N'107344', N'德生（TECSUN）R-9702 高灵敏度全波段立体声收音机（钛金白）', N'http://www.360buy.com/product/107344.html', N'生活电器收录/音机德生德生R-9702', N'134.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (370, N'107346', N'德生（Tecsun）DR-920 数码显示全波段钟控收音机', N'http://www.360buy.com/product/107346.html', N'生活电器收录/音机德生德生DR-920', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (371, N'107349', N'德生（Tecsun）R-912收音机（银色）', N'http://www.360buy.com/product/107349.html', N'生活电器收录/音机德生德生R-912', N'86.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (372, N'107351', N'德生（Tecsun）R-911收音机 蓝色', N'http://www.360buy.com/product/107351.html', N'生活电器收录/音机德生德生R-911', N'54.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (373, N'107357', N'霍尼韦尔（Honeywell)MK9540-77A38 条码扫描枪', N'http://www.360buy.com/product/107357.html', N'办公打印扫描仪霍尼韦尔霍尼韦尔MK9540-77A38', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (374, N'107360', N'德生（Tecsun）R-818数码显示全波段钟控收音机（褐色）', N'http://www.360buy.com/product/107360.html', N'生活电器收录/音机德生德生R-818', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (375, N'107361', N'德生（Tecsun）R-808 超小型全波段收音机 黑色', N'http://www.360buy.com/product/107361.html', N'生活电器收录/音机德生德生R-808', N'64.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (376, N'107362', N'德生（Tecsun）R-102 微型调幅/调频收音机 (红色)', N'http://www.360buy.com/product/107362.html', N'生活电器收录/音机德生德生R-102', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (377, N'107407', N'亚都（YADU）YC-D204B 超声波加湿器 双泉瀑 5L', N'http://www.360buy.com/product/107407.html', N'生活电器加湿器亚都亚都YC-D204B', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (378, N'107422', N'亚都（YADU）YZ-DS252C 净化加湿器 双泉映月', N'http://www.360buy.com/product/107422.html', N'生活电器加湿器亚都亚都YZ-DS252C', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (379, N'107523', N'惠威（HiVi）监听音箱 T200B 2.0声道 可遥控', N'http://www.360buy.com/product/107523.html', N'时尚影音音箱惠威惠威终极版', N'2450.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (380, N'107541', N'三菱（MITSUBISHI）CD-R 52速 700M 红唇印记 台产 桶装50片 刻录盘', N'http://www.360buy.com/product/107541.html', N'办公文仪刻录碟片/附件三菱三菱CD-R 52速', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (381, N'107739', N'欧姆龙（OMRON） 身体脂肪测量器 HBF306', N'http://www.360buy.com/product/107739.html', N'个护健康健康秤/厨房秤欧姆龙欧姆龙HBF306', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (382, N'107777', N'漫步者（EDIFIER） R101T06 2.1声道 多媒体音箱 黑银', N'http://www.360buy.com/product/107777.html', N'时尚影音音箱漫步者漫步者R101T06', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (383, N'107782', N'漫步者（EDIFIER） R323T 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/107782.html', N'时尚影音音箱漫步者漫步者R323T', N'279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (384, N'107794', N'佳能（Canon） NB-5L 数码相机电池', N'http://www.360buy.com/product/107794.html', N'数码配件电池/充电器佳能佳能NB-5L', N'389.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (385, N'107843', N'秋叶原（CHOSERL）YF4022 有线电视弯插头（9.5mm公）', N'http://www.360buy.com/product/107843.html', N'外设产品线缆秋叶原秋叶原YF4022', N'8.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (386, N'107845', N'秋叶原（CHOSEAL）YF4036 有线电视一转四分配器（5-1000MHz带宽－130dBRFI）', N'http://www.360buy.com/product/107845.html', N'外设产品线缆秋叶原秋叶原YF4036', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (387, N'107847', N'秋叶原（CHOSERL）YF4035 有线电视一转三分配器（5-1000MHz带宽－130dBRFI）', N'http://www.360buy.com/product/107847.html', N'外设产品线缆秋叶原秋叶原YF4035', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (388, N'107848', N'秋叶原（CHOSERL）YF4027 电缆连接器', N'http://www.360buy.com/product/107848.html', N'外设产品线缆秋叶原秋叶原YF4027', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (389, N'107850', N'秋叶原（CHOSERL）YF4021 有线电视插座（9.5mm母）', N'http://www.360buy.com/product/107850.html', N'外设产品线缆秋叶原秋叶原YF4021', N'8.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (390, N'107851', N'秋叶原（CHOSERL）YF4020 有线电视插座（9.5mm公）', N'http://www.360buy.com/product/107851.html', N'外设产品线缆秋叶原秋叶原YF－4020', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (391, N'107852', N'秋叶原（CHOSERL）YF4023 有线电视插座（9.5mm母）', N'http://www.360buy.com/product/107852.html', N'外设产品线缆秋叶原秋叶原YF4023', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (392, N'107858', N'秋叶原（CHOSERL）YF4034 有线电视一转二分配器（5-1000MHz带宽-130dB RFI）', N'http://www.360buy.com/product/107858.html', N'外设产品线缆秋叶原秋叶原YF4034', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (393, N'107861', N'秋叶原（CHOSERL）QB131 超值版数码光纤线 1米', N'http://www.360buy.com/product/107861.html', N'外设产品线缆秋叶原秋叶原QB131', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (394, N'107862', N'秋叶原（CHOSERL）YF4024 有线电视一分二插头 公/公', N'http://www.360buy.com/product/107862.html', N'外设产品线缆秋叶原秋叶原YF4024', N'10.50')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (395, N'107865', N'秋叶原（CHOSERL）YF4031N 有线电视一转二分配器（5-900MHz带宽）', N'http://www.360buy.com/product/107865.html', N'外设产品线缆秋叶原秋叶原YF4031N', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (396, N'107870', N'秋叶原（CHOSERL）YF-99 一转二电源转换器', N'http://www.360buy.com/product/107870.html', N'外设产品插座秋叶原秋叶原YF-99', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (397, N'107919', N'漫步者（EDIFIER） R1900TII06 2.0声道 多媒体有源音箱 黑色', N'http://www.360buy.com/product/107919.html', N'时尚影音音箱漫步者漫步者R1900TII06', N'539.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (398, N'107963', N'飞利浦（PHILIPS） SHP2000 头戴式 耳机', N'http://www.360buy.com/product/107963.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHP-2000', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (399, N'107990', N'品胜（PISEN）CRV3数码相机电池 套装', N'http://www.360buy.com/product/107990.html', N'数码配件电池/充电器品胜品胜CRV3', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (400, N'107999', N'环宇飞扬(Uni Flying）2007 笔记本伴侣 摄像头', N'http://www.360buy.com/product/107999.html', N'外设产品摄像头环宇环宇飞扬(Uni Flying）2007...', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (401, N'￥848.00', N'维氏VICTORINOX瑞士军刀标准系列工作冠军0.9064', N'http://www.360buy.com/product/108001.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (402, N'108022', N'秋叶原（CHOSERL）QB629 超值版色差线 1.8米', N'http://www.360buy.com/product/108022.html', N'外设产品线缆秋叶原秋叶原QB629', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (403, N'108025', N'秋叶原（CHOSERL）QB133 普及版数码光纤线 1米', N'http://www.360buy.com/product/108025.html', N'外设产品线缆秋叶原秋叶原QB133', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (404, N'108049', N'三菱（MITSUBISHI）DVD+R 16速 4.7G 樱花系列 台产 桶装50片 刻录盘', N'http://www.360buy.com/product/108049.html', N'办公文仪刻录碟片/附件三菱三菱DVD+R 16速', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (405, N'108087', N'欧姆龙（OMRON） 血压计AC稳压电源', N'http://www.360buy.com/product/108087.html', N'个护健康血压计欧姆龙欧姆龙稳压电源', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (406, N'108104', N'泰格斯（Targus）PA410B Defcon密码线锁', N'http://www.360buy.com/product/108104.html', N'电脑整机笔记本配件泰格斯泰格斯PA410B', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (407, N'￥408.00', N'Zippo打火机黑冰拉链21088', N'http://www.360buy.com/product/108140.html', N'礼品火机烟具Zippo芝宝打火机', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (408, N'￥338.00', N'Zippo打火机黑冰150zl', N'http://www.360buy.com/product/108141.html', N'礼品火机烟具Zippo芝宝打火机', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (409, N'￥478.00', N'Zippo打火机黑冰狼769', N'http://www.360buy.com/product/108144.html', N'礼品火机烟具Zippo芝宝打火机', N'160.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (410, N'￥308.00', N'Zippo打火机黑色哑漆框标志218ZB', N'http://www.360buy.com/product/108145.html', N'礼品火机烟具Zippo芝宝打火机', N'104.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (411, N'108220', N'三菱（MITSUBISHI）CD-R 52速 700M/80分钟 新白金 桶装50片 刻录盘', N'http://www.360buy.com/product/108220.html', N'办公文仪刻录碟片/附件三菱三菱CD-R', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (412, N'108235', N'爱普生（EPSON）LQ-300K+II 针式打印机（80列卷筒式）', N'http://www.360buy.com/product/108235.html', N'办公打印打印机爱普生爱普生LQ-300K+II', N'1649.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (413, N'108238', N'爱普生（Epson）T0763 洋红色墨盒 C13T076380（适用ME2/ME200）', N'http://www.360buy.com/product/108238.html', N'办公打印墨盒爱普生爱普生T0763', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (414, N'108239', N'爱普生（Epson）T0764 黄色墨盒 C13T076480（适用ME2/ME200）', N'http://www.360buy.com/product/108239.html', N'办公打印墨盒爱普生爱普生T0764', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (415, N'￥338.00', N'Zippo打火机纯铜1941B', N'http://www.360buy.com/product/108251.html', N'礼品火机烟具Zippo芝宝打火机', N'115.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (416, N'￥370.00', N'维氏VICTORINOX瑞士军刀大脸谱1.3703.BJ', N'http://www.360buy.com/product/108260.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (417, N'￥450.00', N'Zippo打火机十二生肖系列-鼠', N'http://www.360buy.com/product/108265.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (418, N'￥450.00', N'Zippo打火机十二生肖系列-牛', N'http://www.360buy.com/product/108270.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (419, N'￥450.00', N'Zippo打火机十二生肖系列-虎', N'http://www.360buy.com/product/108273.html', N'礼品火机烟具Zippo维氏打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (420, N'￥450.00', N'Zippo打火机十二生肖系列-兔', N'http://www.360buy.com/product/108274.html', N'礼品火机烟具Zippo维氏打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (421, N'￥450.00', N'Zippo打火机十二生肖系列-蛇', N'http://www.360buy.com/product/108276.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (422, N'￥450.00', N'Zippo打火机十二生肖系列-马', N'http://www.360buy.com/product/108277.html', N'礼品火机烟具Zippo芝宝打火机', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (423, N'￥450.00', N'Zippo打火机十二生肖系列-羊', N'http://www.360buy.com/product/108278.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (424, N'￥450.00', N'Zippo打火机十二生肖系列-猴', N'http://www.360buy.com/product/108279.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (425, N'￥450.00', N'Zippo打火机十二生肖系列-鸡', N'http://www.360buy.com/product/108280.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (426, N'￥450.00', N'Zippo打火机十二生肖系列-狗', N'http://www.360buy.com/product/108281.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (427, N'￥450.00', N'Zippo打火机十二生肖系列-猪', N'http://www.360buy.com/product/108282.html', N'礼品火机烟具Zippo芝宝打火机', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (428, N'108316', N'兄弟(brother) MFC-7220 馈纸式黑白激光多功能一体机 (打印 复印 传真 扫描)', N'http://www.360buy.com/product/108316.html', N'办公打印一体机兄弟兄弟MFC-7220', N'1549.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (429, N'108364', N'佳能（Canon）PG-40BK 黑色墨盒（适用IP1180/1980 MX308/318 MP198）', N'http://www.360buy.com/product/108364.html', N'办公打印墨盒佳能佳能PG-40BK', N'115.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (430, N'108365', N'佳能（Canon）BCI-24B 黑色 墨盒（两支装）', N'http://www.360buy.com/product/108365.html', N'办公打印墨盒佳能佳能BCI-24B', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (431, N'108405', N'三菱（MITSUBISHI）DVD+R 16速 4.7G 樱花系列 台产 桶装10片 刻录盘', N'http://www.360buy.com/product/108405.html', N'办公文仪刻录碟片/附件三菱三菱DVD+R', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (432, N'108406', N'三菱（MITSUBISHI）DVD-R 16速 4.7G 樱花系列 台产 桶装10片 刻录盘', N'http://www.360buy.com/product/108406.html', N'办公文仪刻录碟片/附件三菱三菱DVD-R', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (433, N'108407', N'佳能（Canon）BCI-3eC 青色墨盒（适用i6500/i6100 MP730）', N'http://www.360buy.com/product/108407.html', N'办公打印墨盒佳能佳能BCI-3eC', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (434, N'108409', N'佳能（Canon）BCI-3eM 淡红色墨盒', N'http://www.360buy.com/product/108409.html', N'办公打印墨盒佳能佳能BCI-3eM', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (435, N'108410', N'佳能（Canon）BCI-3eY 黄色墨盒（适用i6500/i6100 MP730 ）', N'http://www.360buy.com/product/108410.html', N'办公打印墨盒佳能佳能BCI-3eY', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (436, N'108411', N'佳能（Canon）BCI-6BK 黑色墨盒（适用于S900）', N'http://www.360buy.com/product/108411.html', N'办公打印墨盒佳能佳能BCI-6BK', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (437, N'108453', N'爱普生（Epson）T0761 黑色墨盒 C13T076180（适用ME2/ME200）', N'http://www.360buy.com/product/108453.html', N'办公打印墨盒爱普生爱普生T0761', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (438, N'108455', N'三堡（SANBAO）CT-168 网络线材测试仪', N'http://www.360buy.com/product/108455.html', N'外设产品电脑工具三堡三堡CT-168', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (439, N'108456', N'爱普生（Epson）T0762 青色墨盒 C13T076280（适用ME2/ME200）', N'http://www.360buy.com/product/108456.html', N'办公打印墨盒爱普生爱普生T0762', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (440, N'108468', N'南孚（NANFU）LR6-4B 聚能环无汞 5号碱性电池（4粒装）', N'http://www.360buy.com/product/108468.html', N'数码配件电池/充电器南孚南孚5号', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (441, N'108469', N'南孚（NANFU）LR03-4BS 聚能环无汞 7号碱性电池（4粒装）', N'http://www.360buy.com/product/108469.html', N'数码配件电池/充电器南孚南孚7号', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (442, N'108471', N'南孚（NANFU）LR14-2B 无汞 2号碱性电池（2粒装）', N'http://www.360buy.com/product/108471.html', N'数码配件电池/充电器南孚南孚2号', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (443, N'108474', N'南孚（NANFU）9VA-1B 无汞 9V碱性电池（1粒装）', N'http://www.360buy.com/product/108474.html', N'数码配件电池/充电器南孚南孚9V', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (444, N'108501', N'威刚（ADATA）万紫千红 DDR2 800 1G 台式机内存条', N'http://www.360buy.com/product/108501.html', N'电脑配件内存威刚威刚万紫千红 DDR2800 1G', N'132.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (445, N'108502', N'力特（Z－TEK）ZK033 4口名片型集线器HUB（带3C认证电源，稳定支持1TB移动硬盘）', N'http://www.360buy.com/product/108502.html', N'外设产品线缆力特力特ZK033', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (446, N'108506', N'力特（Z－TEK）ZK032 4口名片型集线器HUB 银色', N'http://www.360buy.com/product/108506.html', N'外设产品线缆力特力特ZK032', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (447, N'108594', N'施德楼（STAEDTLER）S313-WP4 光盘笔 四色套装（采用特殊墨水，书写流畅）', N'http://www.360buy.com/product/108594.html', N'办公文仪刻录碟片/附件施德楼施德楼S313-WP4', N'42.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (448, N'108609', N'中晶（Microtek ）Phantom v700 Plus 扫描仪 (蓝色)', N'http://www.360buy.com/product/108609.html', N'办公打印扫描仪中晶中晶V700', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (449, N'108712', N'品胜（PISEN）EL3e+ 数码相机电池', N'http://www.360buy.com/product/108712.html', N'数码配件电池/充电器品胜品胜EL3e+', N'105.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (450, N'108742', N'超人（SID）SR2851 毛球修剪器 海洋蓝', N'http://www.360buy.com/product/108742.html', N'生活电器其它生活电器超人超人SR2851', N'31.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (451, N'108743', N'超人（SID）SR2850 毛球修剪器 樱桃粉', N'http://www.360buy.com/product/108743.html', N'生活电器其它生活电器超人超人SR2850', N'28.80')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (452, N'108744', N'超人 (SID) SR2855 毛球修剪器 可爱橙', N'http://www.360buy.com/product/108744.html', N'生活电器其它生活电器超人超人SR2855', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (453, N'108825', N'华硕（ASUS）GX1005X 5口10/100M交换机', N'http://www.360buy.com/product/108825.html', N'网络产品交换机华硕华硕GX1005X5', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (454, N'108832', N'华硕（ASUS）GigaX1008 8口10/100M交换机', N'http://www.360buy.com/product/108832.html', N'网络产品交换机华硕华硕GigaX1008', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (455, N'108878', N'创新（Creative）Sound Blaster Audigy 4 Value 声卡（PCI接口，网络K歌版）', N'http://www.360buy.com/product/108878.html', N'电脑配件声卡/扩展卡创新创新Sound Blaster Audigy 4 Value', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (456, N'108879', N'品胜（PISEN）AAA镍氢充电电池 900mAh（2只装）', N'http://www.360buy.com/product/108879.html', N'数码配件电池/充电器品胜品胜900mAh', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (457, N'￥208.00', N'维氏VICTORINOX瑞士军刀标准1.3603', N'http://www.360buy.com/product/108919.html', N'礼品瑞士军刀维氏维氏标准1.3603', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (458, N'108923', N'佳能（Canon） EF 70-200mm f/2.8L USM 远摄变焦镜头', N'http://www.360buy.com/product/108923.html', N'摄影摄像镜头佳能佳能EF 70-200mm f/2.8L USM', N'9699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (459, N'108924', N'佳能（Canon） EF 70-200mm f/4L IS USM 远摄变焦镜头', N'http://www.360buy.com/product/108924.html', N'摄影摄像镜头佳能佳能EF 70-200mm f/4L IS USM', N'8699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (460, N'108925', N'佳能（Canon） EF 85mm f/1.2L II USM 远摄定焦镜头', N'http://www.360buy.com/product/108925.html', N'摄影摄像镜头佳能佳能EF 85mm f/1.2L II USM', N'14999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (461, N'108927', N'佳能（Canon） EF 50mm f/1.8 II 标准定焦镜头', N'http://www.360buy.com/product/108927.html', N'摄影摄像镜头佳能佳能EF 50mm f/1.8 II', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (462, N'￥258.00', N'维氏VICTORINOX瑞士军刀经济型攀登者3.3703', N'http://www.360buy.com/product/108928.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (463, N'￥298.00', N'维氏VICTORINOX瑞士军刀猎人经济型3.3713', N'http://www.360buy.com/product/108929.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'137.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (464, N'￥228.00', N'维氏VICTORINOX瑞士军刀标准迷彩1.3603.94', N'http://www.360buy.com/product/108933.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (465, N'￥343.00', N'维氏VICTORINOX瑞士军刀野餐者0.8853', N'http://www.360buy.com/product/108934.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (466, N'￥448.00', N'Zippo打火机蓝心WITH YOU韩版', N'http://www.360buy.com/product/108948.html', N'礼品火机烟具Zippo芝宝打火机', N'205.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (467, N'￥678.00', N'Zippo打火机永远的爱FOREVER LOVE限量版韩版', N'http://www.360buy.com/product/108949.html', N'礼品火机烟具Zippo芝宝打火机', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (468, N'109010', N'腾龙（Tamron）AF70-300mm F/4-5.6 Di LD MACRO 1:2 远摄变焦镜头（佳能卡口）', N'http://www.360buy.com/product/109010.html', N'摄影摄像镜头腾龙腾龙AF70-300mm F/4-5.6 Di', N'1250.00')
GO
print 'Processed 400 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (469, N'109016', N'腾龙（Tamron）SP AF 90mm F/2.8 Di MACRO 1:1 定焦微距镜头（佳能卡口）', N'http://www.360buy.com/product/109016.html', N'摄影摄像镜头腾龙腾龙SP AF90mm F/2.8 Di', N'2925.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (470, N'109021', N'腾龙（Tamron）AF18-200mm F/3.5-6.3 XR Di II LD ASPHERICAL (IF) MACRO 标准变焦镜头（佳能卡口）', N'http://www.360buy.com/product/109021.html', N'摄影摄像镜头腾龙腾龙AF18-200mm F/3.5-6.3 XR DiII LD', N'1800.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (471, N'109025', N'腾龙（Tamron）SP AF200-500mm F/5-6.3 Di LD （IF）（佳能卡口）', N'http://www.360buy.com/product/109025.html', N'摄影摄像镜头腾龙腾龙SP AF200-500mm F/5-6.3 Di', N'7300.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (472, N'109027', N'腾龙（Tamron）SP AF180mm F/3.5 Di定焦镜头（佳能卡口）', N'http://www.360buy.com/product/109027.html', N'摄影摄像镜头腾龙腾龙SP AF180mm F/3.5 Di', N'6600.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (473, N'109029', N'腾龙（Tamron）SP AF28-75mm F/2.8 XR Di LD ASPHERICAL (IF) MACRO 标准变焦镜头（佳能卡口）', N'http://www.360buy.com/product/109029.html', N'摄影摄像镜头腾龙腾龙SP AF28-75mm F/2.8 XR Di LD', N'2990.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (474, N'109043', N'腾龙（Tamron）SP AF17-50mm F/2.8 XR Di II LD ASPHERICAL (IF) 标准变焦镜头（佳能卡口）', N'http://www.360buy.com/product/109043.html', N'摄影摄像镜头腾龙腾龙SP AF17-50mm F/2.8 XR Di II LD', N'2890.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (475, N'109066', N'腾龙（Tamron）SP AF17-50mm F/2.8 XR LD Di II ASPHERICAL (IF) 标准变焦镜头（尼康卡口）', N'http://www.360buy.com/product/109066.html', N'摄影摄像镜头腾龙腾龙SP AF17-50mm F/2.8 XR Di II LD', N'2890.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (476, N'109067', N'腾龙（Tamron）SP AF28-75mm F/2.8 XR Di LD ASPHERICAL (IF) MACRO 标准变焦镜头（尼康卡口）', N'http://www.360buy.com/product/109067.html', N'摄影摄像镜头腾龙腾龙SP AF28-75mm F/2.8 XR Di LD', N'2990.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (477, N'109068', N'腾龙（Tamron）SP AF180mm F/3.5 Di定焦镜头（尼康卡口）', N'http://www.360buy.com/product/109068.html', N'摄影摄像镜头腾龙腾龙SP AF180mm F/3.5 Di', N'6600.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (478, N'109070', N'腾龙（Tamron）SP AF200-500mm F/5-6.3 Di LD （IF）（尼康卡口）', N'http://www.360buy.com/product/109070.html', N'摄影摄像镜头腾龙腾龙SP AF200-500mm F/5-6.3 Di', N'7300.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (479, N'109075', N'腾龙（Tamron）SP AF 90mm F/2.8 Di MACRO 1:1 定焦微距镜头（尼康卡口）', N'http://www.360buy.com/product/109075.html', N'摄影摄像镜头腾龙腾龙SP AF90mm F/2.8 Di', N'2925.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (480, N'109159', N'飞利浦（Philips）HX5251 声波电动牙刷', N'http://www.360buy.com/product/109159.html', N'个护健康口腔护理飞利浦飞利浦HX5251', N'348.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (481, N'109169', N'飞利浦（Philips）HX7001 牙刷头', N'http://www.360buy.com/product/109169.html', N'个护健康口腔护理飞利浦飞利浦HX7001', N'110.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (482, N'109183', N'品胜（PISEN）如意充镍氢充电电池充电器', N'http://www.360buy.com/product/109183.html', N'数码配件电池/充电器品胜品胜如意充', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (483, N'109234', N'肯高（KenKo）原装CPL 52mm圆偏振镜', N'http://www.360buy.com/product/109234.html', N'摄影摄像滤镜肯高肯高52mm', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (484, N'109235', N'肯高（KenKo）原装CPL 67mm圆偏振镜', N'http://www.360buy.com/product/109235.html', N'摄影摄像滤镜肯高肯高67mm', N'273.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (485, N'109237', N'肯高（KenKo）原装CPL 82mm圆偏振镜', N'http://www.360buy.com/product/109237.html', N'摄影摄像滤镜肯高肯高82mm', N'359.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (486, N'109311', N'适马（SIGMA）AF APO 70-300mm F4-5.6 DG MACRO远摄变焦镜头（佳能卡口）', N'http://www.360buy.com/product/109311.html', N'摄影摄像镜头适马适马AF APO 70-300mm F4-5.6 DG MACRO', N'1599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (487, N'109312', N'适马（SIGMA）AF APO 70-300mm F4-5.6 DG MACRO远摄变焦镜头（尼康卡口）', N'http://www.360buy.com/product/109312.html', N'摄影摄像镜头适马适马AF APO 70-300mm F4-5.6 DG MACRO', N'1599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (488, N'109331', N'飞利浦（PHILIPS）TD-6816A模拟无绳电话子母机（蓝色）', N'http://www.360buy.com/product/109331.html', N'生活电器电话机飞利浦飞利浦TD-6816A', N'208.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (489, N'109333', N'飞利浦（PHILIPS）CTZO 682A模拟无绳电话子母机 （白色）', N'http://www.360buy.com/product/109333.html', N'生活电器电话机飞利浦飞利浦CTZO682A', N'256.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (490, N'109335', N'飞利浦（PHILIPS）TD-6816A模拟无绳电话子母机（白色）', N'http://www.360buy.com/product/109335.html', N'生活电器电话机飞利浦飞利浦TD-6816A', N'208.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (491, N'109410', N'摩托罗拉 E680i 原装手机电池 适用于摩托罗拉A728/A768/A780/E680/E680I等 黑色', N'http://www.360buy.com/product/109410.html', N'手机配件手机电池摩托罗拉摩托罗拉E680i', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (492, N'109462', N'三菱（MITSUBISHI）CD-R 52速 700M 海豚系列 台产 桶装50片 刻录盘', N'http://www.360buy.com/product/109462.html', N'办公文仪刻录碟片/附件三菱三菱CD-R 52速', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (493, N'109469', N'GODEX 条码打印机 EZ-1100', N'http://www.360buy.com/product/109469.html', N'办公打印打印机GODEXGODEXEZ-1100', N'2199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (494, N'109546', N'金钟CX-888三脚架（承重2kg）', N'http://www.360buy.com/product/109546.html', N'数码配件三脚架/云台金钟金钟CX-888', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (495, N'109548', N'金钟 CX-560 三脚架', N'http://www.360buy.com/product/109548.html', N'数码配件三脚架/云台金钟金钟CX-560', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (496, N'109555', N'金钟VIDEO系列CX-586三脚架（承重2.5kg）', N'http://www.360buy.com/product/109555.html', N'数码配件三脚架/云台金钟金钟VIDEO', N'325.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (497, N'109569', N'金钟PHD-61Q云台（承重5kg）', N'http://www.360buy.com/product/109569.html', N'数码配件三脚架/云台金钟金钟PHD-61Q', N'719.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (498, N'109664', N'飞科（FLYCO）FH6203 恒温护发电吹风 樱桃粉 850W 静音', N'http://www.360buy.com/product/109664.html', N'个护健康电吹风飞科飞科6203', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (499, N'109720', N'飞利浦（PHILIPS） CTZO 682A模拟无绳电话子母机(蓝色)', N'http://www.360buy.com/product/109720.html', N'生活电器电话机飞利浦飞利浦CTZO682A', N'256.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (500, N'109744', N'飞利浦（PHILIPS） SHE2550 /98 耳塞 黑色', N'http://www.360buy.com/product/109744.html', N'时尚影音耳机/耳麦飞利浦飞利浦HE2550', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (501, N'109749', N'南孚（NANFU）AA-2B 数码型 2400mAh 5号镍氢充电电池（2粒装）', N'http://www.360buy.com/product/109749.html', N'数码配件电池/充电器南孚南孚5号', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (502, N'109750', N'南孚（NANFU）AAA-2B 耐用型 900mAh 7号镍氢充电电池（2粒装）', N'http://www.360buy.com/product/109750.html', N'数码配件电池/充电器南孚南孚7号', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (503, N'109757', N'飞科（FLYCO）电吹风 FH6008 可折叠 冷热风', N'http://www.360buy.com/product/109757.html', N'个护健康电吹风飞科飞科FH6008', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (504, N'109775', N'飞科（FLYCO）F1-9201 蒸汽式电熨斗 樱桃粉 1100W 水箱容量145ml', N'http://www.360buy.com/product/109775.html', N'生活电器挂烫机/熨斗飞科飞科F1-9201', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (505, N'109782', N'飞科（FLYCO）F1-9207 蒸汽式电熨斗 深海蓝 1100W 水箱容量340ml', N'http://www.360buy.com/product/109782.html', N'生活电器挂烫机/熨斗飞科飞科F1-9207', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (506, N'109784', N'飞科（FLYCO）FS320 三刀头浮动 剃须刀', N'http://www.360buy.com/product/109784.html', N'个护健康剃须刀飞科飞科FS320', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (507, N'109785', N'品胜（PISEN）FOR PSP110 数码相机电池', N'http://www.360buy.com/product/109785.html', N'数码配件电池/充电器品胜品胜PSP', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (508, N'109786', N'品胜 FOR PSP110套装 数码电池 适用于索尼FOR/PSP 1000', N'http://www.360buy.com/product/109786.html', N'数码配件电池/充电器品胜品胜PSP', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (509, N'109788', N'飞科（FLYCO）电吹风 FH6206 1200W 冷热风 负离子护发', N'http://www.360buy.com/product/109788.html', N'个护健康电吹风飞科飞科FH6206', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (510, N'109796', N'ThinkPad 40Y7001 原装X60/X60s系列4芯锂电池', N'http://www.360buy.com/product/109796.html', N'电脑整机笔记本配件联想（ThinkPad）联想40Y7001', N'569.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (511, N'109816', N'ThinkPad 原装T/R/W/SL系列6芯增强型电池 40Y6799 (适用T500,R500,T60,T60p,SL500,W500,R61,R60,T61)', N'http://www.360buy.com/product/109816.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）40Y6799', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (512, N'109817', N'ThinkPad 原装T/R/W/SL系列9芯大容量电池 40Y6797 (适用T500,R500,T60,T60p,W500,R61,R60,T61）', N'http://www.360buy.com/product/109817.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）40Y6797', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (513, N'109818', N'ThinkPad 40Y7003 原装X60/X60s系列8芯锂电池', N'http://www.360buy.com/product/109818.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）40y7003', N'759.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (514, N'109848', N'中晶（microtek）Phantom F60 家用时尚型扫描仪', N'http://www.360buy.com/product/109848.html', N'办公打印扫描仪中晶中晶PhantomF60', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (515, N'109872', N'三星（SAMSUNG）INK-M40 黑色墨盒（适用SF-330 331P 335T 332 333P 340 341P )', N'http://www.360buy.com/product/109872.html', N'办公打印墨盒三星三星INK-M40', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (516, N'109881', N'飞科（flyco）毛球修剪器-FR5201 充电式', N'http://www.360buy.com/product/109881.html', N'生活电器其它生活电器飞科飞科FR5201', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (517, N'109882', N'飞科（flyco）毛球修剪器-FR5208 充电式', N'http://www.360buy.com/product/109882.html', N'生活电器其它生活电器飞科飞科FR5208', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (518, N'109906', N'三星（SAMSUNG）M45 黑色墨盒（适用SF-360 361P 371P 371PR )', N'http://www.360buy.com/product/109906.html', N'办公打印墨盒三星三星M45', N'235.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (519, N'109950', N'ThinkPad 40Y7710 原装60系列65W便携式电源适配器', N'http://www.360buy.com/product/109950.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）40y7710', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (520, N'109955', N'ThinkPad 原装3合1笔记本背包 41A4299 (适用于15.4)', N'http://www.360buy.com/product/109955.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）41A4299', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (521, N'109975', N'惠普（HP）LaserJet 5200n A3商用黑白激光打印机', N'http://www.360buy.com/product/109975.html', N'办公打印打印机惠普惠普LaserJet5200nA3', N'10999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (522, N'110020', N'秋叶原（CHOSERL）YF3116N 超值版数码同轴线 3米', N'http://www.360buy.com/product/110020.html', N'外设产品线缆秋叶原秋叶原YF3116N', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (523, N'110026', N'秋叶原（CHOSERL）YF3125 加粗型两莲花对两莲花高品质AV音频连接线 1.5米', N'http://www.360buy.com/product/110026.html', N'外设产品线缆秋叶原秋叶原YF3125', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (524, N'￥75.00', N'派克(parker)威雅黑色签字笔', N'http://www.360buy.com/product/110027.html', N'礼品礼品文具派克派克签字笔', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (525, N'￥35.00', N'派克（PARKER）宝珠笔笔芯-黑色中号（原装）', N'http://www.360buy.com/product/110028.html', N'礼品礼品文具派克派克宝珠笔笔芯', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (526, N'￥55.00', N'派克(parker)标准黑色墨水', N'http://www.360buy.com/product/110030.html', N'礼品礼品文具派克派克墨水', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (527, N'110042', N'秋叶原（CHOSERL）QB570有线电视信号线 RF射频线(高清版) 3米', N'http://www.360buy.com/product/110042.html', N'外设产品线缆秋叶原秋叶原QB570', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (528, N'110043', N'秋叶原（CHOSERL）QB570有线电视信号线 RF射频线（高清版） 1.5米', N'http://www.360buy.com/product/110043.html', N'外设产品线缆秋叶原秋叶原QB570', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (529, N'110061', N'秋叶原（CHOSERL）YF3120N 升级版S端子线 1.5米', N'http://www.360buy.com/product/110061.html', N'外设产品线缆秋叶原秋叶原YF3120N', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (530, N'110173', N'秋叶原（CHOSERL）QB570有线电视信号线 RF射频线（高清版）5米', N'http://www.360buy.com/product/110173.html', N'外设产品线缆秋叶原秋叶原QB570', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (531, N'110197', N'惠普（HP）51640AA 40号 黑色墨盒（适用Designjet 400 600系列 Deskjet 1200c 1200c/ps）', N'http://www.360buy.com/product/110197.html', N'办公打印墨盒惠普惠普40号 51640AA', N'182.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (532, N'110233', N'惠普（HP）C4836A 11号青色墨盒（适用K850 K850dtn cp1700系列）', N'http://www.360buy.com/product/110233.html', N'办公打印墨盒惠普惠普11号 C4836A', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (533, N'110234', N'惠普（HP）C4838A 11号 黄色墨盒（适用K850 K850dtn cp1700系列）', N'http://www.360buy.com/product/110234.html', N'办公打印墨盒惠普惠普11号 C4838A', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (534, N'110237', N'Gigaset | SIEMENS 西门子C360套装（绅士黑）', N'http://www.360buy.com/product/110237.html', N'生活电器电话机西门子西门子C360套装', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (535, N'￥338.00', N'Zippo打火机仿古银白板121FB-10112', N'http://www.360buy.com/product/110242.html', N'礼品火机烟具Zippo芝宝打火机', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (536, N'110243', N'惠普（HP）C4837A 11号红色墨盒（适用K850 K850dtn cp1700）', N'http://www.360buy.com/product/110243.html', N'办公打印墨盒惠普惠普11号 C4837A', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (537, N'110245', N'爱普生（Epson）T0631 黑色墨盒 C13T063180（适用C67/87/CX3700/4100/4700）', N'http://www.360buy.com/product/110245.html', N'办公打印墨盒爱普生爱普生T0631', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (538, N'110246', N'爱普生（Epson）T0632 青色墨盒 C13T063280（适用C67/87/CX3700/4100/4700）', N'http://www.360buy.com/product/110246.html', N'办公打印墨盒爱普生爱普生T0632', N'60.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (539, N'110264', N'爱普生（Epson）T0633 洋红色墨盒（适用C67 87 CX3700 4700）', N'http://www.360buy.com/product/110264.html', N'办公打印墨盒爱普生爱普生T0633', N'60.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (540, N'110265', N'爱普生（Epson）T0634 黄色墨盒 C13T063480（适用C67/87/CX3700/4100/4700）', N'http://www.360buy.com/product/110265.html', N'办公打印墨盒爱普生爱普生T0634', N'60.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (541, N'110272', N'爱普生（Epson）T0561 黑色墨盒 C13T056180（适用R250/RX430/530）', N'http://www.360buy.com/product/110272.html', N'办公打印墨盒爱普生爱普生T0561', N'66.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (542, N'110273', N'爱普生（Epson）T0562 青色墨盒 C13T056280（适用R250/RX430/530）', N'http://www.360buy.com/product/110273.html', N'办公打印墨盒爱普生爱普生T0562', N'66.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (543, N'110290', N'爱普生（Epson）T0563 洋红色墨盒（适用R250 RX430 RX530）', N'http://www.360buy.com/product/110290.html', N'办公打印墨盒爱普生爱普生T0563', N'66.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (544, N'110291', N'爱普生（Epson）T0564 黄色墨盒 C13T056480（适用R250/RX430/530）', N'http://www.360buy.com/product/110291.html', N'办公打印墨盒爱普生爱普生T0564', N'66.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (545, N'110318', N'威刚（ADATA）万紫千红 DDR 400 512MB台式机内存条', N'http://www.360buy.com/product/110318.html', N'电脑配件内存威刚威刚万紫千红 DDR400 512MB', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (546, N'110351', N'铼德（RITEK）CD-R 52速 700M X系列 桶装50片 刻录盘', N'http://www.360buy.com/product/110351.html', N'办公文仪刻录碟片/附件铼德铼德CD-R 52速', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (547, N'￥1190.00', N'卡西欧(Casio)Edifice系列男表EF-503D-1A', N'http://www.360buy.com/product/110435.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-503D-1A', N'598.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (548, N'110437', N'飞科（FLYCO）双环极速剃须刀 FS821 全身水洗', N'http://www.360buy.com/product/110437.html', N'个护健康剃须刀飞科飞科FS821', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (549, N'110447', N'尼康（Nikon） SB－400 闪光灯', N'http://www.360buy.com/product/110447.html', N'摄影摄像闪光灯/手柄尼康尼康SB－400', N'899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (550, N'110457', N'TCL HCD868（79） 来电显示电话机（黑色）', N'http://www.360buy.com/product/110457.html', N'生活电器电话机TCLTCLHCD868(79)', N'47.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (551, N'110459', N'TCL HCD868(95)TSDL 来电显示电话机（深灰色）', N'http://www.360buy.com/product/110459.html', N'生活电器电话机TCLTCLHCD868(95)TSDL', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (552, N'110512', N'飞利浦（PHILIPS）CORD222来电显示电话机 （白色）', N'http://www.360buy.com/product/110512.html', N'生活电器电话机飞利浦飞利浦CORD222', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (553, N'110513', N'飞利浦（PHILIPS）TD-2816D来电显示电话机（白色）', N'http://www.360buy.com/product/110513.html', N'生活电器电话机飞利浦飞利浦TD-2816D', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (554, N'￥218.00', N'维氏VICTORINOX瑞士军刀北京小脸谱', N'http://www.360buy.com/product/110545.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (555, N'￥238.00', N'派克(parker)威雅钢杆白夹墨水笔', N'http://www.360buy.com/product/110550.html', N'礼品礼品文具派克派克墨水笔', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (556, N'110595', N'环宇飞扬（UniFly） X战警3900+高清网络摄像头 黑色', N'http://www.360buy.com/product/110595.html', N'外设产品摄像头环宇飞扬环宇飞扬高清网络摄像头', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (557, N'110647', N'B+W 普通UV滤镜 55mm', N'http://www.360buy.com/product/110647.html', N'摄影摄像滤镜b+wB+WB+W 55mm', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (558, N'110649', N'B+W 普通UV滤镜 77mm', N'http://www.360buy.com/product/110649.html', N'摄影摄像滤镜b+wB+WB+W 77mm', N'429.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (559, N'110657', N'B+W 普通UV滤镜 58mm', N'http://www.360buy.com/product/110657.html', N'摄影摄像滤镜b+wB+WB+W 58mm', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (560, N'110658', N'B+W 普通UV滤镜 67mm', N'http://www.360buy.com/product/110658.html', N'摄影摄像滤镜b+wB+WB+W 67mm', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (561, N'110664', N'惠威（HiVi）多媒体音箱 M200MKII 2.0声道HI-FI品质', N'http://www.360buy.com/product/110664.html', N'时尚影音音箱惠威惠威M200MKII', N'1096.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (562, N'￥348.00', N'卡西欧（Casio）Combination十年电池系列手表AW-81D-7A', N'http://www.360buy.com/product/110666.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧手表AW-81D-7A', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (563, N'110715', N'TCL HCD868（79） 来电显示电话机（灰白）', N'http://www.360buy.com/product/110715.html', N'生活电器电话机TCLTCLHCD868(79)', N'47.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (564, N'110846', N'铼德（RITEK）DVD+R 16速 4.7G X系列 桶装50片 刻录盘', N'http://www.360buy.com/product/110846.html', N'办公文仪刻录碟片/附件铼德铼德DVD+R 16速', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (565, N'110847', N'铼德（RITEK）DVD-R 16速 4.7G X系列 桶装50片 刻录盘', N'http://www.360buy.com/product/110847.html', N'办公文仪刻录碟片/附件铼德铼德DVD-R 16速', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (566, N'110906', N'金士顿（Kingston）DDR2 667 1G 笔记本内存', N'http://www.360buy.com/product/110906.html', N'电脑配件内存金士顿金士顿DDR2 667 1G 笔记本内存', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (567, N'￥890.00', N'卡西欧（Casio）指针Edifice系列男款EF-500D-1A', N'http://www.360buy.com/product/110930.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-500D-1A', N'668.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (568, N'￥890.00', N'卡西欧（Casio）指针Edifice系列男款EF-500D-2A', N'http://www.360buy.com/product/110931.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-500D-2A', N'668.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (569, N'￥298.00', N'卡西欧（Casio）指针系列女表LTP-1208D-1B', N'http://www.360buy.com/product/111120.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧LTP-1208D-1B', N'218.00')
GO
print 'Processed 500 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (570, N'￥338.00', N'Zippo打火机铜厚壳沙子168', N'http://www.360buy.com/product/111192.html', N'礼品火机烟具Zippo芝宝打火机', N'125.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (571, N'￥338.00', N'Zippo打火机厚壳镜子167', N'http://www.360buy.com/product/111194.html', N'礼品火机烟具Zippo芝宝打火机', N'116.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (572, N'￥268.00', N'Zippo打火机黑色哑漆218', N'http://www.360buy.com/product/111201.html', N'礼品火机烟具Zippo芝宝打火机', N'105.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (573, N'￥308.00', N'Zippo打火机黑色哑漆商标218ZL', N'http://www.360buy.com/product/111203.html', N'礼品火机烟具Zippo芝宝打火机', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (574, N'￥368.00', N'Zippo打火机古典铜切角镜子270', N'http://www.360buy.com/product/111222.html', N'礼品火机烟具Zippo芝宝打火机', N'143.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (575, N'￥308.00', N'Zippo打火机纤巧黑雅士1655', N'http://www.360buy.com/product/111249.html', N'礼品火机烟具Zippo芝宝打火机', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (576, N'￥308.00', N'Zippo打火机纤巧黑色哑漆红框商标1618ZB', N'http://www.360buy.com/product/111279.html', N'礼品火机烟具Zippo芝宝打火机', N'97.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (577, N'￥308.00', N'Zippo打火机厚壳沙子162', N'http://www.360buy.com/product/111280.html', N'礼品火机烟具Zippo芝宝打火机', N'116.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (578, N'￥408.00', N'Zippo打火机铜厚壳镜子169', N'http://www.360buy.com/product/111282.html', N'礼品火机烟具Zippo芝宝打火机', N'154.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (579, N'￥408.00', N'Zippo打火机月夜老虎21163', N'http://www.360buy.com/product/111308.html', N'礼品火机烟具Zippo芝宝打火机', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (580, N'111351', N'秋叶原（CHOSERL）Q550 升级版镀金插头逐行扫描VGA线 针/针 1.5米', N'http://www.360buy.com/product/111351.html', N'外设产品线缆秋叶原秋叶原Q550', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (581, N'￥79.00', N'Zippo火机油355ml大容量装(不能航空运输)', N'http://www.360buy.com/product/111363.html', N'礼品火机烟具Zippo芝宝火机油', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (582, N'111383', N'品胜（PISEN）FM55H 数码相机电池', N'http://www.360buy.com/product/111383.html', N'数码配件电池/充电器品胜品胜SONY FM55H', N'209.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (583, N'￥308.00', N'Zippo打火机创始人200FL', N'http://www.360buy.com/product/111411.html', N'礼品火机烟具Zippo芝宝打火机', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (584, N'￥368.00', N'Zippo打火机雪花火焰20363', N'http://www.360buy.com/product/111412.html', N'礼品火机烟具Zippo芝宝打火机', N'123.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (585, N'￥438.00', N'Zippo打火机黑冰黑洞交叉字样20969', N'http://www.360buy.com/product/111422.html', N'礼品火机烟具Zippo芝宝打火机', N'163.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (586, N'￥268.00', N'Zippo打火机黑裂漆236', N'http://www.360buy.com/product/111423.html', N'礼品火机烟具Zippo芝宝打火机', N'97.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (587, N'￥448.00', N'卡西欧（Casio）指针系列 男式手表MTP-1174A-1A', N'http://www.360buy.com/product/111442.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧指针系列 男式手表MTP-1174A-1A', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (588, N'￥218.00', N'维氏VICTORINOX瑞士军刀经济型露营者3.3613', N'http://www.360buy.com/product/111482.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (589, N'￥178.00', N'维氏VICTORINOX瑞士军刀经济标准型3.3603', N'http://www.360buy.com/product/111483.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (590, N'￥183.00', N'维氏VICTORINOX瑞士军刀经济型运动员2.3803', N'http://www.360buy.com/product/111484.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'82.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (591, N'￥448.00', N'卡西欧(Casio)指针系列男表MTP-1174A-7A', N'http://www.360buy.com/product/111506.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表MTP-1174A-7A', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (592, N'111524', N'飞科 (FLYCO) FS817 浮动旋转式剃须刀 双刀头', N'http://www.360buy.com/product/111524.html', N'个护健康剃须刀飞科飞科FS817', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (593, N'111525', N'飞科 (FLYCO) FS818浮动旋转式剃须刀 双刀头', N'http://www.360buy.com/product/111525.html', N'个护健康剃须刀飞科飞科FS818', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (594, N'111527', N'飞科 (FLYCO) FS819 浮动旋转式剃须刀 双刀头', N'http://www.360buy.com/product/111527.html', N'个护健康剃须刀飞科飞科FS819', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (595, N'111529', N'飞科（FLYCO）电吹风 FH6205 1000W 冷热风', N'http://www.360buy.com/product/111529.html', N'个护健康电吹风飞科飞科FH6205', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (596, N'111535', N'飞科（FLYCO）浮动旋转式剃须刀-FS812', N'http://www.360buy.com/product/111535.html', N'个护健康剃须刀飞科飞科FS812', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (597, N'111546', N'佳能（Canon） EF 16-35mm f/2.8L II USM 广角变焦镜头', N'http://www.360buy.com/product/111546.html', N'摄影摄像镜头佳能佳能EF 16-35mm f/2.8L II USM', N'10666.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (598, N'111547', N'秋叶原（CHOSERL）YF1616 6位分控新国标超值插座 2米', N'http://www.360buy.com/product/111547.html', N'外设产品插座秋叶原秋叶原YF1616', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (599, N'111548', N'佳能（Canon） EF 17-40mm f/4L USM 广角变焦镜头', N'http://www.360buy.com/product/111548.html', N'摄影摄像镜头佳能佳能EF 17-40mm f/4L USM', N'5099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (600, N'111561', N'飞利浦（PHILIPS）CORD282来电显示电话机（蓝色）', N'http://www.360buy.com/product/111561.html', N'生活电器电话机飞利浦飞利浦CORD282', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (601, N'111569', N'TCL HCD868（97） 来电显示电话机（白色)', N'http://www.360buy.com/product/111569.html', N'生活电器电话机TCLTCLHCD868（97）', N'76.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (602, N'￥308.00', N'Zippo打火机身份证20836', N'http://www.360buy.com/product/111591.html', N'礼品火机烟具Zippo芝宝打火机', N'115.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (603, N'￥368.00', N'Zippo打火机星际行24059', N'http://www.360buy.com/product/111592.html', N'礼品火机烟具Zippo芝宝打火机', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (604, N'111595', N'佳能（Canon） EF 24-105mm f/4L IS USM 标准变焦镜头', N'http://www.360buy.com/product/111595.html', N'摄影摄像镜头佳能佳能EF 24-105mm f/4L IS USM', N'7999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (605, N'￥398.00', N'Zippo打火机纤巧铜威尼斯人1652B', N'http://www.360buy.com/product/111627.html', N'礼品火机烟具Zippo芝宝打火机', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (606, N'￥338.00', N'Zippo打火机卧虎藏龙21067', N'http://www.360buy.com/product/111629.html', N'礼品火机烟具Zippo芝宝打火机', N'116.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (607, N'￥408.00', N'Zippo打火机黑美人20762', N'http://www.360buy.com/product/111631.html', N'礼品火机烟具Zippo芝宝打火机', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (608, N'￥268.00', N'Zippo打火机心对心24016', N'http://www.360buy.com/product/111632.html', N'礼品火机烟具Zippo芝宝打火机', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (609, N'111635', N'佳能（Canon） EF 70-200mm f/4L USM 远摄变焦镜头', N'http://www.360buy.com/product/111635.html', N'摄影摄像镜头佳能佳能EF 70-200mm f/4L USM', N'5399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (610, N'111684', N'飞利浦（PHILIPS）DCTG792 2.4GHz数字无绳电话子母机（白色）', N'http://www.360buy.com/product/111684.html', N'生活电器电话机飞利浦飞利浦DCTG792', N'295.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (611, N'￥399.00', N'Zippo打火机西班牙狂舞20308', N'http://www.360buy.com/product/111712.html', N'礼品火机烟具Zippo芝宝打火机', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (612, N'￥438.00', N'Zippo打火机威尼斯条纹24038', N'http://www.360buy.com/product/111721.html', N'礼品火机烟具Zippo芝宝打火机', N'156.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (613, N'￥338.00', N'Zippo打火机纤巧威尼斯人1652', N'http://www.360buy.com/product/111722.html', N'礼品火机烟具Zippo芝宝打火机', N'128.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (614, N'￥398.00', N'Zippo打火机铜威尼斯人352B', N'http://www.360buy.com/product/111724.html', N'礼品火机烟具Zippo芝宝打火机', N'138.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (615, N'111770', N'品胜（PISEN）CNP40 数码充电器', N'http://www.360buy.com/product/111770.html', N'数码配件电池/充电器品胜品胜CNP40', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (616, N'111771', N'品胜（PISEN）EN-EL9 数码相机电池', N'http://www.360buy.com/product/111771.html', N'数码配件电池/充电器品胜品胜EN-EL9', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (617, N'111776', N'宝罗（Paull）专业数码包BL-2025 (灰配绿) 适用于500D/450D/D90/D3000/K10D/K20D等', N'http://www.360buy.com/product/111776.html', N'数码配件数码包宝罗宝罗BL-2025', N'126.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (618, N'111777', N'宝罗（Paull）专业数码包BL-3012 (黑色) 适用于500D/450D/D90/D3000/K-X/K-7等', N'http://www.360buy.com/product/111777.html', N'数码配件数码包宝罗宝罗BL-3012', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (619, N'￥148.00', N'维氏VICTORINOX瑞士军刀新兵2.2503', N'http://www.360buy.com/product/111798.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (620, N'￥990.00', N'卡西欧(Casio)Edifice系列男表EF-512D-1AV', N'http://www.360buy.com/product/111835.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-512D-1AV', N'469.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (621, N'￥81.50', N'乐扣乐扣5.5L长方形保鲜盒HPL836', N'http://www.360buy.com/product/111904.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (622, N'￥106.10', N'乐扣乐扣9L长方形保鲜盒HPL838', N'http://www.360buy.com/product/111905.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'69.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (623, N'￥17.00', N'乐扣乐扣350ML长方形保鲜盒HPL806', N'http://www.360buy.com/product/111907.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (624, N'￥599.00', N'泰格斯（Targus）TSB038AP 15.4英寸时代脉动笔记本背包', N'http://www.360buy.com/product/112088.html', N'功能箱包电脑数码包泰格斯泰格斯TSB038AP', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (625, N'112111', N'松下（Panasonic） EH2331P 流线型睫毛卷翘器', N'http://www.360buy.com/product/112111.html', N'个护健康美容器松下松下EH2331P', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (626, N'112165', N'博朗（BRAUN）欧乐B EB20-4 4支装电动牙刷头', N'http://www.360buy.com/product/112165.html', N'个护健康口腔护理博朗博朗EB20-4', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (627, N'112260', N'惠普（HP）LaserJet 5200L A3黑白激光打印机', N'http://www.360buy.com/product/112260.html', N'办公打印打印机惠普惠普5200L', N'6188.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (628, N'112264', N'佳能（Canon） EF 24MM F/1.4 L II USM 广角定焦镜头', N'http://www.360buy.com/product/112264.html', N'摄影摄像镜头佳能佳能EF 24MM F/1.4 L II USM', N'10999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (629, N'112276', N'德生（Tecsun）R9701 袖珍式高灵敏度二次变频全波段收音机(黑色)', N'http://www.360buy.com/product/112276.html', N'生活电器收录/音机德生德生R9701', N'112.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (630, N'112297', N'佳能（Canon） EF 75-300mm f/4-5.6 III 远摄变焦镜头', N'http://www.360buy.com/product/112297.html', N'摄影摄像镜头佳能佳能EF 75-300mm f/4-5.6 III', N'1199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (631, N'112319', N'佳能（Canon） EF 28-300mm f/3.5-5.6L IS USM 远摄变焦镜头', N'http://www.360buy.com/product/112319.html', N'摄影摄像镜头佳能佳能EF 28-300mm f/3.5-5.6L IS USM', N'18499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (632, N'112334', N'品胜（PISEN）“小灵充”快速充电器套装（小灵充+2500mAh AA电池*2）', N'http://www.360buy.com/product/112334.html', N'数码配件电池/充电器品胜品胜“小灵充”', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (633, N'112335', N'品胜（PISEN）“快易充”快速充电器套装（快易充+2500mAh AA电池*4）', N'http://www.360buy.com/product/112335.html', N'数码配件电池/充电器品胜品胜“快易充”', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (634, N'112337', N'品胜（PISEN）“标准充”标准充电器套装（标准充电器+2500mAh AA镍氢充电电池*4）', N'http://www.360buy.com/product/112337.html', N'数码配件电池/充电器品胜品胜“标准充”', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (635, N'112370', N'德生 (TECSUN) R202T袖珍式调频／调幅／电视伴音收音机 黑色', N'http://www.360buy.com/product/112370.html', N'生活电器收录/音机德生德生R202T', N'34.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (636, N'112380', N'德生(TECSUN)R218 调频／调幅／电视伴音收音机黑色', N'http://www.360buy.com/product/112380.html', N'生活电器收录/音机德生德生R218', N'38.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (637, N'112381', N'佳能（Canon） EF 50mm f/1.2L USM 标准定焦镜头', N'http://www.360buy.com/product/112381.html', N'摄影摄像镜头佳能佳能EF 50mm f/1.2L USM', N'11999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (638, N'112382', N'德生(TECSUN) R909TV 调频／调幅／电视伴音收音机 （白色）', N'http://www.360buy.com/product/112382.html', N'生活电器收录/音机德生德生R909TV', N'51.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (639, N'112388', N'德生(TECSUN) R1012 12波段调频／短波／中波／电视伴音收音机 黑色', N'http://www.360buy.com/product/112388.html', N'生活电器收录/音机德生德生R1012', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (640, N'112389', N'德生CR-200 (TECSUN)数字调谐调频立体声/中波/电视伴音收音机黑色', N'http://www.360buy.com/product/112389.html', N'生活电器收录/音机德生德生CR-200', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (641, N'112391', N'德生(TECSUN) R-303 交直流全波段电视伴音收音机 黑色', N'http://www.360buy.com/product/112391.html', N'生活电器收录/音机德生德生R-303', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (642, N'112441', N'德生(TECSUN) R208 (调频／调幅两波段收音机200小时电池寿命)（灰色）', N'http://www.360buy.com/product/112441.html', N'生活电器收录/音机德生德生R208', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (643, N'112442', N'德生R9012(TECSUN) 袖珍式高灵敏度12波段收音机（黑色）', N'http://www.360buy.com/product/112442.html', N'生活电器收录/音机德生德生R9012', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (644, N'112456', N'德生（TECSUN）R-909 超薄型9波段收音机 黑色', N'http://www.360buy.com/product/112456.html', N'生活电器收录/音机德生德生R-909', N'53.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (645, N'112457', N'德生（TECSUN）DR-910数码显视全波段钟控收音机（银灰色）', N'http://www.360buy.com/product/112457.html', N'生活电器收录/音机德生德生DR-910', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (646, N'112458', N'德生（TECSUN）R-206 便携式调频/调幅收音机（黑色）', N'http://www.360buy.com/product/112458.html', N'生活电器收录/音机德生德生R-206', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (647, N'112483', N'佳能（Canon）BCI-6PC 照片青色墨盒（适用于S900）', N'http://www.360buy.com/product/112483.html', N'办公打印墨盒佳能佳能BCI-6PC', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (648, N'112484', N'佳能（Canon）BCI-6PM 照片品红墨盒（适用于S900）', N'http://www.360buy.com/product/112484.html', N'办公打印墨盒佳能佳能BCI-6PM', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (649, N'112497', N'佳能（Canon）LASERSHOT LBP3500 A3黑白激光打印机', N'http://www.360buy.com/product/112497.html', N'办公打印打印机佳能佳能LASERSHOTLBP3500A3', N'5599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (650, N'112517', N'佳能（Canon） EF 200mm f/2.8L II USM 远摄定焦镜头', N'http://www.360buy.com/product/112517.html', N'摄影摄像镜头佳能佳能200mm f/2.8L II USM', N'6375.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (651, N'112555', N'德生(tecsun) R-908 超薄型调频/中波/短波全波段收音机 （银灰色）', N'http://www.360buy.com/product/112555.html', N'生活电器收录/音机德生德生R-908', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (652, N'112559', N'德生（tecsun）R-305 调频/中波/短波/电视伴音全频收音机 （黑色）', N'http://www.360buy.com/product/112559.html', N'生活电器收录/音机德生德生R-305', N'67.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (653, N'112566', N'格兰仕(Galanz)多用电热锅CFK-120AG（火锅，蒸，煮，炖，炒，铁板烧）', N'http://www.360buy.com/product/112566.html', N'厨房电器多用途锅格兰仕格兰仕CFK-120AG', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (654, N'￥153.00', N'维氏VICTORINOX瑞士军刀典范SD0.6223', N'http://www.360buy.com/product/112570.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (655, N'￥258.00', N'维氏VICTORINOX瑞士军刀瑞士卡透明红0.7100.T', N'http://www.360buy.com/product/112573.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (656, N'112578', N'佳能（Canon） EF 300mm f/4L IS USM 远摄定焦镜头', N'http://www.360buy.com/product/112578.html', N'摄影摄像镜头佳能佳能300mm f/4L IS USM', N'11199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (657, N'112631', N'佳能（Canon） MP-E 65mm f/2.8 1-5X 微距摄影镜头', N'http://www.360buy.com/product/112631.html', N'摄影摄像镜头佳能佳能MP-E 65mm f/2.8 1-5X', N'7799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (658, N'112655', N'佳能（Canon） EF 180MM F/3.5L USM 微距镜头', N'http://www.360buy.com/product/112655.html', N'摄影摄像镜头佳能佳能180MM F/3.5L USM', N'11999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (659, N'112713', N'博朗（BRAUN）欧乐B D12.523 悦享型电动牙刷', N'http://www.360buy.com/product/112713.html', N'个护健康口腔护理博朗博朗D12.523', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (660, N'112714', N'博朗（BRAUN）Oral-B欧乐B OC20专业口腔护理中心', N'http://www.360buy.com/product/112714.html', N'个护健康口腔护理博朗博朗OC20', N'1249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (661, N'￥193.00', N'维氏VICTORINOX瑞士军刀小修补匠0.4603', N'http://www.360buy.com/product/112737.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (662, N'￥128.00', N'维氏VICTORINOX瑞士军刀轻量拳手0.2303', N'http://www.360buy.com/product/112738.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (663, N'￥723.00', N'维氏VICTORINOX瑞士军刀大力神0.9043', N'http://www.360buy.com/product/112739.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'339.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (664, N'112763', N'友讯（D-Link）DES-1005D 10/100Mbps 5口非网管以太网交换机', N'http://www.360buy.com/product/112763.html', N'网络产品交换机D-Link友讯DES-1005D', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (665, N'112768', N'友讯（D-Link）10/100Mbps 8口以太网交换机DES-1008D', N'http://www.360buy.com/product/112768.html', N'网络产品交换机D-Link友讯DES-1008D', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (666, N'112771', N'友讯（D-Link）10/100Mbps 16口以太网交换机DES-1016D', N'http://www.360buy.com/product/112771.html', N'网络产品交换机D-Link友讯DES-1016D', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (667, N'112772', N'友讯（D-Link）10/100Mbps 24口以太网交换机DES-1024D', N'http://www.360buy.com/product/112772.html', N'网络产品交换机D-LinkD-LinkDES-1024D', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (668, N'112778', N'友讯（D-Link）DWL-G122 54M无线USB网卡', N'http://www.360buy.com/product/112778.html', N'网络产品网卡D-LinkD-LinkDWL-G122', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (669, N'112781', N'友讯（D-Link）DI-624+A 802.11g 54M 无线路由器', N'http://www.360buy.com/product/112781.html', N'网络产品路由器D-Link友讯DI-624+A', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (670, N'112800', N'天敏（10moons）随心录4 UT340电视盒', N'http://www.360buy.com/product/112800.html', N'外设产品电视盒天敏天敏UT340', N'129.00')
GO
print 'Processed 600 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (671, N'￥468.00', N'森泰斯（sumdex）时尚轻量型14.1寸电脑背包 PON－454（橙色）', N'http://www.360buy.com/product/112819.html', N'功能箱包电脑数码包森泰斯森泰斯PON-454', N'279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (672, N'112836', N'科密(comet) C-868 多功能办公碎纸机（双入口碎纸/碎卡碎光盘4级保密一次可碎7张纸）', N'http://www.360buy.com/product/112836.html', N'办公打印碎纸机科密科密C-868 1+1', N'1099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (673, N'￥103.00', N'维氏VICTORINOX瑞士军刀伴随者0.6123', N'http://www.360buy.com/product/112839.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (674, N'112840', N'科密(comet) C-838 高保密4级办公碎纸机（一次碎6张纸/静音设计）', N'http://www.360buy.com/product/112840.html', N'办公打印碎纸机科密科密C-838', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (675, N'112843', N'科密(comet) 黑金刚大功率大容量办公碎纸机（一次碎15张纸/碎光盘/卡片/书钉针/28升纸屑桶）', N'http://www.360buy.com/product/112843.html', N'办公打印碎纸机科密科密黑金刚', N'1299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (676, N'112848', N'松下（Panasonic） ER3300W 儿童理发器', N'http://www.360buy.com/product/112848.html', N'个护健康美发器松下松下ER3300W', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (677, N'112858', N'友讯（D-Link）DI-504 4端口高性能宽带路由器', N'http://www.360buy.com/product/112858.html', N'网络产品路由器D-Link友讯DI-504', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (678, N'￥193.00', N'维氏VICTORINOX瑞士军刀漫游者0.3603', N'http://www.360buy.com/product/112873.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (679, N'￥243.00', N'维氏VICTORINOX瑞士军刀露营者1.3613', N'http://www.360buy.com/product/112877.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (680, N'￥388.00', N'维氏VICTORINOX瑞士军刀登山家1.3743', N'http://www.360buy.com/product/112888.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'188.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (681, N'￥475.00', N'维氏VICTORINOX瑞士军刀游击者1.3763.71', N'http://www.360buy.com/product/112889.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'243.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (682, N'112899', N'三菱（MITSUBISHI）DVD+R 16速 4.7G 五彩樱花 台产 桶装50片 刻录盘', N'http://www.360buy.com/product/112899.html', N'办公文仪刻录碟片/附件三菱三菱DVD+R', N'105.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (683, N'￥538.00', N'维氏VICTORINOX瑞士军刀前驱0.9023', N'http://www.360buy.com/product/112937.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (684, N'￥418.00', N'维氏VICTORINOX瑞士军刀背包族0.8863', N'http://www.360buy.com/product/112938.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (685, N'￥418.00', N'维氏VICTORINOX瑞士军刀追猎者0.8463.3黑色', N'http://www.360buy.com/product/112945.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (686, N'￥348.00', N'维氏VICTORINOX瑞士军刀牧民0.8353.3黑色', N'http://www.360buy.com/product/112946.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (687, N'112976', N'飞利浦（Philips）HR1851 榨汁机', N'http://www.360buy.com/product/112976.html', N'厨房电器料理/榨汁机飞利浦飞利浦HR1851', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (688, N'113143', N'德生(tecsun) R-306 调频/中波/短波4波段收音机 黑色', N'http://www.360buy.com/product/113143.html', N'生活电器收录/音机德生德生R-306', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (689, N'113169', N'APC UPS 不间断电源BK500-CH', N'http://www.360buy.com/product/113169.html', N'外设产品UPS电源APCAPCBK500-CH', N'359.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (690, N'113171', N'APC UPS 不间断电源BK650-CH', N'http://www.360buy.com/product/113171.html', N'外设产品UPS电源APCAPCBK650-CH', N'459.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (691, N'113175', N'山特（STK）UPS 不间断电源TG1000', N'http://www.360buy.com/product/113175.html', N'外设产品UPS电源山特山特TG1000', N'459.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (692, N'113400', N'品胜（PISEN）NB5L 数码摄像机/数码相机充电器', N'http://www.360buy.com/product/113400.html', N'数码配件电池/充电器品胜品胜NB5L', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (693, N'113402', N'品胜（PISEN）NB4L 数码摄像机/数码相机充电器', N'http://www.360buy.com/product/113402.html', N'数码配件电池/充电器品胜品胜NB4L', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (694, N'113405', N'品胜（PISEN）BP511 数码摄像机/数码相机充电器', N'http://www.360buy.com/product/113405.html', N'数码配件电池/充电器品胜品胜BP511', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (695, N'113422', N'可来博（Clamber）STZ-1-AP1 旅行电源转换器 国标', N'http://www.360buy.com/product/113422.html', N'外设产品插座可来博可来博STZ-1-AP1', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (696, N'113423', N'可来博（Clamber）STY-1-AP2 旅行电源转换器 美标', N'http://www.360buy.com/product/113423.html', N'外设产品插座可来博可来博STY-1-AP2', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (697, N'113424', N'可来博（Clamber）STY-1-AP3 旅行电源转换器 英标', N'http://www.360buy.com/product/113424.html', N'外设产品插座可来博可来博STY-1-AP3', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (698, N'113433', N'三菱（MITSUBISHI）DVD-R 16速 4.7G 五彩樱花 台产 桶装50片 刻录盘', N'http://www.360buy.com/product/113433.html', N'办公文仪刻录碟片/附件三菱三菱DVD-R 16速', N'105.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (699, N'113447', N'可来博（Clamber）STY-1-AP5 旅行电源转换器 德标', N'http://www.360buy.com/product/113447.html', N'外设产品插座可来博可来博STY-1-AP5', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (700, N'113449', N'可来博（Clamber）STY-1-AP9 旅行电源转换器 西欧', N'http://www.360buy.com/product/113449.html', N'外设产品插座可来博可来博STY-1-AP910A', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (701, N'113454', N'可来博（Clamber）STY-1-02/2000 2位空调专用插座（16A） 3米', N'http://www.360buy.com/product/113454.html', N'外设产品插座可来博可来博STY-1-02/2000', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (702, N'113507', N'品胜（PISEN）AA镍氢充电电池 2500mAh（2只装）', N'http://www.360buy.com/product/113507.html', N'数码配件电池/充电器品胜品胜2500mAh', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (703, N'113508', N'品胜（PISEN）EL3 数码摄像机/数码相机充电器', N'http://www.360buy.com/product/113508.html', N'数码配件电池/充电器品胜品胜EL3', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (704, N'113526', N'德生R-304 （TECSUN）便携式高灵敏度调频/中波/短波收音机(黑色)', N'http://www.360buy.com/product/113526.html', N'生活电器收录/音机德生德生R-304', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (705, N'113527', N'德生（TECSUN）R-201T 袖珍式调频/调幅/电视伴音收音机', N'http://www.360buy.com/product/113527.html', N'生活电器收录/音机德生德生R-201T', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (706, N'113529', N'德生R-202 （TECSUN）袖珍式调频/调幅收音机 黑色', N'http://www.360buy.com/product/113529.html', N'生活电器收录/音机德生德生R-202', N'32.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (707, N'113548', N'三菱（MITSUBISHI）CD-R 52速 700M 小故事 鲨鱼游踪 台产 桶装50片 刻录盘', N'http://www.360buy.com/product/113548.html', N'办公文仪刻录碟片/附件三菱三菱CD-R 52速', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (708, N'113549', N'三菱（MITSUBISHI）CD-R 52速 700M 小故事 玉兔圆月 台产 桶装50片 刻录盘', N'http://www.360buy.com/product/113549.html', N'办公文仪刻录碟片/附件三菱三菱CD-R 52速', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (709, N'113562', N'乐之邦MUSILAND-MD10音频解码器/usb声卡', N'http://www.360buy.com/product/113562.html', N'电脑配件声卡/扩展卡乐之邦乐之邦MUSILAND-MD10', N'1120.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (710, N'113583', N'可来博（Clamber）STA－16 可拆线插头（16A）', N'http://www.360buy.com/product/113583.html', N'外设产品插座可来博可来博STA－16', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (711, N'113586', N'可来博（Clamber）CP-B610N15B30 6位PDU机柜专用插座 3米', N'http://www.360buy.com/product/113586.html', N'外设产品插座可来博可来博CP-B610', N'249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (712, N'113636', N'网件（Netgear）WG602 无线AP', N'http://www.360buy.com/product/113636.html', N'网络产品路由器网件网件WG602', N'278.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (713, N'113724', N'TP-LINK TL-R410+ 多功能宽带路由器', N'http://www.360buy.com/product/113724.html', N'网络产品路由器TP-LINKTP-LINKTL-R410+', N'138.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (714, N'￥199.00', N'锋源智能机器人28072 IQ博士能歌善舞射飞碟', N'http://www.360buy.com/product/113775.html', N'遥控/电动机器人/电动锋源锋源智能机器人', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (715, N'113830', N'诺基亚（NOKIA）DC-4 车载充电器 适用于诺基亚2.0mm充电接口设备', N'http://www.360buy.com/product/113830.html', N'手机配件车载配件诺基亚诺基亚DC-4', N'20.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (716, N'113839', N'品胜（PISEN）BG1 数码摄像机/数码相机充电器', N'http://www.360buy.com/product/113839.html', N'数码配件电池/充电器品胜品胜BG1', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (717, N'113842', N'品胜（PISEN）VF815 数码摄像机/数码相机充电器', N'http://www.360buy.com/product/113842.html', N'数码配件电池/充电器品胜品胜VF815', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (718, N'113864', N'ThinkPad 原装典雅型双肩背包 30R6344', N'http://www.360buy.com/product/113864.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）30R6344', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (719, N'113874', N'超人（SID）SE10 儿童理发器 天空蓝', N'http://www.360buy.com/product/113874.html', N'个护健康美发器超人超人SE10', N'54.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (720, N'113882', N'超人（SID）SA809 防水浮动三头剃须刀', N'http://www.360buy.com/product/113882.html', N'个护健康剃须刀超人超人SA809', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (721, N'￥99.00', N'卡西欧（CASIO）手表LQ－139AMV－1B3ULWDF', N'http://www.360buy.com/product/113944.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧手表LQ－139AMV－1B3ULWDF', N'86.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (722, N'114007', N'兄弟(brother) DR-2050 黑色硒鼓组件 (适用DCP7010 2820 7420)', N'http://www.360buy.com/product/114007.html', N'办公打印硒鼓兄弟兄弟DR-2050', N'722.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (723, N'114008', N'兄弟(brother) TN-2050 黑色墨粉盒 (适用DCP7010/7420 FAX2820/2920)', N'http://www.360buy.com/product/114008.html', N'办公打印墨粉兄弟兄弟TN-2050', N'354.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (724, N'114009', N'秋叶原（CHOSERL）YF1613 3位分控新国标超值插座 8米', N'http://www.360buy.com/product/114009.html', N'外设产品插座秋叶原秋叶原YF1613', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (725, N'￥398.00', N'维氏VICTORINOX瑞士军刀礼盒套装(水果刀5.0401+削皮器7.6073+军刀3.3603)', N'http://www.360buy.com/product/114043.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (726, N'114049', N'TP-LINK TL-SG1016T T系列16口全千兆非网管交换机', N'http://www.360buy.com/product/114049.html', N'网络产品交换机TP-LINKTP-LINKTL-SG1016', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (727, N'114051', N'TP-LINK TL-SG1024T T系列24口全千兆非网管交换机', N'http://www.360buy.com/product/114051.html', N'网络产品交换机TP-LINKTP-LINKTL-SG1024T', N'769.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (728, N'114052', N'TP-LINK TL-SG1024DT T系列24口全千兆非网管交换机', N'http://www.360buy.com/product/114052.html', N'网络产品交换机TP-LINKTP-LINKTL-SG1024D', N'649.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (729, N'114053', N'TP-LINK TL-SG1008 8口全千兆非网管交换机', N'http://www.360buy.com/product/114053.html', N'网络产品交换机TP-LINKTP-LINKTL-SG1008', N'425.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (730, N'114066', N'京东自提Diy服务（安装、指导外加兼容性保证）', N'http://www.360buy.com/product/114066.html', N'服务软件京东服务360buy京东自提Diy', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (731, N'￥329.00', N'飞利浦Philips舒视护眼台灯FDS632米白', N'http://www.360buy.com/product/114069.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (732, N'￥329.00', N'飞利浦Philips舒视护眼台灯FDS632蓝色', N'http://www.360buy.com/product/114070.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (733, N'￥1288.00', N'Zippo打火机纯银唐草k7', N'http://www.360buy.com/product/114071.html', N'礼品火机烟具Zippo芝宝打火机', N'469.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (734, N'114094', N'理光（Ricoh）MP1610复印机墨粉（适用Aficio 1610L/1610LD/2015/2018/ 2018D/2020D/1800//1810L//1810LD）', N'http://www.360buy.com/product/114094.html', N'办公打印墨粉理光理光Aficio1610LD', N'125.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (735, N'114095', N'TP-LINK TL-SF1008+ 8口百兆交换机', N'http://www.360buy.com/product/114095.html', N'网络产品交换机TP-LINKTP-LINKTL-SF1008+', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (736, N'114158', N'麦博（Microlab）M-200多媒体音响系统', N'http://www.360buy.com/product/114158.html', N'时尚影音音箱麦博麦博M-200', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (737, N'114169', N'麦博（microlab）FC－570 梵高系列音箱（白色）', N'http://www.360buy.com/product/114169.html', N'时尚影音音箱麦博麦博FC－570', N'520.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (738, N'114170', N'麦博（microlab）FC360 梵高系列音箱 2.1声道+独立功放 （2008年版）', N'http://www.360buy.com/product/114170.html', N'时尚影音音箱麦博麦博FC－360II', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (739, N'114177', N'麦博（microlab）FC361 梵高系列音箱 2.1声道+独立功放 （2008年版）', N'http://www.360buy.com/product/114177.html', N'时尚影音音箱麦博麦博microlab', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (740, N'114185', N'麦博（microlab）FC－330梵高系列音箱', N'http://www.360buy.com/product/114185.html', N'时尚影音音箱麦博麦博FC－330梵高系列音箱', N'369.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (741, N'114283', N'宝利通（POLYCOM）音频会议系统电话机SonudStation 2 标准型（2200-16000-022）', N'http://www.360buy.com/product/114283.html', N'生活电器电话机POLYCOM宝利通SonudStation2', N'4199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (742, N'￥99.00', N'卡西欧（CASIO）手表MQ－24－1EULL', N'http://www.360buy.com/product/114332.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧MQ－24－1EULL', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (743, N'114392', N'尼康（Nikon） AF-S VR 70-300mm f/4.5-5.6G IF-ED 镜头', N'http://www.360buy.com/product/114392.html', N'摄影摄像镜头尼康尼康AF-S VR 70-300mm f/4.5-5.6G IF-ED', N'3999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (744, N'114501', N'地狱火(FIRE-PAD) 二代S版鼠标垫', N'http://www.360buy.com/product/114501.html', N'外设产品鼠标垫地狱火地狱火二代S版', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (745, N'114554', N'宝利通（POLYCOM）音频会议系统电话机SonudStation VTX 1000 扩展型（2200-07142-022）', N'http://www.360buy.com/product/114554.html', N'生活电器电话机POLYCOM宝利通SonudStationVTX1000', N'14699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (746, N'114555', N'宝利通（POLYCOM）音频会议系统电话机SonudStation 2W标准型（2200-07880-022）', N'http://www.360buy.com/product/114555.html', N'生活电器电话机POLYCOM宝利通SonudStation2W', N'5390.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (747, N'114556', N'宝利通（POLYCOM）音频会议系统电话机Polycom SoundPoint Pro SE-225', N'http://www.360buy.com/product/114556.html', N'生活电器电话机POLYCOM宝利通PolycomSoundPointProSE-225', N'2399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (748, N'114572', N'惠普（HP）C8772ZZ 801号 品红色墨盒（适用HP Photosmart C7288 C8188 D7268）', N'http://www.360buy.com/product/114572.html', N'办公打印墨盒惠普惠普C8772ZZ', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (749, N'114575', N'惠普（HP）C8773ZZ 801号黄色墨盒（适用Photosmart C7288 C8188 D7268）', N'http://www.360buy.com/product/114575.html', N'办公打印墨盒惠普惠普C8773ZZ801', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (750, N'114577', N'惠普（HP）C8774ZZ 801号淡青色墨盒（适用Photosmart C7288 C8188 D7268）', N'http://www.360buy.com/product/114577.html', N'办公打印墨盒惠普惠普C8774ZZ801', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (751, N'114579', N'惠普（HP）C8775ZZ 801号浅品红色墨盒（适用Photosmart C7288 C8188 D7268）', N'http://www.360buy.com/product/114579.html', N'办公打印墨盒惠普惠普C8775ZZ801', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (752, N'114585', N'惠普（HP）C9369ZZ 858号 彩色墨盒（适用PSC C4488 B8338 Officejet H470b K7108）', N'http://www.360buy.com/product/114585.html', N'办公打印墨盒惠普惠普C9369ZZ', N'209.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (753, N'114587', N'惠普（HP）C8721ZZ 801号黑色墨盒（适用C8188 8238 D7168 D7268 D7368）', N'http://www.360buy.com/product/114587.html', N'办公打印墨盒惠普惠普C8721ZZ', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (754, N'114592', N'惠普（HP）C8771ZZ 801号青色墨盒（适用 C8188 8238 D7168 D7268 D7368）', N'http://www.360buy.com/product/114592.html', N'办公打印墨盒惠普惠普C8771ZZ', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (755, N'114595', N'惠普（HP）C9361ZZ 854号 彩色墨盒（适用Officejet 6318 Deskjet D4168 5438）', N'http://www.360buy.com/product/114595.html', N'办公打印墨盒惠普惠普C9361ZZ', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (756, N'114599', N'惠普（HP）C9362ZZ 850号 黑色墨盒（适用Officejet 6318 Deskjet 5438）', N'http://www.360buy.com/product/114599.html', N'办公打印墨盒惠普惠普C9362ZZ850', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (757, N'114600', N'惠普（HP）C9364ZZ 851号 黑色墨盒（适用6318 H470b K7108 Deskjet D4168）', N'http://www.360buy.com/product/114600.html', N'办公打印墨盒惠普惠普C9364ZZ851', N'148.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (758, N'114680', N'惠普（HP）LaserJet Q6001A青色硒鼓（适用LaserJet 1600 2600 2605系列 CM1015 CM1017）', N'http://www.360buy.com/product/114680.html', N'办公打印硒鼓惠普惠普LaserJetQ6001A', N'559.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (759, N'114692', N'惠普（HP）LaserJet Q6470A 黑色硒鼓（适用LaserJet 3800n 3600 3505）', N'http://www.360buy.com/product/114692.html', N'办公打印硒鼓惠普惠普LaserJetQ6470A', N'979.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (760, N'114697', N'亚都（YADU）KJG130A 空气净化器', N'http://www.360buy.com/product/114697.html', N'生活电器净化器亚都亚都KJG130A', N'620.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (761, N'114717', N'兄弟(brother) PT-1280 标签打印机', N'http://www.360buy.com/product/114717.html', N'办公打印打印机兄弟兄弟PT-1280', N'550.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (762, N'114762', N'佳能（Canon）BCI-15BK 黑色墨盒（适用PIXMA iP90v ip90/80/70）', N'http://www.360buy.com/product/114762.html', N'办公打印墨盒佳能佳能BCI-15BK', N'105.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (763, N'114783', N'乐摄宝（Lowepro）Stealth Reporter D200 AW摄影包（白宫系列记者专用摄影挎包）', N'http://www.360buy.com/product/114783.html', N'数码配件数码包乐摄宝乐摄宝Stealth Reporter D200 AW', N'779.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (764, N'￥198.00', N'海伯瑞2-3kg自然型水晶盐灯', N'http://www.360buy.com/product/114795.html', N'灯具氛围照明海伯瑞海伯瑞水晶盐灯', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (765, N'114885', N'佳能（Canon）PG-830 黑色墨盒（适用IP1180 1980 MX308/318 MP198）', N'http://www.360buy.com/product/114885.html', N'办公打印墨盒佳能佳能PG-830', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (766, N'114886', N'佳能（Canon）CL-831 彩色墨盒（适用IP1180/1980 MX308/318 MP198）', N'http://www.360buy.com/product/114886.html', N'办公打印墨盒佳能佳能CL-831', N'125.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (767, N'114887', N'佳能（Canon）BCI-6R 淡红色墨盒（适用于ip8500 i9950)', N'http://www.360buy.com/product/114887.html', N'办公打印墨盒佳能佳能BCI-6R', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (768, N'114888', N'佳能（Canon）BCI-6G 绿色墨盒（适用于ip8500 i9950)', N'http://www.360buy.com/product/114888.html', N'办公打印墨盒佳能佳能BCI-6G', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (769, N'114893', N'佳能（Canon）EP-26 黑色硒鼓（适用LBP3200 MF3110）', N'http://www.360buy.com/product/114893.html', N'办公打印硒鼓佳能佳能EP-26', N'357.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (770, N'114914', N'佳能（Canon）FX-3 黑色硒鼓（适用L240 250 360 380）', N'http://www.360buy.com/product/114914.html', N'办公打印硒鼓佳能佳能FX-3', N'383.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (771, N'114920', N'佳能（Canon）CRG-307C 青色硒鼓（适用LBP5000 LBP5100)', N'http://www.360buy.com/product/114920.html', N'办公打印硒鼓佳能佳能CRG-307C', N'499.00')
GO
print 'Processed 700 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (772, N'114928', N'佳能（Canon）FX-9 黑色硒鼓（适用L100 MF4120 4010）', N'http://www.360buy.com/product/114928.html', N'办公打印硒鼓佳能佳能FX-9', N'430.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (773, N'￥268.00', N'海伯瑞1.5－2.5kg几何系列立方体水晶盐灯', N'http://www.360buy.com/product/114932.html', N'灯具氛围照明海伯瑞海伯瑞水晶盐灯', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (774, N'114941', N'博朗（BRAUN）耳鼻毛修剪器EN10', N'http://www.360buy.com/product/114941.html', N'个护健康剃/脱毛器博朗博朗EN10', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (775, N'114942', N'博朗（BRAUN）欧乐B D12013 清亮型电动牙刷', N'http://www.360buy.com/product/114942.html', N'个护健康口腔护理博朗博朗D12013', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (776, N'114944', N'博朗（BRAUN）欧乐B EB18－2 牙刷头', N'http://www.360buy.com/product/114944.html', N'个护健康口腔护理博朗博朗EB18－2', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (777, N'￥72.00', N'3M圣诞树型防噪音耳塞1260', N'http://www.360buy.com/product/114954.html', N'户外装备旅游用品3M3M耳塞', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (778, N'￥108.00', N'3M圣诞树型防噪音带线耳塞1270', N'http://www.360buy.com/product/114957.html', N'户外装备旅游用品3M3M耳塞', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (779, N'￥118.10', N'乐扣乐扣5kg普通米桶HPL500', N'http://www.360buy.com/product/114967.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣米桶', N'75.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (780, N'￥18.30', N'乐扣乐扣600ML圆型保鲜盒HPL933', N'http://www.360buy.com/product/114969.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣圆型保鲜盒', N'14.80')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (781, N'114970', N'品胜（PISEN）EL10 数码相机电池', N'http://www.360buy.com/product/114970.html', N'数码配件电池/充电器品胜品胜EL10', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (782, N'￥317.00', N'乐扣乐扣保鲜盒13件套HPL824S001', N'http://www.360buy.com/product/114976.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒13件套', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (783, N'￥40.20', N'乐扣乐扣1.6L长方形保鲜盒HPL824', N'http://www.360buy.com/product/114988.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (784, N'￥39.00', N'乐扣乐扣2.6L正方形保鲜盒HPL822B', N'http://www.360buy.com/product/114991.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (785, N'￥24.40', N'乐扣乐扣1L长方形保鲜盒HPL812', N'http://www.360buy.com/product/115010.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (786, N'115011', N'三星（SAMSUNG）ML-1610D2 黑色硒鼓（适用ML-1610 2010）', N'http://www.360buy.com/product/115011.html', N'办公打印硒鼓三星三星ML-1610D2', N'469.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (787, N'115014', N'三星（SAMSUNG）ML-1210D3 黑色硒鼓（适用ML-1210 1220M 1250 1430 )', N'http://www.360buy.com/product/115014.html', N'办公打印硒鼓三星三星ML-1210D3', N'565.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (788, N'115015', N'三星（SAMSUNG）SCX-4100D3 黑色硒鼓（适用SCX-4100）', N'http://www.360buy.com/product/115015.html', N'办公打印硒鼓三星三星SCX-4100D3', N'578.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (789, N'115019', N'三星（SAMSUNG）SF-550D3 黑色硒鼓（适用SF-555P）', N'http://www.360buy.com/product/115019.html', N'办公打印硒鼓三星三星SF-550D3', N'546.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (790, N'115022', N'三星（SAMSUNG）SCX-D4200A 黑色硒鼓（适用SCX-4200）', N'http://www.360buy.com/product/115022.html', N'办公打印硒鼓三星三星SCX-D4200A', N'595.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (791, N'￥28.00', N'乐扣乐扣1.4L圆型保鲜盒HPL933B', N'http://www.360buy.com/product/115025.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣圆型保鲜盒', N'16.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (792, N'￥22.00', N'乐扣乐扣860ML正方形保鲜盒HPL855', N'http://www.360buy.com/product/115027.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (793, N'115029', N'三星（SAMSUNG）SF-5100D3 黑色硒鼓（适用ML-808,SF-5100 5100P 530 550)', N'http://www.360buy.com/product/115029.html', N'办公打印硒鼓三星三星SF-5100D3', N'566.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (794, N'115030', N'惠普（HP）LaserJet Q7553A黑色硒鼓（适用LaserJet P2015系列 2727系列）', N'http://www.360buy.com/product/115030.html', N'办公打印硒鼓惠普惠普LaserJetQ7553A', N'519.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (795, N'115046', N'惠普（HP）LaserJet Q5942A 黑色硒鼓（适用LaserJet 4250 4350）', N'http://www.360buy.com/product/115046.html', N'办公打印硒鼓惠普惠普LaserJetQ5942A', N'988.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (796, N'115049', N'惠普（HP）LaserJet Q6511A 黑色硒鼓（适用LaserJet 2400 2410 2420）', N'http://www.360buy.com/product/115049.html', N'办公打印硒鼓惠普惠普LaserJetQ6511A', N'979.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (797, N'115050', N'惠普（HP）LaserJet Q7516A 黑色硒鼓（适用LaserJet 5200系列）', N'http://www.360buy.com/product/115050.html', N'办公打印硒鼓惠普惠普LaserJetQ7516A', N'1189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (798, N'115092', N'惠普（HP）ScanJet G4010 照片扫描仪', N'http://www.360buy.com/product/115092.html', N'办公打印扫描仪惠普惠普ScanJet G4010', N'1649.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (799, N'115146', N'三木(SUNWOOD)精彩系列桌面型碎纸机-- SD9150(蓝/橙 彩色面板)', N'http://www.360buy.com/product/115146.html', N'办公打印碎纸机三木三木SD9150', N'369.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (800, N'115147', N'三木(SUNWOOD)精致系列碎纸机--SD9331(可碎纸、碎针、碎卡)', N'http://www.360buy.com/product/115147.html', N'办公打印碎纸机三木三木SD9331', N'678.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (801, N'115149', N'三木(SUNWOOD)精致系列碎纸机--SD9332(可碎纸、碎针、碎卡)', N'http://www.360buy.com/product/115149.html', N'办公打印碎纸机三木三木SD9332', N'678.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (802, N'￥114.00', N'巴固防噪音耳塞MAX30', N'http://www.360buy.com/product/115250.html', N'户外装备旅游用品巴固巴固耳塞', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (803, N'￥108.00', N'巴固防噪音带线耳塞304', N'http://www.360buy.com/product/115251.html', N'户外装备旅游用品巴固巴固耳塞', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (804, N'￥96.00', N'巴固防噪音舒适耳塞LL1', N'http://www.360buy.com/product/115252.html', N'户外装备旅游用品巴固巴固耳塞', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (805, N'￥108.00', N'巴固防噪音舒适型带线耳塞LL30', N'http://www.360buy.com/product/115253.html', N'户外装备旅游用品巴固巴固耳塞', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (806, N'￥92.00', N'巴固圣诞树型防噪音舒适耳塞SmartFit', N'http://www.360buy.com/product/115254.html', N'户外装备旅游用品巴固巴固耳塞', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (807, N'￥114.00', N'E-A-R圣诞树型防噪音带线耳塞', N'http://www.360buy.com/product/115258.html', N'户外装备旅游用品E-A-RE-A-R耳塞', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (808, N'115264', N'圣奇仕(sunqs) 奥林巴斯Li－40B/42B 高品质电池 适用于奥林巴斯μ700/μ710/μ720/μ725/μ730等', N'http://www.360buy.com/product/115264.html', N'数码配件电池/充电器圣奇仕圣奇仕Li－40B/42B', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (809, N'115266', N'圣奇仕(sunqs) 松下S005E 高品质数码电池 适用于松下FX8/FX9/FX10/FX12/LX1/LX2/LX3/LUX2FX/01等', N'http://www.360buy.com/product/115266.html', N'数码配件电池/充电器圣奇仕圣奇仕S005E', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (810, N'115270', N'天敏（10moons）电视精灵4 TB400电视卡', N'http://www.360buy.com/product/115270.html', N'外设产品电视盒天敏天敏TB400', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (811, N'115273', N'圣奇仕(sunqs) 三星0837 高品质数码电池 适用于三星L50/L60/L80/L700/L73/L83T/i6/i70/NV3/NV5/NV7', N'http://www.360buy.com/product/115273.html', N'数码配件电池/充电器圣奇仕圣奇仕0837', N'50.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (812, N'115274', N'圣奇仕(sunqs) EL8 高品质数码电池 适用于尼康COOLPIX S1/S2/S3/S5/S6/S7/S8/S9/P1/P2等', N'http://www.360buy.com/product/115274.html', N'数码配件电池/充电器圣奇仕圣奇仕EL8', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (813, N'115281', N'三木(SUNWOOD)精彩系列碎纸机-- ST9290（3mm条形碎纸效果）', N'http://www.360buy.com/product/115281.html', N'办公打印碎纸机三木三木ST9290', N'328.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (814, N'115283', N'三木(SUNWOOD)精致系列碎纸机-- SD9333(可碎纸、碎针、碎卡)', N'http://www.360buy.com/product/115283.html', N'办公打印碎纸机三木三木SD9333', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (815, N'115293', N'三木(SUNWOOD)精工系列碎纸机--SD9711(可碎纸、碎针、碎卡、碎光盘)', N'http://www.360buy.com/product/115293.html', N'办公打印碎纸机三木三木SD9711', N'948.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (816, N'115314', N'三木(SUNWOOD)精工系列碎纸机--SD9511(可碎纸、碎针、碎卡、碎光盘)', N'http://www.360buy.com/product/115314.html', N'办公打印碎纸机三木三木SD9511', N'1399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (817, N'115317', N'三木(SUNWOOD)蓝色畅想系列碎纸机--SD9600(可碎纸、碎针、碎卡）', N'http://www.360buy.com/product/115317.html', N'办公打印碎纸机三木三木SD9600', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (818, N'115349', N'圣奇仕 摄像机/数码相机电池 富士NP40 适用于富士F402 F455,F460,F470,F480，F610,F650,F700,F710等', N'http://www.360buy.com/product/115349.html', N'数码配件电池/充电器圣奇仕圣奇仕NP40', N'50.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (819, N'115351', N'圣奇仕(sunqs) 佳能NB5L 高品质数码电池 适用于佳能IXUS900/950/960/970/980/990/850/860等', N'http://www.360buy.com/product/115351.html', N'数码配件电池/充电器圣奇仕圣奇仕NB5L', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (820, N'115403', N'尼康（Nikon） AF-S DX VR 55-200mm f/4-5.6G IF-ED 镜头', N'http://www.360buy.com/product/115403.html', N'摄影摄像镜头尼康尼康AF-S DX VR 55-200mm f/4-5.6G IF-ED', N'1499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (821, N'115416', N'金士顿（Kingston）2G TF(MicroSD)存储卡（SDC/2GBSP）', N'http://www.360buy.com/product/115416.html', N'数码配件存储卡金士顿金士顿TF', N'23.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (822, N'115478', N'熊猫（PANDA）6300 便携式收录机', N'http://www.360buy.com/product/115478.html', N'生活电器收录/音机熊猫熊猫6300', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (823, N'115479', N'熊猫（PANDA）F－338 复读收录机（复读、收音、录音多功能）', N'http://www.360buy.com/product/115479.html', N'生活电器收录/音机熊猫熊猫F－338', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (824, N'115490', N'拜亚动力（beyerdynamic）DT131 头戴式耳机', N'http://www.360buy.com/product/115490.html', N'时尚影音耳机/耳麦拜亚动力拜亚动力拜亚动力(Beyerdynamic)DT131', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (825, N'115502', N'兄弟(brother) LC950Y 黄色墨盒 (适用MFC-210C 410CN 5440CN)', N'http://www.360buy.com/product/115502.html', N'办公打印墨盒兄弟兄弟LC950Y', N'72.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (826, N'115525', N'兄弟(brother) LC950BK 黑色墨盒 (适用MFC-210C 410CN 5440CN)', N'http://www.360buy.com/product/115525.html', N'办公打印墨盒兄弟兄弟LC950BK', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (827, N'115526', N'兄弟(brother) LC950C 青色墨盒 (适用MFC-210C 410CN 5440CN)', N'http://www.360buy.com/product/115526.html', N'办公打印墨盒兄弟兄弟LC950C', N'72.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (828, N'115528', N'兄弟(brother) LC950M 品红色墨盒 (适用MFC-210C 410CN 5440CN)', N'http://www.360buy.com/product/115528.html', N'办公打印墨盒兄弟兄弟LC950M', N'72.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (829, N'115591', N'超人（SID）SA93 双刀头 浮动贴面剃须刀 内嵌式充电插头', N'http://www.360buy.com/product/115591.html', N'个护健康剃须刀超人超人SA93', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (830, N'115617', N'飞利浦（PHILIPS） SHP1900 头戴式 耳机', N'http://www.360buy.com/product/115617.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHP1900', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (831, N'115630', N'飞利浦（PHILIPS） SHS3201 /98 耳挂式 耳塞 白色', N'http://www.360buy.com/product/115630.html', N'时尚影音耳机/耳麦飞利浦耳 机PHILIPS', N'61.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (832, N'115633', N'飞利浦（PHILIPS） SHS4700 /98 耳挂式 耳机 黑色', N'http://www.360buy.com/product/115633.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHS4700', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (833, N'115715', N'飞利浦（PHILIPS） SHP2500 头戴式 耳机', N'http://www.360buy.com/product/115715.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHP2500', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (834, N'115729', N'飞利浦（PHILIPS） SHS4701 /98 耳挂式 耳机 白色', N'http://www.360buy.com/product/115729.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHS4701', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (835, N'115741', N'航嘉（Huntkey）BS-3500 电源（额定270W）', N'http://www.360buy.com/product/115741.html', N'电脑配件电源航嘉航嘉BS-3500', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (836, N'115808', N'德生（TECSUN）R-102 微型调频/调幅立体声收音机（蓝色）', N'http://www.360buy.com/product/115808.html', N'生活电器收录/音机德生德生R-102', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (837, N'115809', N'德生（TECSUN）R-102 微型调频/调幅立体声收音机（银灰色）', N'http://www.360buy.com/product/115809.html', N'生活电器收录/音机德生德生R-102', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (838, N'115841', N'松下（Panasonic） EW3106W 臂式家用血压计', N'http://www.360buy.com/product/115841.html', N'个护健康血压计松下松下EW3106W', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (839, N'115860', N'索尼（SONY） Memory Stick Pro Duo 2GB 记忆棒', N'http://www.360buy.com/product/115860.html', N'数码配件存储卡索尼索尼Pro Duo', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (840, N'￥188.00', N'派克(parker)威雅钢杆白夹宝珠笔', N'http://www.360buy.com/product/115867.html', N'礼品礼品文具派克派克宝珠笔', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (841, N'￥18.40', N'乐扣乐扣470ML长方形保鲜盒HPL807', N'http://www.360buy.com/product/115878.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'12.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (842, N'115881', N'威高（VSGO）L-0105N 多功能电脑清洁套装', N'http://www.360buy.com/product/115881.html', N'外设产品电脑清洁威高威高BL-0105N', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (843, N'115931', N'ThinkPad 原装T/R系列14寸宽屏4芯标准电池 41U3196 (适用于T400,R400,R61 for 14W,T61 for 14W）', N'http://www.360buy.com/product/115931.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）41U3196', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (844, N'115977', N'元谷刀锋2500 2.5英寸SATA硬盘盒(黑色）', N'http://www.360buy.com/product/115977.html', N'外设产品外置盒元谷元谷2500', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (845, N'115980', N'尼康（Nikon） AF 60mm/2.8D 微距镜头', N'http://www.360buy.com/product/115980.html', N'摄影摄像镜头尼康尼康AF 60mm/2.8D', N'2899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (846, N'115983', N'尼康（Nikon） AF 85mm f/1.8D 自动对焦镜头', N'http://www.360buy.com/product/115983.html', N'摄影摄像镜头尼康尼康AF 85mm f/1.8D', N'2799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (847, N'115985', N'尼康（Nikon） AF-S VR 105mm f/2.8G IF-ED 自动对焦微距镜头S型', N'http://www.360buy.com/product/115985.html', N'摄影摄像镜头尼康尼康AF-S VR 105mm f/2.8G IF-ED', N'6299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (848, N'115993', N'可来博（Clamber）STY－10－100 组合式旅行电源转换器', N'http://www.360buy.com/product/115993.html', N'外设产品插座可来博可来博STY－10－100', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (849, N'116018', N'圣奇仕(sunqs) EL5 高品质数码电池 适用于尼康Coolpix 3700/4200/5000/5200/5900/7900/P3/P4 等', N'http://www.360buy.com/product/116018.html', N'数码配件电池/充电器圣奇仕圣奇仕EL5', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (850, N'116042', N'圣奇仕(sunqs) DU21 高品质数码电池 适用于松下NVGS10/GS25/GS26/GS27/GS28/GS29/GS30等', N'http://www.360buy.com/product/116042.html', N'数码配件电池/充电器圣奇仕圣奇仕DU21', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (851, N'116043', N'圣奇仕 摄像机/数码相机电池 佳能NB2LH 适用于佳能S30/S40/S45/S50/S60/S70等', N'http://www.360buy.com/product/116043.html', N'数码配件电池/充电器圣奇仕圣奇仕NB2LH', N'64.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (852, N'116047', N'漫步者（EDIFIER） R251T07 5.1声道 多媒体音箱', N'http://www.360buy.com/product/116047.html', N'时尚影音音箱漫步者漫步者R251T07', N'419.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (853, N'116060', N'德生（TECSUN）R-9702高灵敏度全波段立体声收音机（金属黑）', N'http://www.360buy.com/product/116060.html', N'生活电器收录/音机德生德生R-9702', N'134.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (854, N'116067', N'品胜（PISEN）数码摄像机/相机充电器EL5', N'http://www.360buy.com/product/116067.html', N'数码配件电池/充电器品胜品胜EL5', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (855, N'116071', N'品胜（PISEN） Li40B/EL10/NP45 数码摄像机/数码相机充电器（通用）', N'http://www.360buy.com/product/116071.html', N'数码配件电池/充电器品胜品胜Li40B/EL10/NP45', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (856, N'116076', N'熊猫（PANDA）CD－300 手提式DVD播放器（特有USB接口）', N'http://www.360buy.com/product/116076.html', N'生活电器收录/音机熊猫熊猫CD－300', N'435.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (857, N'116137', N'爱普生（Epson）T057 双包装黑色墨盒 C13T057181（适用ME1/ME1+/ME100）', N'http://www.360buy.com/product/116137.html', N'办公打印墨盒爱普生爱普生T057', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (858, N'￥728.00', N'卡西欧(Casio)Edifice系列男表EF-316D-2A', N'http://www.360buy.com/product/116154.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-316D-2A', N'339.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (859, N'116162', N'熊猫（PANDA）CD-100 手提式CD播放机', N'http://www.360buy.com/product/116162.html', N'生活电器收录/音机熊猫熊猫CD-100', N'249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (860, N'￥690.00', N'卡西欧（CASIO）EDIFICE系列EF-317D-7A男式手表', N'http://www.360buy.com/product/116177.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-317D-7A', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (861, N'￥690.00', N'卡西欧(Casio)Edifice系列男表EF-305D-1A', N'http://www.360buy.com/product/116179.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-305D-1A', N'409.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (862, N'116218', N'威宝（Verbatim）CD-R 52速 700M 白金可打印 桶装50片 刻录盘', N'http://www.360buy.com/product/116218.html', N'办公文仪刻录碟片/附件Verbatim威宝DVD-R', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (863, N'￥448.00', N'卡西欧(Casio)指针系列男表MTP-1191A-1A', N'http://www.360buy.com/product/116236.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表MTP-1191A-2A', N'285.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (864, N'￥790.00', N'卡西欧(Casio)Edifice系列男表EF-316D-1A', N'http://www.360buy.com/product/116238.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-316D-1A', N'368.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (865, N'￥448.00', N'卡西欧（CASIO）指针系列 男式手表MTP-1192A-1A', N'http://www.360buy.com/product/116247.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男式手表MTP-1192A-1A', N'249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (866, N'￥448.00', N'卡西欧(Casio)指针系列男表MTP-1191A-7A', N'http://www.360buy.com/product/116249.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表MTP-1191A-7A', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (867, N'￥790.00', N'卡西欧(Casio)赛车系列男表G-9000-3V', N'http://www.360buy.com/product/116251.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表G-9000-3V', N'729.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (868, N'￥598.00', N'卡西欧(Casio)普通系列女表LAW-25D-4A', N'http://www.360buy.com/product/116259.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LAW-25D-4A', N'359.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (869, N'116277', N'摩托罗拉（Motorola）GP3688专业对讲机', N'http://www.360buy.com/product/116277.html', N'手机通讯对讲机摩托罗拉摩托罗拉GP3688', N'1999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (870, N'116390', N'三诺（3NOD）英雄系列H-222金猪版II多媒体音箱', N'http://www.360buy.com/product/116390.html', N'时尚影音音箱三诺三诺H-222', N'126.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (871, N'116434', N'川宇（kawau）C206 翡翠150X SDHC超高速读卡器（颜色随机）', N'http://www.360buy.com/product/116434.html', N'数码配件读卡器川宇川宇C206', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (872, N'116440', N'爱普生（Epson）Stylus Photo1390 喷墨打印机', N'http://www.360buy.com/product/116440.html', N'办公打印打印机爱普生爱普生Stylus Photo1390', N'3049.00')
GO
print 'Processed 800 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (873, N'116472', N'超频三（pccooler）八爪鱼显存散热片 RHS-02 银白色', N'http://www.360buy.com/product/116472.html', N'电脑配件散热器超频三超频三八爪鱼 RHS-02', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (874, N'116555', N'爱普生（EPSON）Stylus Photo R270 彩色喷墨打印机', N'http://www.360buy.com/product/116555.html', N'办公打印打印机爱普生爱普生Stylus Photo R270', N'1569.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (875, N'116571', N'索尼（SONY） Memory Stick Pro Duo 4GB 记忆棒', N'http://www.360buy.com/product/116571.html', N'数码配件存储卡索尼索尼Pro Duo', N'53.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (876, N'116654', N'欧姆龙（OMRON） 血压计HEM－1000', N'http://www.360buy.com/product/116654.html', N'个护健康血压计欧姆龙欧姆龙HEM－1000', N'968.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (877, N'116688', N'麦克赛尔（Maxell）CD-R 48速 700M 台产 桶装50片 红纹黑尊 黑胶刻录盘', N'http://www.360buy.com/product/116688.html', N'办公文仪刻录碟片/附件maxell麦克赛尔CD-R 48速', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (878, N'116689', N'麦克赛尔（maxell）CD-R 48速 700M 台产 桶装50片 蓝纹黑尊 黑胶刻录盘', N'http://www.360buy.com/product/116689.html', N'办公文仪刻录碟片/附件maxell麦克赛尔CD-R 48速', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (879, N'116690', N'安普（AMP）406330-1 超五类24口配线架', N'http://www.360buy.com/product/116690.html', N'外设产品线缆安普安普406330-1', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (880, N'￥35.90', N'乐扣乐扣1.4L长方形保鲜盒HPL817H', N'http://www.360buy.com/product/116691.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'25.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (881, N'￥29.50', N'乐扣乐扣1.2L正方形保鲜盒HPL822D', N'http://www.360buy.com/product/116692.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (882, N'￥45.10', N'乐扣乐扣2.3L长方形保鲜盒HPL825', N'http://www.360buy.com/product/116693.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'32.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (883, N'￥65.90', N'乐扣乐扣4.5L长方形保鲜盒HPL827', N'http://www.360buy.com/product/116694.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (884, N'￥20.90', N'乐扣乐扣600ML正方形保鲜盒HPL854', N'http://www.360buy.com/product/116695.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (885, N'116715', N'网件（Netgear）JFS516 16口百兆以太网交换机', N'http://www.360buy.com/product/116715.html', N'网络产品交换机网件网件JFS516', N'335.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (886, N'116719', N'美的（Midea）QB80D 真空吸尘器', N'http://www.360buy.com/product/116719.html', N'生活电器吸尘器美的美的QB80D', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (887, N'116836', N'美的(midea) MYR720T 台式温热型饮水机', N'http://www.360buy.com/product/116836.html', N'生活电器饮水机美的美的MYR720T', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (888, N'116867', N'美的(midea) MYD718S-X 电子制冷饮水机', N'http://www.360buy.com/product/116867.html', N'生活电器饮水机美的美的MYD718S-X', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (889, N'116957', N'三菱（MITSUBISHI）DVD-R 16速 4.7G 五彩樱花 台产 桶装10片 刻录盘', N'http://www.360buy.com/product/116957.html', N'办公文仪刻录碟片/附件三菱三菱DVD-R', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (890, N'￥33.30', N'乐扣乐扣800ML长方形保鲜盒HPL816C', N'http://www.360buy.com/product/117155.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'26.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (891, N'￥22.00', N'乐扣乐扣1.2L饮料壶HAP730', N'http://www.360buy.com/product/117157.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣饮料壶', N'15.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (892, N'￥39.20', N'乐扣乐扣350ML吸管水杯HPP708T', N'http://www.360buy.com/product/117158.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣水杯', N'24.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (893, N'￥199.00', N'迪美电动遥控翻斗车9088红色', N'http://www.360buy.com/product/117207.html', N'遥控/电动遥控车迪美迪美遥控翻斗车', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (894, N'￥238.00', N'迪美电动遥控翻斗车9088蓝色', N'http://www.360buy.com/product/117208.html', N'遥控/电动遥控车迪美迪美遥控翻斗车', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (895, N'117268', N'罗技（Logitech）快看合金版Pro 9000摄像头', N'http://www.360buy.com/product/117268.html', N'外设产品摄像头罗技罗技Pro9000', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (896, N'117275', N'川宇（kawau) C204A USB2.0 MS读卡器', N'http://www.360buy.com/product/117275.html', N'数码配件读卡器川宇川宇C204A', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (897, N'117313', N'TP-LINK TL-SL1226 24+2G千兆上联非网管交换机', N'http://www.360buy.com/product/117313.html', N'网络产品交换机TP-LINKTP-LINKTL-SL1226', N'532.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (898, N'117331', N'惠普（HP）CB335ZZ 860号 黑色墨盒（适用C4488 D5368 J6488 Deskjet D4368）', N'http://www.360buy.com/product/117331.html', N'办公打印墨盒惠普惠普CB335ZZ860', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (899, N'117332', N'惠普（HP）CB337ZZ 861号彩色墨盒（适用C4488 D5368 J6488 Deskjet D4368 ）', N'http://www.360buy.com/product/117332.html', N'办公打印墨盒惠普惠普CB337ZZ861', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (900, N'117344', N'惠威（HiVi）多媒体音箱 S3W 2.0声道 便携带线控 黑色', N'http://www.360buy.com/product/117344.html', N'时尚影音音箱惠威惠威S3W', N'228.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (901, N'117515', N'飞利浦（Philips）HX1630 充电式电动牙刷', N'http://www.360buy.com/product/117515.html', N'个护健康口腔护理飞利浦飞利浦HX1630', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (902, N'￥438.00', N'飞利浦Philips健视防眩光护眼台灯金色', N'http://www.360buy.com/product/117675.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'298.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (903, N'￥320.00', N'飞利浦Philips轻盈护眼台灯白色', N'http://www.360buy.com/product/117676.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (904, N'￥415.00', N'飞利浦（Philips）佳视防眩光护眼（单臂）台灯（蓝色）', N'http://www.360buy.com/product/117677.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'288.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (905, N'117680', N'摩托罗拉公众对讲机T6508（卓雅黑）', N'http://www.360buy.com/product/117680.html', N'手机通讯对讲机摩托罗拉摩托罗拉T6508', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (906, N'117681', N'摩托罗拉公众对讲机T6508（睿智蓝）', N'http://www.360buy.com/product/117681.html', N'手机通讯对讲机摩托罗拉摩托罗拉T6508', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (907, N'117835', N'先锋（singfun) 11片电热油汀DS6111', N'http://www.360buy.com/product/117835.html', N'生活电器取暖电器先锋先锋 DS6111', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (908, N'117847', N'先锋（singfun)摇头暖风机DQ519', N'http://www.360buy.com/product/117847.html', N'生活电器取暖电器先锋先锋 DQ519', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (909, N'117910', N'摩托罗拉83727 对讲机耳机 适用T5428/T5628/T5728/T6508', N'http://www.360buy.com/product/117910.html', N'手机通讯对讲机摩托罗拉摩托罗拉耳机83727', N'98.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (910, N'117971', N'三诺（3NOD）永恒系列N-25G音箱', N'http://www.360buy.com/product/117971.html', N'时尚影音音箱三诺三诺N-25G', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (911, N'117976', N'罗技（Logitech）H390 耳机麦克风', N'http://www.360buy.com/product/117976.html', N'办公文仪呼叫/会议设备罗技罗技H390', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (912, N'117983', N'金士顿（Kingston）DDR2 667 2G台式机内存', N'http://www.360buy.com/product/117983.html', N'电脑配件内存金士顿金士顿DDR2 667 2G', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (913, N'118028', N'麦克赛尔（Maxell）MX-T781-07 多媒体头戴式 麦克风耳机', N'http://www.360buy.com/product/118028.html', N'时尚影音耳机/耳麦maxell麦克赛尔MX-T781-07', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (914, N'118029', N'麦克赛尔（Maxell）MX-T760-07 多媒体头戴式 麦克风耳机', N'http://www.360buy.com/product/118029.html', N'时尚影音耳机/耳麦maxell麦克赛尔MX-T760-07', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (915, N'118076', N'三菱（MITSUBISHI）DVD+R 16速 4.7G 五彩樱花 台产 桶装10片 刻录盘', N'http://www.360buy.com/product/118076.html', N'办公文仪刻录碟片/附件三菱三菱DVD+R', N'23.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (916, N'118091', N'飞利浦（PHILIPS） SHM1900 头戴式 电脑 耳麦 黑色', N'http://www.360buy.com/product/118091.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHM1900', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (917, N'￥298.00', N'卡西欧（CASIO）十年电池系列LW-200D-4', N'http://www.360buy.com/product/118122.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧LW-200D-4', N'218.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (918, N'￥448.00', N'卡西欧(Casio)指针系列女表LTP-2069L-4A', N'http://www.360buy.com/product/118123.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069L-4A', N'285.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (919, N'￥498.00', N'卡西欧(Casio)指针系列女表LTP-2069D-4A', N'http://www.360buy.com/product/118124.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069D-4A', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (920, N'￥498.00', N'卡西欧(Casio)指针系列女表LTP-2069D-1A', N'http://www.360buy.com/product/118125.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069D-1A', N'369.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (921, N'￥548.00', N'卡西欧(Casio)经典系列女表LCF-10D-4A', N'http://www.360buy.com/product/118126.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LCF-10D-4A', N'379.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (922, N'118128', N'尼康（Nikon） EN-EL3E原装电池 适用：D300S/D700/D90/D300/D200/D100/D80/D70/D70S/D50', N'http://www.360buy.com/product/118128.html', N'数码配件电池/充电器尼康尼康EN-EL3E', N'320.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (923, N'118129', N'尼康（Nikon） EN-EL5 原装电池 适用：P510/P500/P5000/P5100/P90等', N'http://www.360buy.com/product/118129.html', N'数码配件电池/充电器尼康尼康EN-EL5', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (924, N'118171', N'博朗（BRAUN）1系150S-1电动剃须刀', N'http://www.360buy.com/product/118171.html', N'个护健康剃须刀博朗博朗150S-1', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (925, N'￥338.00', N'Zippo打火机雄鹰飞翔21069', N'http://www.360buy.com/product/118310.html', N'礼品火机烟具Zippo芝宝打火机', N'126.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (926, N'118321', N'佳能（Canon）LS-120H 12位计算器', N'http://www.360buy.com/product/118321.html', N'办公文仪计算器佳能佳能LS-120H', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (927, N'118337', N'格兰仕（Galanz）1.7L不锈钢电水壶 DH18-17005', N'http://www.360buy.com/product/118337.html', N'厨房电器电水壶/热水瓶格兰仕格兰仕DH18-17005', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (928, N'118340', N'惠普（HP）LaserJet M1005 黑白激光一体机（打印 复印 扫描）', N'http://www.360buy.com/product/118340.html', N'办公打印一体机惠普惠普LaserJetM1005', N'1489.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (929, N'118353', N'佳能（Canon）WS-1212H 12位计算器', N'http://www.360buy.com/product/118353.html', N'办公文仪计算器佳能佳能WS-1212H', N'54.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (930, N'118416', N'金士顿（Kingston）4G Class4 SD存储卡', N'http://www.360buy.com/product/118416.html', N'数码配件存储卡金士顿金士顿SDHC', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (931, N'118485', N'惠威（HiVi）多媒体音箱 M12 2.1声道 银黑色', N'http://www.360buy.com/product/118485.html', N'时尚影音音箱惠威惠威M12 低音', N'410.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (932, N'118497', N'汉王(hanwang) V8 名片扫描仪', N'http://www.360buy.com/product/118497.html', N'办公打印扫描仪汉王汉王V8', N'538.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (933, N'118504', N'汉王(hanwang) 文豪 5300A 扫描仪', N'http://www.360buy.com/product/118504.html', N'办公打印扫描仪汉王汉王5300A', N'1780.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (934, N'￥320.00', N'飞利浦Philips轻盈护眼台灯蓝色', N'http://www.360buy.com/product/118560.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'216.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (935, N'￥438.00', N'飞利浦Philips健视防眩光护眼台灯FDS664银色', N'http://www.360buy.com/product/118561.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'298.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (936, N'￥389.00', N'飞利浦Philips佳视防眩光单臂护眼台灯银灰色', N'http://www.360buy.com/product/118562.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'288.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (937, N'￥438.00', N'飞利浦Philips健视防眩光护眼台灯蓝色', N'http://www.360buy.com/product/118563.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'298.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (938, N'￥469.00', N'飞利浦Philips佳视防眩光双臂护眼台灯FDS663黑色', N'http://www.360buy.com/product/118566.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'328.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (939, N'118609', N'汉王(hanwang) A8 名片扫描仪', N'http://www.360buy.com/product/118609.html', N'办公打印扫描仪汉王汉王A8', N'880.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (940, N'118643', N'宝罗（Paull）数码包BL-5039 (黑)', N'http://www.360buy.com/product/118643.html', N'数码配件数码包宝罗宝罗BL-5039', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (941, N'118713', N'金士顿（Kingston）DDR2 667 2G笔记本内存', N'http://www.360buy.com/product/118713.html', N'电脑配件内存金士顿金士顿DDR2 667 2G', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (942, N'118717', N'金士顿（Kingston）DDR2 800 1G台式机内存条', N'http://www.360buy.com/product/118717.html', N'电脑配件内存金士顿金士顿DDR2 800 1G', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (943, N'118731', N'麦克赛尔（maxell）DV带 日本原产 5片盒装 刻录盘', N'http://www.360buy.com/product/118731.html', N'办公文仪刻录碟片/附件maxell麦克赛尔DV', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (944, N'118752', N'熊猫（PANDA）F312高清晰语言复读机（480秒）', N'http://www.360buy.com/product/118752.html', N'生活电器收录/音机熊猫熊猫F312', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (945, N'118753', N'熊猫（PANDA）F310高清晰语言复读机（480秒）', N'http://www.360buy.com/product/118753.html', N'生活电器收录/音机熊猫熊猫F310', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (946, N'118755', N'熊猫(PANDA) F330 高清晰语音复读机(480秒)', N'http://www.360buy.com/product/118755.html', N'生活电器收录/音机熊猫熊猫F330', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (947, N'118756', N'熊猫F320(PANDA) 高清晰语音复读机(480秒)', N'http://www.360buy.com/product/118756.html', N'生活电器收录/音机熊猫熊猫F320', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (948, N'118757', N'汉王(hanwang) MK211 砚鼠 汉王手写鼠标（颜色随机）', N'http://www.360buy.com/product/118757.html', N'外设产品手写板汉王汉王MK211 砚鼠', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (949, N'118758', N'熊猫 (PANDA) F350 高清晰语音复读机(480秒、带线控)', N'http://www.360buy.com/product/118758.html', N'生活电器收录/音机熊猫熊猫F350', N'115.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (950, N'￥50.00', N'华明康泰一拔通罐疗器6罐装', N'http://www.360buy.com/product/118834.html', N'保健器械保健用品华明康泰华明康泰罐疗器', N'38.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (951, N'￥98.00', N'华明康泰一拔通罐疗器12罐装', N'http://www.360buy.com/product/118838.html', N'保健器械保健用品华明康泰华明康泰罐疗器', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (952, N'￥160.00', N'华明康泰一拔通罐疗器24罐装', N'http://www.360buy.com/product/118840.html', N'保健器械保健用品华明康泰华明康泰罐疗器', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (953, N'118910', N'飞毛腿(SCUD)BL-4C精品电池适用于诺基亚(NOKIA)6100/6300/X2/N2220S/C1-00/6316S/2690/2220s等机型', N'http://www.360buy.com/product/118910.html', N'手机配件手机电池飞毛腿飞毛腿BL-4C', N'38.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (954, N'118911', N'三星（SAMSUNG）SCX-4521F 激光多功能一体机（打印 扫描 复印 传真 ）', N'http://www.360buy.com/product/118911.html', N'办公打印一体机三星三星SCX-4521F', N'1799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (955, N'118970', N'宝利通（POLYCOM）音频会议系统电话机SoundStation2 EX 扩展型（2200-16200-022 ）', N'http://www.360buy.com/product/118970.html', N'生活电器电话机POLYCOM宝利通SoundStation2 EX', N'6599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (956, N'119001', N'汉王(hanwang)中书令 手写板', N'http://www.360buy.com/product/119001.html', N'外设产品手写板汉王汉王中书令', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (957, N'119098', N'漫步者（EDIFIER） S2.1M 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/119098.html', N'时尚影音音箱漫步者漫步者S2.1M多媒体有源音箱', N'749.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (958, N'￥498.00', N'卡西欧(Casio)10年电池系列男表AQ-180WD-1BV', N'http://www.360buy.com/product/119134.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表AQ-180WD-1BV', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (959, N'119152', N'中控（ZK Software）M300 考勤机 智能ID卡考勤机', N'http://www.360buy.com/product/119152.html', N'办公文仪考勤机中控中控M300plus', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (960, N'￥438.00', N'维氏VICTORINOX瑞士军刀探险家1.6703', N'http://www.360buy.com/product/119239.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'203.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (961, N'119313', N'TP-LINK TL-SF1005+ 5口百兆交换机', N'http://www.360buy.com/product/119313.html', N'网络产品交换机TP-LINKTP-LINKSF1005+', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (962, N'119347', N'创新（Creative） EP-50耳塞', N'http://www.360buy.com/product/119347.html', N'时尚影音耳机/耳麦创新创新EP-50', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (963, N'119349', N'雄狮（SIMBALION）金属色奇异笔 红色', N'http://www.360buy.com/product/119349.html', N'办公文仪刻录碟片/附件雄狮雄狮红色', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (964, N'119350', N'雄狮（SIMBALION）金属色奇异笔 蓝色', N'http://www.360buy.com/product/119350.html', N'办公文仪刻录碟片/附件雄狮雄狮蓝色', N'10.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (965, N'119484', N'突破（Top）基准安全推广系列插座 6联3米（安全盾形边设计+倍能开关+过载保护）TZ-C16', N'http://www.360buy.com/product/119484.html', N'生活电器插座突破突破TZ-C16', N'61.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (966, N'119486', N'TCL HWDCD868（13）TSD 2.4G数字无绳电话子母机(雅致白)', N'http://www.360buy.com/product/119486.html', N'生活电器电话机TCLTCLHWDCD868（13）TSD', N'295.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (967, N'119515', N'皇冠（Royal Sovereign) EL-9DF A4多功能塑封机', N'http://www.360buy.com/product/119515.html', N'办公文仪白板/封装皇冠皇冠EL-9DF', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (968, N'119516', N'皇冠（Royal Sovereign) APL-230U-EU A4办公型塑封', N'http://www.360buy.com/product/119516.html', N'办公文仪白板/封装皇冠皇冠APL-230 A4', N'1099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (969, N'119517', N'皇冠（Royal Sovereign) APL330U-EU A3办公型塑封机', N'http://www.360buy.com/product/119517.html', N'办公文仪白板/封装皇冠皇冠APL330U A3', N'1299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (970, N'119525', N'博朗（BRAUN）欧乐B D12 亮杰型电动牙刷', N'http://www.360buy.com/product/119525.html', N'个护健康口腔护理博朗博朗D12', N'239.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (971, N'119531', N'宝利通（POLYCOM）音频会议系统电话机SonudStation 2W扩展型（2200-07800-022 ）', N'http://www.360buy.com/product/119531.html', N'生活电器电话机POLYCOM宝利通SonudStation2W', N'7999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (972, N'119537', N'圣奇仕(sunqs) S601 5号电池充电套装(含充电器＋2节5号1800mA充电电池）', N'http://www.360buy.com/product/119537.html', N'数码配件电池/充电器圣奇仕圣奇仕S601 5', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (973, N'119546', N'罗技（Logitech）V470 蓝牙无线激光笔记本鼠标 蓝色', N'http://www.360buy.com/product/119546.html', N'外设产品鼠标罗技罗技V470蓝牙无线激光笔记本鼠标 蓝色', N'159.00')
GO
print 'Processed 900 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (974, N'119549', N'罗技（Logitech）V470 蓝牙无线激光笔记本鼠标 白色', N'http://www.360buy.com/product/119549.html', N'外设产品鼠标罗技罗技V470蓝牙无线激光笔记本鼠标 白色', N'155.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (975, N'119557', N'圣奇仕 EL3E+ 充电电池 适用于D200/D80/D300/D700/D90/D400', N'http://www.360buy.com/product/119557.html', N'数码配件电池/充电器圣奇仕圣奇仕EL3E+', N'98.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (976, N'119600', N'超人（SID）SR2856 毛球修剪器 激情红', N'http://www.360buy.com/product/119600.html', N'生活电器其它生活电器超人超人SR2856', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (977, N'119604', N'惠威（HiVi）多媒体音箱 M10 2.1声道 黑色', N'http://www.360buy.com/product/119604.html', N'时尚影音音箱惠威惠威M10', N'333.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (978, N'119618', N'超人（SID）SA856 三刀头 浮动贴面剃须刀 流光银 急速刀网 一小时快充', N'http://www.360buy.com/product/119618.html', N'个护健康剃须刀超人超人SA856', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (979, N'119619', N'超人（SID）SA855 三刀头 浮动贴面剃须刀 炫酷黑 急速刀网 炫酷开关', N'http://www.360buy.com/product/119619.html', N'个护健康剃须刀超人超人SA855', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (980, N'119631', N'皇冠（Royal Sovereign) 303*426mm A3塑封膜（透明）', N'http://www.360buy.com/product/119631.html', N'办公文仪白板/封装皇冠皇冠A3', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (981, N'119633', N'皇冠（Royal Sovereign) 98*136mm 5寸塑封膜（透明）', N'http://www.360buy.com/product/119633.html', N'办公文仪白板/封装皇冠皇冠5寸', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (982, N'119634', N'皇冠（Royal Sovereign) 134*188mm 7寸塑封膜（透明）', N'http://www.360buy.com/product/119634.html', N'办公文仪白板/封装皇冠皇冠7寸', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (983, N'119635', N'皇冠（Royal Sovereign) 188*263mm B5塑封膜（透明）', N'http://www.360buy.com/product/119635.html', N'办公文仪白板/封装皇冠皇冠B5', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (984, N'119636', N'皇冠（Royal Sovereign) 216*303mm A4塑封膜（透明）', N'http://www.360buy.com/product/119636.html', N'办公文仪白板/封装皇冠皇冠A4', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (985, N'119652', N'惠普（HP）LaserJet 5200 A3商用激光打印机', N'http://www.360buy.com/product/119652.html', N'办公打印打印机惠普惠普LaserJet5200A3', N'8189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (986, N'￥126.80', N'乐扣乐扣8.5L保鲜盒HPL882', N'http://www.360buy.com/product/119674.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (987, N'119692', N'英源 记号笔黑色 光盘专用', N'http://www.360buy.com/product/119692.html', N'办公文仪刻录碟片/附件英源英源黑色', N'5.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (988, N'119852', N'威宝（Verbatim）CD-R 52速 700M 全球包装 素色系列灵雅凤 桶装50片 刻录盘', N'http://www.360buy.com/product/119852.html', N'办公文仪刻录碟片/附件Verbatim威宝CD-R 52速', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (989, N'119853', N'威宝（Verbatim）CD-R 52速 700M 全球包装 五彩系列 灵雅凤 桶装50片 刻录盘', N'http://www.360buy.com/product/119853.html', N'办公文仪刻录碟片/附件Verbatim威宝CD-R 52速', N'57.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (990, N'￥198.00', N'卡西欧（CASIO）LTP-1177A-1A女装手表', N'http://www.360buy.com/product/119887.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧LTP-1177A-1A', N'135.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (991, N'119891', N'德生（TECSUN）R9700DX12波段立体声收音机（铁灰色）', N'http://www.360buy.com/product/119891.html', N'生活电器收录/音机德生德生R9700DX 12', N'178.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (992, N'119897', N'TCL HWDCD868（13）TSD 2.4G数字无绳电话子母机(蓝黑色)', N'http://www.360buy.com/product/119897.html', N'生活电器电话机TCLTCLHWDCD868（13）TSD', N'285.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (993, N'120014', N'汉王(hanwang) 小龙女 手写板', N'http://www.360buy.com/product/120014.html', N'外设产品手写板汉王汉王小龙女', N'158.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (994, N'120016', N'汉王(hanwang) 墨宝大鸿儒 手写板', N'http://www.360buy.com/product/120016.html', N'外设产品手写板汉王汉王墨宝大鸿儒', N'1325.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (995, N'120021', N'爱普生（EPSON）LQ-2680K 针式打印机（136列平推式）', N'http://www.360buy.com/product/120021.html', N'办公打印打印机爱普生爱普生LQ-2680K', N'3099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (996, N'120192', N'雄狮（SIMBALION）金属色奇异笔 银色', N'http://www.360buy.com/product/120192.html', N'办公文仪刻录碟片/附件雄狮雄狮银色', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (997, N'120230', N'先锋（singfun) 9片电热油汀DS6119', N'http://www.360buy.com/product/120230.html', N'生活电器取暖电器先锋先锋 DS6119', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (998, N'120268', N'佳能（Canon） NB-6L 数码相机电池', N'http://www.360buy.com/product/120268.html', N'数码配件电池/充电器佳能佳能NB-6L', N'389.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (999, N'120284', N'爱普生（Epson）T0731黑色墨盒 C13T105180 (适用CX5500/5900/8300/9300）', N'http://www.360buy.com/product/120284.html', N'办公打印墨盒爱普生爱普生T1051', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1000, N'120285', N'爱普生（Epson）T0732青色墨盒 C13T105280（适用CX5500/5900/8300/9300）', N'http://www.360buy.com/product/120285.html', N'办公打印墨盒爱普生爱普生T1052', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1001, N'120286', N'爱普生（Epson）T0733洋红墨盒 C13T105380（适用CX5500/5900/8300/9300）', N'http://www.360buy.com/product/120286.html', N'办公打印墨盒爱普生爱普生T1053', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1002, N'120287', N'爱普生（Epson）T0734黄色墨盒 C13T105480（适用CX5500/5900/8300/9300）', N'http://www.360buy.com/product/120287.html', N'办公打印墨盒爱普生爱普生T1054', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1003, N'120288', N'爱普生（Epson）T0821/0821N 黑色墨盒 C13T112180（适用Photo R270 R290 R390 RX590）', N'http://www.360buy.com/product/120288.html', N'办公打印墨盒爱普生爱普生T1121', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1004, N'120289', N'爱普生（Epson）T0822/0822N 青色墨盒 C13T112280（适用Photo R270 R290 R390 RX590）', N'http://www.360buy.com/product/120289.html', N'办公打印墨盒爱普生爱普生T1122', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1005, N'120290', N'爱普生（Epson）T0823/0823N 洋红色墨盒 C13T112380（适用Photo R270 R290 R390 RX590）', N'http://www.360buy.com/product/120290.html', N'办公打印墨盒爱普生爱普生T1123', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1006, N'120291', N'爱普生（Epson）T0824/0824N 黄色墨盒 C13T112480（适用Photo R270 R290 R390 RX590）', N'http://www.360buy.com/product/120291.html', N'办公打印墨盒爱普生爱普生T1124', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1007, N'120292', N'爱普生（Epson）T0825/0825N 淡青色墨盒 C13T112580（适用Photo R270 R290 R390 RX590）', N'http://www.360buy.com/product/120292.html', N'办公打印墨盒爱普生爱普生T1125', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1008, N'120293', N'爱普生（Epson）T0826/0826N 淡洋红色 C13T112680（适用Photo R270 R290 R390 RX590）', N'http://www.360buy.com/product/120293.html', N'办公打印墨盒爱普生爱普生T1126', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1009, N'120300', N'秋叶原（CHOSERL）Q851 数字高清电视公制射频线（礼盒装） 1.5米', N'http://www.360buy.com/product/120300.html', N'外设产品线缆秋叶原秋叶原Q851', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1010, N'120311', N'秋叶原（CHOSERL）Q56C 六类无氧铜局部区域八芯双绞网线 50米', N'http://www.360buy.com/product/120311.html', N'外设产品线缆秋叶原秋叶原Q56C', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1011, N'120389', N'飞毛腿(SCUD)BP-5M精品电池适用于诺基亚(NOKIA)7390/5610XM/5611XM/6220c/5700XM/6500s/8600等机型', N'http://www.360buy.com/product/120389.html', N'手机配件手机电池飞毛腿飞毛腿BP-5M', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1012, N'120394', N'TP-LINK TL-R860+ 8口多功能宽带路由器', N'http://www.360buy.com/product/120394.html', N'网络产品路由器TP-LINKTP-LINKTL-R860+', N'175.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1013, N'120431', N'兄弟(brother) TN-3135 黑色原装粉仓 (适用HL5240 5250DN)', N'http://www.360buy.com/product/120431.html', N'办公打印墨粉兄弟兄弟TN-3135', N'479.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1014, N'120432', N'兄弟(brother) TN-3175 黑色原装粉盒 (适用HL5240 5250DN)', N'http://www.360buy.com/product/120432.html', N'办公打印墨粉兄弟兄弟TN-3175', N'794.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1015, N'120440', N'日创（RiKON）酸奶机RC-7A(2L)', N'http://www.360buy.com/product/120440.html', N'厨房电器酸奶机日创日创RC-7A(2L)', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1016, N'120443', N'日创（RiKON）酸奶机RC-L1(1.5L)', N'http://www.360buy.com/product/120443.html', N'厨房电器酸奶机日创日创RC-L1', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1017, N'120530', N'飞利浦（PHILIPS）DCTG792 2.4GHz数字无绳电话子母机（蓝色）', N'http://www.360buy.com/product/120530.html', N'生活电器电话机飞利浦飞利浦DCTG792', N'295.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1018, N'120532', N'Gigaset | SIEMENS 西门子C675子母机（象牙白）', N'http://www.360buy.com/product/120532.html', N'生活电器电话机西门子西门子C675', N'668.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1019, N'120533', N'Gigaset | SIEMENS 西门子C675子母机（绅士黑）', N'http://www.360buy.com/product/120533.html', N'生活电器电话机西门子西门子C675', N'668.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1020, N'120534', N'Gigaset | SIEMENS 西门子C670子母机（绅士黑）', N'http://www.360buy.com/product/120534.html', N'生活电器电话机西门子西门子C670', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1021, N'120535', N'Gigaset | SIEMENS 西门子C670子母机（象牙白）', N'http://www.360buy.com/product/120535.html', N'生活电器电话机西门子西门子C670', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1022, N'120543', N'TP-LINK TD-8820增强型 ADSL2+ 路由器', N'http://www.360buy.com/product/120543.html', N'网络产品路由器TP-LINKTP-LINKTD-8820', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1023, N'120544', N'TP-LINK TD-8620增强型 ADSL2+ Modem', N'http://www.360buy.com/product/120544.html', N'网络产品路由器TP-LINKTP-LINKTD-8620', N'74.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1024, N'120554', N'TP-LINK TL-PS110P 并口打印服务器', N'http://www.360buy.com/product/120554.html', N'网络产品路由器TP-LINKTP-LINKTL-PS110P', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1025, N'120556', N'TP-LINK TL-PS110U USB口打印服务器', N'http://www.360buy.com/product/120556.html', N'网络产品路由器TP-LINKTP-LINKTL-PS110U', N'265.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1026, N'120559', N'中控（ZK Software）M200 考勤机 智能ID卡考勤机', N'http://www.360buy.com/product/120559.html', N'办公文仪考勤机中控中控M200plus', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1027, N'120562', N'中控（ZK Software）X938 考勤机', N'http://www.360buy.com/product/120562.html', N'办公文仪考勤机中控中控X938plus', N'795.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1028, N'120604', N'超频三（pccooler）水晶F-126蓝光机箱风扇', N'http://www.360buy.com/product/120604.html', N'电脑配件散热器超频三超频三水晶F-126', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1029, N'120681', N'品胜（PISEN）FNP50 数码相机电池', N'http://www.360buy.com/product/120681.html', N'数码配件电池/充电器品胜品胜FNP50', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1030, N'120709', N'元谷刀锋2500 2.5英寸SATA硬盘盒(铁灰色）', N'http://www.360buy.com/product/120709.html', N'外设产品外置盒元谷元谷2500', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1031, N'120720', N'飞利浦（PHILIPS） SHE1360 耳塞 黑色', N'http://www.360buy.com/product/120720.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHE1360耳机', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1032, N'120747', N'兄弟(brother) HL-2140 黑白激光打印机', N'http://www.360buy.com/product/120747.html', N'办公打印打印机兄弟兄弟HL-2140', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1033, N'￥118.00', N'维氏VICTORINOX瑞士军刀经济者2.2303', N'http://www.360buy.com/product/120749.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1034, N'120761', N'捷波朗（Jabra）A320S 蓝牙立体声USB适配器', N'http://www.360buy.com/product/120761.html', N'手机配件蓝牙耳机捷波朗捷波朗A320S', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1035, N'120820', N'三堡（SANBAO）HT-364BR 打线钳', N'http://www.360buy.com/product/120820.html', N'外设产品电脑工具三堡三堡HT-364BR', N'359.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1036, N'120824', N'三堡（SANBAO）HT-324B 电话、网络、模块配线架打线钳', N'http://www.360buy.com/product/120824.html', N'外设产品电脑工具三堡三堡HT-324B', N'146.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1037, N'￥35.00', N'派克(parker)宝珠笔笔芯(黑色细号)', N'http://www.360buy.com/product/120850.html', N'礼品礼品文具派克派克宝珠笔笔芯', N'23.50')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1038, N'120874', N'科密(comet) 3838 办公碎纸机首创触摸安全停机技术/4级保密/碎纸6张/次', N'http://www.360buy.com/product/120874.html', N'办公打印碎纸机科密科密Office Shredder 3838', N'679.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1039, N'120875', N'科密(comet) 3638 办公碎纸机触摸安全停机技术办公碎纸机（全自动碎纸 静音 单次碎纸10张）', N'http://www.360buy.com/product/120875.html', N'办公打印碎纸机科密科密Office Shredder 3638', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1040, N'120885', N'飞毛腿(SCUD)BST-33精品电池适用于索爱(SONY ERICSSON)K790/W100i/Z780/T715/W595c/U1i/Z610/W205/W715', N'http://www.360buy.com/product/120885.html', N'手机配件手机电池飞毛腿飞毛腿BST-33', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1041, N'￥99.00', N'吉列（Gillette）锋速3动力刀片（4片装）', N'http://www.360buy.com/product/120890.html', N'男士护理剃须护理吉列吉列锋速3', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1042, N'120918', N'品胜（PISEN）NP45 数码相机电池（NP80/EL10/Li.40B通用）', N'http://www.360buy.com/product/120918.html', N'数码配件电池/充电器品胜品胜NP45', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1043, N'120949', N'飞毛腿(SCUD)BL-5F精品电池适用于诺基亚(NOKIA)N95/X5-01/6290/6710N/E65/N96/N93i/C5-01/X5-00/E65等机型', N'http://www.360buy.com/product/120949.html', N'手机配件手机电池飞毛腿飞毛腿BL-5F', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1044, N'￥153.00', N'维氏VICTORINOX瑞士军刀典范SD0.6223.T透明红', N'http://www.360buy.com/product/121047.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1045, N'￥438.00', N'维氏VICTORINOX瑞士军刀捕鱼人1.3653.72', N'http://www.360buy.com/product/121048.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'239.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1046, N'￥138.00', N'维氏VICTORINOX瑞士军刀经济型服务员2.3303', N'http://www.360buy.com/product/121051.html', N'礼品瑞士军刀维氏维氏瑞士军刀', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1047, N'121084', N'威宝（Verbatim）日产 光盘笔 红色', N'http://www.360buy.com/product/121084.html', N'办公文仪刻录碟片/附件Verbatim威宝62918', N'14.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1048, N'121209', N'飞毛腿(SCUD)BL-4CT精品电池适用于诺基亚(NOKIA)2720f/3720/5310XM/5630XM/6600f/6700s/6702s/7205等机型', N'http://www.360buy.com/product/121209.html', N'手机配件手机电池飞毛腿飞毛腿BL-4CT', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1049, N'121234', N'酷奇（cooskin）NH006笔记本电脑TPU键盘保护膜（适用于HP DV2000、V3000系列）', N'http://www.360buy.com/product/121234.html', N'电脑整机笔记本配件酷奇酷奇NH006', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1050, N'121265', N'惠普（HP）LaserJet 5200Lx A3黑白激光打印机', N'http://www.360buy.com/product/121265.html', N'办公打印打印机惠普惠普LaserJet5200LxA3', N'6399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1051, N'￥498.00', N'Zippo打火机韩版I LOVE YOU情人心2014', N'http://www.360buy.com/product/121283.html', N'礼品火机烟具Zippo芝宝打火机', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1052, N'121307', N'品胜（PISEN）SLB0837 数码相机电池', N'http://www.360buy.com/product/121307.html', N'数码配件电池/充电器品胜品胜SLB0837', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1053, N'￥690.00', N'卡西欧(Casio)Edifice系列男士指针手表EF-312D-1A', N'http://www.360buy.com/product/121315.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-312D-1A', N'529.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1054, N'121334', N'惠普（HP）18号 黑色墨盒(C4936A)(适用HP Officejet L7380 L7580 L7590 8600plus Pro K5300)', N'http://www.360buy.com/product/121334.html', N'办公打印墨盒惠普惠普C4936A', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1055, N'121335', N'惠普（HP）C4939A 18号 黄色墨盒(适用Officejet L7380 L7580 L7590 8600plus Pro K5300)', N'http://www.360buy.com/product/121335.html', N'办公打印墨盒惠普惠普C4939A', N'105.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1056, N'121336', N'惠普（HP）C4937A 18号 青色墨盒(适用Officejet L7380 L7580 L7590 8600plus Pro K5300)', N'http://www.360buy.com/product/121336.html', N'办公打印墨盒惠普惠普C4937A', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1057, N'121337', N'惠普（HP）C4938A 18号品红色墨盒(适用Officejet L7380 L7580 L7590 8600plus Pro K5300)', N'http://www.360buy.com/product/121337.html', N'办公打印墨盒惠普惠普C4938A', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1058, N'121454', N'索尼（SONY）DVD+RW 4速 单片盒装 可擦写 刻录盘', N'http://www.360buy.com/product/121454.html', N'办公文仪刻录碟片/附件索尼索尼DVD+RW 4速', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1059, N'121462', N'索尼（SONY）DVD-R 16速 4.7G 单片盒装 刻录盘', N'http://www.360buy.com/product/121462.html', N'办公文仪刻录碟片/附件索尼索尼DVD-R 16速', N'7.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1060, N'121467', N'索尼（SONY）DVD-R 16速 4.7G 桶装50片 刻录盘', N'http://www.360buy.com/product/121467.html', N'办公文仪刻录碟片/附件索尼索尼DVD-R 16速', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1061, N'121471', N'索尼（SONY）CD-R 48速 700M 单片厚盒装 刻录盘', N'http://www.360buy.com/product/121471.html', N'办公文仪刻录碟片/附件索尼索尼CD-R 48X', N'6.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1062, N'121473', N'索尼（SONY）CD-R 48速 700M 桶装10片 刻录盘', N'http://www.360buy.com/product/121473.html', N'办公文仪刻录碟片/附件索尼索尼CD-R 48速', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1063, N'121475', N'索尼（SONY）CD-R 48速 700M 桶装50片 刻录盘', N'http://www.360buy.com/product/121475.html', N'办公文仪刻录碟片/附件索尼索尼CD-R 48速', N'66.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1064, N'121494', N'铼德（RITEK）DVD-R 16速 4.7G 台产 可打印 桶装50片 刻录盘', N'http://www.360buy.com/product/121494.html', N'办公文仪刻录碟片/附件铼德铼德DVD-R 16速', N'72.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1065, N'121496', N'铼德（RITEK）DVD-R 16速 4.7G X系列 桶装10片 刻录盘', N'http://www.360buy.com/product/121496.html', N'办公文仪刻录碟片/附件铼德铼德DVD-R 16速', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1066, N'121498', N'铼德（RITEK）DVD+R 16速 4.7G X系列 桶装10片 刻录盘', N'http://www.360buy.com/product/121498.html', N'办公文仪刻录碟片/附件铼德铼德DVD+R 16速', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1067, N'121504', N'铼德（RITEK）DVD+R DL 8速 8.5G X系列 台产 单面双层 单片盒装 刻录盘', N'http://www.360buy.com/product/121504.html', N'办公文仪刻录碟片/附件铼德铼德DVD+R DL', N'8.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1068, N'121551', N'派拉蒙古典电话机HA1935T', N'http://www.360buy.com/product/121551.html', N'生活电器电话机派拉蒙派拉蒙HA1935T', N'296.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1069, N'121571', N'秋叶原（CHOSERL）Q540 升级版HDMI数字高清线 3米（内外双层屏蔽）', N'http://www.360buy.com/product/121571.html', N'外设产品线缆秋叶原秋叶原Q540', N'98.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1070, N'121603', N'惠普（HP）OfficeJet J3608 传真喷墨一体机（打印 复印 扫描 传真）', N'http://www.360buy.com/product/121603.html', N'办公打印一体机惠普惠普OfficeJetJ3608OA', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1071, N'121629', N'兄弟(brother) TN-2115 黑色低容墨粉仓 (适用HL2140 2150N DCP7030，MFC7450/7340)', N'http://www.360buy.com/product/121629.html', N'办公打印墨粉兄弟兄弟TN-2115', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1072, N'121630', N'兄弟(brother) TN-2125 黑色高容墨粉仓 (适用HL2140 2150N DCP7030，MFC7450/7340)', N'http://www.360buy.com/product/121630.html', N'办公打印墨粉兄弟兄弟TN-2125', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1073, N'121631', N'兄弟(brother) DR-2150 黑色硒鼓单元(适用HL2140 2150N DCP7030，MFC7450/7340)', N'http://www.360buy.com/product/121631.html', N'办公打印硒鼓兄弟兄弟DR-2150', N'550.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1074, N'121707', N'TP-LINK TL-WR841N 300M无线路由器（蓝色）', N'http://www.360buy.com/product/121707.html', N'网络产品路由器TP-LINKTP-LINKTL-WR841N', N'129.00')
GO
print 'Processed 1000 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1075, N'121730', N'Gigaset | SIEMENS 西门子C67H子机（象牙白）', N'http://www.360buy.com/product/121730.html', N'生活电器电话机西门子西门子C67H', N'358.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1076, N'121731', N'Gigaset | SIEMENS 西门子C67H子机（绅士黑）', N'http://www.360buy.com/product/121731.html', N'生活电器电话机西门子西门子C67H', N'358.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1077, N'121733', N'松下（Panasonic）KX-TG20CN-2 双无绳2.4GHz数字无绳', N'http://www.360buy.com/product/121733.html', N'生活电器电话机松下松下KX-TG20CN-2', N'555.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1078, N'121758', N'九州风神（DEEPCOOL）8025透明蓝光机箱风扇（XFAN 80L）', N'http://www.360buy.com/product/121758.html', N'电脑配件散热器九州风神九州风神XFAN 80L', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1079, N'121776', N'九州风神（DEEPCOOL）12025透明蓝光机箱风扇（XFAN 120L）', N'http://www.360buy.com/product/121776.html', N'电脑配件散热器九州风神九州风神XFAN 120L', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1080, N'121779', N'宝利通（POLYCOM）音频会议系统电话机 VoiceStation 300（2200-17910-022）', N'http://www.360buy.com/product/121779.html', N'生活电器电话机POLYCOM宝利通VoiceStation300', N'2799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1081, N'121829', N'TP-LINK TR-932D 百兆多模光纤收发器', N'http://www.360buy.com/product/121829.html', N'网络产品路由器TP-LINKTP-LINKTR-932D', N'188.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1082, N'121831', N'TP-LINK TR-962D 百兆单模光纤收发器', N'http://www.360buy.com/product/121831.html', N'网络产品路由器TP-LINKTP-LINKTR-962D', N'366.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1083, N'121837', N'TP-LINK TL-SL2428WEB 24+4G千兆简单网管交换机', N'http://www.360buy.com/product/121837.html', N'网络产品交换机TP-LINKTP-LINKTL-SL2428WEB24', N'879.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1084, N'121930', N'地狱火(FIRE-PAD）黑色病毒鼠标垫', N'http://www.360buy.com/product/121930.html', N'外设产品鼠标垫地狱火地狱火黑色病毒', N'13.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1085, N'121955', N'突破（TOP）TZ-C6K6基准安全推广系列插座 6联3米', N'http://www.360buy.com/product/121955.html', N'生活电器插座突破突破TZ-C6K6', N'92.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1086, N'121957', N'麦克赛尔（maxell）CD-R 48速 700M 商务金盘 桶装50片 刻录盘', N'http://www.360buy.com/product/121957.html', N'办公文仪刻录碟片/附件maxell麦克赛尔CD-R 48速', N'62.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1087, N'122024', N'博世（Bosch）GBH 2-26E 四坑电锤', N'http://www.360buy.com/product/122024.html', N'五金家装电动工具博世博世GBH 2-26E', N'1099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1088, N'122048', N'飞利浦（PHILIPS）TD-2816D来电显示电话机（蓝色）', N'http://www.360buy.com/product/122048.html', N'生活电器电话机飞利浦飞利浦TD-2816D', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1089, N'122074', N'惠普（HP）LaserJet CC388A黑色硒鼓（适用 P1007 P1008 P1106 P1108 M1213nf M1136 M1216nfh）', N'http://www.360buy.com/product/122074.html', N'办公打印硒鼓惠普惠普LaserJetCC388A', N'449.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1090, N'￥690.00', N'卡西欧（casio）EDIFICE系列男式指针手表 EF-312D-7A', N'http://www.360buy.com/product/122094.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-312D-7A', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1091, N'122138', N'惠普（HP）ScanJet G2410 平板扫描仪', N'http://www.360buy.com/product/122138.html', N'办公打印扫描仪惠普惠普ScanJetG2410', N'549.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1092, N'122201', N'腾龙（Tamron）AF70-300mm F/4-5.6 Di LD MACRO 1:2 远摄变焦镜头（尼康卡口）', N'http://www.360buy.com/product/122201.html', N'摄影摄像镜头腾龙腾龙AF70-300mm F/4-5.6 Di', N'1250.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1093, N'122210', N'腾龙（Tamron）AF18-200mm F/3.5-6.3 XR Di II LD ASPHERICAL (IF) MACRO 远摄变焦镜头（尼康卡口）', N'http://www.360buy.com/product/122210.html', N'摄影摄像镜头腾龙腾龙AF18-200mm F/3.5-6.3 XR DiII', N'1800.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1094, N'122212', N'腾龙（TAMRON）SP AF17-50mm F/2.8 XR Di II LD ASPHERICAL [IF] 标准变焦镜头（宾得卡口）', N'http://www.360buy.com/product/122212.html', N'摄影摄像镜头腾龙腾龙SP AF17-50mm F/2.8', N'2890.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1095, N'￥178.00', N'圣晨颈椎牵引康复治理器', N'http://www.360buy.com/product/122220.html', N'保健器械养生器械圣晨圣晨颈椎牵引康复治理器', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1096, N'122239', N'博朗（BRAUN）1系190S-1电动剃须刀', N'http://www.360buy.com/product/122239.html', N'个护健康剃须刀博朗博朗190S-1', N'339.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1097, N'122326', N'飞毛腿(SCUD)BL-5C精品电池适用于诺基亚(NOKIA)3100/X2-01/N1616/N1280/C1-02/C2-01/C2-03/N72/C2-03', N'http://www.360buy.com/product/122326.html', N'手机配件手机电池飞毛腿飞毛腿BL-5C', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1098, N'122335', N'爱普生（Epson）LQ-1600K3H SO15336黑色色带（适用LQ 1600K3H）', N'http://www.360buy.com/product/122335.html', N'办公打印色带爱普生爱普生LQ-1600K3H', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1099, N'122379', N'尼康（Nikon） AF-S 24-70mm f/2.8G ED 镜头', N'http://www.360buy.com/product/122379.html', N'摄影摄像镜头尼康尼康AF-S 24-70mm f/2.8G ED', N'12999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1100, N'122381', N'尼康（Nikon） AF-S 14-24mm f/2.8G ED 镜头', N'http://www.360buy.com/product/122381.html', N'摄影摄像镜头尼康尼康AF-S 14-24mm f/2.8G ED', N'13599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1101, N'122385', N'尼康（Nikon） AF 24-85mm f/2.8-4D IF 自动对焦镜头', N'http://www.360buy.com/product/122385.html', N'摄影摄像镜头尼康尼康AF 24-85mm f/2.8-4D IF', N'4099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1102, N'￥389.00', N'飞利浦Philips佳视防眩光单臂护眼台灯白色', N'http://www.360buy.com/product/122416.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'288.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1103, N'￥469.00', N'飞利浦Philips佳视防眩光双臂护眼台灯蓝色', N'http://www.360buy.com/product/122417.html', N'灯具台灯飞利浦飞利浦护眼台灯', N'328.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1104, N'122449', N'日创（rikon）多功能酸奶机RC-M2（白色0.9L）', N'http://www.360buy.com/product/122449.html', N'厨房电器酸奶机日创日创RC-M2', N'208.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1105, N'￥99.00', N'苏泊尔精铸铁锅FC30E2(无盖）', N'http://www.360buy.com/product/122460.html', N'烹饪锅具炒锅苏泊尔苏泊尔精铸铁锅', N'69.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1106, N'￥419.00', N'苏泊尔陶晶无油烟炒锅PC30G2-Z', N'http://www.360buy.com/product/122462.html', N'烹饪锅具炒锅苏泊尔苏泊尔炒锅', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1107, N'122648', N'TCL HA868（9A）普通按键电话机（米白）', N'http://www.360buy.com/product/122648.html', N'生活电器电话机TCLTCLHA868（9A）', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1108, N'122650', N'TCL HA868(9A) 普通按键电话机(冰蓝)', N'http://www.360buy.com/product/122650.html', N'生活电器电话机TCLTCLHA868(9A)', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1109, N'122762', N'中控（ZK Software）X-618 考勤机', N'http://www.360buy.com/product/122762.html', N'办公文仪考勤机中控中控X-618', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1110, N'122764', N'中控（ZK Software）OP1000 考勤机', N'http://www.360buy.com/product/122764.html', N'办公文仪考勤机中控中控OP1000', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1111, N'122768', N'中控（ZK Software）U160 专业型 指纹考勤终端', N'http://www.360buy.com/product/122768.html', N'办公文仪考勤机中控中控U160', N'829.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1112, N'122777', N'红心（Hongxin）豪华蒸汽挂烫机RH2006A', N'http://www.360buy.com/product/122777.html', N'生活电器挂烫机/熨斗红心红心RH2006A', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1113, N'122781', N'红心（Hongxin）蒸汽喷雾 电熨斗RH189 （软木手柄）', N'http://www.360buy.com/product/122781.html', N'生活电器挂烫机/熨斗红心红心RH189', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1114, N'122834', N'风王（coido）车用打气吸尘两用机（6022）', N'http://www.360buy.com/product/122834.html', N'电子电器车载吸尘器风王风王6022', N'138.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1115, N'122839', N'美的（midea）电子制冷饮水机 MYD803S-X（沸腾胆）', N'http://www.360buy.com/product/122839.html', N'生活电器饮水机美的美的MYD803S-X', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1116, N'122846', N'风王（coido）干湿两用车用吸尘器6038W', N'http://www.360buy.com/product/122846.html', N'电子电器车载吸尘器风王风王6038', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1117, N'122848', N'风王（coido）干湿两用车用吸尘器6025', N'http://www.360buy.com/product/122848.html', N'电子电器车载吸尘器风王风王6025', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1118, N'122853', N'风王（coido）车用打气泵3357', N'http://www.360buy.com/product/122853.html', N'电子电器充气泵风王风王3357', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1119, N'122856', N'风王（coido）轮胎充气机6215', N'http://www.360buy.com/product/122856.html', N'电子电器充气泵风王风王6215', N'198.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1120, N'122863', N'九州风神（DEEPCOOL）WINNER S915 Intel CPU散热器 适用于Intel LGA 775系列CPU', N'http://www.360buy.com/product/122863.html', N'电脑配件散热器九州风神九州风神WINNER S915', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1121, N'122888', N'灿坤（EUPA）跳式烤面包箱TSK－2539ANBDQ', N'http://www.360buy.com/product/122888.html', N'厨房电器面包机灿坤灿坤TSK－2539ANBDQ', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1122, N'122995', N'美的（midea）单热型饮水机 MYR718S-X', N'http://www.360buy.com/product/122995.html', N'生活电器饮水机美的美的MYR718S-X', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1123, N'￥68.00', N'李大夫远红外护膝（中号）', N'http://www.360buy.com/product/122997.html', N'保健器械养生器械李大夫李大夫远红外护膝', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1124, N'￥2500.00', N'卡西欧Casio音太郎76键电子琴CT-799', N'http://www.360buy.com/product/123082.html', N'乐器相关电子琴卡西欧卡西欧76键电子琴', N'1899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1125, N'￥1190.00', N'卡西欧(Casio)Edifice系列男士指针手表EF-503SG-7A', N'http://www.360buy.com/product/123140.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-503SG-7A', N'519.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1126, N'￥990.00', N'卡西欧(Casio)Edifice系列男士指针手表EF-503D-7A', N'http://www.360buy.com/product/123145.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-503D-7A', N'489.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1127, N'￥1590.00', N'卡西欧(Casio)Edifice系列男士指针手表EF-521SP-1A', N'http://www.360buy.com/product/123151.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧手表EF-521SP-1A', N'899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1128, N'￥1190.00', N'卡西欧(Casio)Edifice系列男士指针手表EF-503SG-1A', N'http://www.360buy.com/product/123152.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-503SG-1A', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1129, N'￥198.00', N'zippo打火机+烟缸+火石礼盒套装(205+烟缸+火石)', N'http://www.360buy.com/product/123179.html', N'礼品火机烟具Zippo芝宝套装', N'115.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1130, N'123203', N'飞利浦（PHILIPS）MCM240/15 微型Hi-Fi系统', N'http://www.360buy.com/product/123203.html', N'大 家 电迷你音响飞利浦飞利浦MCM240/15', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1131, N'￥898.00', N'倍轻松眼部按摩器isee360', N'http://www.360buy.com/product/123217.html', N'保健器械养生器械倍轻松倍轻松眼部按摩器', N'569.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1132, N'123320', N'松下（Panasonic）ES2291剃毛器', N'http://www.360buy.com/product/123320.html', N'个护健康剃/脱毛器松下松下ES2291', N'100.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1133, N'123323', N'松下（Panasonic） ES3833G 礼盒精选男士剃须刀', N'http://www.360buy.com/product/123323.html', N'个护健康剃须刀松下松下ES3833G', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1134, N'123327', N'松下（Panasonic） ES5821K 卡式电动剃须刀', N'http://www.360buy.com/product/123327.html', N'个护健康剃须刀松下松下ES5821K', N'469.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1135, N'123331', N'松下（Panasonic） ES2081V 脱毛器', N'http://www.360buy.com/product/123331.html', N'个护健康剃/脱毛器松下松下ES2081V', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1136, N'123385', N'德生（TECSUN）PL－450数字调谐二次变频收音机', N'http://www.360buy.com/product/123385.html', N'生活电器收录/音机德生德生PL－450', N'330.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1137, N'123387', N'利仁2008F “带圈”电饼铛', N'http://www.360buy.com/product/123387.html', N'厨房电器电饼铛/烧烤盘利仁利仁2008F', N'209.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1138, N'123434', N'尼康（Nikon） AF-S 60mm f/2.8G ED 微距镜头', N'http://www.360buy.com/product/123434.html', N'摄影摄像镜头尼康尼康60mm f/2.8G ED', N'3959.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1139, N'123442', N'突破（TOP）基准安全推广系列插座 4联3米（安全盾行边设计+过载保护+倍能开关）TZ-C1K4', N'http://www.360buy.com/product/123442.html', N'生活电器插座突破突破TZ-C1K4', N'44.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1140, N'￥428.00', N'zippo打火机热火朝天双底刻24383', N'http://www.360buy.com/product/123501.html', N'礼品火机烟具Zippo芝宝打火机', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1141, N'￥408.00', N'zippo打火机幸运四叶草24007', N'http://www.360buy.com/product/123502.html', N'礼品火机烟具Zippo芝宝打火机', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1142, N'￥359.00', N'zippo打火机最真的565', N'http://www.360buy.com/product/123503.html', N'礼品火机烟具Zippo芝宝打火机', N'122.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1143, N'￥388.00', N'zippo打火机蝴蝶之恋24339', N'http://www.360buy.com/product/123504.html', N'礼品火机烟具Zippo芝宝打火机', N'116.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1144, N'123505', N'宝利通（Polycom）音频会议系统电话机 SoundStation2 基本型（2200-15100-022）', N'http://www.360buy.com/product/123505.html', N'生活电器电话机POLYCOM宝利通SoundStation2', N'3899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1145, N'123662', N'红心（Hongxin）豪华蒸汽挂烫机器RH2008（脚踏式开关）', N'http://www.360buy.com/product/123662.html', N'生活电器挂烫机/熨斗红心红心RH2008', N'419.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1146, N'123671', N'熊猫（panda）2315 收录机', N'http://www.360buy.com/product/123671.html', N'生活电器收录/音机熊猫熊猫2315', N'250.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1147, N'123676', N'熊猫CD-106 （panda）手提式 CD/MP3/USB播放机', N'http://www.360buy.com/product/123676.html', N'生活电器收录/音机熊猫熊猫CD-106', N'339.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1148, N'123678', N'熊猫CD-400（panda）手提式DVD播放机', N'http://www.360buy.com/product/123678.html', N'生活电器收录/音机熊猫熊猫CD-400', N'459.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1149, N'123692', N'熊猫（panda）F-138 复读机', N'http://www.360buy.com/product/123692.html', N'生活电器收录/音机熊猫熊猫F-138', N'135.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1150, N'123783', N'突破（TOP）基准安全推广系列插座 10联3米（安全盾行边+过载保护+倍能开关）TZ-Y/TZ-C1KT', N'http://www.360buy.com/product/123783.html', N'生活电器插座突破突破TZ-Y/TZ-C1KT', N'76.50')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1151, N'123786', N'突破（TOP)基准安全推广系列插座 3联1.8米（安全盾边设计+过载保护+倍能开关）TZ-Y/TZ-C1K3', N'http://www.360buy.com/product/123786.html', N'生活电器插座突破突破TZ-Y/TZ-C1K3', N'43.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1152, N'123788', N'突破（TOP）电工系列 一转二多用转换器 TZ-Y/TZ-C03', N'http://www.360buy.com/product/123788.html', N'生活电器插座突破突破TZ-Y/TZ-C03', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1153, N'123814', N'酷冷至尊（CoolerMaster）毁灭者经典U3版 中塔式电脑机箱（USB3.0/0.7MM板材 /标配12CM蓝色风扇）黑色', N'http://www.360buy.com/product/123814.html', N'电脑配件机箱酷冷至尊酷冷至尊毁灭者RC-K100-KKN1', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1154, N'123836', N'TP-LINK TL-WN821N 300M无线USB网卡', N'http://www.360buy.com/product/123836.html', N'网络产品网卡TP-LINKTP-LINKTL－WN821N', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1155, N'￥99.00', N'苏泊尔不锈钢II型号奶锅ST16N1', N'http://www.360buy.com/product/123857.html', N'烹饪锅具奶锅苏泊尔苏泊尔不锈钢II型号奶锅ST16N1', N'39.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1156, N'123864', N'中控（ZK Software）K28 考勤机', N'http://www.360buy.com/product/123864.html', N'办公文仪考勤机中控中控K28', N'388.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1157, N'123898', N'博朗(BRAUN) 720S -4电动剃须刀', N'http://www.360buy.com/product/123898.html', N'个护健康剃须刀博朗博朗Prosonic 720', N'3999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1158, N'123900', N'博朗(BRAUN) 760cc-4 电动剃须刀', N'http://www.360buy.com/product/123900.html', N'个护健康剃须刀博朗博朗Prosonic 760cc', N'4899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1159, N'123901', N'佳能（Canon）KL-36IP 热升华 墨水相片纸 (炫飞系列照片打印机专用相纸）', N'http://www.360buy.com/product/123901.html', N'办公文仪纸类佳能佳能KL-36IP', N'60.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1160, N'123927', N'科密（COMET）KD-12 先锋系列 ID卡 智能考勤机', N'http://www.360buy.com/product/123927.html', N'办公文仪考勤机科密科密KD-12', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1161, N'123999', N'品胜（PISEN）SLB1137D 数码相机电池', N'http://www.360buy.com/product/123999.html', N'数码配件电池/充电器品胜品胜三星SLB1137D充电电池', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1162, N'124000', N'品胜（PISEN）SLB0937 数码相机电池', N'http://www.360buy.com/product/124000.html', N'数码配件电池/充电器品胜品胜三星SLB0937充电电池', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1163, N'124006', N'创新（creative）EP-510耳机 运动-友好安全的耳钩设计!', N'http://www.360buy.com/product/124006.html', N'时尚影音耳机/耳麦创新创新EP-510', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1164, N'124014', N'创新（creative）EP-210耳机（黑色）', N'http://www.360buy.com/product/124014.html', N'时尚影音耳机/耳麦创新创新EP-210', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1165, N'124029', N'华三（H3C）S1224R 全千兆以太网交换机', N'http://www.360buy.com/product/124029.html', N'网络产品交换机华三华三S1224R', N'1249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1166, N'124030', N'华三（H3C）S2108智能网管交换机', N'http://www.360buy.com/product/124030.html', N'网络产品交换机华三华三S2108', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1167, N'124032', N'华三（H3C）S1526可管理接入交换机', N'http://www.360buy.com/product/124032.html', N'网络产品交换机华三华三S1526', N'899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1168, N'124036', N'华三（H3C）S5016P千兆可管理交换机', N'http://www.360buy.com/product/124036.html', N'网络产品交换机华三华三S5016P', N'1999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1169, N'￥486.00', N'倍轻松爱视健眼仪isee180(BEM-1B)', N'http://www.360buy.com/product/124042.html', N'保健器械养生器械倍轻松倍轻松健眼仪isee180(BEM-1B)', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1170, N'124043', N'华三（H3C）S1048快速以太网交换机', N'http://www.360buy.com/product/124043.html', N'网络产品交换机华三华三S1048', N'1599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1171, N'￥382.00', N'倍轻松爱视健眼仪ISEE200', N'http://www.360buy.com/product/124047.html', N'保健器械养生器械倍轻松倍轻松健眼仪ISEE200', N'249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1172, N'124049', N'华三（H3C）S1208千兆以太网交换机', N'http://www.360buy.com/product/124049.html', N'网络产品交换机华三华三S1208', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1173, N'￥598.00', N'倍轻松眼部按摩器isee300', N'http://www.360buy.com/product/124050.html', N'保健器械养生器械倍轻松倍轻松眼部按摩器', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1174, N'124054', N'华三（H3C）ER5200企业级双核宽带路由器', N'http://www.360buy.com/product/124054.html', N'网络产品路由器华三华三ER5200', N'3499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1175, N'124057', N'华三（H3C）ER3200企业级宽带路由器', N'http://www.360buy.com/product/124057.html', N'网络产品路由器华三华三ER3200', N'1699.00')
GO
print 'Processed 1100 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1176, N'124059', N'华三（H3C）ER3100企业级宽带路由器', N'http://www.360buy.com/product/124059.html', N'网络产品路由器华三华三ER3100', N'1149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1177, N'124063', N'摩托罗拉80104 对讲机电池 适用于T5428/T5628/T5728', N'http://www.360buy.com/product/124063.html', N'手机通讯对讲机摩托罗拉摩托罗拉80104 专用电池', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1178, N'124067', N'摩托罗拉80103 镍氢充电器 适用于T5428/T5628/T5728/T6508', N'http://www.360buy.com/product/124067.html', N'手机通讯对讲机摩托罗拉摩托罗拉80103+', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1179, N'124069', N'摩托罗拉商用对讲机CLS1418', N'http://www.360buy.com/product/124069.html', N'手机通讯对讲机摩托罗拉摩托罗拉CLS1418', N'598.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1180, N'124070', N'华三（H3C）S1016快速以太网交换机', N'http://www.360buy.com/product/124070.html', N'网络产品交换机华三华三S1016', N'319.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1181, N'124073', N'华三（H3C）S1024R快速以太网交换机', N'http://www.360buy.com/product/124073.html', N'网络产品交换机华三华三S1024R', N'569.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1182, N'124075', N'华三（H3C）Aolynk S1008A桌面型交换机', N'http://www.360buy.com/product/124075.html', N'网络产品交换机华三华三S1008A', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1183, N'124150', N'风王（coido）充气泵（箱式）2107', N'http://www.360buy.com/product/124150.html', N'电子电器充气泵风王风王2107', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1184, N'124151', N'惠普（HP）LaserJet CB436A黑白硒鼓（适用LaserJet M1120 M1522nf P1505 P1505N）', N'http://www.360buy.com/product/124151.html', N'办公打印硒鼓惠普惠普LaserJetCB436A', N'459.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1185, N'124153', N'风王（coido）充气泵（超大功率）6217', N'http://www.360buy.com/product/124153.html', N'电子电器充气泵风王风王6217', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1186, N'124156', N'风王（coido）数位式 汽车胎压计 6071', N'http://www.360buy.com/product/124156.html', N'电子电器胎压计风王风王6071', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1187, N'124157', N'信鸽(XINGE)遥控器CY-3M', N'http://www.360buy.com/product/124157.html', N'办公打印投影配件信鸽信鸽CY-3M', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1188, N'124171', N'惠普（HP）LaserJet 5200tn A3商用黑白激光打印机', N'http://www.360buy.com/product/124171.html', N'办公打印打印机惠普惠普LaserJet5200tnA3', N'13799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1189, N'124172', N'惠普（HP）LaserJet 5200dtn A3商用黑白激光打印机', N'http://www.360buy.com/product/124172.html', N'办公打印打印机惠普惠普LaserJet5200dtnA3', N'16999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1190, N'124249', N'兄弟(brother) LC960BK 黑色墨盒 (适用DCP-330C 540CN 240C)', N'http://www.360buy.com/product/124249.html', N'办公打印墨盒兄弟兄弟LC960BK', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1191, N'124256', N'熊猫（PANDA）F-118 460秒语音复读机', N'http://www.360buy.com/product/124256.html', N'生活电器收录/音机熊猫熊猫F-118460', N'98.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1192, N'124257', N'熊猫（PANDA）F-370 480秒高品质原声复读机', N'http://www.360buy.com/product/124257.html', N'生活电器收录/音机熊猫熊猫F-370', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1193, N'124258', N'熊猫（PANDA）高保真原声复读机F-360', N'http://www.360buy.com/product/124258.html', N'生活电器收录/音机熊猫熊猫F-360', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1194, N'124259', N'熊猫（PANDA）F-318 480秒语音复读机', N'http://www.360buy.com/product/124259.html', N'生活电器收录/音机熊猫熊猫F-318', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1195, N'124260', N'熊猫（PANDA）F-218 480秒语音复读机', N'http://www.360buy.com/product/124260.html', N'生活电器收录/音机熊猫熊猫F-218480', N'114.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1196, N'124325', N'APC UPS 不间断电源BK500Y-CH', N'http://www.360buy.com/product/124325.html', N'外设产品UPS电源APCAPCBK500Y-CH', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1197, N'124326', N'APC UPS 不间断电源BK1000Y-CH', N'http://www.360buy.com/product/124326.html', N'外设产品UPS电源APCAPCBK1000Y-CH', N'529.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1198, N'124344', N'元谷悍马-3500移动硬盘盒（黑色）', N'http://www.360buy.com/product/124344.html', N'外设产品外置盒元谷元谷3500', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1199, N'124360', N'惠普（HP）CC660A 702号黑色墨盒（适用 Officejet J3508 J3606 J3608 J5508）', N'http://www.360buy.com/product/124360.html', N'办公打印墨盒惠普惠普CC660A702', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1200, N'124384', N'秋叶原（CHOSERL）YF1613 3位分控新国标超值插座 3米', N'http://www.360buy.com/product/124384.html', N'外设产品插座秋叶原秋叶原YF1613', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1201, N'124423', N'福玛特（FMART） FM-007 全自动清洁机 清洁类（黄色）', N'http://www.360buy.com/product/124423.html', N'生活电器吸尘器福玛特福玛特FM-007', N'348.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1202, N'124427', N'福玛特（FMART） FM-006 智能机器人吸尘器（红色）', N'http://www.360buy.com/product/124427.html', N'生活电器吸尘器福玛特福玛特FM-006', N'1699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1203, N'124428', N'福玛特（FMART） CD-2800 超声波清洗机 清洁类（白色）', N'http://www.360buy.com/product/124428.html', N'生活电器吸尘器福玛特福玛特CD-2800', N'378.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1204, N'124429', N'福玛特（FMART） CD-3800a 超声波清洗机 清洁类（白色）', N'http://www.360buy.com/product/124429.html', N'生活电器吸尘器福玛特福玛特CD-3800（A）', N'450.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1205, N'124450', N'惠普（HP）Officejet Pro K8600 A3+幅面 商用喷墨打印机', N'http://www.360buy.com/product/124450.html', N'办公打印打印机惠普惠普OfficeJet PRO K8600', N'2199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1206, N'124461', N'夏普(SHARP) AR-153ST 黑色碳粉 (适用AR-158系列)', N'http://www.360buy.com/product/124461.html', N'办公打印墨粉夏普夏普AR-153ST', N'276.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1207, N'124462', N'夏普(SHARP) AR-204ST 黑色机碳粉 (适用AR-1818 1820 2818 2718N 2820N 2918 2921)', N'http://www.360buy.com/product/124462.html', N'办公打印墨粉夏普夏普AR-204ST', N'238.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1208, N'124463', N'夏普（SHARP）AR-203ST 黑色碳粉 (适用AR-1818 1820 2818 2718N 2820N 2918 2921)', N'http://www.360buy.com/product/124463.html', N'办公打印墨粉夏普夏普AR-203ST', N'335.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1209, N'￥298.00', N'美嘉欣敞篷电动遥控跑车红色8103', N'http://www.360buy.com/product/124506.html', N'遥控/电动遥控车美嘉欣美嘉欣敞篷电动遥控跑车红色8103', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1210, N'124527', N'品胜 BP85ST 数码电池 适用于三星VP-MX10C/HMX20C', N'http://www.360buy.com/product/124527.html', N'数码配件电池/充电器品胜品胜BP85ST', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1211, N'124546', N'博世（Bosch）GSB 10 RE 冲击钻', N'http://www.360buy.com/product/124546.html', N'五金家装电动工具博世博世GSB 10 RE', N'288.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1212, N'￥448.00', N'卡西欧(Casio)指针系列女表LTP-2069L-7A1', N'http://www.360buy.com/product/124552.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069L-7A1', N'309.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1213, N'￥498.00', N'卡西欧(Casio)指针系列女表LTP-2069L-7A2', N'http://www.360buy.com/product/124553.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069L-7A2', N'268.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1214, N'124609', N'信鸽(XINGE)120寸 支架投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124609.html', N'办公打印投影配件信鸽信鸽120', N'449.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1215, N'124611', N'信鸽(XINGE) 80英寸 地拉幕布', N'http://www.360buy.com/product/124611.html', N'办公打印投影配件信鸽信鸽80', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1216, N'124612', N'信鸽(XINGE)60寸 地拉投影幕布4:3白塑幕', N'http://www.360buy.com/product/124612.html', N'办公打印投影配件信鸽信鸽60', N'649.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1217, N'124613', N'信鸽(XINGE)100寸 地拉投影幕布4:3白塑幕', N'http://www.360buy.com/product/124613.html', N'办公打印投影配件信鸽信鸽100', N'999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1218, N'124614', N'信鸽(XINGE)72寸 电动投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124614.html', N'办公打印投影配件信鸽信鸽72', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1219, N'124615', N'信鸽(XINGE)84寸 电动投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124615.html', N'办公打印投影配件信鸽信鸽84', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1220, N'124616', N'信鸽(XINGE)100寸 电动投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124616.html', N'办公打印投影配件信鸽信鸽100', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1221, N'124617', N'信鸽(XINGE)120寸 电动投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124617.html', N'办公打印投影配件信鸽信鸽120', N'439.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1222, N'124618', N'信鸽(XINGE)150寸 电动投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124618.html', N'办公打印投影配件信鸽信鸽150', N'749.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1223, N'124619', N'信鸽(XINGE)200寸 电动投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124619.html', N'办公打印投影配件信鸽信鸽200', N'1799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1224, N'124620', N'信鸽(XINGE)100寸 手动自锁投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124620.html', N'办公打印投影配件信鸽信鸽100', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1225, N'124622', N'信鸽(XINGE)120寸 手动自锁投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124622.html', N'办公打印投影配件信鸽信鸽120', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1226, N'124623', N'信鸽(XINGE)84寸 支架投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124623.html', N'办公打印投影配件信鸽信鸽84', N'309.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1227, N'124624', N'信鸽(XINGE)100寸 支架投影幕布4:3玻珠幕', N'http://www.360buy.com/product/124624.html', N'办公打印投影配件信鸽信鸽100', N'359.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1228, N'124625', N'信鸽(XINGE)84寸 金属电动投影幕布4:3金属幕', N'http://www.360buy.com/product/124625.html', N'办公打印投影配件信鸽信鸽84', N'629.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1229, N'124626', N'信鸽(XINGE)120寸 金属电动投影幕布4:3金属幕', N'http://www.360buy.com/product/124626.html', N'办公打印投影配件信鸽信鸽120', N'849.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1230, N'124678', N'三星（SAMSUNG）CLP-P300C 彩色套粉（适用CLP-300 300N, CLX-3160N 3160FN ）', N'http://www.360buy.com/product/124678.html', N'办公打印墨粉三星三星CLP-P300C', N'1099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1231, N'124681', N'三星（SAMSUNG）SCX-4521D3 黑色硒鼓（适用SCX-4321 4521F 4521HS ）', N'http://www.360buy.com/product/124681.html', N'办公打印硒鼓三星三星SCX-4521D3', N'569.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1232, N'124760', N'罗技（Logitech）心音通860 耳机麦克风', N'http://www.360buy.com/product/124760.html', N'办公文仪呼叫/会议设备罗技罗技心音通860', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1233, N'￥328.00', N'派克(parker)IM系列纯黑丽雅金夹签字笔', N'http://www.360buy.com/product/124794.html', N'礼品礼品文具派克派克签字笔', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1234, N'￥268.00', N'派克(parker)IM系列纯黑丽雅白夹签字笔', N'http://www.360buy.com/product/124795.html', N'礼品礼品文具派克派克签字笔', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1235, N'￥268.00', N'派克(parker)IM系列蓝色白夹签字笔', N'http://www.360buy.com/product/124796.html', N'礼品礼品文具派克派克签字笔', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1236, N'￥38.00', N'倍轻松冷热敷袋', N'http://www.360buy.com/product/124819.html', N'保健器械养生器械倍轻松倍轻松冷热敷袋', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1237, N'￥109.00', N'凯仕达第二代跳舞毯 电脑USB十一键(颜色和图案随机）', N'http://www.360buy.com/product/124834.html', N'健身玩具炫舞毯凯仕达凯仕达跳舞毯', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1238, N'124846', N'松下（Panasonic）KX-FAC 283ECN/KX-FA83ECN 黑色墨粉（适用FLM668 653CN 513 543 613）', N'http://www.360buy.com/product/124846.html', N'办公打印墨粉松下松下KX--FA283E', N'195.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1239, N'124848', N'松下（Panasonic）KX-FA 84E CN 黑色硒鼓（适用FLM668 653CN 513 543 613）', N'http://www.360buy.com/product/124848.html', N'办公打印硒鼓松下松下KX-FA284E', N'558.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1240, N'124850', N'松下（Panasonic）KX-FAC 290ECN/KX-FAT 90ECN 黑色墨粉（适用KX-FL313CN 318CN）', N'http://www.360buy.com/product/124850.html', N'办公打印墨粉松下松下KX-FAT290E', N'196.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1241, N'124852', N'松下（Panasonic）KX-FAD 91ECN 黑色硒鼓（适用KX-FL313CN 318CN）', N'http://www.360buy.com/product/124852.html', N'办公打印硒鼓松下松下KX-FAD291E', N'596.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1242, N'124853', N'惠普（HP）LaserJet C9732A 黄色硒鼓（适用 Color LaserJet 5500 5550）', N'http://www.360buy.com/product/124853.html', N'办公打印硒鼓惠普惠普LaserJetC9732A', N'2279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1243, N'124855', N'松下（Panasonic）KX-FAC 294CN/KX-FAT 94CN 黑色墨粉（适用MB228 778CN 238 258）', N'http://www.360buy.com/product/124855.html', N'办公打印墨粉松下松下KX-FAC294CN', N'188.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1244, N'124856', N'惠普（HP）LaserJet C9733A 红色硒鼓（适用Color LaserJet 5500 5550）', N'http://www.360buy.com/product/124856.html', N'办公打印硒鼓惠普惠普LaserJetC9733A', N'2279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1245, N'124880', N'惠普（HP）LaserJet C9731A 青色硒鼓（适用 Color LaserJet 5500 5550）', N'http://www.360buy.com/product/124880.html', N'办公打印硒鼓惠普惠普LaserJetC9731A', N'2219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1246, N'124881', N'惠普（HP）LaserJet Q7551A 黑色硒鼓（适用LaserJet M3027MFP M3035MFP P3005）', N'http://www.360buy.com/product/124881.html', N'办公打印硒鼓惠普惠普LaserJetQ7551A', N'829.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1247, N'124927', N'漫步者（EDIFIER） S2.1 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/124927.html', N'时尚影音音箱漫步者漫步者S2.1', N'1399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1248, N'124933', N'漫步者（EDIFIER） R151T 5.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/124933.html', N'时尚影音音箱漫步者漫步者R151T', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1249, N'124934', N'漫步者（EDIFIER） R201T08 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/124934.html', N'时尚影音音箱漫步者漫步者R201T08', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1250, N'124935', N'漫步者（EDIFIER） E3300 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/124935.html', N'时尚影音音箱漫步者漫步者E3300', N'559.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1251, N'124938', N'漫步者（EDIFIER） E3200 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/124938.html', N'时尚影音音箱漫步者漫步者E3200', N'369.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1252, N'124941', N'品胜（PISEN）EN-EL11 数码相机电池', N'http://www.360buy.com/product/124941.html', N'数码配件电池/充电器品胜品胜EN-EL11', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1253, N'124944', N'品胜（PISEN）EN-EL4 数码相机电池', N'http://www.360buy.com/product/124944.html', N'数码配件电池/充电器品胜品胜EN-EL4', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1254, N'124947', N'漫步者（EDIFIER） R301T08 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/124947.html', N'时尚影音音箱漫步者漫步者R301T08', N'339.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1255, N'124964', N'爱普生（Epson）S051090 黑色硒鼓 C13S051090（适用N2500/2020）', N'http://www.360buy.com/product/124964.html', N'办公打印硒鼓爱普生爱普生S051090', N'999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1256, N'124987', N'赛睿（SteelSeries）QcK Heavy 鼠标垫', N'http://www.360buy.com/product/124987.html', N'外设产品鼠标垫SteelSeries赛睿QCK heavy', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1257, N'￥98.00', N'凯仕达电脑USB十键跳舞毯(颜色随机）', N'http://www.360buy.com/product/125048.html', N'健身玩具炫舞毯凯仕达凯仕达跳舞毯', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1258, N'125081', N'惠普（HP）C8767ZZ 853号 黑色墨盒（适用Photosmart B8338 Officejet K7108 Deskjet 9808）', N'http://www.360buy.com/product/125081.html', N'办公打印墨盒惠普惠普C8767ZZ853', N'255.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1259, N'￥4390.00', N'卡西欧Casio新飘韵数码钢琴PX-310', N'http://www.360buy.com/product/125104.html', N'乐器相关电子琴卡西欧卡西欧数码钢琴', N'3599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1260, N'125113', N'松下（Panasonic） ES3831K 便携男士电动剃须刀', N'http://www.360buy.com/product/125113.html', N'个护健康剃须刀松下松下ES3831K', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1261, N'125183', N'创新（Creative）Sound Blaster X-Fi Xtreme Audio 声卡（PCI-E接口，支持vista系统）', N'http://www.360buy.com/product/125183.html', N'电脑配件声卡/扩展卡创新创新Sound Blaster X-Fi Xtreme Audio', N'590.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1262, N'125187', N'创新（Creative）Sound Blaster 5.1 VX 声卡（PCI接口，支持vista系统）', N'http://www.360buy.com/product/125187.html', N'电脑配件声卡/扩展卡创新创新Sound Blaster 5.1 VX', N'145.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1263, N'125207', N'赛睿（SteelSeries）Ikari 光学游戏鼠标', N'http://www.360buy.com/product/125207.html', N'外设产品鼠标SteelSeries赛睿Ikari', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1264, N'125241', N'三星（SAMSUNG）SF-D560RA 黑色硒鼓（适用SF-560R 565PR）', N'http://www.360buy.com/product/125241.html', N'办公打印硒鼓三星三星SF-D560RA', N'527.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1265, N'125287', N'爱普生（Epson）LQ630K 黑色色带芯 C13S010076（适用LQ-630K 635k 730K）', N'http://www.360buy.com/product/125287.html', N'办公打印色带爱普生爱普生LQ630K', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1266, N'125288', N'爱普生（Epson）LQ630K 黑色色带 C13S015583（适用LQ-630K 635k 730K）', N'http://www.360buy.com/product/125288.html', N'办公打印色带爱普生爱普生LQ630K', N'20.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1267, N'￥5600.00', N'卡西欧Casio新飘韵数码钢琴PX-720', N'http://www.360buy.com/product/125296.html', N'乐器相关电子琴卡西欧卡西欧数码钢琴', N'4288.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1268, N'￥1090.00', N'卡西欧(Casio)Edifice系列男表EF-509D-7A', N'http://www.360buy.com/product/125334.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-509D-7A', N'649.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1269, N'125364', N'伊莱克斯（Electrolux） Z1570灵动吸尘器', N'http://www.360buy.com/product/125364.html', N'生活电器吸尘器伊莱克斯伊莱克斯Z1570', N'758.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1270, N'125369', N'伊莱克斯（Electrolux）Z1360吸尘器（松石绿）', N'http://www.360buy.com/product/125369.html', N'生活电器吸尘器伊莱克斯伊莱克斯Z1360', N'368.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1271, N'125386', N'飞利浦（Philips） FC6140 手持充电吸尘器', N'http://www.360buy.com/product/125386.html', N'生活电器吸尘器飞利浦飞利浦FC6140', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1272, N'125405', N'联想（Lenovo）LD2020 黑色硒鼓（适用LJ2000 M3120 M7120）', N'http://www.360buy.com/product/125405.html', N'办公打印硒鼓联想联想LD2020', N'598.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1273, N'125406', N'联想（Lenovo）LT2020 原装专用黑色墨粉（适用LJ2000 M3120 M7120）', N'http://www.360buy.com/product/125406.html', N'办公打印墨粉联想联想LT2020', N'318.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1274, N'125425', N'漫步者（EDIFIER） S2.1MKII 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/125425.html', N'时尚影音音箱漫步者漫步者S2.1', N'2499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1275, N'￥79.00', N'蚂蚁工坊生态教育玩具传奇ant007', N'http://www.360buy.com/product/125458.html', N'创意减压创意玩具蚂蚁工坊蚂蚁工坊生态教育玩具传奇', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1276, N'￥66.00', N'蚂蚁工坊生态教育玩具嘟嘟', N'http://www.360buy.com/product/125459.html', N'创意减压创意玩具蚂蚁工坊蚂蚁工坊工坊生态教育玩具嘟嘟', N'29.00')
GO
print 'Processed 1200 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1277, N'125499', N'友讯（D-Link）DWL-2100AP 802.11g/2.4GHz 108Mbps无线AP', N'http://www.360buy.com/product/125499.html', N'网络产品路由器D-Link友讯DWL-2100AP', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1278, N'￥98.00', N'卡西欧Casio电子琴专用琴包 大号', N'http://www.360buy.com/product/125511.html', N'乐器相关各式乐器配件卡西欧卡西欧电子琴专用琴包 大号', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1279, N'￥88.00', N'卡西欧Casio电子琴专用琴包 小号', N'http://www.360buy.com/product/125512.html', N'乐器相关各式乐器配件卡西欧卡西欧琴包', N'49.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1280, N'125526', N'惠普（HP）LaserJet C9730A 黑色硒鼓（适用LaserJet 5500 5550）', N'http://www.360buy.com/product/125526.html', N'办公打印硒鼓惠普惠普LaserJetC9730A', N'1599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1281, N'125528', N'松下（Panasonic）KX-FAC 276ACN/KX-FA 76A CN 黑色墨粉（适用523CN 558CN 503CN）', N'http://www.360buy.com/product/125528.html', N'办公打印墨粉松下松下KX－FA276A', N'158.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1282, N'125529', N'松下（Panasonic）KX-FA 78A CN 黑色硒鼓（适用523CN 558CN 503CN）', N'http://www.360buy.com/product/125529.html', N'办公打印硒鼓松下松下KX－FA278A', N'486.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1283, N'125530', N'松下（Panasonic）KX－FAD 95CN 黑色硒鼓（适用MB228 778CN 238 258）', N'http://www.360buy.com/product/125530.html', N'办公打印硒鼓松下松下KX－FAD295CN', N'488.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1284, N'125552', N'惠普（HP）C9352AA 22号彩色墨盒（适用 Officejet J3508 J3606 J3608 J5508）', N'http://www.360buy.com/product/125552.html', N'办公打印墨盒惠普惠普C9352AA22', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1285, N'125566', N'酷冷至尊（CoolerMaster）STB-3T4-E3 3转4硬盘散热器（占用3个光驱位 全铝带面板）', N'http://www.360buy.com/product/125566.html', N'电脑配件散热器酷冷至尊酷冷至尊STB-3T4-E3', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1286, N'125578', N'地狱火（FIRE-PAD)08款最新地狱火一代鼠标垫', N'http://www.360buy.com/product/125578.html', N'外设产品鼠标垫地狱火地狱火08款最新地狱火一代鼠标垫', N'10.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1287, N'125580', N'卡西欧（CASIO）MS-10VC-RD 10位计算器 玫红色', N'http://www.360buy.com/product/125580.html', N'办公文仪计算器卡西欧卡西欧MS-10VC-RD', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1288, N'125581', N'卡西欧（CASIO）MS-10VC-OE 10位计算器 亮橙色', N'http://www.360buy.com/product/125581.html', N'办公文仪计算器卡西欧卡西欧MS-10VC-OE', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1289, N'125582', N'卡西欧（CASIO）MS-10VC-BU 10位计算器 冰蓝色', N'http://www.360buy.com/product/125582.html', N'办公文仪计算器卡西欧卡西欧MS-10VC-BU', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1290, N'125583', N'卡西欧（CASIO）MS-10VC-GN 10位计算器 嫩绿色', N'http://www.360buy.com/product/125583.html', N'办公文仪计算器卡西欧卡西欧MS-10VC-GN', N'46.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1291, N'125584', N'卡西欧（CASIO）SL-100VC-BU 8位计算器 冰蓝色', N'http://www.360buy.com/product/125584.html', N'办公文仪计算器卡西欧卡西欧SL-100VC-BU', N'42.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1292, N'125585', N'卡西欧（CASIO）SL-100VC-OE 8位计算器 亮橙色', N'http://www.360buy.com/product/125585.html', N'办公文仪计算器卡西欧卡西欧SL-100VC-OE', N'42.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1293, N'125641', N'酷奇（cooskin）NU004笔记本电脑TPU键盘保护膜（适用于华硕A8,F8）', N'http://www.360buy.com/product/125641.html', N'电脑整机笔记本配件酷奇酷奇NU004', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1294, N'125694', N'罗技（Logitech）彩音通（H230) 耳机', N'http://www.360buy.com/product/125694.html', N'办公文仪呼叫/会议设备罗技罗技彩音通', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1295, N'125767', N'飞利浦（PHILIPS） SHM6103U /97 后挂式 电脑 耳麦', N'http://www.360buy.com/product/125767.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHM6103 耳机', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1296, N'125772', N'飞利浦（PHILIPS） SHM7410U /97 头戴式 电脑 耳麦', N'http://www.360buy.com/product/125772.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHM7410 耳机', N'96.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1297, N'125808', N'爱国者（aigo）迷你商务型L8202 U盘8GB（黑色）', N'http://www.360buy.com/product/125808.html', N'外设产品U盘爱国者爱国者L8202', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1298, N'￥31.00', N'乐扣470ML翻盖茶杯HPL931M', N'http://www.360buy.com/product/125836.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣茶杯', N'19.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1299, N'￥36.00', N'乐扣690ML翻盖茶杯HPL934M', N'http://www.360buy.com/product/125838.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣茶杯', N'22.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1300, N'￥21.00', N'乐扣470ML搅拌杯HPL931N', N'http://www.360buy.com/product/125839.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣搅拌杯', N'15.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1301, N'￥26.00', N'乐扣690ML摇摇杯HPL934N', N'http://www.360buy.com/product/125841.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣摇摇杯', N'16.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1302, N'￥47.00', N'乐扣500ML运动杯HPP721', N'http://www.360buy.com/product/125842.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣运动杯', N'29.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1303, N'￥68.00', N'乐扣700ML运动杯HPP722', N'http://www.360buy.com/product/125845.html', N'水具酒具塑料杯乐扣乐扣乐扣乐扣运动杯', N'36.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1304, N'125858', N'TP-LINK TL-WN951N 300M无线PCI网卡', N'http://www.360buy.com/product/125858.html', N'网络产品网卡TP-LINKTP-LinkTL－WN951N', N'188.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1305, N'125864', N'TP-LINK TL-R1660+ 16口多功能宽带路由器', N'http://www.360buy.com/product/125864.html', N'网络产品路由器TP-LINKTP-LINKTL-R1660+', N'318.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1306, N'125866', N'TP-LINK TL-R4148 高速宽带路由器', N'http://www.360buy.com/product/125866.html', N'网络产品路由器TP-LINKTP-LINKTL-R4148', N'661.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1307, N'125868', N'TP-LINK TL-R478+ 多WAN口高速宽带路由器', N'http://www.360buy.com/product/125868.html', N'网络产品路由器TP-LINKTP-LINKTL-R478+', N'424.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1308, N'125870', N'TP-LINK TL-R4238 多WAN口宽带路由器', N'http://www.360buy.com/product/125870.html', N'网络产品路由器TP-LINKTP-LINKTL-R4238双WAN口', N'759.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1309, N'125875', N'TP-LINK TL-SL1351 48+3G千兆上联非网管交换机', N'http://www.360buy.com/product/125875.html', N'网络产品交换机TP-LINKTP-LINKTL-SL1351', N'1455.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1310, N'125876', N'品胜（PISEN）NB6L 数码相机电池', N'http://www.360buy.com/product/125876.html', N'数码配件电池/充电器品胜品胜NB6L', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1311, N'125878', N'TP-LINK TL-SF1048S 48口百兆非网管交换机', N'http://www.360buy.com/product/125878.html', N'网络产品交换机TP-LINKTP-LINKTL-SF1048s', N'1023.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1312, N'125888', N'圣奇仕 高品质摄像机/相机电池 SONY FR1 适用于索尼DSC-FX88/FX77/P200/V3/T30/T50/G1', N'http://www.360buy.com/product/125888.html', N'数码配件电池/充电器圣奇仕圣奇仕SONY FR1', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1313, N'125890', N'圣奇仕(sunqs) S008E 高品质数码电池 适用于松下FX30/FX33/FX55/FX36/FX520/FX500等', N'http://www.360buy.com/product/125890.html', N'数码配件电池/充电器圣奇仕圣奇仕S008E', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1314, N'125893', N'TP-LINK TL-SG3109 8+1口全千兆二层网管交换机', N'http://www.360buy.com/product/125893.html', N'网络产品交换机TP-LINKTP-LINKTL-SG3109 8+1G千兆网管交换机', N'2137.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1315, N'125895', N'圣奇仕(sunqs) SONY NP-FT1 高品质数码电池 适用于索尼T1/T11/T3/L1/T33/M1/M2/FT5/T9/T10', N'http://www.360buy.com/product/125895.html', N'数码配件电池/充电器圣奇仕圣奇仕NP-FT1', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1316, N'125911', N'飞毛腿(SCUD)BL-6F精品电池适用于诺基亚(NOKIA)N95 8G/6788/6788i/N78/N79等机型', N'http://www.360buy.com/product/125911.html', N'手机配件手机电池飞毛腿飞毛腿BL-6F', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1317, N'125912', N'飞毛腿(SCUD)BP-6MT精品电池适用于诺基亚(NOKIA)N81/6720C/E51/N82/N82 8G等机型', N'http://www.360buy.com/product/125912.html', N'手机配件手机电池飞毛腿飞毛腿BP-6MT', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1318, N'￥7000.00', N'梅花(TITONI)推进系列女表23950SY-271', N'http://www.360buy.com/product/125957.html', N'瑞士品牌梅花 Titoni梅花梅花女表', N'5950.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1319, N'125970', N'森海塞尔（Sennheiser）PC121 耳机', N'http://www.360buy.com/product/125970.html', N'时尚影音耳机/耳麦森海塞尔森海塞尔PC121', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1320, N'125971', N'森海塞尔（Sennheiser）耳麦 PC131 经典高品质时尚耳麦', N'http://www.360buy.com/product/125971.html', N'时尚影音耳机/耳麦森海塞尔森海塞尔PC131', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1321, N'126085', N'惠普（HP）Q8893AA 28号彩色墨盒+25张高级相纸（适用Officejet 5608 5609 567）', N'http://www.360buy.com/product/126085.html', N'办公打印墨盒惠普惠普Q8893AA28', N'135.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1322, N'￥20.90', N'乐扣600ML长方形保鲜盒HPL811', N'http://www.360buy.com/product/126091.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'20.80')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1323, N'126109', N'中晶(Microtek) ScanMaker i800 Plus 扫描仪', N'http://www.360buy.com/product/126109.html', N'办公打印扫描仪中晶中晶ScanMaker i800', N'3849.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1324, N'126160', N'酷冷至尊（CoolerMaster）战斧400电源（额定380W/超长线材/静音12cm合金轴承风扇/黑烤漆）', N'http://www.360buy.com/product/126160.html', N'电脑配件电源酷冷至尊酷冷至尊战斧400W', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1325, N'￥24.40', N'乐扣乐扣850ML长方形保鲜盒HPL808', N'http://www.360buy.com/product/126173.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'22.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1326, N'￥51.60', N'乐扣乐扣1.6L长方形保鲜盒HPL824C', N'http://www.360buy.com/product/126174.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'36.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1327, N'￥62.00', N'乐扣乐扣 2.6L长方形保鲜盒HPL826C', N'http://www.360buy.com/product/126175.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'42.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1328, N'￥96.30', N'乐扣乐扣（LOCK.LOCK）长方形保鲜盒HPL834C 3.9L', N'http://www.360buy.com/product/126176.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'62.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1329, N'￥19.50', N'乐扣乐扣700ML圆形保鲜盒HPL932D', N'http://www.360buy.com/product/126177.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1330, N'126216', N'突破（TOP）基准至强系列插座 5联3米 （过载保护+防浪涌+倍能开关+超能夜光指示+双动门）TZ-Y/TZ-C0721K5', N'http://www.360buy.com/product/126216.html', N'生活电器插座突破突破TZ-Y/TZ-C0721K5', N'97.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1331, N'126217', N'突破（TOP）基准至强系列插座 6联3米（倍能开关+过载保护+防雷击+超能夜光指示+双动门）TZ-Y/TZ-C0721K6', N'http://www.360buy.com/product/126217.html', N'生活电器插座突破突破TZ-Y/TZ-C0721K6', N'106.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1332, N'126224', N'突破（TOP）基准至强系列插座 4联3米（过载保护+防雷击+倍能开关+超能夜光显示+双动门）TZ-Y/TZ-C0721K4', N'http://www.360buy.com/product/126224.html', N'生活电器插座突破突破TZ-Y/TZ-C0721K4', N'81.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1333, N'126234', N'品胜（PISEN）LP-E5 数码相机电池', N'http://www.360buy.com/product/126234.html', N'数码配件电池/充电器品胜品胜LP-E5', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1334, N'126284', N'金士顿（Kingston）DDR2 800 2G 台式机内存', N'http://www.360buy.com/product/126284.html', N'电脑配件内存金士顿金士顿DDR2 800 2G', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1335, N'126390', N'雷蛇（Razer）黑腹狼蛛 Lycosa 游戏键盘', N'http://www.360buy.com/product/126390.html', N'外设产品键盘Razer雷蛇Lycosa', N'429.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1336, N'￥149.00', N'凯仕达TV的士高方型电视跳舞毯', N'http://www.360buy.com/product/126421.html', N'健身玩具炫舞毯凯仕达凯仕达跳舞毯', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1337, N'126439', N'麦克赛尔（maxell）DVD-RW 2速 8CM 30分钟 台产 单片装 可擦写 刻录盘', N'http://www.360buy.com/product/126439.html', N'办公文仪刻录碟片/附件maxell麦克赛尔DVD-RW 2速', N'9.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1338, N'126502', N'圣奇仕(sunqs) EL10 高品质数码电池(和富士NP45，奥巴40B通用) 适用于尼康S200/S210/S220/S230等', N'http://www.360buy.com/product/126502.html', N'数码配件电池/充电器圣奇仕圣奇仕EL10', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1339, N'126503', N'圣奇仕(sunqs) 佳能LP-E5 高品质数码电池(佳能450D专用电池) 适用于佳能450D/EOS500D等', N'http://www.360buy.com/product/126503.html', N'数码配件电池/充电器圣奇仕圣奇仕LP-E5', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1340, N'￥1290.00', N'卡西欧(Casio)ANALOGUE系列男表BEM-501L-1A', N'http://www.360buy.com/product/126505.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表BEM-501L-1A', N'739.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1341, N'￥1290.00', N'卡西欧(Casio)ANALOGUE系列男表BEM-501L-7A', N'http://www.360buy.com/product/126506.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表BEM-501L-7A', N'558.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1342, N'126512', N'品胜（PISEN）Li.50B 数码电池便携充电器', N'http://www.360buy.com/product/126512.html', N'数码配件电池/充电器品胜品胜Li.50B', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1343, N'￥189.00', N'凯仕达USB电脑加厚拉链跳舞毯（30mm最厚 珍珠棉内层）', N'http://www.360buy.com/product/126521.html', N'健身玩具炫舞毯凯仕达凯仕达跳舞毯', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1344, N'126580', N'尼康（Nikon） AF DX 10.5mm f/2.8G ED 自动对焦鱼眼镜头', N'http://www.360buy.com/product/126580.html', N'摄影摄像镜头尼康尼康AF DX 10.5mm f/2.8G ED', N'5099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1345, N'126581', N'尼康（Nikon） AF-S DX 16-85mm f/3.5-5.6G ED VR 防抖镜头', N'http://www.360buy.com/product/126581.html', N'摄影摄像镜头尼康尼康16-85mm f/3.5-5.6G ED VR', N'4799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1346, N'126588', N'惠普（hp）ED495AA#AB2 90W笔记本电源适配器', N'http://www.360buy.com/product/126588.html', N'电脑整机笔记本配件惠普惠普ED495AA', N'255.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1347, N'126651', N'惠普（hp）ED494 65W笔记本电源适配器', N'http://www.360buy.com/product/126651.html', N'电脑整机笔记本配件惠普惠普ED494', N'228.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1348, N'126688', N'圣奇仕(sunqs) 索尼BD1 高品质数码电池 适用于索尼T200/T300/T70/T77/T2/T500/T700等', N'http://www.360buy.com/product/126688.html', N'数码配件电池/充电器圣奇仕圣奇仕BD1', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1349, N'126697', N'圣奇仕(sunqs) 富士NP50 高品质数码电池 适用于富士F75/F50fd/F100fd/F60fd/F200', N'http://www.360buy.com/product/126697.html', N'数码配件电池/充电器圣奇仕圣奇仕NP50', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1350, N'126698', N'圣奇仕(sunqs) 索尼NP-BG1 高品质数码电池 适用于索尼DSC-H10/H20/H50/DSC-W150/W210/W220/W290/W300等', N'http://www.360buy.com/product/126698.html', N'数码配件电池/充电器圣奇仕圣奇仕NP-BG1', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1351, N'126707', N'圣奇仕 高品质摄像机/相机电池 三星0937 适用于三星L830 /L730/i8 / NV33 /NV4/ST10/CL5(PL10)', N'http://www.360buy.com/product/126707.html', N'数码配件电池/充电器圣奇仕圣奇仕三星0937', N'50.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1352, N'126708', N'圣奇仕 高品质摄像机/相机电池 三星SLB-10A 适用于三星NV9 L100/110/210/310W PL50', N'http://www.360buy.com/product/126708.html', N'数码配件电池/充电器圣奇仕圣奇仕SLB-10A', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1353, N'126709', N'圣奇仕(sunqs) 卡西欧NP-20 高品质数码电池 适用于卡西欧EX-S1/S2/S3/S100/S20/Z3/Z4/Z5//Z60/S500等', N'http://www.360buy.com/product/126709.html', N'数码配件电池/充电器圣奇仕圣奇仕NP-20', N'50.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1354, N'126711', N'佳能（Canon）FAX-L160 激光普通纸传真机（打印 复印 传真）', N'http://www.360buy.com/product/126711.html', N'办公打印传真机佳能佳能FAX-L160', N'2099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1355, N'126735', N'惠普（HP）LaserJet M1319F 黑白激光一体机（打印 复印 扫描 传真）', N'http://www.360buy.com/product/126735.html', N'办公打印一体机惠普惠普LaserJetM1319F', N'1899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1356, N'126744', N'飞利浦（PHILIPS） SHM1000 电脑 麦克风', N'http://www.360buy.com/product/126744.html', N'时尚影音麦克风飞利浦飞利浦电脑麦克风 SHM1000', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1357, N'126759', N'铼德（RITEK）CD-R 52速 繁花系列 桶装50片 刻录盘', N'http://www.360buy.com/product/126759.html', N'办公文仪刻录碟片/附件铼德铼德CD-R52X', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1358, N'126784', N'飞利浦（PHILIPS） SHE8500/98 入耳式 耳塞 黑色', N'http://www.360buy.com/product/126784.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHE8500 耳机', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1359, N'126787', N'飞利浦（PHILIPS） SHE9800 /98 入耳式 耳塞 黑色', N'http://www.360buy.com/product/126787.html', N'时尚影音耳机/耳麦飞利浦飞利浦SHE9800 耳机', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1360, N'126789', N'飞利浦（Philips) HQ851 剃须刀 白色', N'http://www.360buy.com/product/126789.html', N'个护健康剃须刀飞利浦飞利浦HQ851', N'170.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1361, N'126791', N'飞利浦（Philips) HQ852 时尚系列充电式剃须刀 蓝色', N'http://www.360buy.com/product/126791.html', N'个护健康剃须刀飞利浦飞利浦HQ852', N'178.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1362, N'126811', N'秋叶原（CHOSERL）Q539 普及版HDMI数字高清线 3米', N'http://www.360buy.com/product/126811.html', N'外设产品线缆秋叶原秋叶原Q539', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1363, N'126817', N'森海塞尔（Sennheiser）耳机 HD201 封闭动圈式高品质耳机', N'http://www.360buy.com/product/126817.html', N'时尚影音耳机/耳麦森海塞尔耳 机Sennheiser', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1364, N'126824', N'卡西欧（CASIO）FC-200V 金融理财计算器', N'http://www.360buy.com/product/126824.html', N'办公文仪计算器卡西欧卡西欧FC-200V', N'298.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1365, N'126833', N'威刚（ADATA）万紫千红 DDR2 800 2G台式机内存', N'http://www.360buy.com/product/126833.html', N'电脑配件内存威刚威刚DDR2 800 2G', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1366, N'￥366.00', N'芭比 婚礼蛋糕礼盒玩具', N'http://www.360buy.com/product/126841.html', N'娃娃玩具芭比娃娃芭比芭比婚礼蛋糕礼盒玩具', N'209.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1367, N'126869', N'三堡（SANBAO）HT-568 RJ45+RJ11双用网线钳/压线钳/可压电话线', N'http://www.360buy.com/product/126869.html', N'外设产品电脑工具三堡三堡HT-568', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1368, N'126870', N'三堡（SANBAO）HT-568R 带助力杆RJ45+RJ11双用网钳/压线钳/电话线/网线', N'http://www.360buy.com/product/126870.html', N'外设产品电脑工具三堡三堡HT-568R', N'195.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1369, N'126871', N'三堡（SANBAO）HT-L2180 压线钳/网线钳/剥线钳 三合一', N'http://www.360buy.com/product/126871.html', N'外设产品电脑工具三堡三堡HT-L2180', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1370, N'127021', N'北美电器（ACA） 电烤箱 VTO－9F (烤箱容量：9L)', N'http://www.360buy.com/product/127021.html', N'厨房电器电烤箱ACAACAVTO－9F', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1371, N'127023', N'北美电器（ACA）ATO-M16A 16L 电烤箱（黑色）', N'http://www.360buy.com/product/127023.html', N'厨房电器电烤箱ACA北美电器ATO－M16A', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1372, N'127079', N'拜亚动力 (beyerdynamic) DT235 头戴式耳机 黑色', N'http://www.360buy.com/product/127079.html', N'时尚影音耳机/耳麦拜亚动力拜亚动力DT235', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1373, N'127083', N'拜亚动力 (beyerdynamic) DT235 头戴式耳机 白色', N'http://www.360buy.com/product/127083.html', N'时尚影音耳机/耳麦拜亚动力拜亚动力DT235', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1374, N'127111', N'肯高（Kenko）MC UV 52mm 多层镀膜UV滤镜', N'http://www.360buy.com/product/127111.html', N'摄影摄像滤镜肯高肯高MC UV 52mm', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1375, N'127134', N'佳能（Canon）腾彩PIXMA iP100 喷墨照片打印机', N'http://www.360buy.com/product/127134.html', N'办公打印打印机佳能佳能PIXMAiP100', N'1799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1376, N'127148', N'飞利浦（Philips）HR2006 搅拌机 蓝白色', N'http://www.360buy.com/product/127148.html', N'厨房电器料理/榨汁机飞利浦飞利浦HR2006', N'209.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1377, N'127174', N'安普（AMP） 219420-2 超五类四对屏蔽双绞线 低烟无卤外皮 305米/箱', N'http://www.360buy.com/product/127174.html', N'外设产品线缆安普安普10-0219413-2', N'1099.00')
GO
print 'Processed 1300 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1378, N'127208', N'惠普（HP）USB接口 银燕鼠标 惠普原装', N'http://www.360buy.com/product/127208.html', N'外设产品鼠标惠普惠普鼠标', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1379, N'127235', N'中控（ZK Software）K18 考勤机', N'http://www.360buy.com/product/127235.html', N'办公文仪考勤机中控中控K18', N'268.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1380, N'127239', N'利仁（Liven）BC-11薄饼铛', N'http://www.360buy.com/product/127239.html', N'厨房电器电饼铛/烧烤盘利仁利仁BC-11', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1381, N'127240', N'思科（Cisco）RV042-CN 4端口VPN路由器', N'http://www.360buy.com/product/127240.html', N'网络产品路由器思科思科RV042-CN', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1382, N'￥218.00', N'欧司朗（OSRAM）LED露营灯', N'http://www.360buy.com/product/127281.html', N'灯具应急灯/手电欧司朗OSRAM欧司朗OSRAM露营灯', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1383, N'127287', N'九州风神（DEEPCOOL）ICEDISK100 硬盘散热器 适用于3.5英寸硬盘散热', N'http://www.360buy.com/product/127287.html', N'电脑配件散热器九州风神九州风神ICEDISK100 硬盘散热器', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1384, N'127288', N'九州风神（DEEPCOOL）ICEDISK200 硬盘散热器 适用于3.5英寸硬盘散热', N'http://www.360buy.com/product/127288.html', N'电脑配件散热器九州风神九州风神ICEDISK200 硬盘散热器', N'80.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1385, N'￥79.00', N'振能不锈钢圆管柄勺铲5件套0009', N'http://www.360buy.com/product/127305.html', N'烹饪锅具厨用杂件振能振能圆管柄勺铲5件套', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1386, N'￥169.00', N'振能24cm金奥鸣音电水壶10091', N'http://www.360buy.com/product/127307.html', N'烹饪锅具水壶振能振能电水壶', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1387, N'￥199.00', N'振能24cm新日式复底蒸锅18250', N'http://www.360buy.com/product/127312.html', N'烹饪锅具蒸锅振能振能复底蒸锅', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1388, N'127328', N'新贵（NEWMEN）掌中宝 TK-011 迷你数字键盘', N'http://www.360buy.com/product/127328.html', N'外设产品键盘新贵新贵TK－011', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1389, N'￥126.00', N'振能24cm金奥呜音水壶1009', N'http://www.360buy.com/product/127353.html', N'烹饪锅具水壶振能振能水壶', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1390, N'127360', N'佳能（Canon）CRG-309 黑色硒鼓（适用Canon LBP3500）', N'http://www.360buy.com/product/127360.html', N'办公打印硒鼓佳能佳能CRG-309', N'1160.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1391, N'￥186.00', N'振能26cm复底水壶10200', N'http://www.360buy.com/product/127370.html', N'烹饪锅具水壶振能振能水壶', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1392, N'127420', N'北美电器（ACA）MB600 面包机 900g 明朗黄', N'http://www.360buy.com/product/127420.html', N'厨房电器面包机ACAacaMB600', N'339.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1393, N'127435', N'美固（MOBICOOL） 便携式车载 电子冷热箱/冰箱 T-07 DC（7L）(车载冰箱）宝石蓝', N'http://www.360buy.com/product/127435.html', N'电子电器车载冰箱美固美固T07', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1394, N'127438', N'美固（MOBICOOL）车载电子冷热箱/冰箱T-20 DC（20L）（汽车冰箱）宝石蓝', N'http://www.360buy.com/product/127438.html', N'电子电器车载冰箱美固美固T20', N'388.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1395, N'127439', N'美固（MOBICOOL）车家两用电子冷热箱/冰箱 F-15 AC/DC（15L 珍珠白）（车载冰箱）', N'http://www.360buy.com/product/127439.html', N'电子电器车载冰箱美固美固F15', N'498.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1396, N'127454', N'佳能（Canon） 72mm 普通滤镜', N'http://www.360buy.com/product/127454.html', N'摄影摄像滤镜佳能佳能72mm', N'388.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1397, N'127557', N'香山EB9004T-S167电子秤 体重秤', N'http://www.360buy.com/product/127557.html', N'个护健康健康秤/厨房秤香山香山EB9004T-S167', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1398, N'127641', N'惠普（HP）C9396A 88XL 黑色墨盒（适用Officejet Pro K5400dn K8600 L7580 L7590 8600 Plus）', N'http://www.360buy.com/product/127641.html', N'办公打印墨盒惠普惠普88XL', N'229.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1399, N'127642', N'惠普（HP）C9391A 88XL青色墨盒（适用Officejet Pro K5400dn K8600 L7580 L7590 8600Plus）', N'http://www.360buy.com/product/127642.html', N'办公打印墨盒惠普惠普88XL', N'168.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1400, N'127643', N'惠普（HP）C9392A 88XL 品红色墨盒（适用Officejet ProK5400dn K8600 L7580 L7590 8600Plus）', N'http://www.360buy.com/product/127643.html', N'办公打印墨盒惠普惠普88XL', N'168.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1401, N'127644', N'惠普（HP）C9393A 88XL 黄色墨盒（适用Officejet Pro K5400dn K8600 L7580/L7590 8600Plus）', N'http://www.360buy.com/product/127644.html', N'办公打印墨盒惠普惠普88XL', N'168.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1402, N'127717', N'索尼（SONY）CD-R 48速 700M 10片盒装 刻录盘', N'http://www.360buy.com/product/127717.html', N'办公文仪刻录碟片/附件索尼索尼CD- R 48速', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1403, N'127768', N'Double A A4 80克复印纸 5包/箱', N'http://www.360buy.com/product/127768.html', N'办公文仪纸类Double ADouble AA4', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1404, N'127965', N'安吉尔（Angel）台式单温饮水机 116TK', N'http://www.360buy.com/product/127965.html', N'生活电器饮水机安吉尔安吉尔116TK', N'135.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1405, N'￥499.00', N'Zippo打火机蓝冰经典爱心情书35110', N'http://www.360buy.com/product/127995.html', N'礼品火机烟具Zippo芝宝打火机', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1406, N'￥499.00', N'Zippo打火机银色经典爱心情书35110', N'http://www.360buy.com/product/127996.html', N'礼品火机烟具Zippo芝宝打火机', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1407, N'￥299.00', N'Zippo打火机仿古银祝福 Blessing-B', N'http://www.360buy.com/product/127997.html', N'礼品火机烟具Zippo芝宝打火机', N'206.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1408, N'￥408.00', N'Zippo打火机复刻仿古铜闪闪红星', N'http://www.360buy.com/product/128000.html', N'礼品火机烟具Zippo芝宝打火机', N'362.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1409, N'128046', N'惠普（HP）ScanJet 5590 扫描仪', N'http://www.360buy.com/product/128046.html', N'办公打印扫描仪惠普惠普ScanJet5590', N'4499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1410, N'128082', N'美的（Midea）MU-3（875CB）净水桶', N'http://www.360buy.com/product/128082.html', N'生活电器饮水机美的美的MU-3', N'498.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1411, N'128085', N'雷蛇（Razer）犰狳 鼠标固线器', N'http://www.360buy.com/product/128085.html', N'外设产品游戏设备Razer雷蛇犰狳', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1412, N'128123', N'美的（Midea）MT-3（870CB）净水桶', N'http://www.360buy.com/product/128123.html', N'生活电器饮水机美的美的MT-3', N'498.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1413, N'128152', N'电音（Danyin） DT301 耳麦 头戴式 双插头 线控 黑色', N'http://www.360buy.com/product/128152.html', N'时尚影音耳机/耳麦硕美科硕美科DT301', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1414, N'￥798.00', N'Zippo打火机黑冰天使之翼飞的更高', N'http://www.360buy.com/product/128175.html', N'礼品火机烟具Zippo芝宝打火机', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1415, N'￥798.00', N'Zippo打火机仿古银天使之翼飞的更高', N'http://www.360buy.com/product/128176.html', N'礼品火机烟具Zippo芝宝打火机', N'279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1416, N'128215', N'友讯（D-Link）DIR-615 300M无线路由器（黑色）', N'http://www.360buy.com/product/128215.html', N'网络产品路由器D-Link友讯DIR-615', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1417, N'128216', N'友讯（D-Link）DIR-635无线路由器', N'http://www.360buy.com/product/128216.html', N'网络产品路由器D-Link友讯DIR-635', N'439.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1418, N'128217', N'友讯（D-Link）DIR-655 300M三天线无线路由器', N'http://www.360buy.com/product/128217.html', N'网络产品路由器D-Link友讯DIR-655', N'539.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1419, N'128256', N'磊科（Netcore）NS118 8口百兆以太网铁壳交换机', N'http://www.360buy.com/product/128256.html', N'网络产品交换机磊科磊科NS118', N'82.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1420, N'128261', N'磊科（Netcore）NW330 54M USB无线网卡', N'http://www.360buy.com/product/128261.html', N'网络产品网卡磊科磊科NW330', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1421, N'128288', N'金河田（Golden field）飓风-8203R 电脑机箱 红黑色（含额定250W电源）', N'http://www.360buy.com/product/128288.html', N'电脑配件机箱金河田金河田8203R', N'239.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1422, N'128291', N'金河田（Golden field）电脑机箱 炫豪-2061B 银黑色（含劲霸S3008额定230W电源）', N'http://www.360buy.com/product/128291.html', N'电脑配件机箱金河田金河田2061B', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1423, N'128332', N'TDK DVD+R 16速 4.7G 肯定系列 桶装10片 刻录盘', N'http://www.360buy.com/product/128332.html', N'办公文仪刻录碟片/附件TDKTDKDVD+R 16速', N'21.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1424, N'128333', N'TDK DVD-R 16速 4.7G 肯定系列 桶装10片 刻录盘', N'http://www.360buy.com/product/128333.html', N'办公文仪刻录碟片/附件TDKTDKDVD-R 16速', N'21.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1425, N'￥268.00', N'海伯瑞3-5KG自然型可调光水晶盐灯', N'http://www.360buy.com/product/128413.html', N'灯具氛围照明海伯瑞海伯瑞水晶盐灯', N'115.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1426, N'128439', N'TDK DVD-R 16速 4.7G 彩盘系列 红面 桶装50片 刻录盘', N'http://www.360buy.com/product/128439.html', N'办公文仪刻录碟片/附件TDKTDKDVD-R 16速', N'73.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1427, N'128496', N'惠普（HP）CD941AA 816号+817号 黑彩墨盒套装（适用F2238 2288 4308 7268）', N'http://www.360buy.com/product/128496.html', N'办公打印墨盒惠普惠普CD941AA', N'279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1428, N'128497', N'惠普（HP）CD940AA 816号 黑色墨盒双包超值装(适用 D2468 4308 4338)', N'http://www.360buy.com/product/128497.html', N'办公打印墨盒惠普惠普CD940AA 816', N'245.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1429, N'128520', N'奔腾(POVOS)台式温热型饮水机PY-R651', N'http://www.360buy.com/product/128520.html', N'生活电器饮水机奔腾奔腾PY－R651', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1430, N'128525', N'森海塞尔（Sennheiser）耳机 HD600 开放动圈式高保真Hi-Fi耳机', N'http://www.360buy.com/product/128525.html', N'时尚影音耳机/耳麦森海塞尔森海塞尔HD600', N'2299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1431, N'128562', N'亚都（YADU）KJG1201S 空气净化器', N'http://www.360buy.com/product/128562.html', N'生活电器净化器亚都亚都1201S', N'419.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1432, N'￥128.00', N'凯仕达电脑电视usb/TV双用跳舞毯', N'http://www.360buy.com/product/128614.html', N'健身玩具炫舞毯凯仕达凯仕达跳舞毯', N'56.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1433, N'128778', N'风王（Coido）胎压计6074', N'http://www.360buy.com/product/128778.html', N'电子电器胎压计风王风王6074', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1434, N'128781', N'品胜（PISEN）SLB-10A 锂电池充电器', N'http://www.360buy.com/product/128781.html', N'数码配件电池/充电器品胜品胜SLB-10A', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1435, N'128783', N'品胜（PISEN）“快级充”快速充电器', N'http://www.360buy.com/product/128783.html', N'数码配件电池/充电器品胜品胜“快级充”', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1436, N'128850', N'威宝（Verbatim）DVD-R 16速 4.7G 台产 全球包装 单片厚盒装10片 刻录盘', N'http://www.360buy.com/product/128850.html', N'办公文仪刻录碟片/附件Verbatim威宝DVD-R 16速', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1437, N'￥3168.00', N'派克（parker）08款卓尔系列亮金金夹墨水笔（18K）', N'http://www.360buy.com/product/128873.html', N'礼品礼品文具派克派克墨水笔', N'1899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1438, N'￥3888.00', N'派克(parker)08款卓尔系列银格子墨水笔(18K)', N'http://www.360buy.com/product/128875.html', N'礼品礼品文具派克派克墨水笔', N'2199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1439, N'￥3168.00', N'派克（parker）08款卓尔系列巧克力金夹墨水笔（18K）', N'http://www.360buy.com/product/128876.html', N'礼品礼品文具派克派克墨水笔', N'1799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1440, N'￥2380.00', N'派克(parker)08款卓尔纯银格子纹宝珠笔', N'http://www.360buy.com/product/128877.html', N'礼品礼品文具派克派克墨水笔', N'1380.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1441, N'￥1078.00', N'派克(parker)08款卓尔钢杆白夹墨水笔', N'http://www.360buy.com/product/128880.html', N'礼品礼品文具派克派克墨水笔', N'619.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1442, N'￥1398.00', N'派克(parker)08款卓尔系列磨砂金夹墨水笔', N'http://www.360buy.com/product/128885.html', N'礼品礼品文具派克派克墨水笔', N'729.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1443, N'￥1398.00', N'派克（parker）08款卓尔系列磨砂黑杆白夹墨水笔', N'http://www.360buy.com/product/128886.html', N'礼品礼品文具派克派克墨水笔', N'729.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1444, N'￥2178.00', N'派克（parker）08款卓尔系列亮金金夹宝珠笔', N'http://www.360buy.com/product/128913.html', N'礼品礼品文具派克派克宝珠笔', N'1219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1445, N'￥2178.00', N'派克(parker)08卓尔系列巧克力金夹宝珠笔', N'http://www.360buy.com/product/128914.html', N'礼品礼品文具派克派克宝珠笔', N'1225.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1446, N'￥2178.00', N'派克（parker）08款卓尔系列亮银白夹宝珠笔', N'http://www.360buy.com/product/128916.html', N'礼品礼品文具派克派克宝珠笔', N'1499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1447, N'￥2178.00', N'派克(parker)08款卓尔系列碳黑白夹宝珠笔', N'http://www.360buy.com/product/128917.html', N'礼品礼品文具派克派克宝珠笔', N'1399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1448, N'￥1298.00', N'派克(parker)08款卓尔系列纯黑丽雅金夹宝珠笔', N'http://www.360buy.com/product/128918.html', N'礼品礼品文具派克派克宝珠笔', N'975.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1449, N'￥1298.00', N'派克（parker）08款卓尔系列宝石红金夹宝珠笔', N'http://www.360buy.com/product/128919.html', N'礼品礼品文具派克派克宝珠笔', N'858.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1450, N'￥858.00', N'派克(parker)08款卓尔系列钢杆白夹宝珠笔', N'http://www.360buy.com/product/128921.html', N'礼品礼品文具派克派克宝珠笔', N'469.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1451, N'￥1298.00', N'派克（parker）08款卓尔系列海洋蓝白夹宝珠笔', N'http://www.360buy.com/product/128922.html', N'礼品礼品文具派克派克宝珠笔', N'769.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1452, N'￥1298.00', N'派克(parker)08款卓尔系列纯黑丽雅白夹宝珠笔', N'http://www.360buy.com/product/128923.html', N'礼品礼品文具派克派克宝珠笔', N'717.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1453, N'￥1078.00', N'派克（parker）08款卓尔系列磨砂黑杆金夹宝珠笔', N'http://www.360buy.com/product/128925.html', N'礼品礼品文具派克派克宝珠笔', N'609.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1454, N'￥1078.00', N'派克(parker)08款卓尔系列磨砂黑杆白夹宝珠笔', N'http://www.360buy.com/product/128927.html', N'礼品礼品文具派克派克宝珠笔', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1455, N'￥2188.00', N'派克(parker)08款卓尔系列纯黑丽雅金夹墨水笔(18K)', N'http://www.360buy.com/product/128928.html', N'礼品礼品文具派克派克墨水笔', N'1199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1456, N'￥3168.00', N'派克(parker)08款卓尔系列碳黑白夹墨水笔(18K)', N'http://www.360buy.com/product/128930.html', N'礼品礼品文具派克派克墨水笔', N'1899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1457, N'128953', N'龙的（LONGDE） 吸尘器 NK-115K', N'http://www.360buy.com/product/128953.html', N'生活电器吸尘器龙的龙的NK-115K', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1458, N'￥1290.00', N'卡西欧（Casio）EDIFICE系列男式手表 EF-500BP-1A', N'http://www.360buy.com/product/128959.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-500BP-1A', N'646.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1459, N'129028', N'品胜（PISEN）LP-E5数码电池便携充电器', N'http://www.360buy.com/product/129028.html', N'数码配件电池/充电器品胜品胜LP-E5', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1460, N'129029', N'宝罗（Paull）数码包BL-5047（黑色）', N'http://www.360buy.com/product/129029.html', N'数码配件数码包宝罗宝罗BL-5047', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1461, N'129030', N'宝罗（Paull）数码包BL-1001（黑色） 适用于500D/450D/D90/D3000等', N'http://www.360buy.com/product/129030.html', N'数码配件数码包宝罗宝罗BL-1001', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1462, N'129153', N'麦克赛尔（Maxell）MX－R065-08 超低炫音 入耳式 耳机', N'http://www.360buy.com/product/129153.html', N'时尚影音耳机/耳麦maxell麦克赛尔MX－R065-08', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1463, N'129155', N'麦克赛尔（Maxell）MX－R060-08 超低炫音 入耳式 耳机', N'http://www.360buy.com/product/129155.html', N'时尚影音耳机/耳麦maxell麦克赛尔MX－R060-08', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1464, N'129184', N'松下（Panasonic）XQB28-P200W 全自动波轮洗衣机（白色）', N'http://www.360buy.com/product/129184.html', N'大 家 电洗衣机松下松下XQB28-P200W', N'1249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1465, N'129186', N'松下（Panasonic）干衣机NH45-19T', N'http://www.360buy.com/product/129186.html', N'大 家 电洗衣机松下松下NH45-19T', N'2299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1466, N'129238', N'香山(CAMRY)EK5350-31P电子厨房秤', N'http://www.360buy.com/product/129238.html', N'个护健康健康秤/厨房秤香山香山EK5350-31P', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1467, N'129303', N'铁三角（audio-technica）ATH-M50耳机', N'http://www.360buy.com/product/129303.html', N'时尚影音耳机/耳麦铁三角铁三角ATH-M50', N'1480.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1468, N'129339', N'铁三角（audio-technica）ATH-ESW9耳机', N'http://www.360buy.com/product/129339.html', N'时尚影音耳机/耳麦铁三角铁三角ATH-ESW9', N'1980.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1469, N'129351', N'铁三角（audio-technica）ATH-EW9 耳机', N'http://www.360buy.com/product/129351.html', N'时尚影音耳机/耳麦铁三角铁三角ATH-EW9', N'1350.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1470, N'129408', N'电音（Danyin） DT-2102 耳麦 头戴式 双插头 蓝色', N'http://www.360buy.com/product/129408.html', N'时尚影音耳机/耳麦硕美科硕美科DT-2102', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1471, N'129438', N'三诺（3nod）H-111 音箱 增强版', N'http://www.360buy.com/product/129438.html', N'时尚影音音箱三诺三诺H-111', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1472, N'129503', N'天敏（10moons）UV200 U盘视频采集棒', N'http://www.360buy.com/product/129503.html', N'外设产品电视盒天敏天敏UV200U', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1473, N'￥1290.00', N'卡西欧(Casio)SHEEN系列女表SHN-5000BP-1A', N'http://www.360buy.com/product/129582.html', N'日本品牌卡西欧 CASIOCASIO卡西欧女表SHN-5000BP-1A', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1474, N'￥1290.00', N'卡西欧(Casio)SHEEN系列女表SHN-5000BP-7A', N'http://www.360buy.com/product/129589.html', N'日本品牌卡西欧 CASIOCASIO卡西欧女表SHN-5000BP-7A', N'738.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1475, N'129613', N'环宇飞扬（UniFly）无驱B摄像头 黑色', N'http://www.360buy.com/product/129613.html', N'外设产品摄像头环宇飞扬环宇飞扬无驱B', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1476, N'129653', N'松下（Panasonic）KX－FLM678CN 馈纸式黑白激光一体机（打印 复印 扫描 传真）', N'http://www.360buy.com/product/129653.html', N'办公打印一体机松下松下KX－FLM678CN', N'1799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1477, N'129655', N'松下（Panasonic）KX－FLM668CN 馈纸式黑白激光一体机（打印 复印 扫描 传真）', N'http://www.360buy.com/product/129655.html', N'办公打印一体机松下松下KX－FLM668CN', N'1699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1478, N'129732', N'海尔（Haier）ZW1300-8 卧式1300W 吸尘器（典雅白）', N'http://www.360buy.com/product/129732.html', N'生活电器吸尘器海尔海尔ZW1300-8', N'699.00')
GO
print 'Processed 1400 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1479, N'￥688.00', N'飞跃多功能家用缝纫机FY812', N'http://www.360buy.com/product/129741.html', N'生活日用缝纫用品飞跃飞跃缝纫机', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1480, N'129775', N'铼德（RITEK）DVD+R DL 8速 8.5G 台产 单面双层 桶装10片 刻录盘', N'http://www.360buy.com/product/129775.html', N'办公文仪刻录碟片/附件铼德铼德DVD+R 8速', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1481, N'￥109.00', N'苏泊尔精铸铁锅FC32E2', N'http://www.360buy.com/product/129857.html', N'烹饪锅具炒锅苏泊尔苏泊尔铁锅', N'79.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1482, N'129914', N'三堡（SANBAO）KVM-204 桌面式4口手动切换器（带配线）', N'http://www.360buy.com/product/129914.html', N'外设产品线缆三堡三堡KVM-204', N'188.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1483, N'129917', N'三堡（SANBAO）KVM-2080 桌面式8口手动切换器（带配线）', N'http://www.360buy.com/product/129917.html', N'外设产品线缆三堡三堡KVM-2080', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1484, N'129932', N'麦博（microlab）梵高系列FC-230音箱', N'http://www.360buy.com/product/129932.html', N'时尚影音音箱麦博麦博FC-230', N'590.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1485, N'129933', N'麦博（microlab）梵高系列FC-260音箱', N'http://www.360buy.com/product/129933.html', N'时尚影音音箱麦博麦博FC-260', N'658.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1486, N'129934', N'麦博（microlab）梵高系列FC-280音箱', N'http://www.360buy.com/product/129934.html', N'时尚影音音箱麦博麦博FC-280', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1487, N'129943', N'麦博（microlab）SoLo II音箱', N'http://www.360buy.com/product/129943.html', N'时尚影音音箱麦博麦博SoLo II', N'570.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1488, N'129948', N'麦博（microlab）MD121音箱（黑）', N'http://www.360buy.com/product/129948.html', N'时尚影音音箱麦博麦博MD121', N'110.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1489, N'129950', N'麦博（microlab）X5III 5.1 音箱', N'http://www.360buy.com/product/129950.html', N'时尚影音音箱麦博麦博X5III', N'1580.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1490, N'129954', N'麦博（microlab）SoLo I 音箱', N'http://www.360buy.com/product/129954.html', N'时尚影音音箱麦博麦博SoLo I', N'520.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1491, N'129958', N'麦博（microlab）M-500 音箱（白）', N'http://www.360buy.com/product/129958.html', N'时尚影音音箱麦博麦博M-500', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1492, N'129959', N'麦博（microlab）M-520 音箱', N'http://www.360buy.com/product/129959.html', N'时尚影音音箱麦博麦博M-520', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1493, N'129965', N'麦博（microlab）M-500 音箱（黑）', N'http://www.360buy.com/product/129965.html', N'时尚影音音箱麦博麦博M-500', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1494, N'129970', N'惠威（Hivi）多媒体音箱 D1010 MKII 2.0声道 玫瑰木色', N'http://www.360buy.com/product/129970.html', N'时尚影音音箱惠威惠威D1010MK II', N'380.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1495, N'129971', N'惠威（Hivi）音箱支架 MT-ST1（适用T200B音箱）', N'http://www.360buy.com/product/129971.html', N'时尚影音音箱惠威惠威T200', N'650.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1496, N'130214', N'中诺（CHINO-E）C108来电显示电话机（红色）', N'http://www.360buy.com/product/130214.html', N'生活电器电话机中诺中诺C108', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1497, N'130217', N'中诺（CHINO-E）C028来电显示电话机（灰色）', N'http://www.360buy.com/product/130217.html', N'生活电器电话机中诺中诺C028', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1498, N'130253', N'三洋（SANYO） XQB50-Y807SJ 超音波洗衣机', N'http://www.360buy.com/product/130253.html', N'大 家 电洗衣机三洋三洋XQB50-Y807SJ', N'1298.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1499, N'130298', N'海尔（Haier）嵌入式消毒柜ZQD90SV', N'http://www.360buy.com/product/130298.html', N'大 家 电消毒柜/洗碗机海尔海尔ZQD90SV', N'1268.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1500, N'130345', N'品胜 BP80W 数码电池 适用于三星VP-D381i/DX100i/DX105i/SC-D385', N'http://www.360buy.com/product/130345.html', N'数码配件电池/充电器品胜品胜BP80W', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1501, N'130347', N'品胜（PISEN）快级充充电电池套装（快级充+2500mAh AA镍氢充电电池*4）', N'http://www.360buy.com/product/130347.html', N'数码配件电池/充电器品胜品胜2500mAh5', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1502, N'130416', N'优乐（U.love）UAD04A 单口USB电源适配器 白色', N'http://www.360buy.com/product/130416.html', N'时尚影音苹果配件优乐优乐U.Love', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1503, N'130417', N'优乐（U.love）UAD04T 多功能USB电源适配器 白色', N'http://www.360buy.com/product/130417.html', N'时尚影音苹果配件优乐优乐U.Love', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1504, N'130429', N'适马（SIGMA）10mm F2.8 EX DC FISHEYE HSM 镜头（佳能卡口）', N'http://www.360buy.com/product/130429.html', N'摄影摄像镜头适马适马10mm F2.8 EX DC FISHEYE HSM', N'4670.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1505, N'130447', N'Gigaset | SIEMENS 西门子812办公电话（黑色）', N'http://www.360buy.com/product/130447.html', N'生活电器电话机西门子西门子812型', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1506, N'130448', N'Gigaset | SIEMENS 西门子812办公电话（淡灰）', N'http://www.360buy.com/product/130448.html', N'生活电器电话机西门子西门子812型', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1507, N'130449', N'飞利浦（PHILIPS）TD2815D来电显示电话机（白色）', N'http://www.360buy.com/product/130449.html', N'生活电器电话机飞利浦飞利浦TD-2815D', N'81.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1508, N'130450', N'飞利浦（PHILIPS）TD2815D来电显示电话机（蓝色）', N'http://www.360buy.com/product/130450.html', N'生活电器电话机飞利浦飞利浦TD-2815D', N'81.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1509, N'130561', N'创新（Creative）耳机EP-550', N'http://www.360buy.com/product/130561.html', N'时尚影音耳机/耳麦创新创新EP-550', N'76.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1510, N'130611', N'科密(comet) 3668 办公碎纸机 双入口碎纸/碎卡碎光盘4级保密一次可碎5张纸', N'http://www.360buy.com/product/130611.html', N'办公打印碎纸机科密科密3668', N'820.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1511, N'130688', N'爱普生（EPSON）V500 Photo 平板式扫描仪', N'http://www.360buy.com/product/130688.html', N'办公打印扫描仪爱普生爱普生V500', N'2999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1512, N'130689', N'爱普生（EPSON）V700 平板式扫描仪', N'http://www.360buy.com/product/130689.html', N'办公打印扫描仪爱普生爱普生V700', N'5999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1513, N'130690', N'爱普生（Epson）Expression 10000XL 平板式扫描仪', N'http://www.360buy.com/product/130690.html', N'办公打印扫描仪爱普生爱普生Expression10000XL', N'27999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1514, N'130709', N'创新（Creative）耳机EP-220（白色）', N'http://www.360buy.com/product/130709.html', N'时尚影音耳机/耳麦创新创新EP-220', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1515, N'130710', N'创新（Creative）耳机EP-220（蓝色）', N'http://www.360buy.com/product/130710.html', N'时尚影音耳机/耳麦创新创新EP-220', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1516, N'130711', N'创新（Creative）耳机EP-220（黑色）', N'http://www.360buy.com/product/130711.html', N'时尚影音耳机/耳麦创新创新EP-220', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1517, N'130712', N'创新（Creative）耳机EP-220（粉色）', N'http://www.360buy.com/product/130712.html', N'时尚影音耳机/耳麦创新创新EP-220', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1518, N'￥84.00', N'飞利浦Philips螺旋24W节能灯泡E27冷色', N'http://www.360buy.com/product/130713.html', N'灯具节能灯飞利浦飞利浦节能灯', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1519, N'130732', N'创新（Creative）耳机 AURVANA IN-EAR(黑色）', N'http://www.360buy.com/product/130732.html', N'时尚影音耳机/耳麦创新创新AURVANA IN-EAR', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1520, N'130738', N'Gigaset | SIEMENS 西门子5020办公电话(黑色)', N'http://www.360buy.com/product/130738.html', N'生活电器电话机西门子西门子5020', N'275.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1521, N'130739', N'Gigaset | SIEMENS 西门子5020办公电话（淡灰）', N'http://www.360buy.com/product/130739.html', N'生活电器电话机西门子西门子5020', N'275.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1522, N'130740', N'Gigaset | SIEMENS 西门子805HF办公电话（黑色）', N'http://www.360buy.com/product/130740.html', N'生活电器电话机西门子西门子805HF', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1523, N'130741', N'Gigaset | SIEMENS 西门子805HF办公电话（淡灰）', N'http://www.360buy.com/product/130741.html', N'生活电器电话机西门子西门子805HF', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1524, N'￥68.00', N'乐扣乐扣保鲜盒3件套HPL807S001', N'http://www.360buy.com/product/130742.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒3件套', N'40.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1525, N'130770', N'蒙恬（Penpower） 酷笔（中文手写输入系统）', N'http://www.360buy.com/product/130770.html', N'外设产品手写板蒙恬蒙恬酷笔', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1526, N'130774', N'蒙恬（Penpower）晶钻手写板（中文手写输入系统）', N'http://www.360buy.com/product/130774.html', N'外设产品手写板蒙恬蒙恬晶钻', N'158.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1527, N'￥185.00', N'SIGG希格红色7523.00水瓶600ml', N'http://www.360buy.com/product/130833.html', N'水具酒具运动水壶SIGG希格希格水瓶', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1528, N'￥216.00', N'SIGG希格黑色8065.60水瓶600ml', N'http://www.360buy.com/product/130835.html', N'水具酒具运动水壶SIGG希格希格水瓶', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1529, N'￥216.00', N'SIGG希格红标8025.30水瓶1000ml', N'http://www.360buy.com/product/130837.html', N'水具酒具运动水壶SIGG希格希格水瓶', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1530, N'￥185.00', N'SIGG希格深蓝7523.30水瓶600ml', N'http://www.360buy.com/product/130840.html', N'水具酒具运动水壶SIGG希格希格水瓶', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1531, N'130849', N'宜客莱（ECOLA）LCD-EL144K 14.1英寸（16:10）宽屏 亮面液晶保护膜（炫彩高透）', N'http://www.360buy.com/product/130849.html', N'电脑整机笔记本配件宜客莱宜客莱保护膜', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1532, N'130860', N'纽福克斯（NFA）12L 冷暖箱 车载冰箱 5246（双电）', N'http://www.360buy.com/product/130860.html', N'电子电器车载冰箱纽福克斯纽福克斯12L', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1533, N'130864', N'宜客莱（ECOLA）EL-700+ 伸缩加大型笔记本电脑桌', N'http://www.360buy.com/product/130864.html', N'电脑整机笔记本配件宜客莱宜客莱EL-700+', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1534, N'130872', N'赛睿 SteelSeries QcK+ 鼠标垫', N'http://www.360buy.com/product/130872.html', N'外设产品鼠标垫SteelSeries赛睿QCK+', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1535, N'130874', N'赛睿（SteelSeries）5Hv2 USB 耳机', N'http://www.360buy.com/product/130874.html', N'外设产品游戏设备SteelSeries赛睿5Hv2', N'649.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1536, N'￥129.00', N'飞利浦Philips星宇台灯FDS500香槟金', N'http://www.360buy.com/product/130976.html', N'灯具台灯飞利浦飞利浦星宇台灯', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1537, N'￥129.00', N'飞利浦Philips星宇台灯流光银', N'http://www.360buy.com/product/130979.html', N'灯具台灯飞利浦飞利浦星宇台灯', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1538, N'￥129.00', N'飞利浦Philips星宇台灯冰河蓝', N'http://www.360buy.com/product/130984.html', N'灯具台灯飞利浦飞利浦星宇台灯', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1539, N'131061', N'摩托罗拉 标准型旅行充电器 适用于摩托罗拉ME525/XT800/ME811等 黑色', N'http://www.360buy.com/product/131061.html', N'手机配件充电器/数据线摩托罗拉摩托罗拉V8', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1540, N'131065', N'三星 AB553850DCCCHA/CSTD/CCHN 原装手机电池 适用于三星B5702/B5712C/B5210/W629/W599', N'http://www.360buy.com/product/131065.html', N'手机配件手机电池三星三星W619', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1541, N'131159', N'万和超薄亚光燃气热水器JSQ16-8B-9（天然气）', N'http://www.360buy.com/product/131159.html', N'大 家 电热水器万和万和JSQ16-8B-9', N'559.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1542, N'131177', N'万和中式抽油烟机CXW-180-H05C', N'http://www.360buy.com/product/131177.html', N'大 家 电烟机/灶具万和万和CXW-180-H05C', N'658.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1543, N'131178', N'万和 ZTP80-15 立式消毒柜', N'http://www.360buy.com/product/131178.html', N'大 家 电消毒柜/洗碗机万和万和ZTP80-15', N'439.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1544, N'131213', N'兄弟(brother) TN-170C 青色粉仓 (适用HL-4040CN DCP-9040CN MFC-9440CN)', N'http://www.360buy.com/product/131213.html', N'办公打印墨粉兄弟兄弟TN-170C', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1545, N'131214', N'兄弟(brother) TN-170M 品红色粉仓 (适用HL-4040CN DCP-9040CN MFC-9440CN)', N'http://www.360buy.com/product/131214.html', N'办公打印墨粉兄弟兄弟TN-170M', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1546, N'131216', N'兄弟(brother) TN-170BK 黑色粉仓 (适用HL-4040CN DCP-9040CN MFC-9440CN)', N'http://www.360buy.com/product/131216.html', N'办公打印墨粉兄弟兄弟TN-170BK', N'438.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1547, N'131338', N'思科（Cisco）RV082 双WAN口VPN路由器', N'http://www.360buy.com/product/131338.html', N'网络产品路由器思科思科 RV082', N'1999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1548, N'131496', N'大行(ASING) TY-016 激光笔', N'http://www.360buy.com/product/131496.html', N'办公文仪激光笔大行大行TY-016', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1549, N'131498', N'大行(ASING) TY-003 激光笔', N'http://www.360buy.com/product/131498.html', N'办公文仪激光笔大行大行TY-003', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1550, N'131531', N'龟牌（Turtle Wax）极限内饰清洗保护剂 T-246RI', N'http://www.360buy.com/product/131531.html', N'汽车美容内饰洗护龟牌龟牌T-246RI', N'33.80')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1551, N'￥75.00', N'三光云彩900ml正方形玻璃保鲜盒RP522', N'http://www.360buy.com/product/131546.html', N'收纳保鲜保鲜盒三光云彩三光云彩RP522', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1552, N'131550', N'龟牌（Turtle Wax）金龟速递香蜡G-136（500ML）', N'http://www.360buy.com/product/131550.html', N'汽车美容美容车蜡龟牌龟牌G-136', N'15.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1553, N'131567', N'龟牌（Turtle Wax）黑水晶轮胎釉G-153', N'http://www.360buy.com/product/131567.html', N'汽车美容轮胎轮毂洗护龟牌龟牌G-153', N'18.80')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1554, N'131582', N'龟牌（Turtle Wax）真皮滋润霜G-363（500ML）', N'http://www.360buy.com/product/131582.html', N'汽车美容内饰洗护龟牌龟牌G-363', N'33.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1555, N'131585', N'龟牌（Turtle Wax）虫胶树粘去除剂 G-526', N'http://www.360buy.com/product/131585.html', N'汽车美容漆面修复龟牌龟牌G-526', N'11.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1556, N'131592', N'超频三（pccooler）红海 多平台热管CPU散热器', N'http://www.360buy.com/product/131592.html', N'电脑配件散热器超频三超频三红海', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1557, N'131593', N'超频三（pccooler）F80显卡风扇（超频三珊瑚海专用）', N'http://www.360buy.com/product/131593.html', N'电脑配件散热器超频三超频三珊瑚海风扇', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1558, N'131619', N'三诺 (3nod) H-211增强版 音响', N'http://www.360buy.com/product/131619.html', N'时尚影音音箱三诺三诺H-211', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1559, N'131629', N'佳能（Canon）PGI-9M 品红色墨盒（适用PIXMA Pro9500、9500MKⅡ）', N'http://www.360buy.com/product/131629.html', N'办公打印墨盒佳能佳能PGI-9M', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1560, N'131630', N'佳能（Canon）PGI-9Y 黄色墨盒（适用PIXMA Pro9500、9500MKⅡ）', N'http://www.360buy.com/product/131630.html', N'办公打印墨盒佳能佳能PGI-9Y', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1561, N'131631', N'佳能（Canon）PGI-9C 青色墨盒（适用PIXMA Pro9500、9500MKⅡ）', N'http://www.360buy.com/product/131631.html', N'办公打印墨盒佳能佳能PGI-9C', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1562, N'131635', N'佳能（Canon）CRG-912 硒鼓（适用LBP3018 LBP3108）', N'http://www.360buy.com/product/131635.html', N'办公打印硒鼓佳能佳能CRG-912', N'420.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1563, N'131636', N'佳能（Canon）CRG-307M 品红色硒鼓（适用LBP5000/LBP5100）', N'http://www.360buy.com/product/131636.html', N'办公打印硒鼓佳能佳能CRG-307M', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1564, N'131637', N'佳能（Canon）CRG-307Y 黄色硒鼓（适用LBP5000/LBP5100）', N'http://www.360buy.com/product/131637.html', N'办公打印硒鼓佳能佳能CRG-307Y', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1565, N'131638', N'佳能（Canon）CRG-307BK 黑色硒鼓（适用LBP5000/LBP5100）', N'http://www.360buy.com/product/131638.html', N'办公打印硒鼓佳能佳能CRG-307BK', N'430.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1566, N'131639', N'佳能（Canon）CLI-8PC 淡青色墨盒（适用PIXMA Pro9000）', N'http://www.360buy.com/product/131639.html', N'办公打印墨盒佳能佳能CLI-8PC', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1567, N'131640', N'佳能（Canon）CLI-8PM 品红色墨盒（适用PIXMA Pro9000）', N'http://www.360buy.com/product/131640.html', N'办公打印墨盒佳能佳能CLI-8PM', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1568, N'131641', N'佳能（Canon）CLI-8R 纯红色墨盒（适用PIXMA Pro9000）', N'http://www.360buy.com/product/131641.html', N'办公打印墨盒佳能佳能CLI-8R', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1569, N'131642', N'佳能（Canon）CLI-8G 绿色墨盒（适用PIXMA Pro9000）', N'http://www.360buy.com/product/131642.html', N'办公打印墨盒佳能佳能CLI-8G', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1570, N'￥56.00', N'振能家欢电木柄粥勺', N'http://www.360buy.com/product/131645.html', N'烹饪锅具厨用杂件振能振能粥勺', N'49.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1571, N'￥56.00', N'振能家欢电木柄平铲', N'http://www.360buy.com/product/131647.html', N'烹饪锅具厨用杂件振能振能平铲', N'49.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1572, N'￥56.00', N'振能家欢电木柄漏勺', N'http://www.360buy.com/product/131648.html', N'烹饪锅具厨用杂件振能振能漏勺', N'49.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1573, N'￥46.00', N'振能家欢电木柄漏铲', N'http://www.360buy.com/product/131650.html', N'烹饪锅具厨用杂件振能振能漏铲', N'39.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1574, N'131702', N'西门子（Siemens）中式抽油烟机 LD11713TI', N'http://www.360buy.com/product/131702.html', N'大 家 电烟机/灶具西门子西门子LD11713TI', N'1290.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1575, N'131783', N'西门子（SIEMENS） KK22F66TI 218升 三门冰箱（白色）', N'http://www.360buy.com/product/131783.html', N'大 家 电冰箱西门子西门子KK22F66TI', N'3599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1576, N'131800', N'索尼（SONY）耳塞 MDR-E818LP 开放式低音增强耳塞', N'http://www.360buy.com/product/131800.html', N'时尚影音耳机/耳麦索尼索尼E818LP', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1577, N'131801', N'索尼（SONY）耳塞 MDR-E828LP 优秀音质/舒适佩带', N'http://www.360buy.com/product/131801.html', N'时尚影音耳机/耳麦索尼索尼E828LP', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1578, N'131817', N'索尼（SONY）耳塞 MDR-E10LP 简洁小巧 粉红色', N'http://www.360buy.com/product/131817.html', N'时尚影音耳机/耳麦索尼索尼E10LP', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1579, N'131818', N'索尼（SONY）耳塞 MDR-E10LP 简洁小巧 黄色', N'http://www.360buy.com/product/131818.html', N'时尚影音耳机/耳麦索尼索尼E10LP', N'53.00')
GO
print 'Processed 1500 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1580, N'131819', N'索尼（SONY）耳塞 MDR-E10LP 简洁小巧 灰色', N'http://www.360buy.com/product/131819.html', N'时尚影音耳机/耳麦索尼索尼E10LP', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1581, N'131820', N'索尼（SONY）耳塞 MDR-E10LP 简洁小巧 蓝色', N'http://www.360buy.com/product/131820.html', N'时尚影音耳机/耳麦索尼索尼E10LP', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1582, N'131821', N'索尼（SONY）耳塞 MDR-E11LP 清晰音质 橙色', N'http://www.360buy.com/product/131821.html', N'时尚影音耳机/耳麦索尼索尼E10LP', N'53.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1583, N'131822', N'索尼（SONY）耳塞 MDR-E11LP 清晰音质 黑色', N'http://www.360buy.com/product/131822.html', N'时尚影音耳机/耳麦索尼索尼E11LP', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1584, N'131823', N'索尼（SONY）耳塞 MDR-E11LP 清晰音质 蓝色', N'http://www.360buy.com/product/131823.html', N'时尚影音耳机/耳麦索尼索尼E11LP', N'53.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1585, N'131852', N'西门子（SIEMENS） WT46E301TI 7.0公斤 干衣机（波兰进口）', N'http://www.360buy.com/product/131852.html', N'大 家 电洗衣机西门子西门子WT46E301TI', N'6199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1586, N'131892', N'佳能（Canon）LASERSHOT LBP3018 黑白激光打印机', N'http://www.360buy.com/product/131892.html', N'办公打印打印机佳能佳能LASERSHOTLBP3018', N'769.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1587, N'131894', N'佳能（Canon）LASERSHOT LBP3108 黑白激光打印机', N'http://www.360buy.com/product/131894.html', N'办公打印打印机佳能佳能LASERSHOTLBP3108', N'1099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1588, N'132103', N'南孚（NANFU）AA-2B 耐用型 1600mAh 5号无镉充电电池（2粒装）', N'http://www.360buy.com/product/132103.html', N'数码配件电池/充电器南孚南孚充电电池', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1589, N'132107', N'南孚（NANFU）AAA-2B+充电器 耐用型 900mAh 7号镍氢充电套装（含2粒900mAh镍氢充电电池)', N'http://www.360buy.com/product/132107.html', N'数码配件电池/充电器南孚南孚10小时充电套装', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1590, N'132124', N'B+W 多层镀膜UV滤镜 MRC UV 77mm', N'http://www.360buy.com/product/132124.html', N'摄影摄像滤镜b+wB+WB+W 77mm MRC', N'519.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1591, N'132237', N'万和嵌入式燃气灶B8-12T-B08X（天然气）', N'http://www.360buy.com/product/132237.html', N'大 家 电烟机/灶具万和万和B8-12T-B08X', N'498.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1592, N'132242', N'万和嵌入式燃气灶B8-20Y-B08X（液化气）', N'http://www.360buy.com/product/132242.html', N'大 家 电烟机/灶具万和万和B8-20Y-B08X', N'498.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1593, N'132253', N'海尔（Haier）洗碗机WQP6-V8', N'http://www.360buy.com/product/132253.html', N'大 家 电消毒柜/洗碗机海尔海尔WQP6-V8', N'2999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1594, N'132374', N'超人（SID）SA850 三刀头 浮动贴面剃须刀 深邃蓝 镍氢电池 超长使用时间', N'http://www.360buy.com/product/132374.html', N'个护健康剃须刀超人超人SA850', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1595, N'132375', N'超人（SID）SA77 单刀头 旋转刀网剃须刀 流光银 内嵌式充电插头', N'http://www.360buy.com/product/132375.html', N'个护健康剃须刀超人超人SA77', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1596, N'132400', N'佳能（Canon）FAX-L140 黑白激光普通纸传真机（复印 传真）', N'http://www.360buy.com/product/132400.html', N'办公打印传真机佳能佳能FAX-L140', N'1949.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1597, N'132414', N'兄弟(brother) FAX-358 热敏纸传真机', N'http://www.360buy.com/product/132414.html', N'办公打印传真机兄弟兄弟FAX-358', N'735.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1598, N'132439', N'爱普生（Epson）T0841 黑色墨盒 C13T084180（适用ME photo20）', N'http://www.360buy.com/product/132439.html', N'办公打印墨盒爱普生爱普生T0841', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1599, N'132440', N'爱普生（Epson）T0842 青色墨盒 C13T084280（适用MEphoto20）', N'http://www.360buy.com/product/132440.html', N'办公打印墨盒爱普生爱普生T0842', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1600, N'132441', N'爱普生（Epson）T0843 洋红色墨盒 C13T084380（适用ME photo20）', N'http://www.360buy.com/product/132441.html', N'办公打印墨盒爱普生爱普生T0843', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1601, N'132442', N'爱普生（Epson）T0844 黄色墨盒 C13T084480（适用ME photo20）', N'http://www.360buy.com/product/132442.html', N'办公打印墨盒爱普生爱普生T0844', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1602, N'132464', N'TDK CD-R 52速 700M 方格系列 桶装50片 刻录盘', N'http://www.360buy.com/product/132464.html', N'办公文仪刻录碟片/附件TDKTDKCD-R 52速', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1603, N'132476', N'卡西欧（CASIO）SX-300 8位计算器', N'http://www.360buy.com/product/132476.html', N'办公文仪计算器卡西欧卡西欧SX-300', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1604, N'132477', N'卡西欧（CASIO）SX-220 12位计算器', N'http://www.360buy.com/product/132477.html', N'办公文仪计算器卡西欧卡西欧SX-220', N'54.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1605, N'132478', N'卡西欧（CASIO）FX-3650P 编程科学计算器', N'http://www.360buy.com/product/132478.html', N'办公文仪计算器卡西欧卡西欧FX-3650P', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1606, N'132529', N'佳能（Canon）LS-1200H 12位计算器', N'http://www.360buy.com/product/132529.html', N'办公文仪计算器佳能佳能LS-1200H', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1607, N'132532', N'爱普生（Epson）T1221 黑色墨盒 C13T122180（原为T0851 适用PHOTO 1390）', N'http://www.360buy.com/product/132532.html', N'办公打印墨盒爱普生爱普生T1221', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1608, N'132533', N'爱普生（Epson）T1222 青色墨盒 C13T122280（原为T0852 适用PHOTO 1390）', N'http://www.360buy.com/product/132533.html', N'办公打印墨盒爱普生爱普生T1222', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1609, N'132534', N'爱普生（Epson）T1223 洋红色墨盒 C13T122380（原为T0853 适用PHOTO 1390）', N'http://www.360buy.com/product/132534.html', N'办公打印墨盒爱普生爱普生T1223', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1610, N'132535', N'爱普生（Epson）T1224 黄色墨盒 C13T122480（原为T0854 适用PHOTO 1390）', N'http://www.360buy.com/product/132535.html', N'办公打印墨盒爱普生爱普生T1224', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1611, N'￥1590.00', N'卡西欧(Casio)Edifice系列男表EF-524D-7A', N'http://www.360buy.com/product/132569.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-524D-7A', N'869.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1612, N'132591', N'创新（Creative）EP-630耳机（白）', N'http://www.360buy.com/product/132591.html', N'时尚影音耳机/耳麦创新创新EP-630', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1613, N'132620', N'B+W 多层镀膜UV滤镜 MRC UV 52mm', N'http://www.360buy.com/product/132620.html', N'摄影摄像滤镜b+wB+WB+W 52mm MRC', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1614, N'132621', N'B+W 多层镀膜UV滤镜 MRC UV 58mm', N'http://www.360buy.com/product/132621.html', N'摄影摄像滤镜b+wB+WB+W 58mm MRC', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1615, N'132623', N'B+W 多层镀膜UV滤镜 MRC UV 62mm', N'http://www.360buy.com/product/132623.html', N'摄影摄像滤镜b+wB+WB+W 62mm MRC', N'389.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1616, N'132624', N'B+W 多层镀膜UV滤镜 MRC UV 67mm', N'http://www.360buy.com/product/132624.html', N'摄影摄像滤镜b+wB+WB+W 67mm MRC', N'485.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1617, N'132625', N'B+W 多层镀膜UV滤镜 MRC UV 72mm', N'http://www.360buy.com/product/132625.html', N'摄影摄像滤镜b+wB+WB+W 72mm MRC', N'619.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1618, N'132647', N'惠威（HiVi）多媒体音箱 M200MKIII 2.0声道HI-FI品质 豪华原木做工', N'http://www.360buy.com/product/132647.html', N'时尚影音音箱惠威音 箱Hivi', N'1785.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1619, N'132658', N'声丽（Senic） MX-111 耳麦 耳挂式 双插头 线控 黑色', N'http://www.360buy.com/product/132658.html', N'时尚影音耳机/耳麦硕美科硕美科MX-111', N'24.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1620, N'132662', N'声丽（Senic） SM-012 话筒 领夹式 黑色 单插头', N'http://www.360buy.com/product/132662.html', N'时尚影音麦克风硕美科硕美科SM-012', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1621, N'132775', N'酷冷至尊（CoolerMaster）V8“发动机”多平台CPU散热器', N'http://www.360buy.com/product/132775.html', N'电脑配件散热器酷冷至尊酷冷至尊V8', N'558.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1622, N'132854', N'罗技（Logitech）V470 蓝牙无线激光笔记本鼠标 黑色', N'http://www.360buy.com/product/132854.html', N'外设产品鼠标罗技罗技V470蓝牙无线激光笔记本鼠标 黑色', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1623, N'132920', N'酷冷至尊（CoolerMaster）黑旋风-L12（brf-l12) 静音 机箱风扇', N'http://www.360buy.com/product/132920.html', N'电脑配件散热器酷冷至尊酷冷至尊黑旋风-L12（brf-l12)', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1624, N'￥224.00', N'韩国777指甲刀套装NTS-1111M', N'http://www.360buy.com/product/132984.html', N'礼品瑞士军刀777777指甲刀套装', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1625, N'132986', N'三诺（3NOD）N-50G 音箱', N'http://www.360buy.com/product/132986.html', N'时尚影音音箱三诺三诺N-50G', N'1198.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1626, N'￥288.00', N'韩国777指甲刀套装DS-2100G', N'http://www.360buy.com/product/132987.html', N'礼品瑞士军刀777777指甲刀套装', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1627, N'￥184.00', N'韩国777指甲刀套装DS-3300G', N'http://www.360buy.com/product/133000.html', N'礼品瑞士军刀777777指甲刀套装', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1628, N'￥160.00', N'韩国777指甲刀套装DS-090G', N'http://www.360buy.com/product/133001.html', N'礼品瑞士军刀777777指甲刀套装', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1629, N'133026', N'金士顿(Kingston)骇客神条 Genesis系列 DDR2 1066 2GB 台式机内存(KHX8500D2/2G)', N'http://www.360buy.com/product/133026.html', N'电脑配件内存金士顿金士顿HyperXDDR210662G', N'279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1630, N'￥102.00', N'远阳7mm新款 防滑环保无毒无味 瑜伽专用 印花瑜伽垫紫色 送背包+捆绳', N'http://www.360buy.com/product/133029.html', N'纤体瑜伽瑜伽垫远阳瑜伽远阳瑜伽瑜伽垫', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1631, N'￥102.00', N'远阳7mm新款 防滑环保无毒无味 瑜伽专用 印花瑜伽垫绿色 送背包+捆绳', N'http://www.360buy.com/product/133030.html', N'纤体瑜伽瑜伽垫远阳瑜伽远阳瑜伽瑜伽垫', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1632, N'￥102.00', N'远阳7mm新款 防滑环保无毒无味 瑜伽专用 印花瑜伽垫蓝色 送背包+捆绳', N'http://www.360buy.com/product/133032.html', N'纤体瑜伽瑜伽垫远阳瑜伽远阳瑜伽瑜伽垫', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1633, N'133117', N'ThinkPad 31P7410 USB光电鼠标', N'http://www.360buy.com/product/133117.html', N'外设产品鼠标联想（ThinkPad）联想（ThinkPad）31P7410', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1634, N'133132', N'Gigaset | SIEMENS 西门子5010办公电话（淡灰）', N'http://www.360buy.com/product/133132.html', N'生活电器电话机西门子西门子5010', N'125.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1635, N'133133', N'Gigaset | SIEMENS 西门子5010办公电话（黑色）', N'http://www.360buy.com/product/133133.html', N'生活电器电话机西门子西门子5010', N'125.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1636, N'133136', N'TCL HCD868（118） 来电显示电话机（白色）', N'http://www.360buy.com/product/133136.html', N'生活电器电话机TCLTCLHCD868（118）', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1637, N'133182', N'普乐士（PLUS）BF-041S 电子演示白板', N'http://www.360buy.com/product/133182.html', N'办公文仪白板/封装普乐士普乐士BF-041S', N'5999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1638, N'133183', N'普乐士（PLUS）BF-041W 电子演示白板', N'http://www.360buy.com/product/133183.html', N'办公文仪白板/封装普乐士普乐士BF-041W', N'7799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1639, N'133246', N'快美特（CARMATE）魔力雨敌 CPS11', N'http://www.360buy.com/product/133246.html', N'系统养护玻璃水快美特快美特CPS11', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1640, N'133253', N'Seiwa 7孔多功能LED彩灯车载烟灰缸W553（粉色）', N'http://www.360buy.com/product/133253.html', N'车饰精品功能精品SeiwaSeiwaW553', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1641, N'133272', N'佳能（Canon）CRG-308 黑色硒鼓（适用于LBP3300 3360）', N'http://www.360buy.com/product/133272.html', N'办公打印硒鼓佳能佳能CRG-308', N'425.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1642, N'133356', N'环宇飞扬（UniFly）红色魔杖S360摄像头 迷幻红', N'http://www.360buy.com/product/133356.html', N'外设产品摄像头环宇飞扬环宇飞扬S360', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1643, N'133358', N'万和 JSQ16-8B-20 8L 新数显燃气热水器（天然气）', N'http://www.360buy.com/product/133358.html', N'大 家 电热水器万和万和JSQ16-8B-20', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1644, N'￥199.00', N'AULDEY双钻奥贝系列熊之家床铃463202', N'http://www.360buy.com/product/133439.html', N'益智玩具摇铃/床铃AULDEYAULDEY床铃463202', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1645, N'133489', N'爱普生（Epson）T1225 淡青色墨盒 C13T122580（原为T0855 适用PHOTO 1390）', N'http://www.360buy.com/product/133489.html', N'办公打印墨盒爱普生爱普生T1225', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1646, N'133495', N'爱普生（Epson）T1226 淡洋红色墨盒 C13T122680（原为T0856 适用PHOTO 1390）', N'http://www.360buy.com/product/133495.html', N'办公打印墨盒爱普生爱普生T1226', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1647, N'133534', N'紫光（UNIS）CD-R 52速 700M 金星系列 桶装25片 刻录盘', N'http://www.360buy.com/product/133534.html', N'办公文仪刻录碟片/附件紫光紫光CD-R 52速', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1648, N'133549', N'富士施乐（Fuji Xerox）Phaser 3200MFP/B 激光多功能一体机（打印 复印 传真 扫描）', N'http://www.360buy.com/product/133549.html', N'办公打印一体机富士施乐富士施乐Phaser 3200MFP/B', N'1799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1649, N'133552', N'小熊(Bear）SNJ-10A 酸奶机 1000ml（绿色）', N'http://www.360buy.com/product/133552.html', N'厨房电器酸奶机小熊小熊SNJ-10A', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1650, N'133559', N'小熊(Bear）ZDQ-201 煮蛋器 6个蛋容（黄色）', N'http://www.360buy.com/product/133559.html', N'厨房电器煮蛋器小熊小熊zdq-201', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1651, N'133562', N'小熊(Bear）TZ-1001 早餐套装 (酸奶机+煮蛋器）', N'http://www.360buy.com/product/133562.html', N'厨房电器酸奶机小熊小熊TZ-1001', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1652, N'133563', N'小熊(Bear）DZG-301 电蒸锅（两层）(白色)', N'http://www.360buy.com/product/133563.html', N'厨房电器多用途锅小熊小熊DGZ-301', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1653, N'￥149.00', N'苏泊尔7寸尖锋切片刀KE02A1', N'http://www.360buy.com/product/133567.html', N'刀剪砧板单刀苏泊尔苏泊尔7寸尖锋切片刀KE02A1', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1654, N'￥129.00', N'苏泊尔8寸尖锋厨师刀KE03A1', N'http://www.360buy.com/product/133568.html', N'刀剪砧板单刀苏泊尔苏泊尔厨师刀', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1655, N'￥660.00', N'苏泊尔刀具光芒6件套T0705', N'http://www.360buy.com/product/133570.html', N'刀剪砧板套刀苏泊尔苏泊尔刀具光芒6件套T0705', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1656, N'133584', N'富士施乐（Fuji Xerox）DocuPrint 202 A3黑白激光打印机', N'http://www.360buy.com/product/133584.html', N'办公打印打印机富士施乐富士施乐DocuPrint 202', N'3599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1657, N'￥229.00', N'凯仕达电视双人跳舞毯(全新16位游戏)', N'http://www.360buy.com/product/133594.html', N'健身玩具炫舞毯凯仕达凯仕达跳舞毯', N'118.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1658, N'￥65.70', N'乐扣乐扣保鲜盒套装3件套HPL817S001/R03', N'http://www.360buy.com/product/133616.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒3件套', N'39.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1659, N'133639', N'富士施乐（Fuji Xerox）106R01159 黑色硒鼓（适用于Phaser 3117 3124 3125）', N'http://www.360buy.com/product/133639.html', N'办公打印硒鼓富士施乐富士施乐106R01159', N'479.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1660, N'133649', N'富士施乐（Fuji Xerox）CT350251 黑色硒鼓（适用于DocuPrint 202 255 305）', N'http://www.360buy.com/product/133649.html', N'办公打印硒鼓富士施乐富士施乐CT350251', N'896.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1661, N'133651', N'富士施乐（Fuji Xerox）CWAA0666 黑色硒鼓（适用于DocuPrint 2050）', N'http://www.360buy.com/product/133651.html', N'办公打印硒鼓富士施乐富士施乐CWAA0666', N'1068.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1662, N'133654', N'富士施乐（Fuji Xerox）CWAA0710 黑色硒鼓（适用于DocuPrint 2065 3055）', N'http://www.360buy.com/product/133654.html', N'办公打印硒鼓富士施乐富士施乐CWAA0710', N'1055.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1663, N'133680', N'富士施乐（Fuji Xerox）CT201118 黑色墨粉（适用于DocuPrint C1110）', N'http://www.360buy.com/product/133680.html', N'办公打印墨粉富士施乐富士施乐CT201118', N'329.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1664, N'133684', N'富士施乐（Fuji Xerox）CT201119 青色墨粉（适用于DocuPrint C1110）', N'http://www.360buy.com/product/133684.html', N'办公打印墨粉富士施乐富士施乐CT201119', N'465.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1665, N'133685', N'富士施乐（Fuji Xerox）CT201120 品红色墨粉（适用于DocuPrint C1110）', N'http://www.360buy.com/product/133685.html', N'办公打印墨粉富士施乐富士施乐CT201120', N'495.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1666, N'133686', N'富士施乐（Fuji Xerox）CT201121 黄色墨粉（适用于DocuPrint C1110）', N'http://www.360buy.com/product/133686.html', N'办公打印墨粉富士施乐富士施乐CT201120', N'465.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1667, N'133697', N'联想 (Lenovo) LJ2200L 黑白激光打印机（家庭版）', N'http://www.360buy.com/product/133697.html', N'办公打印打印机联想联想LJ2200L', N'1099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1668, N'133726', N'风王（Coido）干湿两用吸尘器6132', N'http://www.360buy.com/product/133726.html', N'电子电器车载吸尘器风王风王6132', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1669, N'133727', N'风王（Coido）干湿两用吸尘器6131', N'http://www.360buy.com/product/133727.html', N'电子电器车载吸尘器风王风王6131', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1670, N'133728', N'风王（Coido）汽车轮胎打气泵3358', N'http://www.360buy.com/product/133728.html', N'电子电器充气泵风王风王3358', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1671, N'133779', N'川宇（kawau）C235 全能王多合一高速读卡器/TF/M2可直接－皮革漆外壳,美观大方又耐磨（黑白色）', N'http://www.360buy.com/product/133779.html', N'数码配件读卡器川宇川宇读卡器', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1672, N'133780', N'易昇（Esuninfo）8GB SDHC存储卡（class6）', N'http://www.360buy.com/product/133780.html', N'数码配件存储卡易昇易升SDHC', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1673, N'133802', N'香山EB9005L电子秤 体重秤', N'http://www.360buy.com/product/133802.html', N'个护健康健康秤/厨房秤香山香山EB9005L', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1674, N'133803', N'爱普生（Epson）LQ-680K S015016黑色色带（适用LQ-660k/680K/670K+T/680KPro）', N'http://www.360buy.com/product/133803.html', N'办公打印色带爱普生爱普生LQ-680K', N'30.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1675, N'133804', N'爱普生（Epson）LQ-680K S015016黑色色带芯 C13S010071（适用LQ-660k/680K/670K+T/680KPro）', N'http://www.360buy.com/product/133804.html', N'办公打印色带爱普生爱普生LQ-680K', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1676, N'133805', N'爱普生（Epson）LQ-300K+ 黑色色带 C13S015509（适用LQ-300K+/300K/580K）', N'http://www.360buy.com/product/133805.html', N'办公打印色带爱普生爱普生LQ-300K+', N'38.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1677, N'133806', N'爱普生（Epson）LQ-1600K3H SO15336黑色色带芯 C13S010077（适用LQ-1600K3H）', N'http://www.360buy.com/product/133806.html', N'办公打印色带爱普生爱普生LQ-1600K3H SO15336', N'38.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1678, N'133812', N'爱普生（Epson）PGPP A4 S041297高质光泽照片纸 C13S041297', N'http://www.360buy.com/product/133812.html', N'办公文仪纸类爱普生爱普生S041297', N'80.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1679, N'133813', N'爱普生（Epson）PQIJP A4 ASIA 照片质量喷墨打印纸 C13S041786CF', N'http://www.360buy.com/product/133813.html', N'办公文仪纸类爱普生爱普生PQIJP', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1680, N'133814', N'爱普生（Epson）6寸/20sheets 光泽照片纸C13S042066', N'http://www.360buy.com/product/133814.html', N'办公文仪纸类爱普生爱普生6寸', N'17.00')
GO
print 'Processed 1600 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1681, N'133816', N'爱普生（Epson）6寸/30sheets 高质光泽照片纸 C13S041860', N'http://www.360buy.com/product/133816.html', N'办公文仪纸类爱普生爱普生PGPP6', N'30.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1682, N'133817', N'爱普生（Epson）A4/20sheets 光泽照片纸 C13S042067', N'http://www.360buy.com/product/133817.html', N'办公文仪纸类爱普生爱普生A4/20sheets', N'50.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1683, N'133821', N'爱普生（Epson）LQ-590K S015337黑色色带 C13S015590（适用LQ-590K）', N'http://www.360buy.com/product/133821.html', N'办公打印色带爱普生爱普生LQ-590KS015337', N'30.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1684, N'￥65.00', N'韩国777指甲刀套装DS-8503G', N'http://www.360buy.com/product/133855.html', N'礼品瑞士军刀777777指甲刀套装', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1685, N'￥100.00', N'韩国777指甲刀套装DS-803', N'http://www.360buy.com/product/133859.html', N'礼品瑞士军刀777777指甲刀套装', N'56.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1686, N'￥250.00', N'韩国777指甲刀套装DS-1305G', N'http://www.360buy.com/product/133863.html', N'礼品瑞士军刀777777指甲刀套装', N'98.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1687, N'￥140.00', N'韩国777指甲刀套装DS-4000G', N'http://www.360buy.com/product/133866.html', N'礼品瑞士军刀777777指甲刀套装', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1688, N'133933', N'美的（midea) MRO101-5（升级版） 节水型 厨房RO反渗透纯水机', N'http://www.360buy.com/product/133933.html', N'生活电器净水设备美的美的MRO101-5', N'1798.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1689, N'133934', N'爱普生（Epson）LQ-1900K2+ S015086黑色色带 C13S015533CF（适用LQ-1900K2/1600K2+/1600K3+）', N'http://www.360buy.com/product/133934.html', N'办公打印色带爱普生爱普生LQ-1900K2', N'72.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1690, N'133941', N'品胜（PISEN）便携充电器FT1（可对BD1电池充电）', N'http://www.360buy.com/product/133941.html', N'数码配件电池/充电器品胜品胜FT1', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1691, N'133944', N'宝罗（Paull）专业相机包BL-1025（黑色）适用于500D/450D/D90/D3000/K10D/K20D等', N'http://www.360buy.com/product/133944.html', N'数码配件数码包宝罗宝罗BL-1025', N'116.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1692, N'133945', N'宝罗（Paull）专业摄影包BL-1024（黑色）', N'http://www.360buy.com/product/133945.html', N'数码配件数码包宝罗宝罗BL-1024', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1693, N'133946', N'美的（midea) MRO102-4 厨房RO反渗透纯水机', N'http://www.360buy.com/product/133946.html', N'生活电器净水设备美的美的MRO102-4', N'1998.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1694, N'133952', N'惠普（HP）LaserJet CB540A黑色硒鼓（适用CP1215 1515n 1518ni CM1312/1312nfi MFP）', N'http://www.360buy.com/product/133952.html', N'办公打印硒鼓惠普惠普LaserJet CB540A', N'449.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1695, N'133957', N'惠普（HP）LaserJet CB541A 青色硒鼓（适用CP1215 1515n 1518ni CM1312/1312nfi MFP）', N'http://www.360buy.com/product/133957.html', N'办公打印硒鼓惠普惠普LaserJet CB541A', N'418.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1696, N'133958', N'惠普（HP）LaserJet CB542A黄色硒鼓（适用CP1215 1515n 1518ni CM1312/1312nfi MFP）', N'http://www.360buy.com/product/133958.html', N'办公打印硒鼓惠普惠普LaserJet CB542A', N'418.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1697, N'133959', N'惠普（HP）LaserJet CB543A红色硒鼓（适用CP1215 1515n 1518ni CM1312/1312nfi MFP）', N'http://www.360buy.com/product/133959.html', N'办公打印硒鼓惠普惠普LaserJet CB543A', N'418.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1698, N'134030', N'麦克赛尔（maxell）DVD+R 16速 4.7G 台产 古典系列 黄纹黑尊 桶装50片 刻录盘', N'http://www.360buy.com/product/134030.html', N'办公文仪刻录碟片/附件maxell麦克赛尔DVD+R 16速', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1699, N'134031', N'麦克赛尔（maxell）DVD-R 16速 4.7G 台产 古典系列 紫纹黑尊 桶装50片 刻录盘', N'http://www.360buy.com/product/134031.html', N'办公文仪刻录碟片/附件maxell麦克赛尔DVD-R 16速', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1700, N'134101', N'佳能（Canon） EF-S 18-200mm f/3.5-5.6IS 广角到长焦的11倍超大变焦比镜头', N'http://www.360buy.com/product/134101.html', N'摄影摄像镜头佳能佳能EF-S18-200mmf', N'4299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1701, N'￥4400.00', N'天梭(Tissot)经典系列男表T97.1.483.51', N'http://www.360buy.com/product/134121.html', N'瑞士品牌天梭 TISSOT天梭天梭男表', N'3600.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1702, N'134177', N'尼康（Nikon） D90 单反机身', N'http://www.360buy.com/product/134177.html', N'摄影摄像单反相机尼康尼康D90', N'4599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1703, N'134178', N'尼康（Nikon） D90 单反套机（AF-S DX 18-105 f/3.5-5.6G ED VR 防抖镜头）', N'http://www.360buy.com/product/134178.html', N'摄影摄像单反相机尼康尼康D90', N'5899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1704, N'￥193.90', N'乐扣乐扣保鲜盒套装7件套HPL827S001', N'http://www.360buy.com/product/134507.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒7件套', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1705, N'￥96.60', N'乐扣乐扣保鲜盒套装5件套HPL855S001', N'http://www.360buy.com/product/134509.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒5件套', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1706, N'134521', N'TCL HWDCD868(6)TS D15套 2.4G数字无绳电话 (黑色)', N'http://www.360buy.com/product/134521.html', N'生活电器电话机TCLTCLHWDCD868(6)TS D15', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1707, N'134549', N'佳能（Canon）CanoScan 5600F 扫描仪', N'http://www.360buy.com/product/134549.html', N'办公打印扫描仪佳能佳能CanoScan 5600F', N'1599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1708, N'134554', N'卡西欧原装保护套（颜色随机）', N'http://www.360buy.com/product/134554.html', N'时尚影音电子词典卡西欧卡西欧原装保护套', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1709, N'134563', N'富士施乐（Fuji Xerox）DocuPrint 2050 A3黑白快速激光打印机', N'http://www.360buy.com/product/134563.html', N'办公打印打印机富士施乐富士施乐DocuPrint 2050', N'2999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1710, N'134583', N'熊猫（panda）F538 液晶屏显示语言复读收录机', N'http://www.360buy.com/product/134583.html', N'生活电器收录/音机熊猫熊猫F538', N'142.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1711, N'134586', N'熊猫（panda）F638 语言复读收录机', N'http://www.360buy.com/product/134586.html', N'生活电器收录/音机熊猫熊猫F638', N'205.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1712, N'134591', N'熊猫（panda）F339 语音复读收录机', N'http://www.360buy.com/product/134591.html', N'生活电器收录/音机熊猫熊猫F339', N'142.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1713, N'134593', N'熊猫（panda）F328 480秒语言复读机', N'http://www.360buy.com/product/134593.html', N'生活电器收录/音机熊猫熊猫F328480', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1714, N'134679', N'麦博（microlab）K260 耳机', N'http://www.360buy.com/product/134679.html', N'时尚影音耳机/耳麦麦博麦博K260', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1715, N'134683', N'麦博（microlab）M-200（08）音箱', N'http://www.360buy.com/product/134683.html', N'时尚影音音箱麦博麦博M-200', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1716, N'￥1690.00', N'卡西欧(Casio)Edifice系列男表EF-524SP-1A', N'http://www.360buy.com/product/134714.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-524SP-1A', N'899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1717, N'134731', N'宝罗（Paull）专业摄影包BL-2052 适合于单反相机，3-4支镜头', N'http://www.360buy.com/product/134731.html', N'数码配件数码包宝罗宝罗BL-2052', N'259.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1718, N'134732', N'铼德（ARITA）DVD-R 16速 4.7G e时代系列 桶装50片 刻录盘', N'http://www.360buy.com/product/134732.html', N'办公文仪刻录碟片/附件铼德铼德DVD-R 1-16速', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1719, N'134733', N'铼德（ARITA）DVD+R 16速 4.7G e时代系列 桶装50片 刻录盘', N'http://www.360buy.com/product/134733.html', N'办公文仪刻录碟片/附件铼德铼德DVD+R 1-16速', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1720, N'134885', N'微软（Microsoft）无线激光鼠标ARC 黑色', N'http://www.360buy.com/product/134885.html', N'外设产品鼠标Microsoft微软无线激光鼠标ARC', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1721, N'134886', N'微软（Microsoft）无线激光鼠标ARC 红色', N'http://www.360buy.com/product/134886.html', N'外设产品鼠标Microsoft微软无线激光鼠标ARC', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1722, N'134905', N'罗技（Logitech）LS1 激光鼠标 黑色绿边', N'http://www.360buy.com/product/134905.html', N'外设产品鼠标罗技罗技LS1', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1723, N'134943', N'酷奇（Cooskin）笔记本电脑键盘通用保护膜', N'http://www.360buy.com/product/134943.html', N'电脑整机笔记本配件酷奇酷奇保护膜', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1724, N'134947', N'品胜（PISEN）EL12 数码相机电池', N'http://www.360buy.com/product/134947.html', N'数码配件电池/充电器品胜品胜EL12', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1725, N'134954', N'佳能（Canon） 430EX II 闪光灯', N'http://www.360buy.com/product/134954.html', N'摄影摄像闪光灯/手柄佳能佳能430EXII', N'1849.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1726, N'134961', N'力特（Z－TEK）ZE533 USB2.0转RS232串口线 酷黑/桃红色 1.8米', N'http://www.360buy.com/product/134961.html', N'外设产品线缆力特力特USB2.0转RS232串口线', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1727, N'135183', N'酷奇（cooskin）NB005笔记本电脑TPU键盘保护膜（适用于IBM ThinkPad SL300 SL400 SL500）', N'http://www.360buy.com/product/135183.html', N'电脑整机笔记本配件酷奇酷奇NB005', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1728, N'135188', N'酷奇（cooskin）NA003笔记本电脑TPU键盘保护膜（适用于苹果 MacBook）', N'http://www.360buy.com/product/135188.html', N'电脑整机笔记本配件酷奇酷奇NA003', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1729, N'135287', N'熊猫（panda）F410 高保真语言复读机', N'http://www.360buy.com/product/135287.html', N'生活电器收录/音机熊猫熊猫F410', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1730, N'135288', N'熊猫（panda）F430 高保真语言复读机', N'http://www.360buy.com/product/135288.html', N'生活电器收录/音机熊猫熊猫F430', N'105.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1731, N'135290', N'熊猫（panda）CD-200 手提式复读CD机', N'http://www.360buy.com/product/135290.html', N'生活电器收录/音机熊猫熊猫CD-200', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1732, N'135291', N'熊猫（panda）6500 便携式收录机', N'http://www.360buy.com/product/135291.html', N'生活电器收录/音机熊猫熊猫6500', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1733, N'135292', N'熊猫（panda）6510 便携式收录机', N'http://www.360buy.com/product/135292.html', N'生活电器收录/音机熊猫熊猫6510', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1734, N'135293', N'熊猫（panda）F838三波段双卡卡拉OK复读收录机', N'http://www.360buy.com/product/135293.html', N'生活电器收录/音机熊猫熊猫F838', N'279.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1735, N'135384', N'金士顿（Kingston）DDR2 800 1G笔记本内存', N'http://www.360buy.com/product/135384.html', N'电脑配件内存金士顿金士顿DDR2 800 1G', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1736, N'135392', N'罗技（Logitech）LS1 激光鼠标 白色', N'http://www.360buy.com/product/135392.html', N'外设产品鼠标罗技罗技LS1', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1737, N'135401', N'宝罗（Paull）镜头筒 BL-0005', N'http://www.360buy.com/product/135401.html', N'数码配件数码包宝罗宝罗BL-0005', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1738, N'135403', N'宝罗（Paull）镜头筒 BL-0006', N'http://www.360buy.com/product/135403.html', N'数码配件数码包宝罗宝罗BL-0006', N'80.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1739, N'135420', N'万和台式燃气灶D4-12T-G10X(天然气)', N'http://www.360buy.com/product/135420.html', N'大 家 电烟机/灶具万和万和D4-12T-G10X', N'338.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1740, N'135457', N'万和 JSQ21-10C-1 凝感智能节能恒温型燃气热水器（天然气）', N'http://www.360buy.com/product/135457.html', N'大 家 电热水器万和万和JSQ21-10C-1', N'1098.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1741, N'135468', N'松下（Panasonic） ER417K 鼻毛修剪器', N'http://www.360buy.com/product/135468.html', N'个护健康剃/脱毛器松下松下ER417K', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1742, N'135469', N'松下（Panasonic） ES-GA20-K 朗达电动剃须刀', N'http://www.360buy.com/product/135469.html', N'个护健康剃须刀松下松下ES-GA20-K', N'466.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1743, N'135490', N'康宝双门立式消毒柜ZTP80A-63H红色', N'http://www.360buy.com/product/135490.html', N'大 家 电消毒柜/洗碗机康宝康宝ZTP80A-63H', N'787.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1744, N'135568', N'乐摄宝（Lowepro）Fastpack 100 相机双肩背囊', N'http://www.360buy.com/product/135568.html', N'数码配件数码包乐摄宝乐摄宝Fastpack 100', N'621.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1745, N'135630', N'索尼（SONY）耳塞 MDR-E11LP 清晰音质 白色', N'http://www.360buy.com/product/135630.html', N'时尚影音耳机/耳麦索尼索尼MDR-E11LP', N'53.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1746, N'135638', N'创新（Creative）EP-830 耳机', N'http://www.360buy.com/product/135638.html', N'时尚影音耳机/耳麦创新创新EP-830', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1747, N'135642', N'创新（Creative）Aurvana LIVE 耳机', N'http://www.360buy.com/product/135642.html', N'时尚影音耳机/耳麦创新创新Aurvana LIVE', N'379.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1748, N'135733', N'三诺(3nod) IFI-311风云II 2.1+1系统独立功放多媒体 音箱 5.25英寸低音喇叭单元 典雅外观', N'http://www.360buy.com/product/135733.html', N'时尚影音音箱三诺三诺IFI-311', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1749, N'135734', N'奔腾(POVOS)电磁炉 PC20E-H 附带汤锅+炒锅', N'http://www.360buy.com/product/135734.html', N'厨房电器电磁炉奔腾奔腾PC20E-H', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1750, N'135895', N'佳能（Canon） EOS 5D Mark II 单反机身', N'http://www.360buy.com/product/135895.html', N'摄影摄像单反相机佳能佳能EOS5D Mark II', N'11999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1751, N'135896', N'佳能（Canon） EOS 5D Mark II 单反套机（EF 24-105mm f/4L IS USM 镜头）', N'http://www.360buy.com/product/135896.html', N'摄影摄像单反相机佳能佳能EOS 5D Mark II', N'16555.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1752, N'135934', N'TYPE-R 强力止滑垫/防滑垫（黑色 ）', N'http://www.360buy.com/product/135934.html', N'车饰精品功能精品TYPE-RTYPE-R防滑垫', N'14.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1753, N'135951', N'黄晶甲汽车打蜡专用绵40124-YH 颜色随机', N'http://www.360buy.com/product/135951.html', N'汽车美容擦车巾/海绵黄晶甲黄晶甲40124-YH', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1754, N'136037', N'奇乐思单反相机电池手柄 适用于尼康D300S/D700(带遥控器）', N'http://www.360buy.com/product/136037.html', N'摄影摄像闪光灯/手柄奇乐思奇乐思D300', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1755, N'136038', N'奇乐思双通道双行程红外遥控器(标配奇乐思带红外手柄可以用) 适用于奇乐思450D/50D/D300/D90手柄', N'http://www.360buy.com/product/136038.html', N'摄影摄像单反配件奇乐思奇乐思双通道双行程红外遥控器', N'96.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1756, N'136061', N'飞利浦（Philips）FC6132 手持式吸尘器', N'http://www.360buy.com/product/136061.html', N'生活电器吸尘器飞利浦飞利浦FC6132', N'459.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1757, N'136062', N'飞利浦（Philips） FC6130 手持式吸尘器', N'http://www.360buy.com/product/136062.html', N'生活电器吸尘器飞利浦飞利浦FC6130', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1758, N'136063', N'安美驰（AMERRY）超洁除尘掸 （家车两用）', N'http://www.360buy.com/product/136063.html', N'汽车美容洗车工具安美驰安美驰超洁除尘掸', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1759, N'136067', N'安美驰（AMERRY）巧易洁除除尘掸', N'http://www.360buy.com/product/136067.html', N'汽车美容洗车工具安美驰安美驰巧易洁除除尘掸', N'9.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1760, N'136144', N'飞利浦（PHILIPS） SPA2341 2.1声道 多媒体 音箱 黑色', N'http://www.360buy.com/product/136144.html', N'时尚影音音箱飞利浦飞利浦SPA2341', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1761, N'136175', N'飞利浦（PHILIPS） SWV7123W/93 高清有线电视射频信号线9.5直头对弯头24K镀金头 3米', N'http://www.360buy.com/product/136175.html', N'外设产品线缆飞利浦飞利浦射频信号线', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1762, N'136177', N'飞利浦（PHILIPS） SWV7132W/93 高清有线电视射频信号线24K镀金头9.5直头对F头公制 1.5米', N'http://www.360buy.com/product/136177.html', N'外设产品线缆飞利浦飞利浦射频信号线', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1763, N'￥258.90', N'乐扣乐扣保鲜盒套装8件套HPL827S002', N'http://www.360buy.com/product/136229.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒8件套', N'176.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1764, N'136244', N'三堡（SANBAO）VGA304 4口视频分配器', N'http://www.360buy.com/product/136244.html', N'外设产品线缆三堡三堡VGA304', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1765, N'136302', N'安心 液晶电视移动车 DJ0005C（42-63英寸）', N'http://www.360buy.com/product/136302.html', N'大 家 电家电配件安心安心DJ0005C', N'2800.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1766, N'136303', N'安心 液晶电视不可调角度壁挂架 DJ856（26-50英寸）', N'http://www.360buy.com/product/136303.html', N'大 家 电家电配件安心安心856', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1767, N'136304', N'安心 DJ855 （40-50英寸）液晶电视不可调角度壁挂架（黑色/银色随机）', N'http://www.360buy.com/product/136304.html', N'大 家 电家电配件安心安心DJ855', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1768, N'136306', N'安心 液晶电视可调角度壁挂架 DJ805（37-63英寸）', N'http://www.360buy.com/product/136306.html', N'大 家 电家电配件安心安心 DJ805', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1769, N'136311', N'安心 液晶电视双臂折叠架 DJ590（15-22英寸）', N'http://www.360buy.com/product/136311.html', N'大 家 电家电配件安心安心DJ590', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1770, N'136313', N'安心（ANXIN）DJ0003A-2M 天花板式液晶电视悬吊架（17-37英寸）', N'http://www.360buy.com/product/136313.html', N'大 家 电家电配件安心安心DJ0003A', N'238.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1771, N'136327', N'安心 液晶电视悬吊架 DJ0003（30-55英寸 2M以内）', N'http://www.360buy.com/product/136327.html', N'大 家 电家电配件安心安心DJ0003', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1772, N'136328', N'超频三（PCcooler）A1超频导热膏', N'http://www.360buy.com/product/136328.html', N'电脑配件散热器超频三超频三A1超频导热膏', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1773, N'136330', N'安心 液晶电视折臂架 DJ812（37-63英寸）', N'http://www.360buy.com/product/136330.html', N'大 家 电家电配件安心安心DJ812', N'1888.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1774, N'136332', N'安心 液晶电视超豪华移动车 DJ0005A（37-52英寸）', N'http://www.360buy.com/product/136332.html', N'大 家 电家电配件安心安心 DJ0005A', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1775, N'136334', N'安心 液晶电视超豪华移动车 DJ0005B（37-52英寸）', N'http://www.360buy.com/product/136334.html', N'大 家 电家电配件安心安心 DJ0005B', N'1380.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1776, N'￥299.00', N'凯仕达第8代电脑USB手舞足蹈跳舞毯 最新款', N'http://www.360buy.com/product/136335.html', N'健身玩具炫舞毯凯仕达凯仕达跳舞毯', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1777, N'136358', N'漫步者（EDIFIER） R10U 2.0声道 多媒体音箱 黑色', N'http://www.360buy.com/product/136358.html', N'时尚影音音箱漫步者漫步者R10U', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1778, N'136360', N'漫步者（EDIFIER） R101V 2.1声道多媒体音箱 黑色', N'http://www.360buy.com/product/136360.html', N'时尚影音音箱漫步者漫步者R101V', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1779, N'136361', N'金士顿（Kingston）4G Class4 TF（micro SD）存储卡', N'http://www.360buy.com/product/136361.html', N'数码配件存储卡金士顿金士顿4GTF', N'27.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1780, N'136362', N'漫步者（EDIFIER） R1600T08 2.0声道 多媒体音箱 黑色', N'http://www.360buy.com/product/136362.html', N'时尚影音音箱漫步者漫步者R1600T08', N'459.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1781, N'136363', N'金士顿（Kingston）8G Class4 TF（micro SD）存储卡', N'http://www.360buy.com/product/136363.html', N'数码配件存储卡金士顿金士顿8GTF', N'39.90')
GO
print 'Processed 1700 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1782, N'136365', N'漫步者（EDIFIER） R301T 北美版 2.1声道 多媒体音箱 黑色', N'http://www.360buy.com/product/136365.html', N'时尚影音音箱漫步者漫步者R301T北美版', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1783, N'￥42.60', N'乐扣乐扣1.9L保鲜盒HPL818', N'http://www.360buy.com/product/136374.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1784, N'136421', N'科密(comet) 3868 办公碎纸机首创触摸安全停机技术(粒状2*8 5-6张 16L 碎光盘信用卡 双刀)', N'http://www.360buy.com/product/136421.html', N'办公打印碎纸机科密科密Office Shredder 3868', N'1119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1785, N'136430', N'科密(comet) 3538 个人3级保密家庭办公碎纸机（首创安全触摸停机技术/可碎光盘/卡片/）', N'http://www.360buy.com/product/136430.html', N'办公打印碎纸机科密科密Office Shredder 3538', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1786, N'136434', N'建兴（LITEON）18X 串口 DVD光驱 黑色', N'http://www.360buy.com/product/136434.html', N'电脑配件刻录机/光驱建兴建兴18X 光驱', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1787, N'136485', N'飞科（FLYCO） FS7805 鼻毛修剪器', N'http://www.360buy.com/product/136485.html', N'个护健康剃/脱毛器飞科飞科FS7805', N'29.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1788, N'136495', N'松下（Panasonic）耳挂式耳机 HS33E-D 橙色', N'http://www.360buy.com/product/136495.html', N'时尚影音耳机/耳麦松下松下HS33', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1789, N'136496', N'松下（Panasonic）耳挂式耳机 HS33E-G 绿色', N'http://www.360buy.com/product/136496.html', N'时尚影音耳机/耳麦松下HS33HS33', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1790, N'136497', N'松下（Panasonic）耳机HS47E-A 蓝色', N'http://www.360buy.com/product/136497.html', N'时尚影音耳机/耳麦松下松下HS47-A', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1791, N'136498', N'松下（Panasonic）耳机HS47E-K 黑色', N'http://www.360buy.com/product/136498.html', N'时尚影音耳机/耳麦松下松下HS47-K', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1792, N'136501', N'松下（Panasonic）耳机HS47E-R 红色', N'http://www.360buy.com/product/136501.html', N'时尚影音耳机/耳麦松下松下HS47-R', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1793, N'136502', N'松下（Panasonic）耳机HS47E-W 白色', N'http://www.360buy.com/product/136502.html', N'时尚影音耳机/耳麦松下松下HS47-W', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1794, N'136525', N'松下（Panasonic）头戴式耳机 HTX7AE-A 蓝色', N'http://www.360buy.com/product/136525.html', N'时尚影音耳机/耳麦松下松下HTX7', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1795, N'136526', N'松下（Panasonic）头戴式耳机 HTX7AE-G 绿色', N'http://www.360buy.com/product/136526.html', N'时尚影音耳机/耳麦松下松下HTX7', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1796, N'136527', N'松下（Panasonic）头戴式耳机 RP-HTX7AE-K 黑色', N'http://www.360buy.com/product/136527.html', N'时尚影音耳机/耳麦松下松下RP-HTX7AE-K', N'579.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1797, N'136528', N'松下（Panasonic）头戴式耳机 RP-HTX7AE-P 粉色', N'http://www.360buy.com/product/136528.html', N'时尚影音耳机/耳麦松下松下RP-HTX7AE-P', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1798, N'136529', N'松下（Panasonic）头戴式耳机 HTX7AE-W 白色', N'http://www.360buy.com/product/136529.html', N'时尚影音耳机/耳麦松下松下HTX7', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1799, N'136531', N'松下（Panasonic）耳塞式耳机 HV21GK-G 绿色', N'http://www.360buy.com/product/136531.html', N'时尚影音耳机/耳麦松下松下HV21', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1800, N'136533', N'松下（Panasonic） RP-HV21GK-K 多彩糖豆耳机系列 黑色', N'http://www.360buy.com/product/136533.html', N'时尚影音耳机/耳麦松下松下HV21', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1801, N'136578', N'爱普生（EPSON）LQ-730K 针式打印机（80列平推式）', N'http://www.360buy.com/product/136578.html', N'办公打印打印机爱普生爱普生LQ-730K', N'1669.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1802, N'136609', N'惠普（HP）CC640ZZ 818号黑色墨盒（适用Deskjet D1668 2568 2668 5568 F4238 ENVY110）', N'http://www.360buy.com/product/136609.html', N'办公打印墨盒惠普惠普CC640ZZ 818号', N'108.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1803, N'136611', N'惠普（HP）CC643ZZ 818号 彩色墨盒（适用Deskjet D1668 D2568 D2668 D5568 F4238 ENVY110）', N'http://www.360buy.com/product/136611.html', N'办公打印墨盒惠普惠普CC643ZZ 818号', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1804, N'136613', N'惠普（HP）CC653AA 901号黑色墨盒（适用Officejet J4580 J4660 4500）', N'http://www.360buy.com/product/136613.html', N'办公打印墨盒惠普惠普CC653AA 901号', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1805, N'136614', N'惠普（HP）CC654AA 901XL黑色超高容量墨盒（适用HP Officejet J4580 J4660 4500）', N'http://www.360buy.com/product/136614.html', N'办公打印墨盒惠普惠普CC654AA 901XL', N'175.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1806, N'136615', N'惠普（HP）CC656AA 901号彩色墨盒（适用HP Officejet J4580 J4660 4500）', N'http://www.360buy.com/product/136615.html', N'办公打印墨盒惠普惠普CC656AA 901号', N'165.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1807, N'136617', N'信鸽(XINGE)100寸 电动投影幕布16:9白塑幕', N'http://www.360buy.com/product/136617.html', N'办公打印投影配件信鸽信鸽100', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1808, N'136621', N'惠普（HP）CG500AA 817号墨盒+25张高级相片纸套装(适用D2468 F2188 Officejet4308 4338)', N'http://www.360buy.com/product/136621.html', N'办公打印墨盒惠普惠普CG500AA817', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1809, N'136643', N'万和台式燃气灶D4-20Y-G10X(液化气)', N'http://www.360buy.com/product/136643.html', N'大 家 电烟机/灶具万和万和D4-20Y-G10X', N'338.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1810, N'136695', N'罗技（Logitech）LS1 激光鼠标 黑色红边', N'http://www.360buy.com/product/136695.html', N'外设产品鼠标罗技罗技LS1', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1811, N'136708', N'酷冷大师（ThermalMaster）南海战神TC-220-KKN1机箱（黑色）', N'http://www.360buy.com/product/136708.html', N'电脑配件机箱酷冷至尊酷冷大师TC-220-KKN1', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1812, N'136861', N'金士顿（Kingston）8G Class4 SD存储卡', N'http://www.360buy.com/product/136861.html', N'数码配件存储卡金士顿金士顿8GSDHC', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1813, N'136921', N'宝罗（Paull）专业摄影包BL-3003（黑配绿）适用于550D/600D/D90/D3000/D5000等单反相机', N'http://www.360buy.com/product/136921.html', N'数码配件数码包宝罗宝罗BL-3003', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1814, N'136922', N'宝罗（Paull）专业摄影包BL-3004（黑配绿）适用于600D/550D/D90/D3000/50D等单反相机', N'http://www.360buy.com/product/136922.html', N'数码配件数码包宝罗宝罗BL-3004', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1815, N'￥169.00', N'爱仕达1.9L不锈钢保温提锅1619G', N'http://www.360buy.com/product/136927.html', N'收纳保鲜饭盒/提锅爱仕达爱仕达提锅', N'139.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1816, N'￥162.00', N'爱仕达不锈钢蒸锅JX1528', N'http://www.360buy.com/product/136930.html', N'烹饪锅具蒸锅爱仕达爱仕达蒸锅', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1817, N'￥769.00', N'爱仕达五层钢无烟炒锅SW1330', N'http://www.360buy.com/product/136934.html', N'烹饪锅具炒锅爱仕达爱仕达炒锅', N'429.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1818, N'136964', N'紫光（UNIS）精品双面 PP袋 （100片）', N'http://www.360buy.com/product/136964.html', N'办公文仪刻录碟片/附件紫光紫光PP袋', N'14.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1819, N'137013', N'圣奇仕(sunqs) EL12 高品质数码电池 适用于尼康S710/S610/S620/S630/S640等', N'http://www.360buy.com/product/137013.html', N'数码配件电池/充电器圣奇仕圣奇仕EL12', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1820, N'137014', N'圣奇仕(sunqs) EL9 高品质数码电池 适用于尼康D40/D40X/D60/D3000/D5000', N'http://www.360buy.com/product/137014.html', N'数码配件电池/充电器圣奇仕圣奇仕EL9', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1821, N'137141', N'格力（GREE）空气净化器 KJLG200-1(带负离子发生器）', N'http://www.360buy.com/product/137141.html', N'生活电器净化器格力格力KJLG200-1', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1822, N'￥58.00', N'十八子作 中华庖丁斩切刀D02', N'http://www.360buy.com/product/137179.html', N'刀剪砧板单刀十八子作十八子作斩切刀', N'39.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1823, N'￥108.00', N'十八子作凤之刃铜柄斩切刀S302', N'http://www.360buy.com/product/137189.html', N'刀剪砧板单刀十八子作十八子作斩切刀', N'59.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1824, N'￥98.00', N'十八子作雀之屏切片刀S2601-B', N'http://www.360buy.com/product/137190.html', N'刀剪砧板单刀十八子作十八子作切片刀', N'49.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1825, N'￥100.00', N'十八子作南极银锋斩切刀S2606-A', N'http://www.360buy.com/product/137193.html', N'刀剪砧板单刀十八子作十八子作斩切刀', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1826, N'￥110.00', N'十八子作钢柄钢刀大家庭DT1', N'http://www.360buy.com/product/137194.html', N'刀剪砧板套刀十八子作十八子作钢柄钢刀', N'75.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1827, N'￥103.00', N'十八子作斩切双刃彩木柄斩切刀TM221', N'http://www.360buy.com/product/137197.html', N'刀剪砧板单刀十八子作十八子作斩切刀', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1828, N'￥76.00', N'十八子作9切肉刀5007-C', N'http://www.360buy.com/product/137200.html', N'刀剪砧板单刀十八子作十八子作切肉刀', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1829, N'￥18.00', N'十八子作折叠果刀H250', N'http://www.360buy.com/product/137201.html', N'刀剪砧板单刀十八子作十八子作折叠果刀', N'9.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1830, N'￥650.00', N'十八子作银星高级复合钢刀7件套S-2503', N'http://www.360buy.com/product/137202.html', N'刀剪砧板套刀十八子作十八子作复合钢刀7件套', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1831, N'137232', N'宝罗（Paull）专业摄影包BL-1017（黑色）适用于600D/550D/D90/D3000/E620等单反相机', N'http://www.360buy.com/product/137232.html', N'数码配件数码包宝罗宝罗BL-1017', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1832, N'137233', N'宝罗（Paull）专业摄影包BL-1015（黑色）适用于600D/550D/D90/D3000等单反相机', N'http://www.360buy.com/product/137233.html', N'数码配件数码包宝罗宝罗BL-1015', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1833, N'137306', N'威刚（ADATA）DDR2 800 2G笔记本机内存', N'http://www.360buy.com/product/137306.html', N'电脑配件内存威刚威刚DDR2 800 2G', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1834, N'137310', N'创新（Creative）耳机EP-430（灰）', N'http://www.360buy.com/product/137310.html', N'时尚影音耳机/耳麦创新创新430', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1835, N'137311', N'创新（Creative）耳机EP-430（橙）', N'http://www.360buy.com/product/137311.html', N'时尚影音耳机/耳麦创新创新430', NULL)
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1836, N'137312', N'创新（Creative）耳机EP-430（粉）', N'http://www.360buy.com/product/137312.html', N'时尚影音耳机/耳麦创新创新430', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1837, N'137313', N'创新（Creative）耳机EP-430（黑）', N'http://www.360buy.com/product/137313.html', N'时尚影音耳机/耳麦创新创新耳机EP-430', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1838, N'137315', N'创新（Creative）耳机EP-430（蓝）', N'http://www.360buy.com/product/137315.html', N'时尚影音耳机/耳麦创新创新430', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1839, N'￥189.00', N'索客楠竹菱形孔散热可升降电脑桌D-006', N'http://www.360buy.com/product/137358.html', N'家具电脑桌椅索客索客电脑桌', N'63.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1840, N'￥196.00', N'索客四层收折架', N'http://www.360buy.com/product/137361.html', N'家具书架层架索客索客四层收折架', N'76.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1841, N'137473', N'国家地理（National Geographic）1147 小型数码相机包（探索者系列）', N'http://www.360buy.com/product/137473.html', N'数码配件数码包国家地理国家地理NG1147', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1842, N'137476', N'国家地理（National Geographic）1150 小型数码相机包（探索者系列）', N'http://www.360buy.com/product/137476.html', N'数码配件数码包国家地理国家地理NG1150', N'219.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1843, N'￥49.90', N'侨丰带泵压缩袋', N'http://www.360buy.com/product/137531.html', N'生活日用收纳用品侨丰侨丰压缩袋', N'29.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1844, N'￥39.90', N'侨丰衣物压缩袋70X100cm', N'http://www.360buy.com/product/137535.html', N'生活日用收纳用品侨丰侨丰衣物压缩袋', N'19.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1845, N'137570', N'奥普（AUPU）QDP822A 风暖型浴霸', N'http://www.360buy.com/product/137570.html', N'五金家装浴霸/排气扇奥普奥普QDP822A', N'881.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1846, N'137576', N'奥普（AUPU）BP11-3D 吸顶式通风扇 20W', N'http://www.360buy.com/product/137576.html', N'五金家装浴霸/排气扇奥普奥普BP11-3D', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1847, N'137578', N'奥普（AUPU）BP11-4D 吸顶式通风扇 20W', N'http://www.360buy.com/product/137578.html', N'五金家装浴霸/排气扇奥普奥普BP11-4D', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1848, N'137580', N'奥普（AUPU）BP11-6D 吸顶式通风扇 35W', N'http://www.360buy.com/product/137580.html', N'五金家装浴霸/排气扇奥普奥普BP11-6D', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1849, N'137657', N'LENSPEN 高级专业镜头笔（大号）', N'http://www.360buy.com/product/137657.html', N'数码配件相机清洁LENSPENLENSPEN高级专业镜头笔', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1850, N'137845', N'兄弟(brother) TZ-221/TZe-221 9mm 白底黑字标签色带 (适用 PT-2420PC PT-3600)', N'http://www.360buy.com/product/137845.html', N'办公打印色带兄弟兄弟TZ-221', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1851, N'137846', N'兄弟(brother) TZ-231/TZe-231 12mm 白底黑字标签色带 (适用 PT-1280 PT-2700)', N'http://www.360buy.com/product/137846.html', N'办公打印色带兄弟兄弟TZ-231', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1852, N'138013', N'兄弟(brother) TZ-241/TZe-241 18mm 白底黑字标签色带 (适用 PT-2700 PT-18R)', N'http://www.360buy.com/product/138013.html', N'办公打印色带兄弟兄弟TZ-241', N'110.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1853, N'138014', N'兄弟(brother) TZ-621/TZe-621 9mm 黄底黑字标签色带 (适用 PT-2400PC PT-3600)', N'http://www.360buy.com/product/138014.html', N'办公打印色带兄弟兄弟TZ-621A', N'90.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1854, N'138036', N'兄弟(brother) TZ-631/TZe-631 12mm 黄底黑字标签色带 (适用 PT-1280 PT-2700)', N'http://www.360buy.com/product/138036.html', N'办公打印色带兄弟兄弟TZ-631A', N'95.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1855, N'138054', N'格力（GREE）硅晶电热膜取暖器 NDYC-20', N'http://www.360buy.com/product/138054.html', N'生活电器取暖电器格力格力NDYC-20', N'318.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1856, N'138055', N'紫光（UNIS）CD-R 52速 700M 碟之恋系列 桶装50片 刻录盘', N'http://www.360buy.com/product/138055.html', N'办公文仪刻录碟片/附件紫光紫光CD-R 52速', N'48.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1857, N'138326', N'紫光（UNIS）DVD+R DL 8速 8.5G 单面双层 天海系列 桶装10片 刻录盘', N'http://www.360buy.com/product/138326.html', N'办公文仪刻录碟片/附件紫光紫光DVD+R 8速', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1858, N'138380', N'皇威 遥控智能养生足浴器 H-303C', N'http://www.360buy.com/product/138380.html', N'个护健康足浴盆皇威皇威H-303C', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1859, N'138381', N'皇威 智能养生足浴器 H-305B', N'http://www.360buy.com/product/138381.html', N'个护健康足浴盆皇威皇威H-305B', N'866.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1860, N'138382', N'皇威 电脑版水流气血循环机 H-209C', N'http://www.360buy.com/product/138382.html', N'个护健康足浴盆皇威皇威H-209C', N'238.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1861, N'138383', N'皇威 遥控水流气血循环机 H-205C', N'http://www.360buy.com/product/138383.html', N'个护健康足浴盆皇威皇威H-205C', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1862, N'138384', N'皇威 小天使健康足浴器 H-107A', N'http://www.360buy.com/product/138384.html', N'个护健康足浴盆皇威皇威H-107A', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1863, N'￥127.10', N'乐扣乐扣 保鲜盒4件套 HPL818S003', N'http://www.360buy.com/product/138479.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒4件套', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1864, N'￥101.90', N'乐扣乐扣保鲜盒4件套HPL817S002', N'http://www.360buy.com/product/138481.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒4件套', N'68.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1865, N'￥163.40', N'乐扣乐扣保鲜盒6件套HPL818S001', N'http://www.360buy.com/product/138485.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒6件套', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1866, N'￥847.90', N'乐扣乐扣保鲜盒26件套HPL886S001', N'http://www.360buy.com/product/138490.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒26件套', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1867, N'￥168.90', N'乐扣乐扣保鲜盒6件套HPL855S002', N'http://www.360buy.com/product/138535.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒6件套', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1868, N'￥186.60', N'乐扣乐扣保鲜盒7件套HPL818S002', N'http://www.360buy.com/product/138537.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒7件套', N'136.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1869, N'￥28.90', N'乐扣乐扣1L上开口保鲜盒HPL812F', N'http://www.360buy.com/product/138538.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'20.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1870, N'￥41.70', N'乐扣乐扣 1.8L上开口保鲜盒HPL813F', N'http://www.360buy.com/product/138539.html', N'收纳保鲜保鲜盒乐扣乐扣乐扣乐扣保鲜盒', N'28.80')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1871, N'138571', N'龟牌（Turtle Wax）彩神黑蜡G-186', N'http://www.360buy.com/product/138571.html', N'汽车美容美容车蜡龟牌龟牌G-186', N'21.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1872, N'138572', N'龟牌（Turtle Wax）去污蜡T-241A', N'http://www.360buy.com/product/138572.html', N'汽车美容漆面修复龟牌龟牌T-241A', N'23.80')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1873, N'138585', N'风王（COIDO）超大功率轮胎打气泵6220', N'http://www.360buy.com/product/138585.html', N'电子电器充气泵风王风王6220', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1874, N'138587', N'风王（COIDO）胎压计6075（黑色）', N'http://www.360buy.com/product/138587.html', N'电子电器胎压计风王风王6075', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1875, N'138674', N'西门子（SIEMENS） KK20V40TI 200升 双门冰箱（白色）', N'http://www.360buy.com/product/138674.html', N'大 家 电冰箱西门子西门子KK20V40TI', N'2099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1876, N'138842', N'圣奇仕(sunqs) 佳能NB7L 高品质数码电池 适用于佳能G10/G11', N'http://www.360buy.com/product/138842.html', N'数码配件电池/充电器圣奇仕圣奇仕NB7L', N'50.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1877, N'138880', N'山特（STK）后备式UPS电源 MT500-PRO', N'http://www.360buy.com/product/138880.html', N'外设产品UPS电源山特山特MT500-PRO', N'499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1878, N'138927', N'索尼（SONY）多媒体音箱 SRS-M50 炫彩便携旅行音箱 粉色', N'http://www.360buy.com/product/138927.html', N'时尚影音音箱索尼索尼SRS-M50', N'288.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1879, N'138928', N'索尼（SONY）多媒体音箱 SRS-T10PC USB供电便携式音箱 粉色', N'http://www.360buy.com/product/138928.html', N'时尚影音音箱索尼索尼SRST10PC', N'368.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1880, N'138929', N'索尼（SONY）多媒体音箱 SRS-T10PC USB供电便携式音箱 白色', N'http://www.360buy.com/product/138929.html', N'时尚影音音箱索尼索尼SRST10PC', N'369.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1881, N'138934', N'声丽（Senic） SM-008 话筒 鹅颈式 黑色 单插头', N'http://www.360buy.com/product/138934.html', N'时尚影音麦克风硕美科硕美科SM008', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1882, N'138940', N'电音（Danyin） DX-130 耳麦 耳挂式 双插头 线控 银色', N'http://www.360buy.com/product/138940.html', N'时尚影音耳机/耳麦硕美科硕美科DX-130', N'24.00')
GO
print 'Processed 1800 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1883, N'138941', N'电音（Danyin） DX-130 耳麦 耳挂式 双插头 线控 粉色', N'http://www.360buy.com/product/138941.html', N'时尚影音耳机/耳麦硕美科硕美科DX-130', N'24.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1884, N'138950', N'飞利浦（PHILIPS） SPA5300 2.1声道 线控 多媒体 音箱 黑色', N'http://www.360buy.com/product/138950.html', N'时尚影音音箱飞利浦飞利浦SPA5300', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1885, N'138973', N'麦博（microlab）M200音箱十周年纪念版', N'http://www.360buy.com/product/138973.html', N'时尚影音音箱麦博麦博M200音箱', N'216.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1886, N'138980', N'突破（TOP）基准至强系列插座 6联3米TZ-C0726K6', N'http://www.360buy.com/product/138980.html', N'生活电器插座突破突破TZ-C0726K6', N'134.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1887, N'138983', N'突破（TOP）基准安全推广系列插座 5联3米（独立开关+过载保护）TZ-C5K5', N'http://www.360buy.com/product/138983.html', N'生活电器插座突破突破TZ-C5K5', N'86.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1888, N'138986', N'突破（TOP）基准大功率插座 2联3米（超大功率） TZ-HD2', N'http://www.360buy.com/product/138986.html', N'生活电器插座突破突破TZ-HD2', N'54.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1889, N'138987', N'突破TZ-C4K4（TOP）基准安全推广系列插座 4联3米 （过载保护+独立开关+黄金角设计）', N'http://www.360buy.com/product/138987.html', N'生活电器插座突破突破TZ-C4K4', N'72.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1890, N'138991', N'突破TZ-HD3（TOP）保镖安全推广系列插座 16A超大功率 2联3米 (指示灯开关+安全盾行边）空调专用', N'http://www.360buy.com/product/138991.html', N'生活电器插座突破突破TZ-HD3', N'56.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1891, N'138993', N'突破（TOP）基准至强系列 5联3米 （独立开关+过载保护+防雷击+夜光指示）TZ-C0725K5', N'http://www.360buy.com/product/138993.html', N'生活电器插座突破突破TZ-C0725K5', N'122.20')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1892, N'138994', N'突破（TOP）基准至强系列 4联3米（独立开关+过载保护+防雷击+夜光指示）TZ-C0724K4', N'http://www.360buy.com/product/138994.html', N'生活电器插座突破突破TZ-C0724K4', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1893, N'139003', N'突破TZ-C04（TOP）电工“走遍天下”多用转换器 两联二孔', N'http://www.360buy.com/product/139003.html', N'生活电器插座突破突破TZ-C04', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1894, N'139006', N'突破（TOP）电工“走遍天下”旅游转换器 德标（带指示灯）TZ-382', N'http://www.360buy.com/product/139006.html', N'生活电器插座突破突破TZ-382', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1895, N'139009', N'突破（TOP）电工“走遍天下”旅游转换器 印度标 TZ-34', N'http://www.360buy.com/product/139009.html', N'生活电器插座突破突破TZ-34', N'24.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1896, N'139010', N'突破（TOP）电工“走遍天下”旅游转换器 美标 TZ-33', N'http://www.360buy.com/product/139010.html', N'生活电器插座突破突破TZ-33', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1897, N'139016', N'突破（TOP）电工“走遍天下”系列 一转三转换器 TZ-C07', N'http://www.360buy.com/product/139016.html', N'生活电器插座突破突破TZ-C07', N'34.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1898, N'139018', N'突破（TOP）电工“走遍天下”系列 一转三转换器 TZ-C08', N'http://www.360buy.com/product/139018.html', N'生活电器插座突破突破TZ-C08', N'44.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1899, N'139027', N'突破（TOP）电工旅转线路优惠装 欧洲游 TZ-86T2', N'http://www.360buy.com/product/139027.html', N'生活电器插座突破突破TZ-86T2', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1900, N'139031', N'突破（TOP）电工 16A插头', N'http://www.360buy.com/product/139031.html', N'生活电器插座突破突破16A', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1901, N'139032', N'突破（TOP）电工 10A插头', N'http://www.360buy.com/product/139032.html', N'生活电器插座突破突破10A', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1902, N'139035', N'突破（TOP）基准安全推广系列插座 7联3米（倍能开关+过载保护+指示灯）TZ-C17', N'http://www.360buy.com/product/139035.html', N'生活电器插座突破突破TZ-C17', N'63.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1903, N'139036', N'突破（TOP）基准安全推广系列插座 8联3米（安全盾行边+倍能开关+过载保护）TZ-C18', N'http://www.360buy.com/product/139036.html', N'生活电器插座突破突破TZ-C18', N'83.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1904, N'139038', N'突破（TOP）基准插座 6联3米（单控开关+过载保护+电源指示灯）TZ-1008', N'http://www.360buy.com/product/139038.html', N'生活电器插座突破突破TZ-1008', N'88.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1905, N'139039', N'突破（TOP）基准插座 3联1.8米（单控开关+过载保护+6°黄金角设计）TZ-C3K3', N'http://www.360buy.com/product/139039.html', N'生活电器插座突破突破TZ-C3K3', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1906, N'139040', N'突破（TOP）基准插座 5联3米（单控开关+过载保护）TZ-1007', N'http://www.360buy.com/product/139040.html', N'生活电器插座突破突破TZ-1007', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1907, N'139041', N'突破（TOP）基准插座 5联3米（倍能开关+过载保护）TZ-C15', N'http://www.360buy.com/product/139041.html', N'生活电器插座突破突破TZ-C15', N'56.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1908, N'139043', N'突破（TOP）基准插座 2联1.8米（倍能开关+过载保护）TZ-C1K2', N'http://www.360buy.com/product/139043.html', N'生活电器插座突破突破TZ-C1K2', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1909, N'139045', N'突破TZ-C162（TOP）基准插座 6联3米（倍能开关+过载保护）', N'http://www.360buy.com/product/139045.html', N'生活电器插座突破突破TZ-C162', N'65.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1910, N'￥56.00', N'茶花欧式米桶2305 颜色随机', N'http://www.360buy.com/product/139141.html', N'烹饪锅具厨用杂件茶花茶花米桶', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1911, N'￥72.00', N'茶花大号食品保鲜袋100只3303', N'http://www.360buy.com/product/139144.html', N'收纳保鲜保鲜膜/袋茶花茶花保鲜袋', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1912, N'139175', N'佳能（Canon）LASERSHOT LBP5050 彩色激光打印机', N'http://www.360buy.com/product/139175.html', N'办公打印打印机佳能佳能LASERSHOTLBP5050', N'2099.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1913, N'139176', N'佳能（Canon）LASERSHOT LBP5050n 彩色激光打印机', N'http://www.360buy.com/product/139176.html', N'办公打印打印机佳能佳能LASERSHOTLBP5050n', N'2999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1914, N'139208', N'灿坤（EUPA）多功能电火锅8201A', N'http://www.360buy.com/product/139208.html', N'厨房电器多用途锅灿坤灿坤8201A', N'189.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1915, N'139209', N'灿坤（EUPA）锅炉式高压蒸汽咖啡机TSK-1822A', N'http://www.360buy.com/product/139209.html', N'厨房电器咖啡机灿坤灿坤TSK-1822A', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1916, N'139212', N'灿坤（EUPA）多功能煎烤器TSK-2702DGP', N'http://www.360buy.com/product/139212.html', N'厨房电器电饼铛/烧烤盘灿坤灿坤TSK-2702DGP', N'239.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1917, N'139213', N'灿坤（EUPA）多功能煎烤器TSK-2332BGP', N'http://www.360buy.com/product/139213.html', N'厨房电器电饼铛/烧烤盘灿坤灿坤TSK-2332BGP', N'169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1918, N'139236', N'飞利浦（PHILIPS）CORD222来电显示电话机（蓝色）', N'http://www.360buy.com/product/139236.html', N'生活电器电话机飞利浦飞利浦CORD222', N'110.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1919, N'￥138.00', N'青鸟加厚PVC8mm防滑耐用瑜珈垫深紫色 送背包+毛扣', N'http://www.360buy.com/product/139298.html', N'纤体瑜伽瑜伽垫青鸟青鸟8mm', N'59.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1920, N'139332', N'ThinkPad 原装T/R系列14寸宽屏6芯增强型电池 41U3198 适用于T400,R400,R61 T61 for 14W', N'http://www.360buy.com/product/139332.html', N'电脑整机笔记本配件联想（ThinkPad）联想（ThinkPad）41U3198', N'525.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1921, N'￥149.00', N'苏泊尔精铸富铁锅FC30E', N'http://www.360buy.com/product/139356.html', N'烹饪锅具炒锅苏泊尔苏泊尔铁锅', N'109.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1922, N'￥169.00', N'苏泊尔磁能王不绣钢奶锅ST16L1', N'http://www.360buy.com/product/139363.html', N'烹饪锅具奶锅苏泊尔苏泊尔奶锅', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1923, N'139368', N'爱尔玛（ERMA）日本原装进口 除尘微吸宝', N'http://www.360buy.com/product/139368.html', N'数码配件相机清洁爱尔玛爱尔玛除尘微吸宝', N'519.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1924, N'139369', N'爱尔玛（ERMA）日本原装进口 低通滤镜超级晶靓套装', N'http://www.360buy.com/product/139369.html', N'数码配件相机清洁爱尔玛爱尔玛低通滤镜超级晶靓套装', N'369.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1925, N'139372', N'爱尔玛（ERMA）日本原装进口 无纺镜头纸（便携型）', N'http://www.360buy.com/product/139372.html', N'数码配件相机清洁爱尔玛爱尔玛无纺镜头纸', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1926, N'139373', N'爱尔玛（ERMA）日本原装进口 镜头清洁液', N'http://www.360buy.com/product/139373.html', N'数码配件相机清洁爱尔玛爱尔玛镜头清洁液', N'58.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1927, N'139375', N'爱尔玛（ERMA）日本原装进口 飓风气吹（黑色）', N'http://www.360buy.com/product/139375.html', N'数码配件相机清洁爱尔玛爱尔玛飓风气吹', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1928, N'139377', N'爱尔玛（ERMA）日本原装进口 星座气吹（绿色）', N'http://www.360buy.com/product/139377.html', N'数码配件相机清洁爱尔玛爱尔玛星座气吹', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1929, N'139378', N'爱尔玛（ERMA）日本原装进口 星座气吹（青色）', N'http://www.360buy.com/product/139378.html', N'数码配件相机清洁爱尔玛爱尔玛星座气吹', N'78.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1930, N'￥8.00', N'法克曼分蛋器2434', N'http://www.360buy.com/product/139384.html', N'烹饪锅具厨用杂件FACKELMANN法克曼分蛋器2434', N'6.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1931, N'￥159.00', N'法克曼大翼拔塞器41075', N'http://www.360buy.com/product/139410.html', N'水具酒具酒具配件法克曼法克曼拔塞器', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1932, N'￥48.00', N'法克曼塑料勺6件装41502', N'http://www.360buy.com/product/139417.html', N'餐具筷勺/刀叉法克曼法克曼勺6件装', N'30.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1933, N'￥48.00', N'法克曼蔬菜削皮器41960', N'http://www.360buy.com/product/139422.html', N'烹饪锅具厨用杂件法克曼法克曼削皮器', N'36.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1934, N'￥16.00', N'法克曼树脂水果装饰柄水果刀42003', N'http://www.360buy.com/product/139424.html', N'刀剪砧板单刀法克曼法克曼水果刀', N'9.60')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1935, N'139433', N'九州风神（DEEPCOOL）XFAN80 80mm 机箱风扇', N'http://www.360buy.com/product/139433.html', N'电脑配件散热器九州风神九州风神XFAN80', N'12.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1936, N'￥59.00', N'法克曼不锈钢刮鱼鳞器40561', N'http://www.360buy.com/product/139434.html', N'烹饪锅具厨用杂件法克曼法克曼刮鱼鳞器', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1937, N'139630', N'利仁（LIREN）BC-168煎蛋铛（煎蛋好帮手，耗时短、简单、方便、实用）', N'http://www.360buy.com/product/139630.html', N'厨房电器电饼铛/烧烤盘利仁利仁BC-168', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1938, N'139726', N'飞利浦（PHILIPS） SPA1301 2.1声道 多媒体 音箱 黑色', N'http://www.360buy.com/product/139726.html', N'时尚影音音箱飞利浦飞利浦SPA1301音箱', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1939, N'139749', N'诺基亚（NOKIA）E71 GSM手机（青灰）', N'http://www.360buy.com/product/139749.html', N'手机通讯手机诺基亚诺基亚E71', N'989.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1940, N'139780', N'索尼（SONY）16速 DVD+R 桶装10片 刻录盘', N'http://www.360buy.com/product/139780.html', N'办公文仪刻录碟片/附件索尼索尼16速 DVD+R', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1941, N'139800', N'必恩威（PNY）U盘 双子盘4G（桃红色）', N'http://www.360buy.com/product/139800.html', N'外设产品U盘必恩威必恩威双子盘', N'37.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1942, N'139801', N'必恩威（PNY）U盘 双子盘8G（桃红色）', N'http://www.360buy.com/product/139801.html', N'外设产品U盘必恩威必恩威双子盘', N'39.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1943, N'139803', N'必恩威（PNY）U盘 双子盘4G（天蓝色）', N'http://www.360buy.com/product/139803.html', N'外设产品U盘必恩威必恩威双子盘', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1944, N'139804', N'必恩威（PNY）U盘 双子盘8G（天蓝色）', N'http://www.360buy.com/product/139804.html', N'外设产品U盘必恩威必恩威双子盘', N'39.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1945, N'139813', N'台电（teclast）X19+ 超长续航70小时MP3 4G 银色', N'http://www.360buy.com/product/139813.html', N'时尚影音MP3/MP4台电台电X19+', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1946, N'￥20.00', N'第六感超薄平滑避孕套12支装(香草香)', N'http://www.360buy.com/product/139841.html', N'成人用品安全避孕第六感第六感避孕套', N'17.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1947, N'￥33.00', N'第六感冰火一体避孕套12支装', N'http://www.360buy.com/product/139843.html', N'成人用品安全避孕第六感第六感避孕套', N'27.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1948, N'￥27.50', N'第六感超薄芦荟避孕套12支装(芦荟香)', N'http://www.360buy.com/product/139844.html', N'成人用品安全避孕第六感第六感避孕套', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1949, N'￥22.00', N'第六感超薄螺纹避孕套12支装(柠檬香)', N'http://www.360buy.com/product/139846.html', N'成人用品安全避孕第六感第六感避孕套', N'18.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1950, N'￥24.00', N'第六感超薄颗粒避孕套12支装(菠萝香)', N'http://www.360buy.com/product/139847.html', N'成人用品安全避孕第六感第六感避孕套', N'20.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1951, N'￥39.90', N'第六感超感螺纹避孕套24支装(柠檬香)', N'http://www.360buy.com/product/139848.html', N'成人用品安全避孕第六感第六感避孕套', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1952, N'￥33.00', N'第六感超薄平滑避孕套24支装(香草香)', N'http://www.360buy.com/product/139849.html', N'成人用品安全避孕第六感第六感避孕套', N'28.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1953, N'￥42.00', N'第六感超感6合1避孕套24支装', N'http://www.360buy.com/product/139852.html', N'成人用品安全避孕第六感第六感避孕套', N'35.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1954, N'139896', N'天域（Tamrac）数码家系列 双层数码相机双肩背包 5549（红色）', N'http://www.360buy.com/product/139896.html', N'数码配件数码包天域天域5549', N'1299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1955, N'140008', N'山特（STK）后备式UPS电源 MT1000-PRO', N'http://www.360buy.com/product/140008.html', N'外设产品UPS电源山特山特MT1000-PRO', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1956, N'140011', N'山特（STK）后备式UPS电源 TG500', N'http://www.360buy.com/product/140011.html', N'外设产品UPS电源山特山特TG500', N'218.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1957, N'140012', N'山特（STK）后备式UPS电源 K500-PRO', N'http://www.360buy.com/product/140012.html', N'外设产品UPS电源山特山特K500-PRO', N'359.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1958, N'140013', N'山特（STK）后备式UPS电源 K1000-PRO', N'http://www.360buy.com/product/140013.html', N'外设产品UPS电源山特山特K1000-PRO', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1959, N'140014', N'山特（STK）UPS电源 MT1000S-PRO（标配机 须配电池）', N'http://www.360buy.com/product/140014.html', N'外设产品UPS电源山特山特MT1000S-PRO', N'699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1960, N'￥299.00', N'苏泊尔陶晶无油烟煎锅PJ26J1', N'http://www.360buy.com/product/140044.html', N'烹饪锅具煎锅苏泊尔苏泊尔煎锅', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1961, N'140115', N'康艺(KANGYI）HT-2600A(B) 点钞机', N'http://www.360buy.com/product/140115.html', N'办公文仪点钞机康艺康艺HT-2600A', N'1599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1962, N'140119', N'康艺(KANGYI）HT-2600+(B) 点钞机', N'http://www.360buy.com/product/140119.html', N'办公文仪点钞机康艺康艺HT-2600', N'1489.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1963, N'140121', N'康艺(KANGYI）HT-2900B(B) 点钞机', N'http://www.360buy.com/product/140121.html', N'办公文仪点钞机康艺康艺HT-2900B', N'1999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1964, N'140125', N'康艺(KANGYI）HT-2700+(B) 点钞机', N'http://www.360buy.com/product/140125.html', N'办公文仪点钞机康艺康艺HT-2700', N'1499.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1965, N'140220', N'爱普生（Epson）T1091黑色墨盒 C13T109180（适用ME30/300/360/510/600F/650FN/700FW）', N'http://www.360buy.com/product/140220.html', N'办公打印墨盒爱普生爱普生T1091', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1966, N'140221', N'爱普生（Epson）T1092青色墨盒 C13T109280（适用ME30/300/360/510/600F/650FN/700FW）', N'http://www.360buy.com/product/140221.html', N'办公打印墨盒爱普生爱普生T1092', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1967, N'140223', N'爱普生（Epson）T1093洋红色墨盒 C13T109380（适用ME30/300/360/510/600F/650FN/700FW）', N'http://www.360buy.com/product/140223.html', N'办公打印墨盒爱普生爱普生T1093', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1968, N'140225', N'爱普生（Epson）T1094黄色墨盒 C13T109480（适用ME30/300/360/510/600F/650FN/700FW）', N'http://www.360buy.com/product/140225.html', N'办公打印墨盒爱普生爱普生T1094', N'55.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1969, N'￥48.00', N'嘉华 可爱圣诞老人头玩偶（白色）', N'http://www.360buy.com/product/140235.html', N'创意减压创意玩具喜庆娃娃嘉华圣诞老人', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1970, N'140249', N'TYPER TR-301 360度可旋转小圆镜2寸去盲点 广角 黑', N'http://www.360buy.com/product/140249.html', N'改装配件改装小件艾瑞司TYPE-RTR-301', N'22.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1971, N'140256', N'TYPER TR-215 360度可旋转扇形镜1.5寸去盲点 广角 银', N'http://www.360buy.com/product/140256.html', N'改装配件改装小件艾瑞司TYPE-RTR-215', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1972, N'140259', N'TYPE-R 二合一温度计+湿度计TR-050A（黑）', N'http://www.360buy.com/product/140259.html', N'自驾装备车旅用品TYPE-RTYPE-RTR-050A', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1973, N'140260', N'TYPE-R 二合一温度计+湿度计TR-050BS（银）', N'http://www.360buy.com/product/140260.html', N'自驾装备车旅用品TYPE-RTYPE-RTR-050BS', N'26.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1974, N'140282', N'TYPER TR-213 360度可旋转小圆镜2寸去盲点 广角 银', N'http://www.360buy.com/product/140282.html', N'改装配件改装小件TYPERTYPE-RTR-213', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1975, N'140283', N'TYPER TR-214 360度可旋转小圆镜1.5寸去盲点 广角 银', N'http://www.360buy.com/product/140283.html', N'改装配件改装小件TYPERTYPE-RTR-214', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1976, N'140284', N'TYPER TR-213 360度可旋转小圆镜2寸去盲点 广角 黑', N'http://www.360buy.com/product/140284.html', N'改装配件改装小件TYPERTYPE-RTR-213', N'16.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1977, N'140305', N'TYPER TR-117 360度可旋转小圆镜2寸去盲点 广角 黑', N'http://www.360buy.com/product/140305.html', N'改装配件改装小件艾瑞司TYPE-RTR-117', N'15.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1978, N'140440', N'美孚（Mobil）美孚1号全合成机油 5W-30 SN级 （4L装）', N'http://www.360buy.com/product/140440.html', N'系统养护机油美孚美孚5W-30 SN级', N'338.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1979, N'140450', N'壳牌 helix super特级黄喜力矿物机油 10W-40 （4L装）', N'http://www.360buy.com/product/140450.html', N'系统养护机油壳牌壳牌10W-40', N'138.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1980, N'140455', N'壳牌 helix ultra超凡灰喜力全合成机油 5W-40 4L', N'http://www.360buy.com/product/140455.html', N'系统养护机油壳牌壳牌5W-40 4L', N'348.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1981, N'140457', N'壳牌 helix plus非凡蓝喜力合成机油 5W-40 4L装', N'http://www.360buy.com/product/140457.html', N'系统养护机油壳牌壳牌5W-40 4L装', N'218.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1982, N'￥498.00', N'卡西欧(Casio)指针系列男表MTP-1246D-1A', N'http://www.360buy.com/product/140554.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-524SP-1A', N'299.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1983, N'￥498.00', N'卡西欧(Casio)指针系列男表MTP-1246D-2A', N'http://www.360buy.com/product/140555.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表MTP-1246D-2A', N'298.00')
GO
print 'Processed 1900 total records'
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1984, N'￥598.00', N'卡西欧(Casio)指针系列男表MTP-1246D-7A', N'http://www.360buy.com/product/140556.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表MTP-1246D-7A', N'275.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1985, N'￥498.00', N'卡西欧(Casio)指针系列男表MTP-1247D-1A', N'http://www.360buy.com/product/140557.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表MTP-1247D-1A', N'295.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1986, N'￥498.00', N'卡西欧(Casio)指针系列女表LTP-2064A-4A', N'http://www.360buy.com/product/140563.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2064A-4A', N'389.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1987, N'￥498.00', N'卡西欧(Casio)指针系列女表LTP-2069D-2A', N'http://www.360buy.com/product/140565.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069D-2A', N'359.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1988, N'￥498.00', N'卡西欧(Casio)指针系列女表LTP-2069D-6A', N'http://www.360buy.com/product/140566.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069D-6A', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1989, N'￥498.00', N'卡西欧(Casio)指针系列女表LTP-2069D-7A2', N'http://www.360buy.com/product/140568.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧女表LTP-2069D-7A2', N'249.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1990, N'￥990.00', N'卡西欧(Casio)Edifice系列精钢男表EF-324D-7A', N'http://www.360buy.com/product/140572.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-324D-7A', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1991, N'￥890.00', N'卡西欧(Casio)Edifice系列精钢男表EF-324L-7A', N'http://www.360buy.com/product/140575.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-324L-7A', N'599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1992, N'￥890.00', N'卡西欧(Casio)Edifice系列精钢男表EF-324L-1A', N'http://www.360buy.com/product/140578.html', N'日本品牌卡西欧 CASIO卡西欧卡西欧男表EF-324L-1A', N'545.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1993, N'￥108.00', N'李大夫远红外护膝大号', N'http://www.360buy.com/product/140670.html', N'保健器械养生器械李大夫李大夫远红外护膝', N'58.90')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1994, N'￥108.00', N'李大夫远红外护膝小号', N'http://www.360buy.com/product/140671.html', N'保健器械养生器械李大夫李大夫远红外护膝', N'49.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1995, N'140683', N'佳朗 GL-9692 按摩垫', N'http://www.360buy.com/product/140683.html', N'个护健康按摩器佳朗佳朗GL-9692', N'479.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1996, N'140684', N'佳朗 GL-9698 按摩垫', N'http://www.360buy.com/product/140684.html', N'个护健康按摩器佳朗佳朗GL-9698', N'498.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1997, N'140685', N'佳朗 GL-9691 按摩垫', N'http://www.360buy.com/product/140685.html', N'个护健康按摩器佳朗佳朗GL-9691', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1998, N'140919', N'Gigaset | SIEMENS 西门子S885套装（珍珠白）', N'http://www.360buy.com/product/140919.html', N'生活电器电话机西门子西门子S885套机', N'1198.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (1999, N'140922', N'Gigaset | SIEMENS 西门子S880套装（钢琴黑）', N'http://www.360buy.com/product/140922.html', N'生活电器电话机西门子西门子S880套机', N'998.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2000, N'140925', N'Gigaset | SIEMENS 西门子S885系统（珍珠白）', N'http://www.360buy.com/product/140925.html', N'生活电器电话机西门子西门子S885主机', N'799.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2001, N'140929', N'Gigaset | SIEMENS 西门子S88H子机（珍珠白）', N'http://www.360buy.com/product/140929.html', N'生活电器电话机西门子西门子S88H子机', N'528.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2002, N'140965', N'希捷（Seagate）500G ST9500325AS 5400转8M SATAII 笔记本硬盘', N'http://www.360buy.com/product/140965.html', N'电脑配件硬盘希捷希捷ST9500325AS', N'349.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2003, N'￥4288.00', N'卡西欧Casio新款电子琴WK-3800', N'http://www.360buy.com/product/140966.html', N'乐器相关电子琴卡西欧卡西欧新款电子琴WK-3800', N'2999.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2004, N'￥280.00', N'佛山助行器913L', N'http://www.360buy.com/product/140980.html', N'保健器械康复辅助佛山佛山助行器', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2005, N'140996', N'品胜（PISEN）FM500H 数码相机电池', N'http://www.360buy.com/product/140996.html', N'数码配件电池/充电器品胜品胜FM500H', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2006, N'140997', N'品胜（PISEN）NB7L 数码相机电池', N'http://www.360buy.com/product/140997.html', N'数码配件电池/充电器品胜品胜NB7L', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2007, N'141021', N'康庄 TS系列电子体温计TS7', N'http://www.360buy.com/product/141021.html', N'个护健康体温计康庄康庄TS7', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2008, N'141024', N'康庄 快速电子体温计TSO-A 型（硬头）', N'http://www.360buy.com/product/141024.html', N'个护健康体温计康庄康庄TSO-A', N'19.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2009, N'141026', N'康庄 快速电子体温计TSO-B 型（软头）', N'http://www.360buy.com/product/141026.html', N'个护健康体温计康庄康庄TSO-B', N'20.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2010, N'141030', N'康庄 红外线耳温枪TS9', N'http://www.360buy.com/product/141030.html', N'个护健康体温计康庄康庄TS9', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2011, N'141032', N'飞利浦（Philips） HR2024 搅拌机', N'http://www.360buy.com/product/141032.html', N'厨房电器料理/榨汁机飞利浦飞利浦HR2024', N'268.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2012, N'141046', N'康庄 上臂式全自动血压计BPM602', N'http://www.360buy.com/product/141046.html', N'个护健康血压计康庄康庄BPM602', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2013, N'141051', N'康庄（HOME）上臂式全自动血压计套装BPM642D', N'http://www.360buy.com/product/141051.html', N'个护健康血压计康庄康庄BPM642D', N'159.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2014, N'141062', N'宝罗（Paull）专业摄影包BL-3013 附赠腰带，可做腰包 可安放1-2台单反相机或摄录机，4-5支镜头', N'http://www.360buy.com/product/141062.html', N'数码配件数码包宝罗宝罗BL-3013', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2015, N'141063', N'宝罗（Paull）数码三角包 BL-1002 适用于500D/450D/D90/D3000等单反相机', N'http://www.360buy.com/product/141063.html', N'数码配件数码包宝罗宝罗BL-1002', N'119.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2016, N'141132', N'品胜（PISEN）FD1 数码相机电池', N'http://www.360buy.com/product/141132.html', N'数码配件电池/充电器品胜品胜FD1', N'79.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2017, N'141133', N'品胜（PISEN）FG1 数码相机电池', N'http://www.360buy.com/product/141133.html', N'数码配件电池/充电器品胜品胜FG1', N'112.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2018, N'￥20.00', N'佳盛一次性高级防滑保洁鞋套', N'http://www.360buy.com/product/141305.html', N'清洁用品清洁工具佳盛佳盛鞋套', N'8.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2019, N'141353', N'爱车屋（icaroom）圆形抱枕被NB-114KT', N'http://www.360buy.com/product/141353.html', N'车饰精品功能精品爱车屋爱车屋NB-114KT', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2020, N'141372', N'博朗(BRAUN) MP80 蔬果榨汁机/果汁机 德国博朗 经典设计', N'http://www.360buy.com/product/141372.html', N'厨房电器料理/榨汁机博朗博朗MP80', N'759.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2021, N'141374', N'博朗（BRAUN）MPZ9榨橙汁机', N'http://www.360buy.com/product/141374.html', N'厨房电器料理/榨汁机博朗博朗MPZ9', N'319.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2022, N'141379', N'博朗（BRAUN）K600多功能食品调理机', N'http://www.360buy.com/product/141379.html', N'厨房电器料理/榨汁机博朗博朗K600', N'1169.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2023, N'141380', N'博朗（BRAUN）HT400多士炉', N'http://www.360buy.com/product/141380.html', N'厨房电器面包机博朗博朗ht400', N'399.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2024, N'141381', N'博朗（BRAUN)5系590cc-4电动剃须刀', N'http://www.360buy.com/product/141381.html', N'个护健康剃须刀博朗博朗590cc-4', N'3699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2025, N'141510', N'罗技（Logitech）LS1 激光鼠标 咖啡红', N'http://www.360buy.com/product/141510.html', N'外设产品鼠标罗技罗技LS1', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2026, N'141511', N'罗技（Logitech）LS1 激光鼠标 蓝色', N'http://www.360buy.com/product/141511.html', N'外设产品鼠标罗技罗技LS1', N'85.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2027, N'141524', N'山特（STK）在线式Castle系列UPS电源 C1K-NEW', N'http://www.360buy.com/product/141524.html', N'外设产品UPS电源山特山特C1K-NEW', N'1599.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2028, N'141525', N'山特（STK）在线式Castle系列UPS电源 C2K-NEW', N'http://www.360buy.com/product/141525.html', N'外设产品UPS电源山特山特C2K-NEW', N'2699.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2029, N'141526', N'山特（STK）在线式Castle系列UPS电源 C3K-NEW', N'http://www.360buy.com/product/141526.html', N'外设产品UPS电源山特山特C3K-NEW', N'2899.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2030, N'￥368.00', N'INTEX豪华尼龙蜂窝立柱双人空气床66724深灰', N'http://www.360buy.com/product/141540.html', N'户外装备便携桌椅床intexINTEX空气床', N'269.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2031, N'￥399.00', N'INTEX尼龙蜂窝立柱双人加大空气床66725深灰', N'http://www.360buy.com/product/141541.html', N'户外装备便携桌椅床intexINTEX空气床', N'289.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2032, N'￥128.00', N'INTEX灯芯绒条纹单人空气床68757深蓝', N'http://www.360buy.com/product/141542.html', N'户外装备便携桌椅床intexINTEX空气床', N'99.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2033, N'￥255.00', N'INTEX灯芯绒条纹双人空气床68758深蓝', N'http://www.360buy.com/product/141543.html', N'户外装备便携桌椅床intexINTEX空气床', N'149.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2034, N'￥108.00', N'INTEX灯芯绒条纹单人空气床68950深蓝', N'http://www.360buy.com/product/141544.html', N'户外装备便携桌椅床intexINTEX空气床', N'69.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2035, N'￥69.00', N'INTEX 高效能手动气泵68612黑色', N'http://www.360buy.com/product/141546.html', N'户外装备户外工具intexINTEX气泵', N'39.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2036, N'141547', N'东芝（TOSHIBA）4G SDHC存储卡（Class4）', N'http://www.360buy.com/product/141547.html', N'数码配件存储卡东芝东芝SDHC', N'89.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2037, N'141549', N'东芝（TOSHIBA）8G SDHC存储卡（Class4）', N'http://www.360buy.com/product/141549.html', N'数码配件存储卡东芝东芝8G SDHC', N'38.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2038, N'141551', N'东芝（TOSHIBA）32G SDHC存储卡（Class4）', N'http://www.360buy.com/product/141551.html', N'数码配件存储卡东芝东芝SDHC', N'129.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2039, N'141553', N'东芝（TOSHIBA）16G SDHC存储卡（Class4）', N'http://www.360buy.com/product/141553.html', N'数码配件存储卡东芝东芝SDHC', N'63.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2040, N'141555', N'东芝（TOSHIBA）4G TF（microSDHC）存储卡（Class4）', N'http://www.360buy.com/product/141555.html', N'数码配件存储卡东芝东芝microSDHC', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2041, N'141573', N'金士顿（Kingston）2G CF存储卡(CF/2GB)', N'http://www.360buy.com/product/141573.html', N'数码配件存储卡金士顿金士顿CF', N'68.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2042, N'141576', N'金士顿（Kingston）4G CF存储卡(CF/4GB）', N'http://www.360buy.com/product/141576.html', N'数码配件存储卡金士顿金士顿4G CF', N'86.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2043, N'141580', N'金士顿（Kingston）16G Class4 SD存储卡', N'http://www.360buy.com/product/141580.html', N'数码配件存储卡金士顿金士顿SDHC', N'67.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2044, N'141582', N'金士顿（Kingston）133X 16G CF存储卡(CF/16GB-S2)', N'http://www.360buy.com/product/141582.html', N'数码配件存储卡金士顿金士顿CF', N'179.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2045, N'141678', N'金河田（Golden field）飓风-8203B 电脑机箱 黑色（含额定250W电源）', N'http://www.360buy.com/product/141678.html', N'电脑配件机箱金河田金河田8203B', N'239.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2046, N'141693', N'环宇飞扬（UniFly）网魔V6摄像头 迷幻红', N'http://www.360buy.com/product/141693.html', N'外设产品摄像头环宇飞扬环宇飞扬V6', N'25.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2047, N'141696', N'环宇飞扬（UniFly）梅花五灯3210高清红外摄像头 顽皮黑', N'http://www.360buy.com/product/141696.html', N'外设产品摄像头环宇飞扬环宇飞扬3210', N'45.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2048, N'141753', N'天敏（10moons）DV玩家精华版DV610采集卡', N'http://www.360buy.com/product/141753.html', N'外设产品电视盒天敏天敏DV610', N'199.00')
INSERT [dbo].[JingDong] ([JID], [JNum], [JTitle], [JUrl], [JCategory], [JPrice]) VALUES (2049, N'141801', N'创新（creative ）GigaWorks T20II 音箱', N'http://www.360buy.com/product/141801.html', N'时尚影音音箱创新创新GigaWorks T20II', N'599.00')
SET IDENTITY_INSERT [dbo].[JingDong] OFF
/****** Object:  Table [dbo].[VIP]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP](
	[VID] [int] IDENTITY(1,1) NOT NULL,
	[VName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[VImg] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Description] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_VIP] PRIMARY KEY CLUSTERED 
(
	[VID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[VIP] ON
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (1, N'VIP0', N'images/vip/vip0.png', N'vip0')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (2, N'VIP1', N'images/vip/vip1.png', N'vip1')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (3, N'VIP2', N'images/vip/vip2.png', N'vip2')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (4, N'VIP3', N'images/vip/vip3.png', N'vip3')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (5, N'VIP4', N'images/vip/vip4.png', N'vip4')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (6, N'VIP5', N'images/vip/vip5.png', N'vip5')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (7, N'VIP6', N'images/vip/vip6.png', N'vip6')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (8, N'VIP7', N'images/vip/vip7.png', N'vip7')
INSERT [dbo].[VIP] ([VID], [VName], [VImg], [Description]) VALUES (9, NULL, N'images/vip/vip8.png', N'vip8')
SET IDENTITY_INSERT [dbo].[VIP] OFF
/****** Object:  Table [dbo].[ViewLogs]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewLogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ViewLogs](
	[VLogID] [int] IDENTITY(1,1) NOT NULL,
	[VItemID] [int] NULL,
	[VUserID] [int] NULL,
	[VLocationX] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[VLocationY] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[VDate] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[VisHidden] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_ViewLogs] PRIMARY KEY CLUSTERED 
(
	[VLogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ViewLogs] ON
INSERT [dbo].[ViewLogs] ([VLogID], [VItemID], [VUserID], [VLocationX], [VLocationY], [VDate], [VisHidden]) VALUES (1, 3, 1, N'118.798859', N'31.986742', N'2013-2-5', N'true')
INSERT [dbo].[ViewLogs] ([VLogID], [VItemID], [VUserID], [VLocationX], [VLocationY], [VDate], [VisHidden]) VALUES (2, 3, 1, N'118.798859', N'31.986742', N'2013-2-5', N'True')
SET IDENTITY_INSERT [dbo].[ViewLogs] OFF
/****** Object:  Table [dbo].[User]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[VID] [int] NULL,
	[Name] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Pass] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Email] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Phone] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Tel] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Address] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[IP] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (1, 1, N'xueshijun', N'xueshijun', N'324858038@qq.com', N'18061736775', N'0251231312321', N'南京仙林校区', N'58.211.36.42')
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (2, 1, N'commelp', N'commelp', N'dai@qq.com', N'010-89899888', N'13307889898', N'北京市海定区丁11号求知楼208室', N'127.0.0.1')
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (3, 1, N'', N'xueshijun', N'xueshijun@163.com', N'010-89899888', N'13307889898', N'北京市海定区丁11号求知楼208室', N'127.0.0.1')
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (4, 1, N'werew', N'ferfre', N'', N'', N'', N'', N'127.0.0.1')
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (5, 1, N'ded', N'', N'', N'', N'', N'', N'127.0.0.1')
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (6, 1, N'XX', N'XUESHIJUN_22', N'58@qq.com', N'010-89899888', N'13307889898', N'北京市海定区丁11号求知楼208室', N'127.0.0.1')
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (7, 1, N'xue123', N'xue666', N'xue@qq.com', N'010-89899888', N'13307889898', N'北京市海定区丁11号求知楼208室', N'127.0.0.1')
INSERT [dbo].[User] ([UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (8, 1, N'xue1234', N'xue1234', N'xue@qq.com', N'010-89899888', N'13307889898', N'北京市海定区丁11号求知楼208室', N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[ScrolingShow]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScrolingShow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScrolingShow](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Img] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Alt] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Target] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_ScrolingShow] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ScrolingShow] ON
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (1, N'images/indexscroll/sz1.jpg', N'1', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (2, N'images/indexscroll/sz2.jpg', N'2', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (3, N'images/indexscroll/sz3.jpg', N'3', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (4, N'images/indexscroll/sz4.jpg', N'4', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (5, N'images/indexscroll/sz5.jpg', N'5', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (6, N'images/indexscroll/sz6.jpg', N'6', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (7, N'images/indexscroll/sz7.jpg', N'7', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (8, N'images/indexscroll/sz8.jpg', N'8', N'#')
INSERT [dbo].[ScrolingShow] ([SID], [Img], [Alt], [Target]) VALUES (9, N'images/indexscroll/sz9.jpg', N'9', N'#')
SET IDENTITY_INSERT [dbo].[ScrolingShow] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Name] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Description] [text] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (1, 2, N'小西装', N'小西装-女装')
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (2, 2, N'卫衣', N'卫衣-女装')
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (3, 2, N'皮衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (4, 2, N'风衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (5, 2, N'婚纱礼服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (6, 1, N'裤子', N'')
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (7, 2, N'毛呢连衣裙', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (8, 1, N'长袖T恤', N'')
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (9, 2, N'针织衫', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (10, 2, N'马甲', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (11, 2, N'长袖衬衫', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (12, 2, N'短外套', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (13, 2, N'机车服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (14, 2, N'职业/制服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (15, 2, N'靴裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (16, 2, N'牛仔裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (17, 2, N'羽绒服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (18, 2, N'呢大衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (19, 2, N'棉衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (20, 2, N'皮草', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (21, 2, N'毛呢短外套', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (22, 2, N'冬季背心', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (23, 2, N'妈妈装', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (24, 2, N'毛呢短裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (25, 1, N'夹克', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (26, 1, N'长袖T恤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (27, 1, N'长袖衬衫', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (28, 1, N'牛仔长裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (29, 1, N'短袖T恤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (30, 1, N'休闲长裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (31, 1, N'休闲西服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (32, 1, N'短袖衬衫', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (33, 1, N'皮夹克', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (34, 1, N'大码专区', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (35, 1, N'毛衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (36, 1, N'棉衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (37, 1, N'风衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (38, 1, N'羽绒服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (39, 1, N'背心', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (40, 1, N'羊毛毛衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (41, 1, N'工装裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (42, 1, N'棉质线衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (43, 1, N'商务西服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (44, 1, N'马甲', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (45, 1, N'西裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (46, 1, N'西服套装', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (47, 1, N'棉马甲', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (48, 1, N'休闲短裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (49, 1, N'毛衣背心', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (50, 1, N'长袖POLO衫', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (51, 1, N'名族服装', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (52, 1, N'牛仔短裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (53, 1, N'羊绒毛衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (54, 1, N'真皮皮衣', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (55, 1, N'羽绒背心', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (56, 1, N'工装制服', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (57, 1, N'皮裤', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (61, 3, N'项链', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (62, 3, N'发饰', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (63, 3, N'手链', N'')
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (64, 3, N'耳饰', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (65, 3, N'项坠', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (66, 5, N'美国派', NULL)
INSERT [dbo].[Products] ([PID], [CategoryID], [Name], [Description]) VALUES (67, 6, N'热销品', NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[Articles]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Articles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Articles](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NULL,
	[Title] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[KeyWords] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Description] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[Contents] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[PubDate] [datetime] NULL,
	[ViewTimes] [int] NULL,
	[Author] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Articles] ON
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (1, 3, N'购物车里的宝贝为什么少了/不见了？', N'购物车,新手导航', N'购物车里的宝贝不见了', N'<div id="knowledge-content" class="ke-post">
                    													                    														<p>如果加入购物车中的宝贝不见了，可能有以下三种原因：</p>
<p>1、放入购物车的宝贝您已经购买，生成了订单，在“<a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm?ad_id=&amp;am_id=&amp;cm_id=&amp;pm_id=" target="_blank">已买到的宝贝</a>”页面可以查看到购买记录；</p>
<p>2、您是在游客状态下（即未登录状态）将宝贝放入了购物车，一旦清空了您电脑的cookies记录，会导致游客状态使用购物车的记录消失，无法恢复。但如未清空cookies记录，在登录过一次淘宝账户后，游客状态使用购物车的记录会自动保存到您的淘宝账户中；</p>
<p>3、放入购物车的宝贝因为商品被下架、删除、库存不足、商家处于被监管或冻结状态等原因失效了，淘宝购物车中该条商品会变灰，并且无法选择购买。建议您选择从购物车中删除该商品并重新选择（如图）。</p>
<p><img alt="" src="http://img04.taobaocdn.com/tps/i4/T1xwVPXgVoXXXXXXXX-608-51.jpg" style="margin:5px;width:608px;height:51px;" /></p>
 </div>', CAST(0x0000A0390131A168 AS DateTime), 1, N'admin')
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (2, 3, N'交易进行中买家申请退货退款操作流程', N'购物车,新手导航，退货，退款', N'如买家收到商品后需要退货退款，操作流程如下', N'<div id="knowledge-content" class="ke-post">
                    													                    														<p>如买家收到商品后需要退货退款，操作流程如下：</p>
<p>第一步：进入“<a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm?nekot=teO14zU2MDM=1313652251568" target="_blank">已买到的宝贝</a>”，找到这笔交易，点击页面上的“申请退款”；</p>
<p><img alt="" src="http://img01.taobaocdn.com/tps/i1/T1fnN9XchxXXXXXXXX-608-117.jpg" style="margin:0px;float:none;" /></p>
<p>第二步：选择“已收到货”，是否退货选择“退货”，然后根据您的实际情况选择退货的原因。</p>
<p><img alt="" src="http://img01.taobaocdn.com/tps/i1/T1JESkXgVtXXXXXXXX-608-369.jpg" style="margin:0px;float:none;" /></p>
<p>第三步：提交退款申请。申请成功后系统会有相应的提示。</p>
<p><img alt="" src="http://img02.taobaocdn.com/tps/i2/T1cT9kXlVBXXXXXXXX-608-121.jpg" style="margin:0px;float:none;" /></p>
<p>后续您可以进入“<a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm?nekot=teO14zU2MDM=1313652251568" target="_blank">已买到的宝贝</a>”页面，选择“退款中”查看退款的详细信息及卖家答复；</p>
<p><img alt="" src="http://img03.taobaocdn.com/tps/i3/T1xVKlXg0bXXXXXXXX-608-120.jpg" style="margin:0px;float:none;" /></p>
<p>第四步：卖家有5天的时间来同意和拒绝买家的退款申请，若卖家同意退货协议，页面上会出现卖家的退货地址，买家可以根据此地址进行退货的操作。退货后，请到退款页面“填写退货信息”</p>
<p>注意：买家需要在7天内退货，逾期未退货，退款会被关闭，继续交易超时。</p>
<p><img alt="" src="http://img04.taobaocdn.com/tps/i4/T18_09XeNyXXXXXXXX-608-248.jpg" style="margin:0px;float:none;" /></p>
<p>选择您退货的快递公司，填写运单号。若下拉菜单中没有您退货的快递公司，请选择其他进行填写；</p>
<p>提醒：退货信息一旦提交将无法修改，若您之前购买了退货运费险，请务必谨慎填写。</p>
<p><img alt="" src="http://img04.taobaocdn.com/tps/i4/T17.09Xb0rXXXXXXXX-608-280.jpg" style="margin:0px;float:none;" /></p>
<p>第五步：确认信息无误后，点击“提交退货信息”的按钮，退货信息就提交成功了，卖家后续会有10天的时间来进行确认，逾期卖家没有处理，系统也会自动退款给买家。</p>
<p><img alt="" src="http://img04.taobaocdn.com/tps/i4/T1eoOkXlduXXXXXXXX-608-179.jpg" style="margin:0px;float:none;" /></p>
                    													                    												</div>', CAST(0x0000A03901394B20 AS DateTime), 1, N'admin')
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (3, 2, N'超值团购季第二季开始啦！', N'团购，华章', N'推出超值团购第二季，在这季团购中，除了第一季的《Linux集群应用实战》，我们新增了其他3套精品课程。', N'<dl class="announce s_clear"><dd> <div class="t_msgfont" id="message55575">
<div id="firstpost">
<p align="left">
</p>
<h2>超值团购季第二季开始啦！</h2>
<p align="left"><b>为了满足广大会员的需求，我们特推出超值团购第二季，在这季团购中，除了第一季的《Linux集群应用实战》，我们新增了其他3套精品课程。<br />
<br />
</b><b><span style="color:red;">本次团购持续6天，有需要的朋友请与咨询QQ联系，尽快预订吧！<br />
</span></b><br />
<b>《Linux集群应用实战》(送源码和PPT)&nbsp; </b><br />
China-pub定价：555元&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br />
<b><span style="color:red;">超值团购价：400元<br />
</span></b></p>
<p align="left"><img src="http://images.china-pub.com/ebook3500001-3505000/3501607/zcover.jpg?2011-5-10" border="0" height="150" width="100" /></p>
<p align="left"><br />
<b>Android <span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=99">3D</span><span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=15">游戏</span><span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=27">开发</span>(基础篇) 
(高级篇)——Opengl ES游戏引擎实现(送源码和PPT)<br />
</b>China-pub定价：376元<br />
<b><span style="color:red;">超值团购价：288元</span></b></p>
<p align="left"><img src="http://images.china-pub.com/ebook3500001-3505000/3500002/zcover.jpg?2011-5-23" border="0" height="136" width="95" />&nbsp; &nbsp; &nbsp; <img src="http://images.china-pub.com/ebook3500001-3505000/3500428/zcover.jpg?2011-5-5" border="0" height="136" width="96" />&nbsp; <br />
&nbsp; &nbsp; &nbsp; <br />
<b>Oracle PL/<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=93">SQL</span>实战<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=13">教程</span>(送PPT)<br />
</b>China-pub定价：390元<br />
<b><span style="color:red;">超值团购价：273元</span></b></p>
<p align="left"><img src="http://images.china-pub.com/ebook3500001-3505000/3500807/zcover.jpg?2011-4-18" border="0" height="145" width="101" /><br />
<br />
<b>Oracle高可用性——OracleDataGuard（送源码）<br />
</b>China-pub定价：120元<br />
<b><span style="color:red;">超值团购价 ：96元</span></b></p>
<p align="left"><img src="http://images.china-pub.com/ebook3500001-3505000/3501679/cover.jpg" border="0" height="152" width="104" /></p>
<p align="left"><br />
以上四套课程的 <b><span style="color:red;">团购日期：2011.5.26-2011.5.31<br />
</span></b>每套课程团购最低人数：5人起<br />
<br />
<b>购买流程：<br />
</b>登录支付宝，点我要付款，输入以下支付宝账号，按提示填写，最后确认即可付款。<br />
支付宝账户: 
taobao#hzbook.com 
（填写时，请将#换成@）<br />
另，所有购买的用户将在团购结束后，即2011.6.1号，统一发放课程。<br />
<br />
<b>团购咨询请联系<br />
</b><span style="color:blue;"><b>QQ: 1458061640&nbsp; &nbsp; &nbsp; &nbsp; QQ: 
418595723<br />
</b></span><br />
<b>《Linux集群应用实战》课程介绍：</b><br />
本课程首先介绍开源的网络存储应用ISCSI，接着介绍nagios监控系统，最后，讲解了集群系统在企业级方面的应用，主要讲述了红帽集群套件RHCS开源HA 
heartbeat、负载均衡器L<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=68">VS</span>、Oracle集群<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=92">数据库</span>RAC、Mysql+DRBD集群等方面的应用案例，通过使用Linux搭建集群，可以用较低的价格来实现高可伸缩、高可用的网络服务，弥补单一服务器无法达到的性能。<br />
<br />
讲师介绍：<br />
高俊峰，网名南非蚂蚁，经常活跃于国内著名技术社区IXPUB 
（<a href="http://www.hztraining.com/bbs/www.ixpub.net" target="_blank"><span style="color:#000000;">www.ixpub.net</span></a>） 、ITPUB（<a href="http://www.hztraining.com/bbs/www.itpub.net" target="_blank"><span style="color:#000000;">www.itpub.net</span></a>） 、ChinaUnix（<a href="http://www.hztraining.com/bbs/www.chinaunix.net" target="_blank"><span style="color:#000000;">www.chinaunix.net</span></a>），在IXPUB任“Linux与开源世界”及“存储设备与容灾技术”版主，多年专注于Linux+Oracle技术方面的研究与实践，擅长Linux系统管理与应用，实战经验丰富。<br />
<br />
课程目录：<br />
第1讲 
iscsi的概念、组成和工作原理 <br />
课程目标：了解iscsi的组成和工作原理。<br />
课程内容： <br />
iscsi的概念。 <br />
iscsi的组成。 <br />
iscsi的工作原理。<br />
<br />
第2-3讲 基于iscsi的ip san存储系统 <br />
课程目标：<br />
能熟练搭建基于iscsi的ip 
san存储系统<br />
安装iscsi target软件<br />
配置一个简单的iscsi target <br />
在windows上配置iscsi 
initiator <br />
在linux上配置iscsi initiator <br />
<br />
第4讲 基于iscsi 在安全方面相关设定 <br />
课程目标：<br />
如何管理和使用iscsi存储网络 <br />
initiator主机以ip认证方式获取iscsi target资源 <br />
initiator主机以密码认证方式获取iscsi target资源 <br />
……<br />
本课程详细内容请参见：<br />
<a href="http://www.hztraining.com/bbs/showtopic-1308.aspx" target="_blank"><span style="color:#000000;">http://www.hztraining.com/bbs/showtopic-1308.aspx</span></a><br />
<br />
<b>《Android 
3D<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=102">游戏开发</span>》课程介绍：</b><br />
本教程可以带领大家从一个普通的Android应用开发者进入3D应用的世界，从3D应用开发基础知识开始，完成受众多手机用户所喜爱的3D应用的开发。<br />
<br />
讲师介绍：<br />
杨丰盛，Android应用开发先驱，对Android有深入研究，实战经验极其丰富。精通<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=4">Java</span>、C、C++等语言，专注于移动通信软件开发，在机顶盒软件开发和MTK平台软件开发方面有非常深厚的积累。2007年获得中国软件行业协会游戏软件分会（CGIA）认证及国际游戏开发教育联合会国际认证。曾经领导和参与《三国群英传说》、《大航海传奇》、《美少女养成计划》等经典游戏的开发。<br />
<br />
课程目录：<br />
第1讲项目介绍(项目演示、技术需求)<br />
第2讲引擎框架（引擎整体构架，NDK框架）<br />
第3讲工具<br />
第4讲摄像机 <br />
第5讲光效管理<br />
第6讲纹理管理<br />
第7讲模型管理<br />
第8讲动画管理<br />
第9讲游戏场景（天空\地形-ROAM）<br />
第10讲八叉树碰撞检测<br />
第11讲拾取技术<br />
第12讲优化技巧<br />
……<br />
本课程详细内容请参见：<br />
<a href="http://www.hztraining.com/bbs/showtopic-26.aspx" target="_blank"><span style="color:#000000;">http://www.hztraining.com/bbs/showtopic-26.aspx</span></a><br />
<a href="http://www.hztraining.com/bbs/showtopic-120.aspx" target="_blank"><span style="color:#000000;">http://www.hztraining.com/bbs/showtopic-120.aspx</span></a><br />
<br />
<b>《Oracle 
PL/SQL实战教程》课程介绍：</b><br />
本课程讲解了如何快速应用PL/SQL开发，并对PL/SQL进行优化，带您一起学习PL/SQL，包括PL/SQL起步，使用工具调试和开发， 
PL/SQL的基础知识，基本的流程控制，对异常进行处理，存储过程、函数和包。如果您有一定的PL/SQL基础，那么PL/SQL的高级应用和PL/SQL的优化课程会帮助您更上一层楼。<br />
<br />
课程目录：<br />
第8-27讲PL/SQL的高级应用<br />
课程目标：<br />
自治事务<br />
加密<br />
提高PL/SQL的性能<br />
正则表达式<br />
上下文<br />
课程内容：<br />
理解自治事务的概念，知道自治事务应用场景<br />
理解PL/SQL的加密，解密<br />
了解PL/SQL的面向<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=65">对象</span>特性，能够编写简单应用<br />
掌握PL/SQL如何调用java及外部应用程序<br />
了解上下文及其应用场景，可以自己编写上下文<br />
了解PL/SQL正则表达式操作，了解XML操作<br />
了解Oracle的分析函数，通过通过几个例子理解分析函数的作用<br />
掌握PL/SQL对LOB和XMLTYPE的操作<br />
……<br />
本课程详细内容请参见：<br />
<a href="http://www.hztraining.com/bbs/showtopic-481.aspx" target="_blank"><span style="color:#000000;">http://www.hztraining.com/bbs/showtopic-481.aspx</span></a><br />
<br />
<b>《Oracle高可用性——OracleDataGuard》课程介绍：</b><br />
在本套课程中，我们将学习Data 
Guard的理论知识，如何去搭建一个Data Guard 环境，如何去维护Data Guard 
的环境，如升级，备份，切换的注意事项。还有一些常见错误的处理。<br />
<br />
课程目录：<br />
第1讲Data Duard 的理论知识&nbsp; &nbsp; <br />
第2讲搭建一个Data Guard 环境（使用copy 文件和使用RMAN）<br />
第3讲Data Guard 
的切换及切换的注意事项（Switchover 和Failover 及redo的处理）<br />
第4讲Data Guard 环境下DB 
的升级操作<br />
第5讲从单实例迁移到Data Guard 环境<br />
第6讲Data Guard 下常见问题的处理<br />
第7讲Data Guard 
环境下DB的备份与恢复<br />
第8讲如何去维护一个Data Guard 环境。<br />
本课程详细内容请参见：<br />
<a href="http://www.hztraining.com/bbs/showtopic-1362.aspx" target="_blank"><span style="color:#000000;">http://www.hztraining.com/bbs/showtopic-1362.aspx</span></a></p>
</div>
</div>
</dd></dl> <hr class="solidline" />
<dl class="announce s_clear"><dt class="f_bold"><a name="8"></a>《Linux集群应用实战》 </dt><dd><a class="lightlink" href="userinfo-1.aspx">admin</a> 发表于: <span class="time">2011-05-05 17:15</span> 结束于:<span class="time"> 2011-05-12 17:15</span> </dd><dd> <div class="t_msgfont" id="message51745">
<div id="firstpost">
<p><span style="font-size:small;"><b><span class="Apple-style-span" style="font-size:medium;">《Linux集群应用实战》 超值团购季 开始啦！</span></b><br />
<br />
<span class="Apple-style-span" style="color:#808080;">China-pub定价：</span><strike><span class="Apple-style-span" style="color:#808080;">555元</span></strike><br />
<span class="Apple-style-span" style="color:#ff0000;">超值团购价：400元</span><br />
团购日期： 
2011.5.6-2011.5.8<br />
团购最低人数：5人起<br />
<br />
<b>课程免费附送:</b><br />
全套 课程PPT <br />
全套课程源代码<br />
享永久观看权限</span></p>
<p><strong>购买流程：</strong></p>
<p>登录支付宝，点我要付款，输入以下支付宝账号，按提示填写，最后确认即可付款。 </p>
<p>支付宝账户: <a href="mailto:taobao@hzbook.com"><span style="color:#000000;">taobao#hzbook.com</span></a> （填写时，请将#换成@）</p>
<p></p>
<p><strong>团购咨询请联系</strong></p>
<p>QQ: 1458061640</p>
<p>QQ: 418595723</p>
<p><br />
<br />
<b>课程介绍：</b><br />
本课程首先介绍开源的网络存储应用ISCSI，接着 
介绍nagios监控系统，最后，讲解了集群系统在企业级方面的应用，主要讲述了红帽集群套 件RHCS开源HA heartbeat、负载均衡器L<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=68">VS</span>、Oracle集群<span class="t_tag" href="tools/ajax.aspx?%0D%0A%0D%0At=topicswithsametag&amp;tagid=92">数据库</span>RAC、Mysql+DRBD集群等方面的应用案 
例，通过使用Linux搭建集群，可以用较低的价格来实现高可伸缩、高可用的网络服务，弥补 
单一服务器无法达到的性能。<br />
<br />
<b>讲师介绍：</b><br />
高俊峰，网名南非蚂蚁 ，经常活跃于国内著名技术社区IXPUB （<a href="http://www.ixpub.net/" target="_blank"><span style="color:#000000;">www.ixpub.net</span></a>） 、ITPUB（<a href="http://www.itpub.net/" target="_blank"><span style="color:#000000;">www.itpub.net</span></a>） 、ChinaUnix（<a href="http://www.chinaunix.net/" target="_blank"><span style="color:#000000;">www.chinaunix.net</span></a>），在IXPUB任“Linux与开源世界”及“ 
存储设备与容灾技术”版主，多年专注于Linux+Oracle技术方面的研究与实践，擅长Linux系 
统管理与应用，实战经验丰富。<br />
<br />
<b>课程试看：</b><br />
<br />
<br />
<b>课程目录：</b><span style="font-family:宋体;"><strong><span style="font-size:large;"><br />
</span></strong><span style="font-size:10.5pt;">第1讲 iscsi的概 
念、组成和工作原理</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：了解iscsi的组成和工作原理。</span><span style="font-family:宋体;"><br />
课程内容 ：</span><span style="font-family:宋体;"> <br />
iscsi的概念。</span><span style="font-family:宋体;"> <br />
iscsi的组成。</span><span style="font-family:宋体;"> <br />
iscsi的工作原理。 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第2-3讲 基于iscsi的ip san存储系统</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
能熟练搭建基于 
iscsi的ip san存储系统</span><span style="font-family:宋体;"><br />
安装iscsi target软件 </span><span style="font-family:宋体;"><br />
配置一个简单的</span><span style="font-family:宋体;">iscsi target <br />
在windows上配置</span><span style="font-family:宋体;">iscsi initiator <br />
在linux上配 置iscsi initiator </span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋;">第4讲 基于iscsi 
在安全方面相关设定</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
如何管理和使用 iscsi存储网络</span><span style="font-family:宋体;"> <br />
initiator主机以ip认证方式获取iscsi target 资源</span><span style="font-family:宋体;"> <br />
initiator主机以密码认证方式获取iscsi target资源 </span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第5讲 nagios综述</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：了解nagios的概念和组成以及特 点</span><span style="font-family:宋体;"><br />
课程内容：</span><span style="font-family:宋体;"><br />
什么是 </span><span style="font-family:宋体;">nagios <br />
nagios的组成和特点。</span><span style="font-family:宋;"> <br />
iscsi的工作原理。<br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第6-9讲 安装与配置nagios监控系统 </span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"><br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 标：快速搭建一个基于nagios的网络监控系统</span><span style="font-family:宋体;"><br />
安装nagios 软件</span><span style="font-family:宋体;"><br />
安装nagios插件</span><span style="font-family:宋体;"> <br />
nagios默认配置文件结束</span><span style="font-family:宋体;"> <br />
nagios各个配置文件之间 的关系</span><span style="font-family:宋体;"><br />
详细介绍nagios每个配置文件 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第10讲 nagios的日常维护和管理</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
能够熟练运用和 
管理nagios监控系统</span><span style="font-family:宋体;"><br />
验证nagios配置文件的正确性 </span><span style="font-family:宋体;"><br />
如何启动与停止nagios监控系统 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第11-12讲 
利用插件扩展nagios的监控功能</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
通过nagios的扩 展插件补充nagios的监控功能</span><span style="font-family:宋体;"><br />
利用nrpe外部构件监控远程 主机</span><span style="font-family:宋体;"><br />
利用飞信实现nagios短信报警功能 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第13讲 
heartbeat的概念组成以及工作原理</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 标：</span><span style="font-family:宋体;"><br />
熟悉heartbeat的概念、组成和工作原理 </span><span style="font-family:宋体;"><br />
课程内容：</span><span style="font-family:宋体;"> <br />
heartbeat的概念</span><span style="font-family:宋体;"> <br />
ha集群相关术语 </span><span style="font-family:宋体;"><br />
heartbeat的组成和工作原理 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第14-15讲 
安装与配置heartbeat集群系统</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标： </span><br />
<span style="font-family:宋体;">熟练掌握 heartbeat的安装、配置和管理</span><span style="font-family:宋体;"><br />
安装heartbeat前的准备工 作</span><span style="font-family:宋体;"><br />
安装</span><span style="font-family:宋体;">heartbeat <br />
详 细介绍heartbeat相关配置文件</span><span style="font-family:宋体;"><br />
维护heartbeat </span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第16 讲 
测试heartbeat的ha功能</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
灵活掌握heartbeat在各种情况下的工作状态和切换流程</span><span style="font-family:宋体;"><br />
正常关闭和重启主节点的</span><span style="font-family:宋体;">heartbeat <br />
在主节点上拔 去网线</span><span style="font-family:宋体;"><br />
在主节点上拔去电源线</span><span style="font-family:宋;"><br />
切断主节点的所有网络连接</span><span style="font-family:宋体;"><br />
在主节点上非正常 关闭heartbeat守护进程<br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第17讲 drbd的概念和运行原理</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 
标：</span><span style="font-family:宋体;"><br />
了解drbd的概念和实现原理以及应用范围 </span><span style="font-family:宋体;"><br />
课程内容：</span><span style="font-family:宋体;"><br />
什么是 </span><span style="font-family:宋体;">drbd <br />
drbd是如何工作的</span><span style="font-family:宋体;"> <br />
drbd的应用领域<br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第18讲 安装与配置</span><span style="font-family:宋体;">drbd <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 
标：</span><span style="font-family:宋体;"><br />
熟练掌握drbd配置文件各个参数的含义，并能够迅 速搭建一套drbd系统</span><span style="font-family:宋体;"><br />
安装</span><span style="font-family:宋体;">drbd <br />
配置</span><span style="font-family:宋体;">drbd <br />
启动并管理drbd系统 </span><span style="font-family:宋体;"><br />
测试drbd的数据镜像功能</span><span style="font-family:宋体;"> <br />
drbd在主备节点间的切换</span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第19讲 
lvs的体系结构和特点</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
了解lvs集群的特点以及负载均衡调度算法</span><span style="font-family:宋体;"><br />
课程内 容：</span><span style="font-family:宋体;"> <br />
lvs简介</span><span style="font-family:宋体;"> <br />
lvs集群 
的体系结构</span><span style="font-family:宋体;"> <br />
lvs集群的负载均衡方式与调度算法 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第20-21讲 通过LVS+Keepalived搭建高可用的负载均衡集群系统 </span><br />
</span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 
标：</span><span style="font-family:宋体;"><br />
熟练掌握lvs的安装方式以及基于dr/tun模式的配置 方式</span><span style="font-family:宋体;"><br />
安装lvs管理软件</span><span style="font-family:宋体;">ipvs <br />
ipvsadm的用法</span><span style="font-family:宋体;"> <br />
lvs在负载调度器上的配置 </span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">通过 ipvsadm命令行方式配置LVS</span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">通过Redhat提供的工具piranha来配置LVS</span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">在Director上配置冗余策略 Ldirectord</span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">启动LVS集群服务</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">lvs</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">在后端 realserver节点上的配置</span><span style="font-family:宋体;"><br />
配置lvs冗余策略 </span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">LVS+Keepalived</span><span style="font-size:10.5pt;">构建拓扑图 </span></span><br />
<span style="font-family:宋;"><span style="font-size:10.5pt;">安装Keepalived</span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">配置Keepalived</span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">启动Keepalived+lvs集群系统</span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第22讲 测试LVS+Keepalived高可用负载均 
衡集群</span><br />
</span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
通过测试了解lvs负载均衡集群的工作机制和 切换原理</span><span style="font-family:宋体;"><br />
启动LVS高可用集群服务 </span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">keepalived</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> 
高可用性功能测试</span><span style="font-family:宋体;"><br />
测试lvs+keepalived的负载均衡集群功 能</span><span style="font-family:宋体;"><br />
测试lvs+keepalived的故障透明转移功能 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第23讲 
drbd+mysql+heartbeat+lvs可行性分析</span></span><span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
了解mysql与 
drbd+lvs+heartbeat整合的必要性</span><span style="font-family:宋体;"><br />
课程内容： </span><span style="font-family:宋体;"><br />
mysql应用需求现状与存在问题</span><span style="font-family:宋体;"> <br />
drbd+mysql+heartbeat+lvs方案实现原理 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第24讲 mysql主从复制的实现</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 
标：</span><span style="font-family:宋体;"><br />
掌握mysql主从复制的配置方式</span><span style="font-family:宋体;"> <br />
mysql主从复制的实现原理</span><span style="font-family:宋体;"><br />
实例演示 mysql主从复制的配置过程</span><span style="font-family:宋体;"><br />
配置mysql主从复制需要注意 的问题</span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第25 讲 
配置mysql+heartbeat+drbd实现mysql写操作高可用</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
掌握mysql+heartbeat+drbd的配置方式，并可灵活运用</span><span style="font-family:宋体;"><br />
配置mysql+drbd实现数据镜像</span><span style="font-family:宋体;"><br />
配置 
mysql+heartbeat实现mysql数据库的高可用</span><span style="font-family:宋体;"><br />
测试数据镜 像功能</span><span style="font-family:宋体;"><br />
测试mysql高可用功能 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第26讲 
配置mysql+lvs+keeplived实现mysql读操作的负载均衡</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
熟练掌握mysql+lvs+keeplived的部署方式</span><span style="font-family:宋体;"> <br />
keeplived简介</span><span style="font-family:宋体;"><br />
通过配置lvs+keeplived实现mysql读 
操作的负载均衡</span><span style="font-family:宋体;"><br />
测试mysql+lvs+keeplived负载均衡功能 <br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第27讲 
rhcs集群概述</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
了解rhcs集群的组成与结构以及运行原理</span><span style="font-family:宋体;"><br />
课程内 容：</span><span style="font-family:宋体;"> <br />
rhcs的组成</span><span style="font-family:宋体;"> <br />
rhcs整体结构</span><span style="font-family:宋体;"> <br />
rhcs实现原理以及各功能模块介绍 </span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第28 讲 
安装</span><span style="font-family:宋体;">rhcs <br />
</span></span><span><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
熟练掌 握rhcs的安装方式</span><span style="font-family:宋体;"><br />
配置共享存储和rhcs管理端 </span><span style="font-family:宋体;">luci <br />
在集群节点安装rhcs软件包</span><span style="font-family:宋体;"><br />
在集群节点安装配置iscsi客户端<br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第29-30讲 配置 rhcs</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 标：</span><span style="font-family:宋体;"><br />
可以通过字符界面和<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=47"><span class="t_tag" href="tools/ajax.aspx?%0D%0A%0D%0At=topicswithsametag&amp;tagid=47">web</span></span>界面熟练配置一个集群系统 </span><span style="font-family:宋体;"><br />
通过luci创建一个</span><span style="font-family:宋体;">cluster <br />
创建</span><span style="font-family:宋体;">failover domain <br />
创建</span><span style="font-family:宋体;">resources <br />
创建</span><span style="font-family:宋体;">service <br />
配置存储集群 </span><span style="font-family:宋体;">gfs <br />
配置表决磁盘</span><span style="font-family:宋体;"><br />
配 置fence设备</span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第31-32讲 管理和维护rhcs集群系统</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 
标：</span><span style="font-family:宋体;"><br />
熟练掌握rhcs集群的启动/关闭方式，并能解决常见 rhcs问题</span><span style="font-family:宋体;"><br />
启动rhcs集群</span><span style="font-family:宋体;"><br />
关闭rhcs集群</span><span style="font-family:宋体;"><br />
管理应用服务</span><span style="font-family:宋体;"><br />
监控rhcs集群状态</span><span style="font-family:宋体;"><br />
管理和维护gfs2文件 系统<br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋;">第33讲 测试rhcs集群功能</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
通过测试rhcs的 
集群功能，验证rhcs是否已经正常工作</span><span style="font-family:宋体;"><br />
高可用集群测试 </span><span style="font-family:宋体;"><br />
存储集群测试<br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第34讲 <span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=46"><span class="t_tag" href="tools/ajax.aspx?%0D%0A%0D%0At=topicswithsametag&amp;tagid=46">oracle</span></span>集群方案体系结构 </span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"><br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 
标：</span><span style="font-family:宋体;"><br />
了解oracle集群的组成和实现机制</span><span style="font-family:宋体;"><br />
课程内容：</span><span style="font-family:宋体;"> <br />
oracle clusterware体系结 
构与进程介绍</span><span style="font-family:宋体;"> <br />
rac数据库体系机构与进程 </span><span style="font-family:宋体;"><br />
oracle 
rac的特点</span><span style="font-family:宋体;"> <br />
rac数据库存储规划</span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第35-37讲 安装oracle 
rac数据库</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
能够熟练完成oracle 
rac数据库安装前的准备工作，并成功安装</span><span style="font-family:宋体;">oracle rac <br />
安装rac数据库前的准备工作</span><span style="font-family:宋体;"><br />
安装</span><span style="font-family:宋体;">oracle 
clusterware <br />
安装oracle rac数据库软件 </span><span style="font-family:宋体;"><br />
配置oracle 
rac监听</span><span style="font-family:宋体;"><br />
安装oracle rac数据库<br />
</span></span><br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第38讲 oracle crs的管理与维护</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目 
标：</span><span style="font-family:宋体;"><br />
熟练掌握crs的的安装配置和日常使用 </span><span style="font-family:宋体;"><br />
查看rac数据库运行状态</span><span style="font-family:宋体;"><br />
启动和关闭oracle 
rac集群数据库资源</span><span style="font-family:宋体;"><br />
启动与关闭 </span><span style="font-family:宋体;">crs <br />
管理和维护表决磁盘</span><span style="font-family:宋体;"><br />
管理</span><span style="font-family:宋体;">ocr <br />
如何安全卸载crs </span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第39 -40讲 
asm基本操作与使用</span><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
能够熟练掌握oracle asm存储管理方式</span><span style="font-family:宋体;"> <br />
asm的特 点</span><span style="font-family:宋体;"> <br />
asm的体系结构与后台进程</span><span style="font-family:宋;"><br />
管理asm实例</span><span style="font-family:宋体;"> <br />
asmcmd命令的使用 </span></span><br />
<br />
<span style="font-size:10.5pt;"><span style="font-family:宋体;">第41 -42讲 
使用srvctl管理rac数据库</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;"> <br />
</span></span><span style="font-size:10.5pt;"><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
熟练掌握通过 srvctl管理rac数据库的方法和技巧</span><span style="font-family:宋体;"><br />
通过srvctl查看rac数据 库实例状态</span><span style="font-family:宋体;"><br />
通过srvctl查看rac数据库配置信息 </span><span style="font-family:宋体;"><br />
通过srvctl启动/关闭rac数据库实例</span><span style="font-family:宋体;"><br />
通过srvctl添加/修改/删除rac数据库实例 <br />
</span></span><br />
<span style="font-family:宋体;"><span style="font-size:10.5pt;">第43讲 测试oracle rac数据库集群功能</span></span><br />
<span><span style="font-family:宋体;">课程目标：</span><span style="font-family:宋体;"><br />
通过测试 oracle 
rac数据库集群功能，验证rac数据库是否已经正常工作</span><span style="font-family:宋体;"> <br />
rac数据库负载均衡功能测试</span><span style="font-family:宋体;"><br />
故障透明切换功能测 试 </span></span></p>
</div>
</div>
</dd></dl> <hr class="solidline" />
<dl class="announce s_clear"><dt class="f_bold"><a name="4"></a>华章培训新人指导手册 </dt><dd><a class="lightlink" href="userinfo-1.aspx">admin</a> 发表于: <span class="time">2010-05-20 19:04</span> 结束于:<span class="time"> 2010-05-27 19:04</span> </dd><dd> <p style="line-height:15pt;"><a name="ebook_01"></a></p>
<p style="margin-left:18pt;text-indent:-18pt;line-height:15pt;mso-list:l0 level1 lfo1;tab-stops:list 18.0pt;"><span style="font-size:14pt;color:#333333;" lang="EN-US"><span style="mso-list:Ignore;"><span style="font-family:宋体;">1.</span><span style="font:7pt ''''''''''''''''Times New Roman'''''''''''''''';">&nbsp; </span></span></span><span style="font-family:宋体;"><span style="font-size:14pt;">华章培训 </span><span style="color:#333333;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">是什么<span lang="EN-US">?</span></span></span></span></span></p>
<p style="text-indent:14pt;line-height:15pt;mso-char-indent-count:1.0;"><a name="ebook_02"></a><span style="font-family:宋体;"><span style="font-size:14pt;">华章培训（<span lang="EN-US">www.hztraining.com</span>）直属于北京华章图文信息有限公司。它是一个全方位的网络视频培训平台，旨在建立全球最大的中文网络视频培训平台。</span></span></p>
<p style="margin-left:18pt;text-indent:-18pt;line-height:15pt;mso-list:l0 level1 lfo1;tab-stops:list 18.0pt;"><span class="gray3331"><span style="font-size:14pt;" lang="EN-US"><span style="mso-list:Ignore;"><span style="color:#333333;"><span style="font-family:宋体;">2.</span><span style="font:7pt ''''''''''''''''Times New Roman'''''''''''''''';">&nbsp; </span></span></span></span></span><span style="font-family:宋体;"><span style="font-size:14pt;">华章培训 </span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;"><span style="color:#333333;">提供哪方面什么培训内容？</span></span></span></span></p>
<p style="text-indent:21pt;line-height:15pt;mso-char-indent-count:1.5;"><span style="color:#333333;"><span style="font-family:宋体;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">目前主要提供专业的<span lang="EN-US"> 
IT</span>教育、经管教育两个领域的培训视频资料。其他领域的培训视频资料正在集结中，敬请关注。</span></span></span></span></p>
<p style="line-height:15pt;"><span style="font-family:宋体;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US"><span style="color:#333333;">3. </span></span></span><span style="font-size:14pt;">华章培训</span><span style="color:#333333;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;"> 
所提供的视频是不是免费的？</span></span></span></span></p>
<p style="text-indent:21pt;line-height:15pt;mso-char-indent-count:1.5;"><span style="font-family:宋体;"><span style="font-size:14pt;">华章培训 </span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">提供的培训视频大部分是免费的，请查看有关详细页面，定价为<span lang="EN-US">”0”</span>即为免费视频。</span></span></p>
<p style="line-height:15pt;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;"><span style="font-family:宋体;">如：<span lang="EN-US"><a href="http://www.china-pub.com/3599999"><span style="mso-bidi-font-size:14.0pt;mso-ansi-font-size:14.0pt;"><span style="color:#012c83;">http://www.china-pub.com/3599999</span></span></a><a name="ebook_03"></a></span></span></span></p>
<p style="line-height:15pt;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;" lang="EN-US">4.</span><span style="color:#333333;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US"> </span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">华章培训 
视频</span></span></span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">定价</span></span></p>
<p style="text-indent:28pt;line-height:15pt;mso-char-indent-count:2.0;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">华章培训视频定价分为两种，</span><span style="font-size:14pt;mso-bidi-font-family:Arial;">一年<span style="color:#484848;">使用期定价和永久使用期定价，一年使用期定价</span>比<span style="color:#484848;">永久使用定价优惠。</span></span></span></p>
<p style="line-height:15pt;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;" lang="EN-US">5</span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">．培训视频资料系列购买</span></span></p>
<p style="text-indent:21pt;line-height:15pt;mso-char-indent-count:1.5;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">华章培训的培训视频资料多为系列视频资料，可以单个购买，也可以成套购买，在详细页面有系列推荐，可以批量添加购买。成套购买比单个购买优惠。请</span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;"><span style="color:#333333;">您点击华章培训相关视频中的购买链接到</span></span></span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;" lang="EN-US">China-Pub</span><span style="color:#333333;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">进行购买</span></span><span style="font-size:14pt;color:#333333;mso-bidi-font-family:Arial;">。</span></span></span></p>
<p style="line-height:15pt;"><span style="color:#333333;"><span style="font-family:宋体;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US">6.</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">购买视频如何付费？</span></span></span></span></p>
<p style="text-indent:21pt;line-height:15pt;mso-char-indent-count:1.5;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;"><span style="font-family:宋体;">您所提交的<span lang="EN-US">Vbook</span>订单，我们提供以下三种付费方式：</span></span></p>
<p style="line-height:15pt;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;">①</span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;"> 
在线支付：通过银行网站、第三方支付平台，以各类银行卡、信用卡进行订单支付。</span></span></p>
<p style="line-height:15pt;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;">②</span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">帐户余额支付：直接扣减会员帐户中相关人民币余额。</span></span></p>
<p style="line-height:15pt;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;">③</span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">其他优惠券支付：互动网针对<span lang="EN-US">VBOOK</span>给会员发放的专用优惠券。<a name="ebook_04"></a></span></span></p>
<p style="line-height:15pt;"><span style="color:#333333;"><span style="font-family:宋体;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US">7.</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">如何下载付费电子书？</span></span></span></span></p>
<p style="line-height:15pt;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;"><span style="font-family:宋体;">您在支付完订单应付款后，进入<span lang="EN-US">“</span>我的<span lang="EN-US">China-Pub”——“</span>电子书下载中心<span lang="EN-US">”——“</span>下载清单<span lang="EN-US">”</span>，选择任一所购视频，点右侧<span lang="EN-US">“</span>下载<span lang="EN-US">”</span>链接，选择另存为方式进行下载。</span></span></p>
<p style="margin-left:7pt;text-indent:-7pt;line-height:15pt;mso-char-indent-count:-.5;"><span style="color:#333333;"><span style="font-family:宋体;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US">8.</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">如何开始阅读<span lang="EN-US">Vbook</span>？</span></span></span></span></p>
<p style="margin-left:7pt;text-indent:-7pt;line-height:15pt;mso-char-indent-count:-.5;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;"><span style="font-family:宋体;">首次打开下载的视频文件时，提示您求输入会员名和密码下载数字证书，下载成功后就开以打开观看视频。之后在本台电脑可直接打开本视频文件观看了。</span></span></p>
<p style="line-height:15pt;"><a name="ebook_06"></a><span style="color:#333333;"><span style="font-family:宋体;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US">9.</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">如何查看<span lang="EN-US">Vbook</span>购买记录？</span></span></span></span></p>
<p style="line-height:15pt;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;"><span style="font-family:宋体;">您可以在登录后，进入<span lang="EN-US">“</span>我的<span lang="EN-US">China-Pub”——“</span>个人消费中心<span lang="EN-US">”——“</span>电子书<span lang="EN-US">&amp;VBook”</span>中查看所有您的购买记录。<span lang="EN-US"> </span></span></span></p>
<p style="line-height:15pt;"><a name="ebook_07"></a><span style="color:#333333;"><span style="font-family:宋体;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US">10.</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">所购<span lang="EN-US">Vbook</span>可以在其他电脑上阅读么？</span></span></span></span></p>
<p style="line-height:15pt;"><span style="font-family:宋体;"><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">您所购买的</span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US"><span style="color:#333333;">Vbook</span></span></span><span class="gray3331"><span style="font-size:14pt;color:red;mso-bidi-font-family:Arial;" lang="EN-US"><span style="mso-spacerun:yes;">&nbsp; </span></span></span><span class="gray3331"><span style="font-size:14pt;color:windowtext;mso-bidi-font-family:Arial;">只</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;"><span style="color:#333333;">能下载三次数字证书，即最多在</span></span></span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;" lang="EN-US">3</span><span style="font-size:14pt;color:#484848;mso-bidi-font-family:Arial;">台不同的电脑上，多于<span lang="EN-US">3</span>台电脑后，视频将不能使用；因为您所购买的视频是经过<span lang="EN-US">DRM</span>数字版权保护技术进行加密的，这也是为了更好的保护出版方的合法权益。</span></span></p>
<p><a name="ebook_08"></a><a name="ebook_09"></a><span style="font-family:宋体;"><span style="font-size:14pt;" lang="EN-US">11</span><span style="font-size:14pt;">、无法播放文件，提示需要版权认证组件？</span></span></p>
<p><span style="font-family:宋体;"><span style="color:#333333;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US">China-Pub 
Vbook</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;mso-ascii-font-family:Arial;mso-hansi-font-family:Arial;">目前仅适用于</span></span></span><span style="font-size:14pt;" lang="EN-US">Windows Media Player</span><span style="font-size:14pt;">播放，视频资料是由版权方提供的具有数字版权保护的节目， 购买用户可以被授权观看， 需要下载<span lang="EN-US">Windows Media Player </span>的<span lang="EN-US">DRM</span>组件。 请下载 <span lang="EN-US"><a href="http://drmlicense.one.microsoft.com/Indivsite/zh-cn/indivit.asp"><span style="color:#012c83;"><span style="mso-bidi-font-size:14.0pt;mso-ansi-font-size:14.0pt;">[</span><span style="mso-bidi-font-size:14.0pt;mso-ansi-font-size:14.0pt;" lang="EN-US"><span lang="EN-US">下载<span lang="EN-US">地<span lang="EN-US">址] </span></span></span></span></span></a></span>。<span lang="EN-US"> Windows Media 
Player</span>版本信息也可能导致视频资料无法播放，请升级您的媒体播放器，<span lang="EN-US">windows media 
player10.0</span>版本 <span lang="EN-US"><a href="http://download.microsoft.com/download/a/f/8/af8c3ece-6a0c-4980-abf2-28172420ccb5/MP10Setup.exe"><span style="color:#012c83;"><span style="mso-bidi-font-size:14.0pt;mso-ansi-font-size:14.0pt;">[</span><span style="mso-bidi-font-size:14.0pt;mso-ansi-font-size:14.0pt;" lang="EN-US"><span lang="EN-US">下载地址] </span></span></span></a></span>。 </span></span></p>
<p><span style="font-family:宋体;"><span style="font-size:14pt;">点击“这里”可以测试是否能够正常播放</span><span style="color:#333333;"><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;" lang="EN-US">China-Pub 
Vbook</span></span><span class="gray3331"><span style="font-size:14pt;mso-bidi-font-family:Arial;">。</span></span></span></span></p>
<p><span style="font-family:宋体;"><span style="font-size:14pt;" lang="EN-US">12</span><span style="font-size:14pt;">、以上帮助没有解决问题，需要寻求更多的帮助？</span></span></p>
<p><span style="font-size:14pt;"><span style="font-family:宋体;">请您将您的问题，您的机器环境（如操作系统，<span lang="EN-US">Windows Media 
Player</span>等版本信息，使用的杀毒软件和防火墙等）及网络状况（如网络带宽，网络种类：电信<span lang="EN-US">/</span>网通<span lang="EN-US">/</span>教育网等），以及您的其他联系方式发到这里，我们会尽快给您回复 
。联系邮件：<span lang="EN-US"><a href="mailto:service@china-pub.com"><span style="mso-bidi-font-size:14.0pt;mso-ansi-font-size:14.0pt;"><span style="color:#012c83;">service@china-pub.com</span></span></a></span></span></span></p>
<p><span style="font-family:宋体;"><span style="font-size:14pt;" lang="EN-US">13</span><span style="font-size:14pt;">、想要提出对华章培训的意见和建议？</span></span></p>
<p><span style="font-size:14pt;"><span style="font-family:宋体;">首先感谢您对华章培训的支持。请您将您意见和建议，以及您的其他联系方式发到这里，我们会尽快给您回复。</span></span></p>
<p><span style="font-size:14pt;"><span style="font-family:宋体;">联系邮件：<span lang="EN-US"><a href="http://www.hztraining.com/bbs/editor/hztraining@hzbook.com"><span style="mso-bidi-font-size:14.0pt;mso-ansi-font-size:14.0pt;"><span style="color:#012c83;">hztraining@hzbook.com</span></span></a></span></span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;"><a name="ebook_10"></a><a name="ebook_11"></a></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;"><span lang="EN-US">&nbsp;</span></p>
</dd></dl> <hr class="solidline" />
<dl class="announce s_clear"><dt class="f_bold"><a name="3"></a>华章培训网论坛版主管理规范 </dt><dd><a class="lightlink" href="userinfo-1.aspx">admin</a> 发表于: <span class="time">2010-05-20 18:24</span> 结束于:<span class="time"> 2010-05-27 18:24</span> </dd><dd> <p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-pagination:widow-orphan;mso-outline-level:1;" align="left"><b><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:18.0pt;">华章培训网论坛版主管理规范</span></b></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-pagination:widow-orphan;mso-outline-level:1;" align="left">&nbsp;</p>
<table class="MsoNormalTable" style="mso-cellspacing:0cm;mso-yfti-tbllook:1184;mso-padding-alt:0cm 0cm 0cm 0cm;" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;">
<td style="padding-right:0cm;padding-left:0cm;border-left-color:#d4d0c8;border-bottom-color:#d4d0c8;padding-bottom:0cm;border-top-color:#d4d0c8;padding-top:0cm;background-color:transparent;border-right-color:#d4d0c8;">
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp; 
&nbsp;</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">欢迎加入华章培训网官方管理队伍，让我们一起努力，共建未来！为了更好的规范我们的管理团队<span lang="EN-US">,</span>提高管理素质<span lang="EN-US">, </span>加强大家对管理人员的监督作用，特发布此布《华章培训网官方管理人员行为准则》。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US"><span style="mso-spacerun:yes;">&nbsp;</span>[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">定义<span lang="EN-US">]&nbsp;&nbsp;</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员头衔：<span lang="EN-US"> Administrator</span>管理员<span lang="EN-US">, </span>华章培训网<span lang="EN-US"> Team, Super Moderator</span>超级版主<span lang="EN-US">, 
Moderator</span>版主<span lang="EN-US">,Practise Moderator</span>见习版主。<span lang="EN-US"> </span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员的要求<span lang="EN-US">]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">为人正直，言行合一，语言文明，热心帮助会员解决问题，分享各种精华内容<span lang="EN-US"><br />
2 </span>注册超过三个月，发帖在<span lang="EN-US">500</span>以上<span lang="EN-US">(</span>恶意灌水除外<span lang="EN-US">)</span>，以充分了解官方礼节和融入氛围</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">认同官方的各种制度，愿意无私的为大家服务</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">4 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">愿意接受官方为期三个月的试用期，不管会否得到正式任用</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">*</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">注<span lang="EN-US">:</span>以上条件是针对新申请加入管理团队者的要求</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员的产生<span lang="EN-US">]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">会员自荐<span lang="EN-US"> [ </span>请管理员负责人：华章培训网<span lang="EN-US"> 
]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">2 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">现任管理人员推荐</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">官方直接任命</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">4 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">会员推荐</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">*</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">注<span lang="EN-US">: </span>所有方式产生的人员都必须得到官方的审核方可进入<span lang="EN-US">"Practise 
Moderator"</span>组别试用。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员的权利<span lang="EN-US">]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">为每个版主颁发华章培训网版主证书。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">2 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">拥有在<u><span lang="EN-US"><a href="http://www.hztraining.com/"><span style="color:#606420;">www.hztraining.com</span></a></span></u><span lang="EN-US"> </span>对应管理组的相关特殊权限。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">拥有所辖版块的所有自主管理权利。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">4 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">拥有社区程序改进或活动等的重要发言权。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">5 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">华章培训网将为每个版主建立个人档案库<span lang="EN-US">,</span>便于企业对人才的查找。而且会利用华章培训网的企业资源为需 要的版主进行工作或项目资源上的优先推荐。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">6 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">版主会优先免费获得华章培训网的各种纪念品和新产品。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">7 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">华章培训网会定期为版主免费发送一些<span lang="EN-US">PHP</span>方面的相关书籍。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">8 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">华章培训网有合作的出版社<span lang="EN-US">,</span>如果有想出版书籍的版主<span lang="EN-US">,</span>可以为其联系。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">9 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对于官方组织的活动拥有优先参与的权利。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">10 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">表现突出者可推荐加入华章培训网工作。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">11 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">拥有其它相关权利。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员的职责<span lang="EN-US">]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员必须以身作则，注重自我形象，自主维护华章培训网官方的形象。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">2 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员主动做好对外宣传官方的工作，以提高影响力和促进官方的发展。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">制定和完善所辖版块的版规，引导会员融入版块。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">4 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">加强版块内容建设和发展指引，营造良好的学习交流氛围。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">5 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">支持会员发布的原创精华内容，做好及时的鼓励或奖励。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">6 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">协调好版块的交流氛围，妥善协调各种矛盾<span lang="EN-US">|</span>争吵等，形成友好环境。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">7 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">及时帮助会员解决实际困难，要为自身所说的话负责；答应会员的事，必须做到。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">8 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">根据版块性质，主动为所属版块推行各种活动，如投票、问答等等，营造会员活跃氛围。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">9 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">各版块版主每天对本版块内新发布的主题都要进行浏览<span lang="EN-US">,</span>并在<span lang="EN-US">24</span>小时内进行有效回复。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">10 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">每天要对本版块内的文章进行管理<span lang="EN-US">(</span>广告删除<span lang="EN-US">,</span>移动<span lang="EN-US">,</span>高亮显示<span lang="EN-US">,</span>置顶<span lang="EN-US">,</span>设置精华<span lang="EN-US">)</span>。还有帖子的上浮与下沉处理。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">11 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">每个月要对本版块内出现频率高的问题或是大家比较关心的问题进行专题性的总结。发布汇总性质的帖子。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">12 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">各版块版主每天在本版块至少发布一篇与本版块内容相符的转载文章。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">13</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">每个月一次的版主管理例会<span lang="EN-US">(</span>在版主<span lang="EN-US">QQ</span>群举行<span lang="EN-US">),</span>讨论近期论坛出现的问题以及解决的方法。每个版主都要发言<span lang="EN-US">,</span>如不 
能出席<span lang="EN-US">,</span>要有书面性的文字提交。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">以上实行值班制度<span lang="EN-US">,</span>保证各版块每天至少有一名版主对版块进行管理即可。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理 
人员的考核管理<span lang="EN-US">]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">每月在线时间不允许低于<span lang="EN-US">15</span>小时<span lang="EN-US">[</span>约<span lang="EN-US">0</span>。<span lang="EN-US">5</span>小时<span lang="EN-US">/</span>天<span lang="EN-US">]</span>，并且在在 
线时间内，确实进行辖区版块管理工作<span lang="EN-US"> {</span>参考工作统计<span lang="EN-US">}</span>。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">2 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">如果需较长时间缺席，请在 
版主讨论区 发帖请假</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">不请假缺席超过<span lang="EN-US">20</span>天，转入 名誉版主 组别</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对于需要缺席请假超过<span lang="EN-US">60</span>天的，将因应管理需求暂停职务<span lang="EN-US">,</span>转入 名誉版主 组别</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">4 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">版主每月工作记录考核情况以这里为准<span lang="EN-US"><a href="http://www.bbs.hztraining.com/">www.bbs.hztraining.com</a></span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">*</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">注：对于月考核不及格的管理人员将被自动暂停职务，视乎具体情况转入 
名誉版主 组别或恢复普通会员身份，如有特殊情况，请管理员负责人说明，再作协调 </span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">考核负责人：华章培训网<span lang="EN-US">&nbsp;&nbsp;</span>考核开始时间<span lang="EN-US">:2010</span>。<span lang="EN-US">4]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">5 </span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">官方将不定期对所有管理人员进行综合考核，对于一直表现平平，或很少时间登录进行管理的管理人员，将因应管理需求暂停职务，并将视乎具体情况转入<span lang="EN-US"> Honorary Moderator</span>组别或恢复普通会员身份</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">[</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">管理人员的奖惩<span lang="EN-US">]</span></span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">每月月末统计各版版主管理以及登录状况月在线、月管理、月发帖、月登录状况将全部列入审核指标：</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">增加版主每月奖励，每月计算机图书一本；</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">2.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">一月未登录并没有提前说明的版主将不发送计算机图书，并不列入下面审核范围；</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">两个月未登录并没有提前说明的版主转为名誉版主或者普通会员；</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对于杰出贡献的管理人员，将可以给予如下形式奖励： </span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对每月管理前<span lang="EN-US">10</span>名进行奖励，在前面已定的计算机图书一本上再累加一本；<span lang="EN-US"><br />
2.</span>每个季度将进行优秀版主的评选活动<span lang="EN-US">,</span>对表现突出的版主进行物质上的奖励。<span lang="EN-US"><br />
3.</span>在论坛长期对版主的表现进行投票评比<span lang="EN-US">,</span>对票数高者予以奖励。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">4.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">在网站首页的人物频道每二周推出一个优秀版主<span lang="EN-US">,</span>为其做个人宣传推广。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">5.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对在职版主求职、招聘、发展等给予一定的支持（加量、置顶、联系出版社 
等）；<span lang="EN-US"><br />
6.</span>其他形式</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对于作出了违规事情的管理人员，将给予如下形式惩罚：</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">通报批评</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">2.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">革除职务</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">追究责任</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">4.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">法律诉求</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">5.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">其他</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">大家共同为建设华章培训网官方站而相聚在一起的，华章培训网官方的明天需要我们一起付出和努力！</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">望所有管理人员都能配合遵守以上守则！</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">*</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">《华章培训网官方管理人员行为准则》最终解释权归华章培训网官方所有。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 12pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">华章培训网团队</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 12pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last 
Updated: 2010.04</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">华章培训网 
新上任 见习版主 管理准则</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对于所有新申请加入官方管理团队的成员，都将进行如下的统一管理：</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">1.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">所有版主申请事宜都需要经过官方的审核批准<span lang="EN-US">[</span>负责人：华章培训网<span lang="EN-US">]</span>。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">2.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">新上任版主将进行<span lang="EN-US">3</span>个月的试用，转入<span lang="EN-US">“Practise Moderator </span>见习版主<span lang="EN-US">”</span>组别，同时在所辖版块发布置顶公告一个月。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">3.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">见习版主一样需要遵守《华章培训网官方管理人员行为准则》里面的相关规定。<span lang="EN-US"><br />
4.</span>在<span lang="EN-US">3</span>个月的试用期满后，见习版主将需要接受<span lang="EN-US">“</span>工作统计<span lang="EN-US">”</span>的考核，并且要接受所辖版块会员或随机人员的意见反馈或投票。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">5.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">对于第<span lang="EN-US">4</span>点的双方面考核结果，将根据不同的版块和具体趋势情况，由官方协调决定采用如下<span lang="EN-US">3</span>种方式之一：</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp; 
&nbsp;a.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">正式任用并转入<span lang="EN-US">“Moderator</span>版主<span lang="EN-US">”</span>组别。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp; 
&nbsp;b.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">继续延长<span lang="EN-US">3</span>个月试用。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp; 
&nbsp;c.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">撤消所有管理组别。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">6.</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">新上任的见习版主试用期满后，不管是否正式任用，官方对其付出的努力表示诚挚的感谢<span lang="EN-US">,</span>同时给予不少于一本计算机图书奖励。</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">本管理准则从发布即日起生效！华章培训网官方保留所有解释权！</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;">华章培训网团队</span></p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left">&nbsp;</p>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;text-align:left;mso-pagination:widow-orphan;" align="left"><span style="font-size:12pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last 
Updated: 2010.04</span></p>
</td>
</tr>
</tbody>
</table>
<p class="MsoNormal" style="margin:0cm 0cm 0pt;"><span lang="EN-US"><span style="font-family:Calibri;">&nbsp;</span></span></p>
</dd></dl> <hr class="solidline" />
<dl class="announce s_clear"><dt class="f_bold"><a name="5"></a>付费视频观看及购买注意事项(新手必看) </dt><dd><a class="lightlink" href="userinfo-1.aspx">admin</a> 发表于: <span class="time">2010-09-10 10:04</span> 结束于:<span class="time"> 2010-09-17 10:04</span> </dd><dd> <div class="t_msgfont" id="message6762">
<div id="firstpost">1.<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=23">华章培训</span>网提供哪方面培训内容？<br />
目前主要提供专业的 
IT教育、经管教育两个领域的培训<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=16">视频</span>资料。其他领域的培训视频资料正在集结中，敬请关注。 <br />
<br />
2.<span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=3">华章培训网</span>所提供的视频是不是免费的？<br />
华章培训网提供的培训视频大部分是免费的，部分原创视频教程是需要付费的，请查看论坛相关版块。<br />
<br />
3. <span class="t_tag" href="tools/ajax.aspx?t=topicswithsametag&amp;tagid=25">华章</span>培训网视频定价？<br />
视频定价分为两种，一种使用期定价和永久使用期定价，一年使用期定价比永久使用定价优惠。<br />
<br />
4.培训视频资料系列购买<br />
华章培训网的培训视频资料多为系列视频资料，可以单个购买，也可以成套购买，在详细页面有系列推荐，可以批量添加购买。成套购买比单个购买优惠。<br />
<br />
5.购买华章培训网的视频如何付费？<br />
通过华章培训网的具体课程页面，链接到付费平台china-pub。<br />
您所提交的Vbook订单，我们提供以下三种付费方式： <br />
① 在线支付：通过银行网站、第三方支付平台，以各类银行卡、信用卡进行订单支付。 <br />
②帐户余额支付：直接扣减会员帐户中相关人民币余额。 <br />
③其他优惠券支付：china-pub针对VBOOK给会员发放的专用优惠券。<br />
<br />
6.如何下载付费电子书？<br />
进入“我的China-Pub”——个人消费中心——“电子书&amp;vBook”——“下载清单”<br />
<br />
7.如何开始阅读Vbook？<br />
首次打开下载的视频文件时，提示您求输入会员名和密码下载数字证书，下载成功后就开以打开观看视频。之后在本台电脑可直接打开本视频文件观看了。<br />
<br />
8.如何查看Vbook购买记录？<br />
您可以在登录后，进入“我的China-Pub”——“个人消费中心”——“电子书&amp;VBook”中查看所有您的购买记录。<br />
<br />
9.所购Vbook可以在其他电脑上阅读么？<br />
您所购买的Vbook原则上只能在1台电脑上使用；因为您所购买的电子图书是经过DRM数字版权保护技术进行加密的，这也是为了更好的保护出版方的合法权益。<br />
<br />
10.无法播放文件，提示需要版权认证组件？<br />
China-Pub 
Vbook目前仅适用于<span style="color:red;">Windows Media 
Player</span>播放，视频资料是由版权方提供的具有数字版权保护的节目， 购买用户可以被授权观看， 需要下载Windows Media Player 
的DRM组件。 请下载 <a href="http://drmlicense.one.microsoft.com/Indivsite/zh-cn/indivit.asp" target="_blank"><u><span style="color:blue;">[下载地址]</span></u></a>。 Windows Media 
Player版本信息也可能导致视频资料无法播放，请升级您的媒体播放器，windows media player10.0版本 <a href="http://download.microsoft.com/download/a/f/8/af8c3ece-6a0c-4980-abf2-28172420ccb5/MP10Setup.exe" target="_blank"><u><span style="color:blue;">[下载地址]</span></u></a> 。 <br />
点击“<a href="http://www.china-pub.com/temporary/faq/2007FAQ/test/index.html" target="_blank"><u><span style="color:blue;">这里</span></u></a>”可以测试是否能够正常播放China-Pub 
Vbook。<br />
<br />
11.以上帮助没有解决问题，需要寻求更多的帮助？<br />
请您将您的问题，您的机器环境（如操作系统，Windows Media 
Player等版本信息，使用的杀毒软件和防火墙等）及网络状况（如网络带宽，网络种类：电信/网通/教育网等），以及您的其他联系方式发到这里，我们会尽快给您回复 
。<br />
<br />
<span style="color:black;">联系邮件：</span><a href="mailto:hztraining@hzbook.com" target="_blank"><span style="color:blue;"><u>hztraining@hzbook.com</u></span></a><br />
<span style="color:black;">联系电话：</span><span style="color:blue;">010- 68995265</span> </div>
</div>
</dd></dl> <hr class="solidline" />
<dl class="announce s_clear"><dt class="f_bold"><a name="7"></a>华章培训网面向社会邀请讲师加盟 </dt><dd><a class="lightlink" href="userinfo-1.aspx">admin</a> 发表于: <span class="time">2011-02-24 18:15</span> 结束于:<span class="time"> 2012-03-03 18:15</span> </dd><dd> <p><strong>讲师加盟：</strong></p>
<p>本着互惠互利、共同发展的原则，华章培训www.hztraining.com面向社会公开招聘培训讲师，华章培训网将给讲师提供丰厚的报酬和展示自己的绝佳平台。 </p>
<p><strong>教学领域：</strong></p>
<ul><li>1.新技术、项目开发类型、实用类型。 </li>
<li>2.Java技术、微软技术、数据库（MySQL、Oracle、SQL 
Server）、Web开发、移动开发（Android开发、Ophone开发、Iphone开发、symbian开发、wap技术）、操作系统、嵌入式开发、搜索引擎、安全、其他。 </li>
</ul>
<p><strong>讲师要求：</strong></p>
<ul><li>1.语意表达清晰，能够独立录制培训视频，拥有多年项目开发经验。 </li>
<li>2.条理清晰，表达明确，内容深入易懂。 </li>
<li>3.以前有讲师经验者优先考虑。 </li>
<li>4.具体待遇：详谈 </li>
<li>5.请应聘讲师提供需要讲解内容的文档，给我们的联系方式，QQ：418595723 </li>
</ul>
</dd></dl> <hr class="solidline" />
<dl class="announce s_clear"><dt class="f_bold"><a name="6"></a>华章培训面向广大师生招募校园代理 </dt><dd><a class="lightlink" href="userinfo-1.aspx">admin</a> 发表于: <span class="time">2011-02-24 18:14</span> 结束于:<span class="time"> 2011-02-24 18:14</span> </dd><dd> <div class="text"><strong>华章培训面向广大师生招募校园代理</strong><br />
</div>
<div class="text">&nbsp;&nbsp;&nbsp;&nbsp;华章培训 www.hztraining.com 
全球最大的中文网络视频培训平台。现面向广大高校师生，招聘可长期合作的高校销售代理。华章培训网将通过各种代理扶持制度，确保代理的丰厚回报。如果您在贵高校有一定的渠道资源，您将获得意想不到的高额收入！ 
而且这还是份兼职工作哦，不影响您的学习或工作！赶紧过来试试吧。 <br />
<strong>校园代理的工作任务：</strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div class="text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
很简单，通过线上线下等各种方式在本校宣传华章培训的相关培训课程产品，吸引学生通过您的渠道来购买课程。只要产生销售收入，就可以获得高额的提成。我们将确保您的渠道安全，并指导您来制订具体的宣传内容，让您没有任何后顾之忧。 <br />
<strong>校园代理的奖励制度：</strong> <br />
&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div class="text">&nbsp;&nbsp;&nbsp; 只要从您的渠道产生销售收入，就按照该实际销售收入进行提成。具体提成比率为： <br />
&nbsp;&nbsp;&nbsp;&nbsp;课程每月实际销售收入累计1000元以下 ，提成10% <br />
&nbsp;&nbsp;&nbsp;&nbsp;课程每月实际销售收入累计1000-3000元，提成15% <br />
&nbsp;&nbsp;&nbsp;&nbsp;课程每月实际销售收入累计3001-5000元，提成20% <br />
&nbsp;&nbsp;&nbsp;&nbsp;课程每月实际销售收入累计5000元以上，提成25% <br />
<strong>校园代理的扶持制度，确保您成功：</strong> <br />
&nbsp;&nbsp;&nbsp;&nbsp;1.华章培训www.hztraining.com全球最大的中文网络视频培训平台，提供大量的实战类培训项目及海量的培训视频资料，非常有利于广大在校学生提高实战能力，深受广大学生的欢迎，在高校IT学生中有良好的口碑，确保您的工作有良好的市场前景。另外，我们根据在校学生的实际情况，会不断扩展课程的种类和数量，让您拥有丰富的产品线，在推广时能得心应手。 <br />
&nbsp;&nbsp;&nbsp;&nbsp;2. 每个高校我们只招募一个校园代理，确保您在本校的独家代理权利。 <br />
&nbsp;&nbsp;&nbsp;&nbsp;3. 
华章培训唯一授予您的渠道拥有价格折扣。也就是说，用户只有通过您的渠道购买，才能享受到渠道优惠，直接通过华章培训购买无法享受到任何折扣，确保您的渠道安全。 <br />
&nbsp;&nbsp;&nbsp;&nbsp;4. 
华章培训随时为您提供宣传方面的培训，指导您制订具体的宣传内容和宣传技巧，并提供海报等宣传资料制作方面的必要费用，确保您能有效地开展工作。在您获得经济利益的同时，也必将提高您的实际工作能力，相信这对您以后的就业也大有帮助。 <br />
&nbsp;&nbsp;&nbsp;&nbsp;5. 对于优秀的销售代理，华章培训将考虑吸收其加入华章培训就业。或者，华章培训可为您提供工作能力鉴定书，为您以后的就业提供帮助。 </div>
<div class="tips">&nbsp;&nbsp;&nbsp;&nbsp;华章培训坚信，只有我们的代理获得成功了，华章培训才能获得成功。华章培训真诚期待您们这些校园俊才加入我们的队伍，一起共创美好的明天。<br />
&nbsp;&nbsp;&nbsp;&nbsp;此招募公告长期有效，如您对此有兴趣，请随时和我们取得联系。华章培训期待着您的加入。<br />
&nbsp;&nbsp;&nbsp;&nbsp;联系方式： <br />
&nbsp;&nbsp;&nbsp;&nbsp;QQ：1575978263 <br />
&nbsp;&nbsp;&nbsp;&nbsp;QQ：572269417 <br />
&nbsp;&nbsp;&nbsp;&nbsp;或登录华章培训（<a href="http://www.hztraining.com/">http://www.hztraining.com</a>），直接和客服联系。 <br />
&nbsp;&nbsp;&nbsp;&nbsp;华章培训 <br />
&nbsp;&nbsp;&nbsp;&nbsp;2010/3/2招聘</div>
</dd></dl>', CAST(0x0000A03A00E16270 AS DateTime), 1, N'admin')
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (4, 1, N'面向社会邀请讲师加盟', N'邀请，讲师，加盟', N'邀请讲师加盟邀请讲师加盟邀请讲师加盟', N'<div class="postmessage defaultpost">

<div class="t_msgfont" id="message38532">
<div id="firstpost"><b><span style="font-size:medium;">讲师加盟</span></b><br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;本着互惠互利、共同发展的原则，华章培训面向社会公开招聘培训讲师，华章培训网将给讲师提供丰厚的报酬和展示自己的绝佳平台。<br />
<br />
<b>教学领域：<br />
<br />
</b>1.新技术、项目开发类型、实用类型。 <br />
2.Java技术、微软技术、数据库（MySQL、Oracle、SQL 
Server）、Web开发、移动开发（Android开发、Ophone开发、Iphone开发、symbian开发、wap技术）、操作系统、嵌入式开发、搜索引擎、安全、其他。 <br />
<br />
<b>讲师要求：<br />
<br />
</b>1.语意表达清晰，能够独立录制培训视频，拥有多年项目开发经验。 <br />
2.条理清晰，表达明确，内容深入易懂。 <br />
3.以前有讲师经验者优先考虑。 <br />
4.具体待遇：详谈 <br />
5.请应聘讲师提供需要讲解内容的文档，给我们的联系方式，QQ：418595723&nbsp;&nbsp; QQ: 389932306 </div>
</div>
</div>', CAST(0x0000A03A00E7A914 AS DateTime), 1, N'admin')
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (5, 1, N'淘宝网市场管理公告', N'市场，管理，公告', N'淘宝网市场管理公告淘宝网市场管理公告淘宝网市场管理公告', N'<div id="knowledge-content" class="ke-post">
                    													                    														<p>近年
来，广大卖家坚持将诚信作为立身之本，保证了绝大多数淘友在淘宝得到了愉快的消费经验，因此让淘宝在短短8年的时间里迅速吸引到了包括几百万卖家在内的
3.7亿淘友，成为广大淘友生活中不可或缺的一部分。淘宝所首创和不断完善的网上信用体系、担保交易的推行、消费者保障计划的扩张等等，为卖家营造一个鼓
励诚信、公平竞争的发展环境，为买家提供一个安心消费的购物平台。</p>
<p>秉承扶持产品好、服务好的优质诚信卖家的思路，8月29日，淘宝发出了将加强监控服务质量的公告（<a href="http://bbs.taobao.com/catalog/thread/513886-253813717.htm">http://bbs.taobao.com/catalog/thread/513886-253813717.htm</a>），宣布将在在搜索、营销、培训等方面向重品质、重服务的卖家倾斜，让品质好、服务好、评价好的卖家获得更多展现店铺和宝贝的机会，同时加大对指标普遍低于平均水平的店铺的监控。</p>
<p>为
持续改善消费者购物体验，引导卖家提高服务质量健康发展，9月1日，《淘宝规则》发布了规则变更公告，新增了“市场管理”章节，明确了相关市场管理措施和
适用的情形。其中第56条规定，淘宝根据卖家的好评率、店铺评分、退款率及纠纷退款率等，对低于淘宝指定标准的卖家限制参加营销活动，且给予全店商品单一
维度搜索默认不展示。特殊市场另有规定的除外。（公告原链接：<a href="http://a.taobao.com/detail/2011/09/01/508358/1.php">http://a.taobao.com/detail/2011/09/01/508358/1.php</a>）单个商品单一维度搜索默认不展示，是指商品信息在按价格、信用、销量等单一维度的搜索结果中默认不展现，但可经消费者选择后展现。</p>
<p>规则的这一变更将在9月13日正式生效。为了让广大卖家明确努力完善和提高的方向，贯彻公开、公正、透明的原则，特公布判定卖家细化标准（如下表）。9月13日起，淘宝将根据规则，对符合这些条件的卖家采取限制参加官方营销活动、全店商品单一维度搜索默认不展示的处理。</p>
<p>网购消费者越来越多，规模越来越大，对卖家和淘宝都提出了更高的要求，只有品质好、服务好的诚信卖家，才能在未来的市场竞争中赢得主动。在这一过程中，淘宝将坚定不移地鼓励和扶持品质好、服务好的诚信卖家，加强对低服务水平卖家的督促和监控。</p>
<p>&nbsp;</p>
<p>让每一个买家都买得爽买得放心，让每一个诚信卖家都顺利发展，这是每一位淘友的共同愿望让我们一起努力，净化和完善我们共有的家园，为消费者提供更好的服务！</p>
<p style="text-align:justify;text-indent:24pt;margin:0cm 0cm 0pt;"><span style="font-family:microsoft yahei;"><span style="font-size:14px;">&nbsp;</span></span><img src="http://img02.taobaocdn.com/sns_album/i2/T1ItKAXdVTXXb1upjX.jpg" style="margin:0px;display:inline;float:none;" /></p>
<p>注：所有指标中只要符合其中一条即适用规则，表格里有特殊说明的除外。&nbsp;</p>
<p>&nbsp;</p>
<p>淘宝网</p>
<p>2011年9月6日</p>
                    													                    												</div>', CAST(0x0000A03A00E94A44 AS DateTime), 1, N'admin')
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (6, 1, N'《淘宝规则》生效公告 ', N'淘宝，规则，生效，公告', N'《淘宝规则》生效公告(2012.2.20)', N'<div id="knowledge-content" class="ke-post">
                    													                    														<p>
	为持续改善消费者购物体验，给广大淘宝会员创造良好的交易环境，现对《淘宝规则》（<a href="http://service.taobao.com/support/help-12185.htm" target="_blank">http://service.taobao.com/support/help-12185.htm</a>）进行规则补充变更。</p>
<p style="text-indent:21.0pt;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本次生效的规则变更，涉及到：<span style="font-family:宋体;color:red;">发布违禁信息和滥发信息规则条文的变更</span><span style="font-family:宋体;">。</span></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此次变更详情如下：</p>
<table border="1" cellpadding="0" cellspacing="0" width="100%">
	<colgroup> 		<col style="width:91.0pt;" width="121" /> 		<col style="width:38.0pt;" width="51" /> 		<col style="width:257.0pt;" width="342" /> 		<col style="width:332.0pt;" width="443" /> 		<col style="width:88.0pt;" width="117" /> 	</colgroup> 	<tbody>
		<tr>
			<td colspan="2" bgcolor="#FFFF00" height="22">
				<div align="center">
					<span style="font-size:12.0px;"><b>变更点</b></span></div>
			</td>
			<td bgcolor="#FFFF00" width="40%">
				<div align="center">
					<span style="font-size:12.0px;"><b>变更前</b></span></div>
			</td>
			<td bgcolor="#FFFF00" width="40%">
				<div align="center">
					<span style="font-size:12.0px;"><b>变更后</b></span></div>
			</td>
			<td bgcolor="#FFFF00" width="5%">
				<div align="center">
					<span style="font-size:12.0px;"><b>生效时间</b></span></div>
			</td>
		</tr>
		<tr>
			<td rowspan="43" valign="top" width="10%">
				<span style="font-size:12.0px;"><b>总则第四十四条</b> <span style="color:#ff0000;">（详见附录：修订后总则第四十四条全文）</span></span></td>
			<td rowspan="8" valign="top" width="5%">
				<span style="font-size:12.0px;"><b>第一项</b></span></td>
			<td width="40%">
				<span style="font-size:12.0px;">2、易燃、易爆物品或制作易燃易爆品的相关化学物品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">2、易燃、易爆物品（不含烟花爆竹）；(<span style="color:#ff0000;">烟花爆竹及</span></span><span style="font-size:12.0px;"><span style="color:#ff0000;">国家名录中禁止出售的易燃易爆化学原料挪至第二项中</span>）</span></td>
			<td rowspan="58" valign="top" width="5%">
				<span style="color:#ff0000;"><span style="font-size:12.0px;">2012年2月20日</span></span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">3、毒品、麻醉品、制毒原料、制毒化学品、致瘾性药物、吸食工具及配件；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">3、毒品、<span style="color:#ff0000;">强腐蚀性化学品</span>； 5、毒品、制毒原料、制毒化学品、致瘾性药物、吸食工具及配件；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">6、用于窃取他人隐私或机密的软件及设备；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">7、用于<span style="color:#ff0000;">监听</span>、窃取隐私或机密的软件及设备；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">7、正在流通的人民币，伪造变造的货币以及印制设备；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">12、伪造变造的货币以及印制设备；（<span style="color:#ff0000;">正在流通的人民币挪至第三项中</span>）</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">10、可致使他人暂时失去反抗能力、意识模糊的口服或外用的化学品，以及含有黄色淫秽内容的商品、信息；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">4、含有色情淫秽内容的<span style="color:#ff0000;">音像制品；色情陪聊服务;成人网站论坛的账号及邀请码</span>；（</span><span style="color:#ff0000;"><span style="font-size:12.0px;">可致使他人暂时失去反抗能力、意识模糊的口服或外用的化学品挪至第二项中</span></span><span style="font-size:12.0px;">）</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">8、麻醉注射枪及其相关商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">11、涉嫌违反《中华人民共和国文物保护法》相关规定的文物。</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第三项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">&nbsp;</span></td>
			<td width="40%">
				<span style="font-size:12.0px;"><span style="color:#ff0000;">新增</span>：</span><span style="font-size:12.0px;">6、可致使他人暂时失去反抗能力，对他人身体造成重大伤害的管制器具，如</span><span style="font-size:12.0px;">电击器</span><span style="font-size:12.0px;">、防狼喷雾</span><span style="font-size:12.0px;">、弓、弩及配件；</span><span style="font-size:12.0px;">9、非法传销类商品； 10、破网、翻墙软件及vpn代理服务；</span></td>
		</tr>
		<tr>
			<td rowspan="11" valign="top" width="5%">
				<div align="center">
					<span style="font-size:12.0px;"><b>第二项</b></span></div>
			</td>
			<td width="40%">
				<span style="font-size:12.0px;">1、管制类刀具及甩棍、弓、弩、飞镖等可能用于危害他人人身安全的管制器具；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">5、管制类刀具及甩棍、飞镖等可能用于危害他人人身安全的管制器具；（</span><span style="font-size:12.0px;"><span style="color:#ff0000;">弓、弩挪至第一项中</span>）</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">2、卫星信号的地面收发装置；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">6、卫星信号收发装置及软件；<span style="color:#ff0000;">用于无线电信号探测、屏蔽的仪器或设备</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">3、伪造变造的政府机构颁发的文件、证书、公章或仅限国家机关或特定机构方可提供的服务；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">8、伪造变造国家机关<span style="color:#ff0000;">或特定机构</span>颁发的文件、证书、公章、<span style="color:#ff0000;">防伪标签等</span>，<span style="color:#ff0000;">仅限国家机关或</span>特定机构方可提供的服务；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">5、赌博用具及作弊工具；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">13、赌博用具、<span style="color:#ff0000;">考试</span>作弊工具、<span style="color:#ff0000;">汽车跑表器材等非法用途工具</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">6、尚可使用的发票、其它可用于报销的票据以及此类票据的代开服务；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">9、尚可使用<span style="color:#ff0000;">或用于报销的票据（及服务）</span>；<span style="color:#ff0000;">尚可使用的外贸单证以及代理报关、清单、商检、单证手续的服务；</span></span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">7、精神类、麻醉类、有毒类、放射类药品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">4、精神类、麻醉类、有毒类、放射类、<span style="color:#ff0000;">兴奋剂类、计生类</span>药品；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">8、粉末、液态女性催情类商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">3、<span style="color:#ff0000;">可致使他人暂时失去反抗能力、意识模糊的口服或外用的</span>催情类商品<span style="color:#ff0000;">及人造处女膜；</span></span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">9、国家保护动物的活体、肢体、皮毛、标本、器官及制成品，已灭绝动物与现有国家二级以上保护动物的化石；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">12、国家保护类动物、<span style="color:#ff0000;">濒危动物</span>的活体、<span style="color:#ff0000;">内脏</span>、<span style="color:#ff0000;">任何肢体</span>、皮毛、标本<span style="color:#ff0000;">或其他</span>制成品，已灭绝动物与现有国家二级以上保护动物的化石；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">10、身份证及身份证验证设备；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">14、身份证及身份证验证、<span style="color:#ff0000;">阅读</span>设备；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">11、可能用于侵害他人信息的黑客软件、教程、书籍。</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">15、盗取或破解账号密码的软件、工具、教程及产物；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<div align="center">
					<span style="font-size:12.0px;">/</span></div>
			</td>
			<td width="40%">
				<span style="font-size:12.0px;"><span style="color:#ff0000;">新增</span>：1、
 枪包、子弹袋等枪支、弹药的附属产品，及仿制品的衍生工艺品等； 2、烟花爆竹及国家名录中禁止出售的易燃易爆化学原料； 
7、用于非法摄像、录音、取证等用途的设备； 10、未公开发行的国家级正式考试答案等未被允许公开发行的书籍音像类制品； 
11、用于传播色情信息的软件及图片；含有情色、暴力、低俗内容的音像制品；原味内衣及相关产品； 
16、未经国家备案的网络游戏、游戏点卡、货币等相关服务类商品； 17、外挂、私服相关的网游类商品；</span></td>
		</tr>
		<tr>
			<td rowspan="11" valign="top" width="5%">
				<span style="font-size:12.0px;"><b>第三项</b></span></td>
			<td width="40%">
				<span style="font-size:12.0px;">1、尚可使用的证券、政府发放的消费劵及相应代购、推荐服务；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">2、军警制服、标志及军警专用制品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">4、<span style="color:#ff0000;">警用</span>、军用制服、标志、<span style="color:#ff0000;">设备及制品</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">4、有毒化学物、农药及相关信息；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">1、农药及<span style="color:#ff0000;">国家名录中禁止出售</span>的有毒化学物（非剧毒、强腐蚀性）；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">5、烟草专卖品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">3、烟草专卖品及<span style="color:#ff0000;">烟草专用机械</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">6、含有情色暴力低俗内容的漫画、书籍、游戏、音像制品以及SM用具、成人网站的账号及邀请码、原味二手内衣物、陪聊陪逛服务等情色低俗 商品或信息；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">6、含有情色、暴力、低俗内容的动漫、小说、游戏和图片；（</span><span style="font-size:12.0px;"><span style="color:#ff0000;">音像制品；色情陪聊服务;成人网站论坛的账号及邀请码挪至第一项中。</span></span><span style="color:#ff0000;"><span style="font-size:12.0px;">原味二手内衣物挪至第二项中</span></span><span style="font-size:12.0px;">）</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">8、个人隐私信息及企业内部数据；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">10、个人隐私信息及企业内部数据；<span style="color:#ff0000;">提供个人手机定位、电话清单查询、银行账户查询等服务</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">9、国家保护的植物及其制品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">7、国家保护类<span style="color:#ff0000;">植物活体（树苗除外）</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">10、由不具备生产资质的生产商生产的或不符合国家、地方、行业、企业强制性标准的商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">11、各类短信的群发设备及软件；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">13、因产品本身质量危及消费者人身、财产安全危险的产品。</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<div align="center">
					<span style="font-size:12.0px;">/</span></div>
			</td>
			<td width="40%">
				<span style="font-size:12.0px;"><span style="color:#ff0000;">新增</span>：8、
 正在流通的人民币及仿制人民币； 9、涉嫌违反《中华人民共和国文物保护法》相关规定的文物； 12、涉嫌欺诈等非法用途的软件； 
13、一卡多号；有蹭网功能的无线网卡，以及描述信息中有告知会员能用于蹭网的设备； 
14、国家禁止的集邮票品以及未经邮政行业管理部门批准制作的集邮品，以及一九四九年之后发行的包含“中华民国”字样的邮品。</span></td>
		</tr>
		<tr>
			<td rowspan="13" valign="top" width="5%">
				<span style="font-size:12.0px;"><b>第四项</b></span></td>
			<td width="40%">
				<span style="font-size:12.0px;">1、可能用于逃避交通管理的商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">2、可能用于逃避交通管理的商品；<span style="color:#ff0000;">汽车类违规代办服务</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">3、未公开发行的国家级正式考试答案等未被允许公开发行的书籍音像类制品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第二项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">4、发行时带有银行账户信息的银行卡；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">5、非法软件或密码破解找回等非法网络服务；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">6、特供酒、军需酒、自制酒；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第五十条第二项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">9、非法传销类商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第一项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">10、制作毒品、易燃易爆品的方法、书籍；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">1、介绍制作易燃易爆品方法的相关教程、书籍；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">12、国家禁止的集邮票品以及未经邮政行业管理部门批准制作的集邮品，以及一九四九年之后发行的包含“中华民国”字样的邮品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第三项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">14、一卡多号以及带破解功能的手机卡贴；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第五十条第二项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">15、外挂、私服相关的网游类商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第二项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">17、虚拟抽奖类商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第五十条第一项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">18、所有境外（含台服）游戏点卡、货币等相关服务类商品。</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第二项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<div align="center">
					<span style="font-size:12.0px;">/</span></div>
			</td>
			<td width="40%">
				<span style="font-size:12.0px;"><span style="color:#ff0000;">新增</span>：5、网络低俗产物； 6、捕鱼器相关设备及配件； 7、出售、转让、回收，包括已作废或者作为收藏用途的信用卡及银行卡；</span></td>
		</tr>
		<tr>
			<td rowspan="15" valign="top" width="10%">
				<span style="font-size:12.0px;"><b>总则第五十条</b> <span style="color:#ff0000;">（详见附录：修订后总则第五十条全文）</span></span></td>
			<td rowspan="6" valign="top" width="5%">
				<span style="font-size:12.0px;"><b>第一项</b></span></td>
			<td width="40%">
				<span style="font-size:12.0px;">3、鱼翅、熊胆及其制品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至第二项中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">4、不限时间与流量的、时间不可查询的以及被称为漏洞卡、集团卡、内部卡、测试卡的3G上网资费卡及SIM卡；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">9、2) 不限时间与流量的、时间不可查询的以及被称为漏洞卡、集团卡、内部卡、测试卡的<span style="color:#ff0000;">上网资费卡或资费套餐</span>及SIM卡；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">8、自动发货形式的一卡通系列商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">9、10) 自动发货形式的一卡通系列商品<span style="color:#ff0000;">及任何充值方式下以面值原价形式出售的一卡通系列商品</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">10、盛付通商品及穿越火线道具类商品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">9、9) 盛付通商品及<span style="color:#ff0000;">在淘宝网发布的</span>穿越火线道具类商品;</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">11、秒杀器以及用于提高秒杀成功概率的相关软件设备；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">2、秒杀器以及用于提高秒杀成功概率的相关软件、<span style="color:#ff0000;">阿里旺旺群发软件等干扰淘宝正常秩序的软件或服务</span>；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<div align="center">
					<span style="font-size:12.0px;">/</span></div>
			</td>
			<td width="40%">
				<span style="font-size:12.0px;"><span style="color:#ff0000;">新增</span>：5、炒作博客人气、炒作网站人气、代投票类商品或信息； 6、大量流通中的外币及外币兑换服务； 7、注射类美白针剂、溶脂针剂、填充针剂、瘦身针剂等用于人体注射的美容针剂类商品； 9、7) 虚拟抽奖类商品；</span></td>
		</tr>
		<tr>
			<td rowspan="9" valign="top" width="5%">
				<span style="font-size:12.0px;"><b>第二项</b></span></td>
			<td width="40%">
				<span style="font-size:12.0px;">2、个人手机定位、电话清单查询、银行账户查询；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至第二项中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">3、代扣驾照分数服务；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第四十四条第四项中”</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">5、尚可使用的外贸单证以及代理报关、清单、商检、单证手续的服务；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至“第四十四条第二项”中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">7、明示、暗示具有治疗、保健功效或者某种营养素功能的食品，或者以个体经验进行宣传的食品；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">9、大量流通中的外币；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至第一项中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">11、炒作博客人气、炒作网站人气、代投票类商品或信息；</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至第一项中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">12、捕鸟器及猫狗肉、猫狗皮、猫狗皮制品。</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">3、猫狗肉、猫狗皮<span style="color:#ff0000;">毛</span>、<span style="color:#ff0000;">鱼翅、熊胆</span>及其制品；</span></td>
		</tr>
		<tr>
			<td width="40%">
				<span style="font-size:12.0px;">14、注射类美白针剂、溶脂针剂、填充针剂、瘦身针剂等用于人体注射的美容针剂类商品。</span></td>
			<td width="40%">
				<span style="font-size:12.0px;">删除，挪至第一项中</span></td>
		</tr>
		<tr>
			<td width="40%">
				<div align="center">
					<span style="font-size:12.0px;">/</span></div>
			</td>
			<td width="40%">
				<span style="font-size:12.0px;"><span style="color:#ff0000;">新增</span>：4、动物捕杀工具（除捕鱼器）； 5、带破解功能的手机卡贴； 6、国家补助或无偿发放的不得私自转让的商品； 7、特供酒、军需酒；</span></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	<b><span style="color:#ff0000;">本次规则变更于 2月20日正式生效！</span></b></p>
<p>
	请广大会员仔细阅读规则变更内容，及时调整相关行为。</p>
<p>
	《淘宝规则》全文请见：<a href="http://service.taobao.com/support/help-12185.htm">http://service.taobao.com/support/help-12185.htm</a></p>
<p>
	特此通知，敬请知悉。</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 天猫<br />
	&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
2012年2月20日</p>
<p>&nbsp;
	</p>
                    													                    												</div>', CAST(0x0000A03A00E98284 AS DateTime), 1, N'admin')
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (7, 2, N'韩国正品女鞋不赚钱只为信誉', N'韩国，正品，女鞋，信誉', N'韩国正品女鞋不赚钱只为信誉韩国正品女鞋不赚钱只为信誉', N'<div class="post-detail ke-post">
    										<p><span style="font-size:24.0px;"><span style="color:#ff0000;"><strong>掌柜ID:时尚潮流e族88</strong></span></span></p>
<p><strong><span style="color:#ff0000;"><span style="font-size:24.0px;">店铺名：韩范可可心</span></span></strong></p>
<p>&nbsp;&nbsp;<span style="color:#0000ff;"><span style="font-size:18.0px;"><strong>亲
爱的淘友们感谢大家看我的帖子，由于新手刚开店不知道如何做促销，我就拿我店里的商品做促销了，由于店里的商品都是从韩国拿货，成本是很高的请亲们谅解，
但是为了信誉，那就不赚钱卖出吧，来本店购买鞋子的不管多少钱都送话费，购买成功后就送哟，多买还有打折送话费，快来看看吧，给自己，给老婆，情人买双属
于自己或心目中女神的一双气质美鞋吧，让你成为他心目中最美的女神。你的一个小小心意让她感动一生，让她的爱伴随你一辈子。</strong></span></span></p>
<p><span style="color:#0000ff;"><span style="font-size:18.0px;"><strong><img src="http://img04.taobaocdn.com/sns_album/i4/T1S1y_XelvXXb1upjX.jpg" style="float:none;margin:0.0px;width:590.0px;height:208.0px;" /><img src="http://img02.taobaocdn.com/sns_album/i2/T1ogy_Xn0oXXb1upjX.jpg" style="float:none;margin:0.0px;width:590.0px;height:208.0px;" /></strong></span></span></p>
<p>&nbsp;<img src="http://img04.taobaocdn.com/sns_album/i4/T1DLm_XcNtXXb1upjX.jpg" style="float:none;margin:0.0px;width:301.0px;height:300.0px;" />&nbsp;<img alt="" src="http://img01.taobaocdn.com/sns_album/i1/T16xu_XlplXXb1upjX.jpg" style="float:none;margin:0.0px;" /></p>
<p><span style="font-size:24.0px;"><strong><span style="color:#0000ff;">&nbsp;欢迎大家的光临哟，多多支持呀！！</span></strong></span></p>
    										
    																					
    											
    									</div>', CAST(0x0000A03A00EB008C AS DateTime), 1, N'admin')
INSERT [dbo].[Articles] ([ArticleID], [ClassID], [Title], [KeyWords], [Description], [Contents], [PubDate], [ViewTimes], [Author]) VALUES (8, 5, N'违背承诺维权介绍', N'违背,承诺,维权,介绍', N'违背承诺维权介绍违背承诺维权介绍违背承诺维权介绍', N'<h2>违背承诺维权介绍</h2>
                    												
                    													                    														<p>
	1、<a href="http://service.taobao.com/support/knowledge-1115521.htm#333">违背承诺维权介绍定义</a></p>
<p>
	2、<a href="http://service.taobao.com/support/knowledge-1115521.htm#444">违背承诺维权介绍发起条件</a></p>
<p>
	3、<a href="http://service.taobao.com/support/knowledge-1115521.htm#555">违背承诺维权介绍发起路径</a></p>
<p>
	4、<a href="http://service.taobao.com/support/knowledge-1115521.htm#666">违背承诺维权介绍举证要求</a></p>
<p>
	5、<a href="http://service.taobao.com/support/knowledge-1115521.htm#777">违背承诺维权介绍处理时间</a></p>
<p>
	<strong><a name="333"></a></strong><strong><a name="333"></a></strong><a name="333"></a><strong><a name="333">违背承诺维权定义</a></strong></p>
<p>
	如卖家有拒绝向买家提供其在商品页面上承诺的各项服务，包括淘宝官方指定的支付宝付款方式、卖家需要承担的售后服务等的行为，买家可发起违背承诺维权<a name="333"></a>。</p>
<p>
	<strong><a name="444"></a></strong><a name="444"></a><strong><a name="333"></a></strong><strong><a name="444">违背承诺维权发起条件</a></strong></p>
<p>
	交易状态为“等待买家付款”或“交易关闭”，交易创建的0-15天内。（包含货到付款交易）</p>
<p>
	<strong><a name="555"></a></strong><a name="555"></a><strong><a name="333"></a></strong><strong><a name="555">违背承诺维权发起路径</a></strong></p>
<p>
	1、到“我的淘宝”—“<a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm?nekot=uqPR87ajtqM=1278058983459" target="_blank">已买到的宝贝</a>”，找到对应交易后点击“投诉维权”，然后在跳出页面发起违背承诺维权。</p>
<p>
	2、到“<a href="http://support.taobao.com/myservice/rights/right_main.htm" target="_blank">消费者维权中心</a>”点击“<a href="http://support.taobao.com/myservice/rights/order_list.jhtml" target="_blank">我要发起维权</a>”按钮，在跳出页面找到对应交易后点击“投诉维权”，然后选择违背承诺维权<a name="333"></a>。</p>
<p>
	<strong><a name="666"></a></strong><strong><a name="333"></a><a name="666"></a></strong><strong><a name="666">违背承诺维权要求</a></strong></p>
<p>
	<strong>一、致维权方</strong></p>
<p>
	请写明您的维权理由，并提供客观有效的凭证来证实自己的维权内容，如：</p>
<p>
	1、完整清晰的阿里旺旺聊天历史记录截图（截图方法/要求请<a href="http://service.taobao.com/support/knowledge-1116655.htm" target="_blank">点此查看</a>）</p>
<p>
	2、阿里旺旺举证号（举证号提取方法请<a href="http://service.taobao.com/support/knowledge-1116602.htm" target="_blank">点此查看</a>）</p>
<p>
	3、淘宝站内信截屏</p>
<p>
	等等，证实卖家存在如拒绝通过支付宝、信用卡等支付方式交易或诱导买家在未收到货的情况下先确认收货等行为。</p>
<p>
	<strong>二、致被维权方</strong></p>
<p>
	您的申诉和提供的凭证将作为判断事实的依据，请您按如下选项来进行下一步申诉：</p>
<p>
	A、如仍希望通过支付宝、信用卡或货到付款的支付方式与买家交易，请马上和买家联系，争取第一时间消除误会；</p>
<p>
	B、如您并没有让买家去操作确认收货的，请您做出合理解释并提供如下凭证：</p>
<p>
	1、完整清晰的阿里旺旺聊天历史记录截图（截图方法/要求请<a href="http://service.taobao.com/support/knowledge-1116655.htm" target="_blank">点此查看</a>）</p>
<p>
	2、阿里旺旺举证号（举证号提取方法请<a href="http://service.taobao.com/support/knowledge-1116602.htm" target="_blank">点此查看</a>）</p>
<p>
	3、淘宝站内信截屏</p>
<p>
	等等，证明您所述的情况。</p>
<p>
	<strong><a name="777"></a></strong><strong><a name="333"></a></strong><a name="333"></a><a name="777"></a><strong><a name="777">违背承诺维权处理时间</a></strong><a name="333"></a></p>
<p>
	违背承诺维权发起后，客服将在3个工作日内帮助介入处理，请您关注。</p>
<p>
	如果对维权处理结果不满意，请<a href="http://ur.taobao.com/script/fullview.htm?id=120" target="_blank">点此进行</a>申诉。</p>
<p>
	如果由于特殊情况逾期一直未有处理反馈请直接<a href="http://service.taobao.com/support/knowledge-1119823.htm" target="_blank">联系淘宝客服热线</a>咨询具体情况。</p>', CAST(0x0000A03A00FA37DC AS DateTime), 1, N'admin')
SET IDENTITY_INSERT [dbo].[Articles] OFF
/****** Object:  Table [dbo].[ArticleClass]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArticleClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ArticleClass](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_ArticleClass] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ArticleClass] ON
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (1, N'公告')
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (2, N'促销信息')
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (3, N'新手导航')
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (4, N'购物动态')
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (5, N'维权管理')
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (6, N'refre')
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (7, N'cdcd')
INSERT [dbo].[ArticleClass] ([ClassID], [ClassName]) VALUES (8, N'112')
SET IDENTITY_INSERT [dbo].[ArticleClass] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[CName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Description] [text] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CID], [CName], [Description]) VALUES (1, N'男装', N'男装')
INSERT [dbo].[Category] ([CID], [CName], [Description]) VALUES (2, N'女装', N'女装')
INSERT [dbo].[Category] ([CID], [CName], [Description]) VALUES (3, N'饰品', N'饰品')
INSERT [dbo].[Category] ([CID], [CName], [Description]) VALUES (5, N'欧美', N'欧美')
INSERT [dbo].[Category] ([CID], [CName], [Description]) VALUES (6, N'热卖', N'热卖')
INSERT [dbo].[Category] ([CID], [CName], [Description]) VALUES (7, N'秒杀', N'秒杀')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[BuyLog]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BuyLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BuyLog](
	[BLogID] [int] IDENTITY(1,1) NOT NULL,
	[BItemID] [int] NULL,
	[BUserID] [int] NULL,
	[BLocationX] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[BLocationY] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[BDate] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[BisHidden] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BuyLog] PRIMARY KEY CLUSTERED 
(
	[BLogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Brand](
	[BID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Img] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Brand] ON
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (1, N'欧时力', N'images/brand/pp1.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (2, N'爱慕', N'images/brand/pp2.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (3, N'白领', N'images/brand/pp3.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (4, N'百图', N'images/brand/pp4.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (5, N'太平鸟', N'images/brand/pp5.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (6, N'威丝曼', N'images/brand/pp6.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (7, N'STELLA LUNA', N'images/brand/pp7.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (8, N'百丽', N'images/brand/pp8.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (9, N'马克华菲', N'images/brand/pp9.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (10, N'佐丹奴', N'images/brand/pp10.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (11, N'耐克', N'images/brand/pp11.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (12, N'阿迪达斯', N'images/brand/pp12.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (13, N'玛萨玛索', N'images/brand/pp13.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (14, N'华伦天奴', N'images/brand/pp14.jpg')
INSERT [dbo].[Brand] ([BID], [BrandName], [Img]) VALUES (16, N'华伦天奴', NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
/****** Object:  Table [dbo].[Images]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NULL,
	[BigImg] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[SmallImg] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Alt] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Width] [decimal](18, 0) NULL,
	[Height] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Images] ON
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (1, 3, N'images/onsale/wear/1.jpg', N'images/onsale/wear/small/1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (2, 3, N'images/onsale/wear/2.jpg', N'images/onsale/wear/small/2.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (3, 3, N'images/onsale/wear/3.jpg', N'images/onsale/wear/small/3.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (4, 3, N'images/onsale/wear/bigimage00.jpg', N'images/onsale/wear/small/smallimage00.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (5, 2, N'images/onsale/wear/bigimage01.jpg', N'images/onsale/wear/small/smallimage-1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (6, 2, N'images/onsale/wear/bigimage02.jpg', N'images/onsale/wear/small/smallimage-2.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (7, 2, N'images/onsale/wear/bigimage03.jpg', N'images/onsale/wear/small/smallimage-3.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (8, 2, N'images/onsale/wear/bigimage04.jpg', N'images/onsale/wear/small/smallimage-4.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (9, 2, N'images/onsale/wear/bigimage04.jpg', N'images/onsale/wear/small/smallimage-4.jpg', NULL, NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (10, 3, N'images/onsale/wear/big_20124241313.jpg', N'images/onsale/wear/small/small_20124241313.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (11, 3, N'images/onsale/wear/big_2012424132158.jpg', N'images/onsale/wear/small/small_2012424132158.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (12, 3, N'images/onsale/wear/big_2012424133941.jpg', N'images/onsale/wear/small/small_2012424133941.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (18, 21, N'images/onsale/wear/big_2012426162937.jpg', N'images/onsale/wear/small/small_2012426162937.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (19, 21, N'images/onsale/wear/big_201242616306.jpg', N'images/onsale/wear/small/small_201242616306.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (20, 21, N'images/onsale/wear/big_2012426163522.jpg', N'images/onsale/wear/small/small_2012426163522.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (21, 27, N'images/onsale/wear/big_2012515205431.jpg', N'images/onsale/wear/small/small_2012515205431.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (22, 27, N'images/onsale/wear/big_2012515205448.jpg', N'images/onsale/wear/small/small_2012515205448.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (23, 28, N'images/onsale/wear/big_201251521140.jpg', N'images/onsale/wear/small/small_201251521140.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (24, 28, N'images/onsale/wear/big_201251521151.jpg', N'images/onsale/wear/small/small_201251521151.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (25, 28, N'images/onsale/wear/big_201251521156.jpg', N'images/onsale/wear/small/small_201251521156.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (26, 28, N'images/onsale/wear/big_20125152121.jpg', N'images/onsale/wear/small/small_20125152121.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (27, 29, N'images/onsale/wear/big_201251521358.jpg', N'images/onsale/wear/small/small_201251521358.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (28, 30, N'images/onsale/wear/big_201251521452.jpg', N'images/onsale/wear/small/small_201251521452.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (29, 31, N'images/onsale/wear/big_201251521635.jpg', N'images/onsale/wear/small/small_201251521635.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (30, 31, N'images/onsale/wear/big_201251521638.jpg', N'images/onsale/wear/small/small_201251521638.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (31, 31, N'images/onsale/wear/big_201251521642.jpg', N'images/onsale/wear/small/small_201251521642.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (32, 31, N'images/onsale/wear/big_201251521645.jpg', N'images/onsale/wear/small/small_201251521645.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (33, 31, N'images/onsale/wear/big_201251521649.jpg', N'images/onsale/wear/small/small_201251521649.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (34, 31, N'images/onsale/wear/big_201251521654.jpg', N'images/onsale/wear/small/small_201251521654.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (35, 2, N'images/onsale/wear/big_20121118195650.jpg', N'images/onsale/wear/small/small_20121118195650.jpg', N'', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ItemID], [BigImg], [SmallImg], [Alt], [Width], [Height]) VALUES (36, 3, N'images/onsale/wear/big_20121119212353.jpg', N'images/onsale/wear/small/small_20121119212353.jpg', N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Images] OFF
/****** Object:  Table [dbo].[Items]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Items]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Items](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[BrandID] [int] NULL,
	[Name] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[AgoraPrice] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[MemberPrice] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[VipPrice] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[SeckillPrice] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Area] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Fresh] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ClickTimes] [int] NULL,
	[Sale] [int] NULL,
	[Remant] [int] NULL,
	[Smallmg] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[BigImg] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Details] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[ViewTimes] [int] NULL,
	[BuyTimes] [int] NULL,
	[IsSecondKill] [bit] NULL,
	[Days] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Hours] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Minutes] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Seconds] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LimitTime] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[IID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Items] ON
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (2, 1, 1, N'美女的搭配', N'100', N'90', N'80', N'70', N'南京', NULL, 1, NULL, NULL, NULL, NULL, N'产品编号] 105-C61073<br/>[产品所属名]  2012春装新款韩版女装 裤腿皮带扣 休闲宽松阔腿裤 灯笼裤 长裤<br/>[版型] 阔腿裤、灯笼裤<br/>[裤长] 长裤<br/>[腰型] 中腰<br/>[口袋] 竖插袋<br/>[款式细节] 裤脚皮带扣、休闲灯笼裤腿<br/>[图案] 纯色<br/>[面料成分] 100%棉<br/>重量：0.31KG<br/>[适宜人群] 身高156~168cm腰围80cm以下<br/>[市场定价] 214.00<br/>[可选尺码] S/M/L/XL<br/>[可选颜色] 蓝色、黑色、军绿、卡其<br/>[搭配指南] 毛衣、T恤、鞋靴类<br/>[穿著場合] 约会  逛街 出行<br/>[修身指数]★★★★☆<br/>[时尚热度]★★★★★<br/>[软硬指数]软□ 偏软□ 适中◆偏硬  <br/>[厚薄指数]薄□ 偏薄□ 适中◆偏厚  <br/>[推荐理由]裁剪合理,风格独特的经典之作,又是一款完美的垮裤~春天穿又舒适又美丽，有时还会俏皮.  很多款颜色,尽心的挑选一款难以忘怀的，从容的穿着它在街边穿所吧！', 9, 6, 1, N'2', N'2', N'43', N'19', N'2012-11-20 19:09:06')
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (3, 2, 5, N'2012春装新款女装韩版', N'98.00', N'98.00', N'98.00', N'98.00', N'浙江杭州', NULL, 2, NULL, NULL, NULL, NULL, N'    货号: 6821     款式: 七分/五分袖     板型: 修身型     衣长: 中长款(65cm<衣长≤80cm)     领子: V领     风格: 韩版     图案: 纯色     质地: 其它     款式细节: 肩章装饰     颜色分类: 粉色(偏橘粉) 裸色 青色 蓝色 黄色 橘黄 黑色 玫红     季节: 春季 夏季 秋季     尺码: S M L XL XXL 默认申通，需要圆通中通请留言     适合人群: 淑女     价格区间: 121-200元     年份: 2012', 24, 8, 1, N'1', N'1', N'24', N'52', N'2012-11-20 23:00:19')
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (21, 5, 2, N'韩版潮 青少年男开衫', N'98.00', N'98.00', N'98.00', N'98.00', N'浙江杭州', NULL, 2, NULL, NULL, NULL, NULL, N'ederferfrfrgrt<br />', 4, 0, 0, N'2', N'2', N'1', N'16', N'2012-11-20 18:26:54')
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (27, 8, 8, N'Hot长袖T恤', N'100', N'100', N'100', N'100', N'南京', NULL, 2, NULL, NULL, NULL, NULL, N'<div id="attributes" class="attributes">
<ul class="attributes-list"><li title="&nbsp;短袖（袖长&lt;35cm）">袖长:&nbsp;短袖（袖长&lt;35cm）</li>
<li title="&nbsp;圆领">领型:&nbsp;圆领</li>
<li title="&nbsp;943乳白&nbsp;943牛仔蓝&nbsp;943绿色">颜色:&nbsp;943乳白&nbsp;943牛仔蓝&nbsp;943绿色</li>
<li title="&nbsp;M(修身版型)&nbsp;L(修身版型)&nbsp;XL(修身版型)&nbsp;XXL(修身版型）">尺码:&nbsp;M(修身版型)&nbsp;L(修身版型)&nbsp;XL(修身版型)&nbsp;XXL(修身版型）</li>
<li title="&nbsp;纯色布">面料分类:&nbsp;纯色布</li>
<li title="&nbsp;其它">款式细节:&nbsp;其它</li>
<li title="&nbsp;印花">工艺处理:&nbsp;印花</li>
<li title="&nbsp;青年">消费群体:&nbsp;青年</li>
<li title="&nbsp;ZJ·Body/造就一身">品牌:&nbsp;ZJ·Body/造就一身</li>
<li title="&nbsp;英伦风格">09男装-风格:&nbsp;英伦风格</li>
<li title="&nbsp;常规袖">袖型:&nbsp;常规袖</li>
<li title="&nbsp;字母/文字">男装图案:&nbsp;字母/文字</li>
<li title="&nbsp;80%-97%棉">男装质地:&nbsp;80%-97%棉</li>
<li title="&nbsp;修身型">男装-板型:&nbsp;修身型</li>
</ul>
</div>', 16, 4, 1, N'2', N'2', N'2', N'2', NULL)
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (28, 63, 63, N'促销钥匙扣', N'122', N'122', N'122', N'122', N'南京', NULL, 2, NULL, NULL, NULL, NULL, N'<ul class="attributes-list"><li title="&nbsp;天然／养殖淡水珍珠">珍珠分类:&nbsp;天然／养殖淡水珍珠</li>
<li title="&nbsp;项链">款式:&nbsp;项链</li>
<li title="&nbsp;扁圆/馒头圆">珍珠形状:&nbsp;扁圆/馒头圆</li>
<li title="&nbsp;白色系">珍珠颜色:&nbsp;白色系</li>
<li title="&nbsp;7日内无条件退货">售后:&nbsp;7日内无条件退货</li>
<li title="&nbsp;未镶嵌">镶嵌材质:&nbsp;未镶嵌</li>
<li title="&nbsp;黛米">品牌:&nbsp;黛米</li>
<li title="&nbsp;DN337">货号:&nbsp;DN337</li>
<li title="&nbsp;10-11mm50厘米 3天后&nbsp;10-11mm47厘米 3天后&nbsp;10-11mm45厘米 3天后&nbsp;10-11mm43厘米 3天后&nbsp;9-10mm50厘米 3天后发&nbsp;9-10mm47厘米 3天后发&nbsp;9-10mm45厘米 3天后发&nbsp;9-10mm43厘米 3天后发&nbsp;8-9mm 50厘米 3天后发&nbsp;8-9mm 47厘米 3天后发&nbsp;8-9mm 45厘米 3天后发&nbsp;8-9mm 43厘米 3天后发">颜色分类:&nbsp;10-11mm50厘米</li>
</ul>', 13, 3, 1, N'2', N'2', N'0', N'23', N'2012-11-16 13:56:41')
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (29, 66, 66, N'欧美斗篷大衣', N'100', N'100', N'100', N'100', N'南京', NULL, 2, NULL, NULL, NULL, NULL, N'欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg欧美斗篷大衣.jpg<br />', 8, 3, 1, N'2', N'2', N'2', N'2', NULL)
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (30, 66, 66, N'欧美毛呢西装外套', N'100', N'100', N'100', N'100', N'南京', NULL, 2, NULL, NULL, NULL, NULL, N'欧美毛呢西装外套.jpg欧美毛呢西装外套.jpg欧美毛呢西装外套.jpg欧美毛呢西装外套.jpg欧美毛呢西装外套.jpg欧美毛呢西装外套.jpg欧美毛呢西装外套.jpg<br />', 5, 0, 1, N'2', N'2', N'2', N'2', NULL)
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (31, 67, 67, N'热卖女鞋', N'100', N'100', N'100', N'100', N'南京', NULL, 2, NULL, NULL, NULL, NULL, N'热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg热卖女鞋2.jpg<br />', 9, 3, 1, N'1', N'1', N'56', N'14', N'2012-11-19 14:45:08')
INSERT [dbo].[Items] ([IID], [ProductID], [BrandID], [Name], [AgoraPrice], [MemberPrice], [VipPrice], [SeckillPrice], [Area], [Fresh], [ClickTimes], [Sale], [Remant], [Smallmg], [BigImg], [Details], [ViewTimes], [BuyTimes], [IsSecondKill], [Days], [Hours], [Minutes], [Seconds], [LimitTime]) VALUES (32, 1, 1, N'1', N'1', N'1', N'1', N'1', N'21', NULL, 2, NULL, NULL, NULL, NULL, N'cdceced', 2, 0, 1, N'2', N'2', N'2', N'2', NULL)
SET IDENTITY_INSERT [dbo].[Items] OFF
/****** Object:  Table [dbo].[Admins]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[UPass] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Admins] ON
INSERT [dbo].[Admins] ([AdminID], [UName], [UPass]) VALUES (1, N'admin', N'pass')
INSERT [dbo].[Admins] ([AdminID], [UName], [UPass]) VALUES (2, N'xueshijun', N'xueshijun')
SET IDENTITY_INSERT [dbo].[Admins] OFF
/****** Object:  Table [dbo].[IndexOnShow]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IndexOnShow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IndexOnShow](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[Img] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Alt] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Target] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_IndexOnShow] PRIMARY KEY CLUSTERED 
(
	[IID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[IndexOnShow] ON
INSERT [dbo].[IndexOnShow] ([IID], [Img], [Alt], [Target]) VALUES (1, N'images/indexonshow/ban1.jpg', N'1', NULL)
INSERT [dbo].[IndexOnShow] ([IID], [Img], [Alt], [Target]) VALUES (2, N'images/indexonshow/ban2.jpg', N'2', NULL)
INSERT [dbo].[IndexOnShow] ([IID], [Img], [Alt], [Target]) VALUES (3, N'images/indexonshow/ban3.jpg', N'3', NULL)
INSERT [dbo].[IndexOnShow] ([IID], [Img], [Alt], [Target]) VALUES (4, N'images/indexonshow/ban4.jpg', N'4', NULL)
INSERT [dbo].[IndexOnShow] ([IID], [Img], [Alt], [Target]) VALUES (5, N'images/indexonshow/ban5.jpg', N'5', NULL)
INSERT [dbo].[IndexOnShow] ([IID], [Img], [Alt], [Target]) VALUES (6, N'images/indexonshow/ban6.jpg', N'6', NULL)
INSERT [dbo].[IndexOnShow] ([IID], [Img], [Alt], [Target]) VALUES (7, N'images/indexonshow/ban7.jpg', N'7', NULL)
SET IDENTITY_INSERT [dbo].[IndexOnShow] OFF
/****** Object:  View [dbo].[ImagsWithItems]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ImagsWithItems]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ImagsWithItems]
AS
SELECT        dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.BigImg, dbo.Images.SmallImg, dbo.Images.Alt, dbo.Items.Name, dbo.Items.IID
FROM            dbo.Images RIGHT OUTER JOIN
                         dbo.Items ON dbo.Images.ItemID = dbo.Items.IID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ImagsWithItems', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[9] 4[52] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Images"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 120
               Right = 169
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Items"
            Begin Extent = 
               Top = 6
               Left = 207
               Bottom = 120
               Right = 349
            End
            DisplayFlags = 280
            TopColumn = 20
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ImagsWithItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ImagsWithItems', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ImagsWithItems'
GO
/****** Object:  View [dbo].[ItemListByBrand]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemListByBrand]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ItemListByBrand]
AS
SELECT     dbo.Brand.BID, dbo.Brand.BrandName, dbo.Items.IID AS ItemID, dbo.Items.ProductID, dbo.Items.BrandID, dbo.Items.Name AS ItemName, 
                      dbo.Items.VipPrice, dbo.Items.MemberPrice, dbo.Items.SeckillPrice, dbo.Items.Area, dbo.Items.Details, dbo.Items.Days, dbo.Items.Hours, 
                      dbo.Items.Minutes, dbo.Items.Seconds, dbo.Items.AgoraPrice, dbo.Items.IsSecondKill, dbo.Items.Fresh
FROM         dbo.Items LEFT OUTER JOIN
                      dbo.Brand ON dbo.Brand.BID = dbo.Items.BrandID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ItemListByBrand', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Items"
            Begin Extent = 
               Top = 4
               Left = 0
               Bottom = 190
               Right = 142
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Brand"
            Begin Extent = 
               Top = 23
               Left = 186
               Bottom = 122
               Right = 322
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemListByBrand'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ItemListByBrand', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemListByBrand'
GO
/****** Object:  View [dbo].[ImageDistinct]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ImageDistinct]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ImageDistinct]
AS
SELECT DISTINCT ItemID, ImageID
FROM         dbo.Images
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ImageDistinct', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Images"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 120
               Right = 169
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ImageDistinct'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ImageDistinct', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ImageDistinct'
GO
/****** Object:  View [dbo].[ArticlesClassCountByCID]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ArticlesClassCountByCID]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ArticlesClassCountByCID]
AS
SELECT     dbo.ArticleClass.ClassID AS CID, dbo.ArticleClass.ClassName, dbo.Articles.ArticleID AS AID, dbo.Articles.ClassID AS Expr1, dbo.Articles.Title, 
                      dbo.Articles.KeyWords, dbo.Articles.Description, dbo.Articles.Contents, dbo.Articles.PubDate, dbo.Articles.ViewTimes, dbo.Articles.Author
FROM         dbo.ArticleClass FULL OUTER JOIN
                      dbo.Articles ON dbo.ArticleClass.ClassID = dbo.Articles.ClassID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ArticlesClassCountByCID', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ArticleClass"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 90
               Right = 171
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Articles"
            Begin Extent = 
               Top = 6
               Left = 209
               Bottom = 120
               Right = 343
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArticlesClassCountByCID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ArticlesClassCountByCID', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArticlesClassCountByCID'
GO
/****** Object:  View [dbo].[ArticleAll]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ArticleAll]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ArticleAll]
AS
SELECT     dbo.ArticleClass.ClassID, dbo.ArticleClass.ClassName, dbo.Articles.ArticleID, dbo.Articles.ClassID AS Expr1, dbo.Articles.Title, dbo.Articles.KeyWords, 
                      dbo.Articles.Contents, dbo.Articles.PubDate, dbo.Articles.Description, dbo.Articles.ViewTimes, dbo.Articles.Author
FROM         dbo.ArticleClass LEFT OUTER JOIN
                      dbo.Articles ON dbo.ArticleClass.ClassID = dbo.Articles.ClassID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ArticleAll', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ArticleClass"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 112
               Right = 178
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Articles"
            Begin Extent = 
               Top = 6
               Left = 209
               Bottom = 120
               Right = 343
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArticleAll'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ArticleAll', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ArticleAll'
GO
/****** Object:  View [dbo].[ProductCategory]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategory]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ProductCategory]
AS
SELECT     dbo.Category.CID, dbo.Products.CategoryID, dbo.Products.Name, dbo.Category.CName, dbo.Products.PID, dbo.Products.Description
FROM         dbo.Category RIGHT OUTER JOIN
                      dbo.Products ON dbo.Category.CID = dbo.Products.CategoryID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ProductCategory', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Category"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 105
               Right = 172
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 210
               Bottom = 120
               Right = 347
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductCategory'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ProductCategory', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductCategory'
GO
/****** Object:  View [dbo].[myCarItems]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[myCarItems]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[myCarItems]
AS
SELECT     dbo.MyCar.CarID, dbo.MyCar.ItemID, dbo.MyCar.UserID, dbo.MyCar.IsPay, dbo.MyCar.AddDate, dbo.Items.IID, dbo.Items.ProductID, 
                      dbo.Items.BrandID, dbo.Items.Name, dbo.Items.AgoraPrice, dbo.Items.MemberPrice, dbo.Items.VipPrice, dbo.Items.SeckillPrice, dbo.Items.Area, 
                      dbo.Items.Details, dbo.Items.ViewTimes, dbo.Items.BuyTimes, dbo.Items.IsSecondKill, dbo.Items.LimitTime, dbo.Brand.BID, 
                      dbo.Brand.BrandName
FROM         dbo.MyCar INNER JOIN
                      dbo.Items ON dbo.MyCar.ItemID = dbo.Items.IID INNER JOIN
                      dbo.Brand ON dbo.Items.BrandID = dbo.Brand.BID
WHERE     (dbo.MyCar.IsPay = ''true'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'myCarItems', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[29] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MyCar"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 120
               Right = 169
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Items"
            Begin Extent = 
               Top = 6
               Left = 207
               Bottom = 120
               Right = 349
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Brand"
            Begin Extent = 
               Top = 6
               Left = 387
               Bottom = 105
               Right = 523
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'myCarItems'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'myCarItems', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'myCarItems'
GO
/****** Object:  View [dbo].[ItemsImages]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemsImages]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ItemsImages]
AS
SELECT     dbo.Items.IID, dbo.Items.Name, dbo.Items.ProductID, dbo.Items.BrandID, dbo.Items.Name AS Expr1, dbo.Images.ImageID, dbo.Images.ItemID, 
                      dbo.Images.BigImg, dbo.Images.SmallImg
FROM         dbo.Items FULL OUTER JOIN
                      dbo.Images ON dbo.Items.IID = dbo.Images.ItemID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ItemsImages', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[5] 2[52] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Items"
            Begin Extent = 
               Top = 6
               Left = 207
               Bottom = 120
               Right = 349
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Images"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 120
               Right = 169
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsImages'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ItemsImages', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsImages'
GO
/****** Object:  View [dbo].[ItemsAllWithNoImg]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemsAllWithNoImg]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ItemsAllWithNoImg]
AS
SELECT     dbo.ItemListByBrand.BID, dbo.ItemListByBrand.ProductID, dbo.ItemListByBrand.ItemID, dbo.ItemListByBrand.VipPrice, 
                      dbo.ItemListByBrand.MemberPrice, dbo.ItemListByBrand.Details, dbo.ItemListByBrand.Minutes, dbo.ItemListByBrand.Seconds, 
                      dbo.ItemListByBrand.AgoraPrice, dbo.ItemListByBrand.Area, dbo.ItemListByBrand.SeckillPrice, dbo.ItemListByBrand.Days, 
                      dbo.ItemListByBrand.Hours, dbo.ProductCategory.CategoryID, dbo.ProductCategory.Name AS PName, dbo.ProductCategory.PID, 
                      dbo.ProductCategory.CName, dbo.ItemListByBrand.ItemName, dbo.ItemListByBrand.BrandName, dbo.ItemListByBrand.Fresh, 
                      dbo.ItemListByBrand.IsSecondKill
FROM         dbo.ItemListByBrand LEFT OUTER JOIN
                      dbo.ProductCategory ON dbo.ProductCategory.PID = dbo.ItemListByBrand.ProductID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ItemsAllWithNoImg', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[3] 2[34] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ItemListByBrand"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 223
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "ProductCategory"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 146
               Right = 355
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsAllWithNoImg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ItemsAllWithNoImg', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsAllWithNoImg'
GO
/****** Object:  View [dbo].[ItemsAllWithAllImg]    Script Date: 02/24/2013 22:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ItemsAllWithAllImg]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[ItemsAllWithAllImg]
AS
SELECT     dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.SmallImg, dbo.Images.BigImg, dbo.Images.Alt, dbo.ItemsAllWithNoImg.BID, 
                      dbo.ItemsAllWithNoImg.BrandName, dbo.ItemsAllWithNoImg.ProductID, dbo.ItemsAllWithNoImg.ItemID AS IID, dbo.ItemsAllWithNoImg.AgoraPrice, 
                      dbo.ItemsAllWithNoImg.Area, dbo.ItemsAllWithNoImg.PName, dbo.ItemsAllWithNoImg.PID, dbo.ItemsAllWithNoImg.ItemName, 
                      dbo.ItemsAllWithNoImg.CName, dbo.ItemsAllWithNoImg.Hours, dbo.ItemsAllWithNoImg.Days, dbo.ItemsAllWithNoImg.SeckillPrice, 
                      dbo.ItemsAllWithNoImg.IsSecondKill, dbo.ItemsAllWithNoImg.Seconds, dbo.ItemsAllWithNoImg.Minutes, dbo.ItemsAllWithNoImg.Details, 
                      dbo.ItemsAllWithNoImg.MemberPrice, dbo.ItemsAllWithNoImg.VipPrice, dbo.ItemsAllWithNoImg.CategoryID, dbo.ItemsAllWithNoImg.Fresh
FROM         dbo.Images LEFT OUTER JOIN
                      dbo.ItemsAllWithNoImg ON dbo.ItemsAllWithNoImg.ItemID = dbo.Images.ItemID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'ItemsAllWithAllImg', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[30] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Images"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 201
               Right = 349
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ItemsAllWithNoImg"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 201
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsAllWithAllImg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'ItemsAllWithAllImg', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsAllWithAllImg'
GO
/****** Object:  Default [DF_Items_ProductID]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_ProductID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_ProductID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_ProductID]  DEFAULT ((0)) FOR [ProductID]
END


End
GO
/****** Object:  Default [DF_Items_BrandID]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_BrandID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_BrandID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_BrandID]  DEFAULT ((0)) FOR [BrandID]
END


End
GO
/****** Object:  Default [DF_Items_SeckillPrice]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_SeckillPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_SeckillPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_SeckillPrice]  DEFAULT ((0.0)) FOR [SeckillPrice]
END


End
GO
/****** Object:  Default [DF_Items_ClickTimes]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_ClickTimes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_ClickTimes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_ClickTimes]  DEFAULT ((2)) FOR [ClickTimes]
END


End
GO
/****** Object:  Default [DF_Items_ViewTimes]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_ViewTimes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_ViewTimes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_ViewTimes]  DEFAULT ((2)) FOR [ViewTimes]
END


End
GO
/****** Object:  Default [DF_Items_BuyTimes]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_BuyTimes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_BuyTimes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_BuyTimes]  DEFAULT ((0)) FOR [BuyTimes]
END


End
GO
/****** Object:  Default [DF_Items_IsSecondKill]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Items_IsSecondKill]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Items_IsSecondKill]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_IsSecondKill]  DEFAULT ('true') FOR [IsSecondKill]
END


End
GO
/****** Object:  Default [DF_MyCar_IsPay]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MyCar_IsPay]') AND parent_object_id = OBJECT_ID(N'[dbo].[MyCar]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MyCar_IsPay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MyCar] ADD  CONSTRAINT [DF_MyCar_IsPay]  DEFAULT ('false') FOR [IsPay]
END


End
GO
/****** Object:  Default [DF_MyCar_Visible]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MyCar_Visible]') AND parent_object_id = OBJECT_ID(N'[dbo].[MyCar]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MyCar_Visible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MyCar] ADD  CONSTRAINT [DF_MyCar_Visible]  DEFAULT ('true') FOR [Visible]
END


End
GO
/****** Object:  Default [DF_MyCar_Count]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MyCar_Count]') AND parent_object_id = OBJECT_ID(N'[dbo].[MyCar]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MyCar_Count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MyCar] ADD  CONSTRAINT [DF_MyCar_Count]  DEFAULT ((1)) FOR [Count]
END


End
GO
/****** Object:  Default [DF_User_VID]    Script Date: 02/24/2013 22:39:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_VID]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_User_VID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_VID]  DEFAULT ((1)) FOR [VID]
END


End
GO
