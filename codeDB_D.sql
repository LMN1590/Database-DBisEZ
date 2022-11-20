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

--cong ty van chuyen chua them primary key va references
CREATE TABLE congtyvanchuyen
(
	congtyvanchuyen VARCHAR(20),
    IDcongty CHAR(1) NOT NULL,
    Tencongty TEXT,
    SDT VARCHAR(10),
    Email TEXT,
    Diachi TEXT
);

-- Phần của LMN --

CREATE TABLE if not exists NhaHang(
	IDTaiKhoan INT primary key,
    TenNhaHang VARCHAR(255) NOT NULL,
    DiaChi VARCHAR(255) NOT NULL,
    Website VARCHAR(255) NOT NULL,
    IDQuanLy INT NOT NULL
);

CREATE TABLE if not exists LoaiMonAn(
	IDTaiKhoan INT NOT NULL,
    IDLoaiMonAn INT NOT NULL,
    TenLoaiMonAn VARCHAR(255) NOT NULL,
    PRIMARY KEY(IDTaiKhoan, IDLoaiMonAn)
);

CREATE TABLE if not exists MonAn(
	IDMonAn INT primary KEY,
    TenMonAn VARCHAR(255) NOT NULL,
    AnhMinhHoa VARCHAR(255) NOT NULL,
    MoTa VARCHAR(255) NOT NULL,
    GiaLamMon INT NOT NULL,
    GiaBan INT NOT NULL,
    IDNhaHang INT NOT NULL,
    IDLoaiMonAn INT NOT NULL
);

create table if not exists NguyenLieu(
	IDmonan INT NOT NULL,
    Tennguyenlieu VARCHAR(255) NOT NULL,
    primary key(IDmonan, Tennguyenlieu)
);

ALTER table loaimonan add foreign key (idtaikhoan) references nhahang(IDtaikhoan);
alter table monan add foreign key (IDnhahang,idloaimonan) references loaimonan(idtaikhoan,idloaimonan);
ALTER table nguyenlieu add foreign key (idmonan) references monan(idmonan);

-----------------------