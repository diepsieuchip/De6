create table KhachHang
(
 makh varchar(10) not null,
 tenkh nvarchar(50),
 điachi nvarchar(50),
 đt nvarchar(20),
 tinhtrang bit,
 primary key (makh)
);
create table NhanVien
(
 manv varchar(10) not null,
 tennv nvarchar(50),
 điachi nvarchar(50),
 hinhanh image,
 tinhtrang bit,
 tendn nvarchar(50),
 matkhau nvarchar(20),
 primary key (manv)
);
create table HoaDon
(
 mahd varchar(10) not null,
 ngaylap datetime,
 makh varchar(10)not null,
 manv varchar(10)not null,
 primary key (mahd),
 foreign key (makh) references khachhang (makh),
 foreign key (manv) references nhanvien (manv)
);
create table Hang
(
 mahang varchar(10) not null,
 tenhang nvarchar(50),
 donvitinh nvarchar(50),
 nhasx nvarchar(50),
 mota nvarchar(50),
 soluongcon int,
 hinhanh image,
 primary key (mahang)
);
create table ChiTiethd
(
 mahd varchar(10) not null,
 mahang varchar(10) not null,
 soluongmua int,
 dongiaban nvarchar(50),
 thanhtien nvarchar(50),
 constraint ma primary key (mahd,mahang),
 foreign key (mahang) references hang (mahang)
);
