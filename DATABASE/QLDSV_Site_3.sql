USE [QLDSV]
GO
/****** Object:  User [GV02      ]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE USER [GV02      ] FOR LOGIN [hp2] WITH DEFAULT_SCHEMA=[GV02      ]
GO
/****** Object:  User [GV04      ]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE USER [GV04      ] FOR LOGIN [hp3] WITH DEFAULT_SCHEMA=[GV04      ]
GO
/****** Object:  User [GV05      ]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE USER [GV05      ] FOR LOGIN [hp1] WITH DEFAULT_SCHEMA=[GV05      ]
GO
/****** Object:  User [GV07      ]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE USER [GV07      ] FOR LOGIN [hp4] WITH DEFAULT_SCHEMA=[GV07      ]
GO
/****** Object:  User [GV10]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE USER [GV10] FOR LOGIN [hp] WITH DEFAULT_SCHEMA=[GV10]
GO
/****** Object:  User [GV11      ]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE USER [GV11      ] FOR LOGIN [ketoan] WITH DEFAULT_SCHEMA=[GV11      ]
GO
/****** Object:  User [HTKN]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE USER [HTKN] FOR LOGIN [HTKN] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [PKeToan]    Script Date: Thu 4 9 2020 5:03:13 PM ******/
CREATE ROLE [PKeToan]
GO
ALTER ROLE [PKeToan] ADD MEMBER [GV02      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV02      ]
GO
ALTER ROLE [PKeToan] ADD MEMBER [GV04      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV04      ]
GO
ALTER ROLE [PKeToan] ADD MEMBER [GV05      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV05      ]
GO
ALTER ROLE [PKeToan] ADD MEMBER [GV07      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV07      ]
GO
ALTER ROLE [PKeToan] ADD MEMBER [GV10]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV10]
GO
ALTER ROLE [PKeToan] ADD MEMBER [GV11      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV11      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [HTKN]
GO
ALTER ROLE [db_owner] ADD MEMBER [PKeToan]
GO
/****** Object:  Schema [GV02      ]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
CREATE SCHEMA [GV02      ]
GO
/****** Object:  Schema [GV04      ]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
CREATE SCHEMA [GV04      ]
GO
/****** Object:  Schema [GV05      ]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
CREATE SCHEMA [GV05      ]
GO
/****** Object:  Schema [GV07      ]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
CREATE SCHEMA [GV07      ]
GO
/****** Object:  Schema [GV10]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
CREATE SCHEMA [GV10]
GO
/****** Object:  Schema [GV11      ]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
CREATE SCHEMA [GV11      ]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[MAGV] [nchar](10) NOT NULL,
	[HO] [nvarchar](50) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[MAKH] [char](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_8D1DF4D3A7374AC68C5CD3B4D7DB6241]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_GIANGVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOCPHI]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOCPHI](
	[MASV] [char](12) NOT NULL,
	[NIENKHOA] [nvarchar](50) NOT NULL,
	[HOCKY] [int] NOT NULL CONSTRAINT [DF_HOCPHI_HOCKY]  DEFAULT ((1)),
	[HOCPHI] [int] NOT NULL CONSTRAINT [DF_HOCPHI_HOCPHI]  DEFAULT ((6000000)),
	[SOTIENDADONG] [int] NOT NULL CONSTRAINT [DF_HOCPHI_SOTIENDADONG]  DEFAULT ((0)),
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_F60269DC1F784642ACA53A0D730FD6B9]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_HOCPHI] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[NIENKHOA] ASC,
	[HOCKY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [char](12) NOT NULL,
	[HO] [nvarchar](40) NULL,
	[TEN] [nvarchar](10) NULL,
	[MALOP] [char](8) NOT NULL,
	[PHAI] [bit] NULL,
	[NGAYSINH] [datetime] NULL,
	[NOISINH] [nvarchar](40) NULL,
	[DIACHI] [nvarchar](80) NULL,
	[GHICHU] [ntext] NULL,
	[NGHIHOC] [bit] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_F74A5FD0344049A489A6A8D2C98B0895]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV01      ', N'NGUYEN HONG', N'SON       ', N'CNTT', N'2fcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV02      ', N'TRUONG DINH', N'HUY       ', N'CNTT', N'30cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV03      ', N'NGUYEN XUAN', N'KHANH     ', N'VT  ', N'31cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV04      ', N'TRAN DINH', N'THUAN     ', N'VT  ', N'32cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV05      ', N'NGUYEN THANH', N'PHONG', N'CNTT', N'33cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV06      ', N'LE MINH', N'KHOA', N'CNTT', N'34cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV07      ', N'LE VAN', N'BAY', N'VT  ', N'35cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV08      ', N'LE VAN', N'CHANH', N'CNTT', N'36cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV09      ', N'NGUYEN THANH', N'HUY', N'CNTT', N'37cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV10      ', N'NGUYEN THANH', N'THAI', N'VT  ', N'38cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV11      ', N'NGUYEN VAN', N'THUAN', N'CNTT', N'39cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV12      ', N'NGUYEN THANH', N'PHONG', N'CNTT', N'5e5f14f3-a14f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA101    ', N'2015-2016', 1, 1500000, 1500000, N'd0eeb142-9f4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA101    ', N'2015-2016', 2, 1500000, 1500000, N'd1eeb142-9f4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA101    ', N'2016-2017', 1, 1500000, 1500000, N'd2eeb142-9f4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA101    ', N'2016-2017', 2, 1500000, 1500000, N'69c67da9-0050-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA101    ', N'2017-2018', 1, 2000000, 2000000, N'2fee7547-a75c-ea11-ac8b-2047472e644d')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA102    ', N'2015-2016', 1, 1000000000, 1500000, N'd4eeb142-9f4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA102    ', N'2015-2016', 2, 2000000, 2000000, N'd5eeb142-9f4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA102    ', N'2016-2017', 1, 1500000, 1500000, N'd3eeb142-9f4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'08VTA102    ', N'2016-2017', 2, 1500000, 1500000, N'd6eeb142-9f4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'N15DCCN013  ', N'2015-2016', 1, 1500000, 1500000, N'52c01c0d-a75c-ea11-ac8b-2047472e644d')
INSERT [dbo].[HOCPHI] ([MASV], [NIENKHOA], [HOCKY], [HOCPHI], [SOTIENDADONG], [rowguid]) VALUES (N'N15DCCN103  ', N'2016-2017', 1, 1500000, 1500000, N'45a79308-655c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'08VTA101    ', N'Nguyễn Thanh', N'Hằng', N'D08VTA1 ', 1, CAST(N'1975-12-07 00:00:00.000' AS DateTime), N'Hà Nội', N'11 Lê Văn Sỹ', N'', 0, N'47cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'08VTA102    ', N'Võ Văn', N'Phát', N'D08VTA1 ', 1, CAST(N'1976-05-05 00:00:00.000' AS DateTime), N'Phú Yên', N'234 Phan Văn Lê', N' ', 0, N'4dcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA101    ', N'Lê Thị', N'Vân', N'D16CQC1 ', 0, CAST(N'1976-06-06 00:00:00.000' AS DateTime), N'Hà Nội', N'Ngô Quyền', N' ', 0, N'52cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA102    ', N'Trần Thi', N'Hoa', N'D16CQC1 ', 0, CAST(N'1976-07-07 00:00:00.000' AS DateTime), N'Sài Gòn', N'222 Lý Thánh Tông', N' ', 0, N'48cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA103    ', N'Nguyễn Thị Yến', N'Lan', N'D16CQC1 ', 0, CAST(N'1976-08-08 00:00:00.000' AS DateTime), N'Khánh Hòa', N'33 California', N'', 0, N'4acb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA104    ', N'Nguyễn ', N'Phong', N'D16CQC1 ', 1, CAST(N'2020-01-15 00:00:00.000' AS DateTime), N'Khanh hòa', N'Khánh Hòa', N'', 0, N'4ecb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA105    ', N'Nguyễn', N'Quận', N'D16CQC1 ', 1, CAST(N'2019-12-13 00:00:00.000' AS DateTime), N'Quảng Bình', N'22 Ngô Quyền', N'', 0, N'4fcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'D17VTCN001  ', N'Nguyễn ', N'Thanh Kẹ', N'D07VTA1 ', 1, CAST(N'2019-12-04 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'TP.Huyế', N'', 0, N'51cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN     ', N'Lê Thị', N'Hà', N'D15CQCN1', 0, CAST(N'1995-02-19 00:00:00.000' AS DateTime), N'Phú Yên', N'CAN THO', N' ', 0, N'46cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN013  ', N'Tran Nguyen', N'Minh', N'D15CQCN1', 1, CAST(N'1995-06-19 00:00:00.000' AS DateTime), N'Bình Định', N'22 Cà Mau', N' ', 0, N'4ccb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN102  ', N'Nguyễn', N'phong', N'D15CQCN1', 1, CAST(N'2019-12-10 00:00:00.000' AS DateTime), N'Phú Yên', N'Quảng Ngãi', N' ', 1, N'50cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN103  ', N'Nguyễn Văn', N'Thuận', N'D15CQCN1', 1, CAST(N'2019-06-12 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Quảng Ngãi', NULL, 0, N'f1ffe82e-5f5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN104  ', N'Nguyễn ', N'Thái', N'D15CQCN1', 1, CAST(N'2020-03-17 00:00:00.000' AS DateTime), N'Đức Phổ', N'Đức Phổ', NULL, 0, N'47d9e640-5f5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N16DCCN076  ', N'Võ Duy', N'Khánh', N'D10VTC  ', 0, CAST(N'2020-03-25 00:00:00.000' AS DateTime), N'Cà Mau', N'Cà Mau', N'kk', 0, N'f4ce56fb-305c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N16DCCN115  ', N'Lê', N'Huy', N'D16CQC2 ', 1, CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'Đức Phổ', N'Đức Phổ', N'haha', 0, N'26ea1f6f-625c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N16DCCN116  ', N'Nguyễn Thanh', N'Huy', N'D16CQC2 ', 1, CAST(N'2019-12-10 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Quảng Ngãi', N'', 0, N'49cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N16DCCN117  ', N'Nguyễn Thanh', N'Phong', N'D16CQC2 ', 1, CAST(N'2019-02-19 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Quảng Ngãi', N'hihi', 0, N'0537ffb0-305c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N19DCCN118  ', N'Nguyễn ', N'Máy', N'D19CQCN2', 1, CAST(N'1989-06-14 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'TP.Quảng Ngãi', NULL, 0, N'e8ed123b-6050-ea11-ac89-2047472e644d')
ALTER TABLE [dbo].[HOCPHI]  WITH NOCHECK ADD  CONSTRAINT [FK_HOCPHI_SINHVIEN] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[HOCPHI] CHECK CONSTRAINT [FK_HOCPHI_SINHVIEN]
GO
/****** Object:  StoredProcedure [dbo].[SP_CHECKIDHOCPHI]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CHECKIDHOCPHI] @masv NVARCHAR(10), @nienkhoa NVARCHAR(14), @hoky SMALLINT

AS
BEGIN
	
	IF EXISTS (SELECT * FROM dbo.HOCPHI WHERE MASV = @masv AND NIENKHOA = @nienkhoa AND HOCKY = @hoky)
		RETURN 1 -- mã tồn tại
	RETURN 0	-- mã không tồn tại.
END




GO
/****** Object:  StoredProcedure [dbo].[SP_DANGNHAP]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_DANGNHAP]
@TENLOGIN NVARCHAR (50)
AS
DECLARE @TENUSER NVARCHAR(50)
SELECT @TENUSER=NAME FROM sys.sysusers WHERE sid = SUSER_SID(@TENLOGIN)
 
 SELECT USERNAME = @TENUSER, 
  HOTEN = (SELECT HO+ ' '+ TEN FROM GIANGVIEN  WHERE MAGV = @TENUSER ),
   ROLENAME=NAME
   FROM sys.sysusers 
   WHERE UID = (SELECT GROUPUID 
                 FROM SYS.SYSMEMBERS 
                   WHERE MEMBERUID= (SELECT UID FROM sys.sysusers 
                                      WHERE NAME=@TENUSER))

GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_DSDHP]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REPORT_DSDHP](@MALOP NVARCHAR(15),@NIENKHOA NVARCHAR(15),@HOCKI INT)
AS
BEGIN
  IF EXISTS (SELECT 1 FROM dbo.SINHVIEN AS SV WHERE SV.MALOP = @MALOP)
  BEGIN
  SELECT MASV,HO +' '+ TEN AS HOTEN INTO #E FROM dbo.SINHVIEN WHERE MALOP = @MALOP;
  SELECT MASV, HOCPHI,SOTIENDADONG INTO #F FROM dbo.HOCPHI WHERE NIENKHOA=@NIENKHOA AND HOCKY = @HOCKI;

  SELECT #E.HOTEN, #F.HOCPHI, #F.SOTIENDADONG AS SoTienDaDong
   FROM #E INNER JOIN #F ON #F.MASV = #E.MASV ORDER BY HOTEN ASC
   END
   ELSE RETURN 1;
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TAOLOGIN]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TAOLOGIN]
  @LGNAME VARCHAR(50),
  @PASS VARCHAR(50),
  @USERNAME VARCHAR(50),
  @ROLE VARCHAR(50)
AS

	-- check login , user bị trùng 
	IF EXISTS(SELECT name FROM sys.server_principals 
				WHERE TYPE IN ('U', 'S', 'G')	--U: Windows Login Accounts
				AND name NOT LIKE '%##%'		--S: SQL Login Accounts
				AND name = @LGNAME)				--G: Windows Group Login Accounts
		RETURN 1	--Trùng Login
	ELSE IF EXISTS(SELECT name FROM sys.database_principals
					WHERE type_desc = 'SQL_USER'
					AND name = @USERNAME)
		RETURN 2	--Trùng User

	-- băt đầu tạo tài khoản
  DECLARE @RET INT
  EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'QLDSV'
  IF (@RET =1) 
     RETURN 3 -- tạo tài khoản không thành công
 
  EXEC @RET= SP_GRANTDBACCESS @LGNAME, @USERNAME
  IF (@RET =1) 
  BEGIN
       EXEC SP_DROPLOGIN @LGNAME
       RETURN 3 -- tạo  tài khoảng không thành công
  END
  EXEC sp_addrolemember @ROLE, @USERNAME

  --THEM ROLE SECURITYADMIN DE CO QUYEN TAO TAI KHOAN
  EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'

  RETURN 0  -- THANH CONG



GO
/****** Object:  StoredProcedure [dbo].[Xoa_Login]    Script Date: Thu 4 9 2020 5:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Xoa_Login]
  @LGNAME VARCHAR(50),
  @USRNAME VARCHAR(50)
  
AS
EXEC SP_DROPUSER @USRNAME
  EXEC SP_DROPLOGIN @LGNAME


GO
