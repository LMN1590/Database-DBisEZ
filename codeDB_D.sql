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
