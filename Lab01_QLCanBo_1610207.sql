﻿create database Lab01_QLCanBo_1610207
use Lab01_QLCanBo_1610207;

go
create table PhongBan
(MaPB nchar(2) primary key,
TenPB nvarchar(20) not null unique);

go
create table ChucVu
(MaCV nchar(2) primary key,
TenCV nvarchar(20) not null,
PhuCapCV integer not null);

go
create table CanBo
(MaCB NCHAR(4) primary key,
MaPB nchar(2) references PhongBan(MaPB),
MaCV nchar(2) references ChucVu(MaCV),
HoTen NVARCHAR(30) not null,
NS date not null,
Phai NCHAR(4) not null,
HSL FLOAT not null,
LaDV NVARCHAR(20) not null,
VaoCD bit not null);

Insert into PhongBan Values('KH','Kế hoạch')
Insert into PhongBan Values('KT','Kế toán')
Insert into PhongBan Values('NS','Nhân sự')
Insert into PhongBan Values('TC','Tài chính')
Insert into PhongBan Values('TH','Tổng hợp')

Insert into ChucVu Values('NV','Nhân viên','100000')
Insert into ChucVu Values('PP','Phó phòng','300000')
Insert into ChucVu Values('TP','Trưởng phòng','500000')

Insert into CanBo Values('CB01','KH','TP','Nguyễn Tâm','12/25/1980','Nam','2.8','Là Đảng viên','0')
Insert into CanBo Values('CB02','TC','PP','Phan Thị Thanh','5/11/1981','Nữ','2.5','Chưa vào Đảng','1')
Insert into CanBo Values('CB03','KH','PP','Đào Tuấn Anh','12/23/1979','Nam','2.5','Là Đảng viên','1')
Insert into CanBo Values('CB04','TH','TP','Võ Thị Nữ','11/11/1979','Nữ','3','Chưa vào Đảng','1')
Insert into CanBo Values('CB05','KT','NV','Đỗ Thị Nở','12/5/1985','Nữ','2','Chưa vào Đảng','0')
Insert into CanBo Values('CB06','TC','TP','Vũ Văn Tòng','1/1/1981','Nam','3','Là Đảng viên','1')

select *
from PhongBan

select *
from CanBo

Select *
from ChucVu