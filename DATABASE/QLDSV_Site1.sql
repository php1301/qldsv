USE [QLDSV]
GO
/****** Object:  User [GV01]    Script Date: Thu 4 9 2020 4:56:03 PM ******/
CREATE USER [GV01] FOR LOGIN [cntt] WITH DEFAULT_SCHEMA=[GV01]
GO
/****** Object:  User [GV02]    Script Date: Thu 4 9 2020 4:56:03 PM ******/
CREATE USER [GV02] FOR LOGIN [pgv] WITH DEFAULT_SCHEMA=[GV02]
GO
/****** Object:  User [GV05      ]    Script Date: Thu 4 9 2020 4:56:03 PM ******/
CREATE USER [GV05      ] FOR LOGIN [pgv1] WITH DEFAULT_SCHEMA=[GV05      ]
GO
/****** Object:  User [HTKN]    Script Date: Thu 4 9 2020 4:56:03 PM ******/
CREATE USER [HTKN] FOR LOGIN [HTKN] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [KHOA]    Script Date: Thu 4 9 2020 4:56:03 PM ******/
CREATE ROLE [KHOA]
GO
/****** Object:  DatabaseRole [PGV]    Script Date: Thu 4 9 2020 4:56:03 PM ******/
CREATE ROLE [PGV]
GO
ALTER ROLE [KHOA] ADD MEMBER [GV01]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [GV01]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [GV01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [GV01]
GO
ALTER ROLE [PGV] ADD MEMBER [GV02]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV02]
GO
ALTER ROLE [PGV] ADD MEMBER [GV05      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [GV05      ]
GO
ALTER ROLE [db_owner] ADD MEMBER [HTKN]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [KHOA]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [KHOA]
GO
ALTER ROLE [db_datareader] ADD MEMBER [KHOA]
GO
ALTER ROLE [db_owner] ADD MEMBER [PGV]
GO
/****** Object:  Schema [GV01]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
CREATE SCHEMA [GV01]
GO
/****** Object:  Schema [GV02]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
CREATE SCHEMA [GV02]
GO
/****** Object:  Schema [GV05      ]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
CREATE SCHEMA [GV05      ]
GO
/****** Object:  Table [dbo].[DIEM]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIEM](
	[MASV] [char](12) NOT NULL,
	[MAMH] [char](6) NOT NULL,
	[LAN] [smallint] NOT NULL,
	[DIEM] [float] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_31CBB4192A4A42AC8113A335F08B63C4]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_DIEM] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MAMH] ASC,
	[LAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
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
/****** Object:  Table [dbo].[KHOA]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKH] [char](4) NOT NULL,
	[TENKH] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_D379B85747C84DD59CC6FF3C0B125BFF]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOP]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [char](8) NOT NULL,
	[TENLOP] [nvarchar](200) NULL,
	[MAKH] [char](4) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_C1CD5F27E45C41FAA50B39149412F5B0]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [char](6) NOT NULL,
	[TENMH] [nvarchar](40) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_ABB9FE49FAE542358E53623D6ABCE1BE]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
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
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA101    ', N'CSDL  ', 1, 10, N'53cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA101    ', N'CSDLPT', 1, 3, N'54cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA101    ', N'CTDL  ', 1, 5, N'55cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA102    ', N'CSDL  ', 1, 9.75, N'56cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA102    ', N'CSDLPT', 1, 8, N'57cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA102    ', N'CTDL  ', 1, 4, N'58cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA102    ', N'CTDL  ', 2, 8, N'59cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA103    ', N'CSDL  ', 1, 0, N'5acb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA103    ', N'CSDL  ', 2, 8, N'5bcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA103    ', N'CSDLPT', 1, 5, N'5ccb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA103    ', N'CTDL  ', 1, 7, N'5dcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA105    ', N'CSDLPT', 1, 7, N'5ecb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'09THA105    ', N'CTDL  ', 1, 8, N'5fcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN     ', N'CTDL  ', 1, 4, N'89394227-9d50-ea11-ac89-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN     ', N'CTDL  ', 2, 7, N'c10cfd43-9d50-ea11-ac89-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN     ', N'TRR3  ', 1, 8.8999996185302734, N'59ad02fc-605c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN0100 ', N'CTDL  ', 1, 7, N'8a394227-9d50-ea11-ac89-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN013  ', N'TRR3  ', 1, 5.6999998092651367, N'5aad02fc-605c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN103  ', N'TRR3  ', 1, 0, N'5cad02fc-605c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN103  ', N'TRR3  ', 2, 9, N'aef71b02-615c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN104  ', N'TRR3  ', 1, 2.4000000953674316, N'5bad02fc-605c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N15DCCN104  ', N'TRR3  ', 2, 7, N'adf71b02-615c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N16DCCN116  ', N'CSDLPT', 1, 7, N'f1c2d772-5e5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N16DCCN116  ', N'CTDL  ', 1, 8, N'f0b9b7be-605c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N16DCCN117  ', N'CSDLPT', 1, 3, N'f2c2d772-5e5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N16DCCN117  ', N'CSDLPT', 2, 9.8999996185302734, N'01777f79-5e5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N16DCCN117  ', N'CTDL  ', 1, 4, N'f1b9b7be-605c-ea11-ac8b-2047472e644d')
INSERT [dbo].[DIEM] ([MASV], [MAMH], [LAN], [DIEM], [rowguid]) VALUES (N'N16DCCN117  ', N'CTDL  ', 2, 9, N'8228a9cc-605c-ea11-ac8b-2047472e644d')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV01      ', N'NGUYEN HONG', N'SON       ', N'CNTT', N'2fcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV02      ', N'TRUONG DINH', N'HUY       ', N'CNTT', N'30cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV05      ', N'NGUYEN THANH', N'PHONG', N'CNTT', N'33cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV06      ', N'LE MINH', N'KHOA', N'CNTT', N'34cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV08      ', N'LE VAN', N'CHANH', N'CNTT', N'36cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV09      ', N'NGUYEN THANH', N'HUY', N'CNTT', N'37cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV11      ', N'NGUYEN VAN', N'THUAN', N'CNTT', N'39cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[GIANGVIEN] ([MAGV], [HO], [TEN], [MAKH], [rowguid]) VALUES (N'GV12      ', N'NGUYEN THANH', N'PHONG', N'CNTT', N'5e5f14f3-a14f-ea11-ac88-b46d83a05351')
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [rowguid]) VALUES (N'CNTT', N'Công nghệ thông tin', N'29cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D15CQCN1', N'Đại học chính quy 1  ngành Hệ thống thông tin Khóa 2015', N'CNTT', N'3bcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D16CQC1 ', N'Đại học chính quy 1  ngành Công nghệ thông tin Khóa 2016', N'CNTT', N'3acb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D16CQC2 ', N'Đại học chính quy 2  ngành Công nghệ thông tin Khóa 2016', N'CNTT', N'40cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D16DCC1 ', N'Đại học chính quy 2 ngành Công nghệ thông tin Khóa 2016', N'CNTT', N'd3152a87-2f5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D17CQCN2', N'Đại học chính quy 1 ngành Công nghệ thông tin khóa 2017', N'CNTT', N'a9a5793f-5e50-ea11-ac89-2047472e644d')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D19CQCN2', N'Đại học chính quy 2 ngành Công nghệ thông tin Khóa 2019', N'CNTT', N'43cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'D20CQCN2', N'Đại học chính quy 2 Ngành Công nghệ thông tin khóa 2020', N'CNTT', N'141732c7-285c-ea11-ac8b-2047472e644d')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'CSDL  ', N'Cơ sở dữ liệu', N'2ccb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'CSDLPT', N'Cơ sở dữ liệu phân tán', N'2dcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'CTDL  ', N'Cấu trúc dữ liệu', N'2bcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'LTM   ', N'Lập trình mạng', N'1427eaa9-2d5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'TRR3  ', N'Toán rời rạc 3', N'dad021c6-2d5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA101    ', N'Lê Thị', N'Vân', N'D16CQC1 ', 0, CAST(N'1976-06-06 00:00:00.000' AS DateTime), N'Hà Nội', N'Ngô Quyền', N' ', 0, N'52cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA102    ', N'Trần Thi', N'Hoa', N'D16CQC1 ', 0, CAST(N'1976-07-07 00:00:00.000' AS DateTime), N'Sài Gòn', N'222 Lý Thánh Tông', N' ', 0, N'48cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA103    ', N'Nguyễn Thị Yến', N'Lan', N'D16CQC1 ', 0, CAST(N'1976-08-08 00:00:00.000' AS DateTime), N'Khánh Hòa', N'33 California', N'', 0, N'4acb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA104    ', N'Nguyễn ', N'Phong', N'D16CQC1 ', 1, CAST(N'2020-01-15 00:00:00.000' AS DateTime), N'Khanh hòa', N'Khánh Hòa', N'', 0, N'4ecb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'09THA105    ', N'Nguyễn', N'Quận', N'D16CQC1 ', 1, CAST(N'2019-12-13 00:00:00.000' AS DateTime), N'Quảng Bình', N'22 Ngô Quyền', N'', 0, N'4fcb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN     ', N'Lê Thị', N'Hà', N'D15CQCN1', 0, CAST(N'1995-02-19 00:00:00.000' AS DateTime), N'Phú Yên', N'CAN THO', N' ', 0, N'46cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN013  ', N'Tran Nguyen', N'Minh', N'D15CQCN1', 1, CAST(N'1995-06-19 00:00:00.000' AS DateTime), N'Bình Định', N'22 Cà Mau', N' ', 0, N'4ccb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN102  ', N'Nguyễn', N'phong', N'D15CQCN1', 1, CAST(N'2019-12-10 00:00:00.000' AS DateTime), N'Phú Yên', N'Quảng Ngãi', N' ', 1, N'50cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN103  ', N'Nguyễn Văn', N'Thuận', N'D15CQCN1', 1, CAST(N'2019-06-12 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Quảng Ngãi', NULL, 0, N'f1ffe82e-5f5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N15DCCN104  ', N'Nguyễn ', N'Thái', N'D15CQCN1', 1, CAST(N'2020-03-17 00:00:00.000' AS DateTime), N'Đức Phổ', N'Đức Phổ', NULL, 0, N'47d9e640-5f5c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N16DCCN115  ', N'Lê', N'Huy', N'D16CQC2 ', 1, CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'Đức Phổ', N'Đức Phổ', N'haha', 0, N'26ea1f6f-625c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N16DCCN116  ', N'Nguyễn Thanh', N'Huy', N'D16CQC2 ', 1, CAST(N'2019-12-10 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Quảng Ngãi', N'', 0, N'49cb04ce-9e4f-ea11-ac88-b46d83a05351')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N16DCCN117  ', N'Nguyễn Thanh', N'Phong', N'D16CQC2 ', 1, CAST(N'2019-02-19 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'Quảng Ngãi', N'hihi', 0, N'0537ffb0-305c-ea11-ac8b-2047472e644d')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [MALOP], [PHAI], [NGAYSINH], [NOISINH], [DIACHI], [GHICHU], [NGHIHOC], [rowguid]) VALUES (N'N19DCCN118  ', N'Nguyễn ', N'Máy', N'D19CQCN2', 1, CAST(N'1989-06-14 00:00:00.000' AS DateTime), N'Quảng Ngãi', N'TP.Quảng Ngãi', NULL, 0, N'e8ed123b-6050-ea11-ac89-2047472e644d')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_TENLOP]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
ALTER TABLE [dbo].[LOP] ADD  CONSTRAINT [UK_TENLOP] UNIQUE NONCLUSTERED 
(
	[TENLOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MONHOC]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
ALTER TABLE [dbo].[MONHOC] ADD  CONSTRAINT [IX_MONHOC] UNIQUE NONCLUSTERED 
(
	[TENMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_DIEM_MONHOC1] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_MONHOC1]
GO
ALTER TABLE [dbo].[DIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_DIEM_SINHVIEN] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_SINHVIEN]
GO
ALTER TABLE [dbo].[GIANGVIEN]  WITH NOCHECK ADD  CONSTRAINT [FK_GIANGVIEN_KHOA] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[GIANGVIEN] CHECK CONSTRAINT [FK_GIANGVIEN_KHOA]
GO
ALTER TABLE [dbo].[LOP]  WITH NOCHECK ADD  CONSTRAINT [FK_LOP_KHOA1] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_KHOA1]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH NOCHECK ADD  CONSTRAINT [FK_SINHVIEN_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
ON UPDATE CASCADE
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_LOP]
GO
ALTER TABLE [dbo].[DIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_DIEM_DIEM] CHECK NOT FOR REPLICATION (([DIEM]>=(0) AND [DIEM]<=(10)))
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [CK_DIEM_DIEM]
GO
ALTER TABLE [dbo].[DIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_DIEM_LAN] CHECK NOT FOR REPLICATION (([LAN]=(1) OR [LAN]=(2)))
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [CK_DIEM_LAN]
GO
/****** Object:  StoredProcedure [dbo].[SP_BDMH]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BDMH] @malop NVARCHAR(10), @mamh NVARCHAR(10),  @lan SMALLINT
AS
BEGIN
	
		SELECT HoTen = SV.HO + ' ' + SV.TEN, D.MASV, CONVERT(VARCHAR(5), D.DIEM) AS DIEM
		FROM  (SELECT MASV, DIEM FROM dbo.DIEM WHERE MAMH = @mamh AND LAN = @lan)  D
		INNER JOIN
		(SELECT MASV, HO, TEN FROM dbo.SINHVIEN  WITH (INDEX=IX_MALOP_TEN) WHERE MALOP = @malop AND NGHIHOC = 'false') SV
		ON D.MASV = sv.MASV
		ORDER BY TEN, HO
END



GO
/****** Object:  StoredProcedure [dbo].[SP_CHECKID]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CHECKID] @Code NVARCHAR(15),
@Type NVARCHAR(15)
AS
BEGIN
	-- LOP
	IF(@Type = 'MALOP')
	BEGIN
		
		IF EXISTS(SELECT * FROM dbo.LOP WHERE dbo.LOP.MALOP = @Code)
			RETURN 1; -- Mã tồn tại ở phân mãnh hiện tại
	
		ELSE IF EXISTS(SELECT * FROM LINK0.QLDSV.dbo.LOP AS LOP WHERE LOP.MALOP = @Code)
			RETURN 2;	--Mã NV tồn tại ở phân mãnh  khác
	END

	--MON Hoc
	IF(@Type = 'MAMONHOC')
	BEGIN
		IF EXISTS(SELECT * FROM dbo.MONHOC WHERE MAMH = @Code)
		RETURN 1;
	END
	
	


		IF(@Type = 'MASV')
	BEGIN
		
		IF EXISTS(SELECT * FROM dbo.SINHVIEN WHERE dbo.SINHVIEN.MASV = @Code)
			RETURN 1; -- Mã tồn tại ở phân mãnh hiện tại
	
		ELSE IF EXISTS(SELECT * FROM LINK0.QLDSV.dbo.SINHVIEN AS SV WHERE SV.MASV = @Code)
			RETURN 2;	--Mã NV tồn tại ở phân mãnh  khác
	END

	RETURN 0	--Không bị trùng được thêm
END



GO
/****** Object:  StoredProcedure [dbo].[SP_CHECKIDHOCPHIBYMASV]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CHECKIDHOCPHIBYMASV] @masv NVARCHAR(10)
AS
BEGIN
  
  IF EXISTS (SELECT * FROM LINK0.QLDSV.dbo.HOCPHI WHERE MASV = @masv )
    RETURN 1 -- mã tồn tại
  RETURN 0  -- mã không tồn tại.
END


GO
/****** Object:  StoredProcedure [dbo].[SP_CHECKNAME]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CHECKNAME]
@Name NVARCHAR(50),
@Type NVARCHAR(15)
AS
BEGIN
	--Kiểm tra Table lop của server hiện tại
	IF(@Type = 'TENLOP')
	BEGIN
		IF EXISTS(SELECT * FROM dbo.LOP WHERE dbo.LOP.TENLOP = @Name)
			RETURN 1; -- @name bị trùng  ở phân mãnh hiện tại
	
		ELSE IF EXISTS(SELECT * FROM LINK0.QLDSV.dbo.LOP AS LOP WHERE LOP.TENLOP = @Name)
			RETURN 2;	--@name bị trùng ở phân mãnh  khác
	END

	IF(@Type = 'TENMONHOC')
	BEGIN
		IF EXISTS(SELECT * FROM dbo.MONHOC WHERE TENMH = @Name)
		RETURN 1;
	END
	
	RETURN 0	--Không bị trùng ,được thêm
END


GO
/****** Object:  StoredProcedure [dbo].[SP_CHUYENLOP]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CHUYENLOP]
@MASV NVARCHAR(12),-- de update status thanh nghi hoc
@MASVMOI NVARCHAR(12), -- de insert vao khoa moi
@MALOPCHUYENDEN NVARCHAR(12) -- ma lop moi se chuyen den
AS
BEGIN

	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN DISTRIBUTED TRANSACTION
		
		INSERT INTO LINK0.QLDSV.dbo.SINHVIEN (MASV,HO,TEN,MALOP,PHAI,NGAYSINH,NOISINH,DIACHI,GHICHU,NGHIHOC)
		SELECT @MASVMOI AS MASV,HO,TEN,@MALOPCHUYENDEN AS MALOP,PHAI,NGAYSINH,NOISINH,DIACHI,GHICHU,0 FROM dbo.SINHVIEN WHERE MASV = @MASV

		UPDATE dbo.SINHVIEN SET NGHIHOC=1 WHERE MASV = @MASV;-- Cap nhap trang thai nghi hoc cua sinh vien o site hien tai

		IF(@@TRANCOUNT > 0)
		BEGIN
			PRINT 'Commit Success'
			COMMIT TRANSACTION
			RETURN 0	--Thành công
		END
	END TRY

	BEGIN CATCH
		IF (@@TRANCOUNT > 0)
		BEGIN
			ROLLBACK TRANSACTION
			PRINT 'Commit Fail'
			RETURN -1;
		END
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[SP_DANGNHAP]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DSSV_MH]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DSSV_MH] @malop NVARCHAR(10)
AS
BEGIN
		
		SELECT HoTen = (sv.HO + ' ' + sv.TEN) , MASV, DIEM = ''
		FROM  dbo.SINHVIEN sv
		WHERE sv.MALOP = @malop AND sv.NGHIHOC = 'false'
		ORDER BY sv.TEN, sv.HO

END




GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_DIEM]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_INSERT_DIEM]  
@MASV NVARCHAR(12),  
@MAMH NVARCHAR(10),  
@LAN  smallint,  
@DIEM float  
AS  
BEGIN  
            IF EXISTS (SELECT 1 FROM DIEM WHERE MASV=@MASV AND MAMH=@MAMH AND LAN=@LAN)  
                BEGIN  
                    UPDATE DIEM  
                    SET DIEM = @DIEM   
                    WHERE MASV= @MASV AND LAN=@LAN AND MAMH=@MAMH  
                END  
            ELSE  
                BEGIN  
                    INSERT INTO DBO.DIEM (MASV, MAMH, LAN, DIEM)  
                    VALUES (@MASV, @MAMH, @LAN, @DIEM)  
                END   
END  


GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_BDMH]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REPORT_BDMH](@MALOP NVARCHAR(15), @MAMONHOC NVARCHAR(15),@LAN INT)
AS
BEGIN
  IF EXISTS (SELECT 1 FROM dbo.SINHVIEN AS SV WHERE SV.MALOP = @MALOP)
    BEGIN
      SELECT SV.MASV ,SV.HO +' '+ SV.TEN AS HOTEN INTO #A FROM dbo.SINHVIEN AS SV WHERE SV.MALOP = @MALOP AND SV.NGHIHOC = 'false';
      SELECT D.MASV, D.MAMH, D.LAN, D.DIEM  INTO #B FROM dbo.DIEM AS D WHERE D.MAMH = @MAMONHOC AND D.LAN = @LAN;
      SELECT * FROM #A INNER JOIN #B ON #B.MASV = #A.MASV ORDER BY HOTEN
    END
  ELSE RETURN 1;
END

GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_BDTK]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REPORT_BDTK](@MALOP NVARCHAR(15))
AS
BEGIN
	SELECT MASV,HO +' '+TEN AS HOTEN INTO #G FROM dbo.SINHVIEN WHERE MALOP=@MALOP AND NGHIHOC='false';
	SELECT #G.MASV+'-'+#G.HOTEN AS MA_HOTEN ,DIEM,MH.TENMH FROM dbo.DIEM
		INNER JOIN #G ON #G.MASV = DIEM.MASV,dbo.MONHOC AS MH WHERE DIEM.MAMH = MH.MAMH
END;


GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_DSSV]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REPORT_DSSV](@MALOP CHAR(15))
AS
BEGIN
	SELECT SV.HO AS HO, SV.TEN AS TEN,
	CASE
		WHEN SV.PHAI = 1 THEN 'Nam'
		WHEN SV.PHAI = 0 THEN 'Nu'
	END AS PHAI,
	 CONVERT(VARCHAR(12),SV.NGAYSINH,106) AS NGAYSINH, SV.NOISINH, SV.DIACHI FROM dbo.SINHVIEN AS SV WHERE SV.MALOP = @MALOP AND SV.NGHIHOC='false';
END

GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_DSTHM]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REPORT_DSTHM](@MALOP CHAR(15))
AS
BEGIN
	IF EXISTS (SELECT 1 FROM dbo.SINHVIEN AS SV WHERE SV.MALOP = @MALOP)
		BEGIN
			SELECT SV.MASV, SV.HO+' '+SV.TEN AS HOTEN FROM dbo.SINHVIEN AS SV WHERE SV.MALOP = @MALOP AND SV.NGHIHOC='false'
		END
	ELSE RETURN 1;
END


GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_PD]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REPORT_PD](@MASV NVARCHAR(15))
AS
BEGIN
	IF EXISTS (SELECT 1 FROM dbo.DIEM AS D WHERE D.MASV = @MASV)
		BEGIN
			SELECT D.MASV,D.MAMH, MAX(D.DIEM) AS DIEM INTO #C FROM dbo.DIEM AS D
				WHERE D.MASV = @MASV GROUP BY D.MASV,D.MAMH,D.DIEM;

			SELECT MH.TENMH, DEMO.DIEM FROM dbo.MONHOC AS MH INNER JOIN (SELECT * FROM #C) AS DEMO
			ON DEMO.MAMH = MH.MAMH ORDER BY MH.TENMH ASC
		END
	ELSE RETURN 1;
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TAOLOGIN]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Xoa_Login]    Script Date: Thu 4 9 2020 4:56:04 PM ******/
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
