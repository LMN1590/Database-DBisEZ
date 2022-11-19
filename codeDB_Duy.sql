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

INSERT INTO admin VALUES (1, 'Chan', 'Danh');
INSERT INTO admin VALUES (2, 'Hai', 'Que');
INSERT INTO admin VALUES (3, 'Bu', 'Hu');
INSERT INTO admin VALUES (4, 'Cau', 'Vang');
INSERT INTO admin VALUES (5, 'Choi', 'Do');
INSERT INTO admin VALUES (6, 'Mai', 'Thuy');
INSERT INTO admin VALUES (7, 'Lee', 'Sanghyeok');
INSERT INTO admin VALUES (8, 'Tre', 'Nghe');
INSERT INTO admin VALUES (9, 'Nguyen', 'Tuan');
INSERT INTO admin VALUES (10, 'Pham', 'Duy');

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
