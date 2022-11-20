CREATE DATABASE ASS_DB;
USE ASS_DB;

CREATE TABLE taikhoan (
	idtaikhoan int PRIMARY KEY, 
	tendangnhap varchar(20) NOT NULL,
	matkhau varchar(20) NOT NULL,
    sdt varchar(20) NOT NULL,
    email varchar(100) NOT NULL
);

CREATE TABLE khuyenmai_chung (
	idcuama int PRIMARY KEY,
    giatoithieuapdung int NOT NULL,
    mota varchar(100) NOT NULL,
    makhuyenmai varchar(20) NOT NULL,
    ngaybatdau varchar(10) NOT NULL,
    hansudung varchar(10) NOT NULL,
    soluongtoida int NOT NULL,
    soluongconlai int NOT NULL,
    idnguoitaoma int NOT NULL,
    foreign key (idnguoitaoma) references admin(idtaikhoan)
);

CREATE TABLE admin (
	idtaikhoan int PRIMARY KEY, 
	ho varchar(20) NOT NULL,
	ten varchar(20) NOT NULL,
    foreign key (idtaikhoan) references taikhoan(idtaikhoan)
);

CREATE TABLE khuyenmaicuahang (
	idcuama int NOT NULL,
    idcuahang int NOT NULL,
    primary key(idcuama, idcuahang),
    foreign key (idcuama) references khuyenmaichung(idcuama),
    foreign key (idcuahang) references nhahang(idtaikhoan)
);

CREATE TABLE khuyenmaihethong (
	idcuama int NOT NULL,
    loaithanhvien varchar(20) NOT NULL,
    gioihandiemdesudung int NOT NULL,
    primary key (idcuama),
    foreign key (idcuama)  references khuyenmaichung(idcuama)
);

CREATE TABLE Congtyvanchuyen(
   ID     INTEGER  NOT NULL PRIMARY KEY 
  ,Ten    VARCHAR(50) NOT NULL
  ,SDT    INTEGER NOT NULL
  ,Email  VARCHAR(50) NOT NULL
  ,Diachi VARCHAR(256) NOT NULL
);

CREATE TABLE Noidung_donhang(
   ID_donhang INTEGER  NOT NULL PRIMARY KEY 
  ,ID_monan   INTEGER  NOT NULL
  ,Soluongmon INTEGER  NOT NULL
  ,Giamua     INTEGER  NOT NULL
);

CREATE TABLE Hoadon(
   ID          INTEGER  NOT NULL PRIMARY KEY 
  ,Phươngthuc  VARCHAR(9) NOT NULL
  ,Phidonhang  INTEGER  NOT NULL
  ,Phigiaohang INTEGER  NOT NULL
  ,ID_donhang  INTEGER  NOT NULL
);

CREATE TABLE Donhang(
   ID           INTEGER  NOT NULL PRIMARY KEY 
  ,Nguoinhan    VARCHAR(50) NOT NULL
  ,Tinhtrang    VARCHAR(20) NOT NULL
  ,Ghichu       VARCHAR(256)
  ,Diachi       VARCHAR(256) NOT NULL
  ,SDT          INTEGER  NOT NULL
  ,Taixe_SDT    INTEGER  NOT NULL
  ,Taixe_Hoten  VARCHAR(50) NOT NULL
  ,Taixe_Bienso VARCHAR(10) NOT NULL
  ,Taixe_Tenxe  VARCHAR(30) NOT NULL
  ,ID_nguoinhan INTEGER  NOT NULL
  ,ID_congty    INTEGER  NOT NULL
  ,Ngaydathang  DATE  NOT NULL
);

ALTER TABLE Hoadon
ADD CONSTRAINT fk_hoadon_IDdonhang	FOREIGN KEY (ID_donhang)
	REFERENCES Donhang(ID)
    ON DELETE CASCADE;
    
ALTER TABLE Donhang
ADD CONSTRAINT fk_donhang_IDcongty	FOREIGN KEY (ID_congty)
	REFERENCES Congtyvanchuyen(ID)
    ON DELETE CASCADE;
---Do chưa có khách hàng nên chưa thêm foreign key ID_nguoinhan được