-- tai khoan
INSERT INTO taikhoan VALUES(1, 'amazonjuicy', 'dugjhr88', '0234569874', 'chandanhvl@gmail.com');
INSERT INTO taikhoan VALUES(2, 'weirdofoxxx', 'foxxxxx', '0168974512', 'haicham3que@gmail.com');
INSERT INTO taikhoan VALUES(3, 'bamboohoo', 'assisgood1', '0785642135', 'boohuhu@gmail.com');
INSERT INTO taikhoan VALUES(4, 'goldtdawg21', 'CXxdkixl', '0580685080', 'golddawg22@gmail.com');
INSERT INTO taikhoan VALUES(5, 'siomaithuy', 'eJfAC1tT', '0553301100', 'crackerhero@gmail.com');
INSERT INTO taikhoan VALUES(6, 'sktno1', 'pWgH00tQ', '048102565', 'doubled@gmail.com');
INSERT INTO taikhoan VALUES(7, 'boomerfaker', 'N1ri2TLD', '0666889572', 'canhcutno1@gmail.com');
INSERT INTO taikhoan VALUES(8, 'zoomer234', 'iDAqVGUd', '0229031171', 'trustmebro@gmail.com');
INSERT INTO taikhoan VALUES(9, 'tuanITpro', 'hmA9OFCW', '0739521401', 'tuanvjpit@gmail.com');
INSERT INTO taikhoan VALUES(10, 'ADPKsieu', 'XskUyJO9', '0944327626', 'adpkno1xathu@gmail.com');

-- admin
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

--khuyen mai chung
INSERT INTO khuyenmai_chung VALUES (1, 1200000, 'Giảm tối đa 150k đơn tối thiểu 1200k', 'COSLUX11', '20/11/2022', '30/11/2022', 100, 81, 1);
INSERT INTO khuyenmai_chung VALUES (2, 50, 'Giảm tối đa 50k đơn tối thiểu 50k', 'VISA50', '8/11/2022', '8/12/2022', 200, 54, 2);
INSERT INTO khuyenmai_chung VALUES (3, 200000, 'Giảm 40% cho đơn hàng từ 200k', 'GF40200', '4/10/2022', '4/12/2022', 500, 2, 3);
INSERT INTO khuyenmai_chung VALUES (4, 300000, 'Giảm 75k cho đơn hàng từ 300k', 'SL75', '1/10/2022', '30/11/2022', 400, 43, 4);
INSERT INTO khuyenmai_chung VALUES (5, 20000, 'Giảm giá tối đa 10k cho đơn từ 20k tri ân 20/11', 'TD2022', '16/11/2022', '21/11/2022', 300, 66, 5);
INSERT INTO khuyenmai_chung VALUES (6, 200000, 'Giảm 30k cho đơn hàng từ 200k', 'FREE200', '4/11/2022', '18/12/2022', 50, 21, 6);
INSERT INTO khuyenmai_chung VALUES (7, 0, 'Khuyến mãi 50% khi mua trà sữa', '50TRASUA', '17/11/2022', '17/12/2022', 200, 102, 7);
INSERT INTO khuyenmai_chung VALUES (8, 75000, 'Khuyến mãi 20% cho đơn từ 75k', 'DG7520', '15/11/2022', '30/11/2022', 100, 32, 8);
INSERT INTO khuyenmai_chung VALUES (9, 0, 'Mã giảm 20k cho khách hàng sử dụng GrabFood', 'MCGRAB', '10/10/2022', '30/11/2022', 70, 5, 9);
INSERT INTO khuyenmai_chung VALUES (10, 300000, 'Giảm 50% cho đơn hàng từ 300k', 'HOT300', '11/11/2022', '30/11/2022', 50, 0, 10);

--cong ty van chuyen
INSERT INTO congtyvanchuyen VALUES ('congtyvanchuyen1', '1' , 'GrabFood', '0902348144', 'grabfood@grab.com', 'Tòa nhà Mapletree Business Center, 1060 Nguyễn Văn Linh, phường Tân Phong, quận 7, TPHCM');
INSERT INTO congtyvanchuyen VALUES ('congtyvanchuyen2', '2' , 'beFood', '1900232345' , 'hotro@be.com.vn', 'Tầng 16, tòa nhà Saigon Tower, 29 Lê Duẩn, phường Bến Nghé, quận 1, TPHCM');
INSERT INTO congtyvanchuyen VALUES ('congtyvanchuyen3', '3' , 'Baemin', '19003458' , 'help@baemin.vn', 'Tầng 4 và Tầng 5, Friendship Tower, 31 Lê Duẩn, phường Bến Nghé, quận 1, TPHCM');
INSERT INTO congtyvanchuyen VALUES ('congtyvanchuyen4', '4' , 'ShopeeFood', '19002042' , 'support@shopeefood.vn', 'Lầu G, tòa nhà Jabes 1, 244 Cống Quỳnh, phường Phạm Ngũ Lão, quận 1, TPHCM');
INSERT INTO congtyvanchuyen VALUES ('congtyvanchuyen5', '5' , 'Loship', '1900638058' , 'hotroloship@lozi.vn', 'Tòa nhà Lữ Gia, Tầng 4 - 70 Lữ Gia, phường 15, quận 11, TPHCM');

--Hoa don
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (1,'Trực tiếp',129000,15000,1);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (2,'Trực tiếp',260000,16000,2);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (3,'Online',45000,23000,3);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (4,'Online',750000,25000,4);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (5,'Online',110000,48000,5);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (6,'Trực tiếp',460000,17000,6);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (7,'Online',185000,36000,7);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (8,'Trực tiếp',250000,19000,8);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (9,'Trực tiếp',1650000,75000,9);
INSERT INTO Hoadon(ID,Phươngthuc,Phidonhang,Phigiaohang,ID_donhang) VALUES (10,'Online',295000,30000,10);

--Cong ty van chuyen
INSERT INTO Congtyvanchuyen(ID,Tên,SDT,Email,Diachi) VALUES (1,'GrabFood','0902348144','grabfood@grab.com','Tòa nhà Mapletree Business Center, 1060 Nguyễn Văn Linh, phường Tân Phong, quận 7, TPHCM');
INSERT INTO Congtyvanchuyen(ID,Tên,SDT,Email,Diachi) VALUES (2,'beFood','1900232345','hotro@be.com.vn','Tầng 16, tòa nhà Saigon Tower, 29 Lê Duẩn, phường Bến Nghé, quận 1, TPHCM');
INSERT INTO Congtyvanchuyen(ID,Tên,SDT,Email,Diachi) VALUES (3,'Baemin','19003458','help@baemin.vn','Tầng 4 và Tầng 5, Friendship Tower, 31 Lê Duẩn, phường Bến Nghé, quận 1, TPHCM');
INSERT INTO Congtyvanchuyen(ID,Tên,SDT,Email,Diachi) VALUES (4,'ShopeeFood','19002042','support@shopeefood.vn','Lầu G, tòa nhà Jabes 1, 244 Cống Quỳnh, phường Phạm Ngũ Lão, quận 1, TPHCM');
INSERT INTO Congtyvanchuyen(ID,Tên,SDT,Email,Diachi) VALUES (5,'Loship','1900638058','hotroloship@lozi.vn','Tòa nhà Lữ Gia, Tầng 4 - 70 Lữ Gia, phường 15, quận 11, TPHCM');

--Don hang
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (1,'Cristiano Ronaldo','Đang xử lý','Siuuuuuu','Real Madrid',0123456789,0179651234,'Erik Ten Hag','59H3-7946','Yamaha Exciter',21,1,'2022-12-01');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (2,'Danh Nguyen','Đang xử lý','Thêm tí đá','268 Lý Thường Kiệt, phường 14, quận 10',0789456141,0987413571,'Nguyễn Hữu Danh','59P2-27582','Yamaha Sirius',22,3,'2022-11-30');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (3,'Trông Anh Ngược','Đang giao hàng','Đơn hàng này chuẩn chưa anh','235 Nguyễn Văn Cừ, phường 4, quận 5',0345678912,0784154692,'Trịnh Quang Tuyến','59T1-78463','Honda Vision',23,4,'2022-11-29');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (4,'Nghia Le','Đã giao','Nhớ bỏ bột ngọt Hảo Hảo','268 Lý Thường Kiệt, phường 14, quận 10',0657135798,0648571345,'Lê Minh Nghĩa','59GN-0175','Honda WaveRSX',24,1,'2022-12-13');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (5,'Lươn Văn Tèo','Đang giao hàng','Giảm bớt thịt và lấy thêm sự lươn lẹo','11 đường số 2, phường 5, quận 6',0245789311,0876334812,'Nguyễn Văn Trung','61Y5-18469','KYMCO Candy Hermosa',25,2,'2023-01-05');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (6,'Bùi Thị Xuyến','Đã giao','Tôi không ăn được cay','102 Nguyễn Bá Tòng, phường 11, quận Tân Bình',0923597412,0975246134,'Nguyễn Huỳnh Tuấn Hưng','59H1-99999','Honda Air Blade',26,2,'2022-12-29');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (7,'Nhan Tran','Đang giao hàng','Cho thêm rau muống thoát khỏi sự trầm cảm này','268 Lý Thường Kiệt, phường 14, quận 10',0484794565,0813464897,'Trần Thiện Nhân','59M5-9748','Honda Super Cub',27,5,'2022-12-19');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (8,'Nguyễn Phương Hằng','Đang xử lý',NULL,'Khu đô thị Sala',0999799799,0465879123,'Võ Hoàng Yên','62R4-6412','Honde Future',28,3,'2023-01-15');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (9,'Duy Pham','Đang giao hàng','Thêm cúp T1 2023','268 Lý Thường Kiệt, phường 14, quận 10',0369741157,0789514364,'Phạm Khai Anh Duy','59F8-23497','Yamaha Janus',29,5,'2023-02-10');
INSERT INTO Donhang(ID,Nguoinhan,Tinhtrang,Ghichu,Diachi,SDT,Taixe_SDT,Taixe_Hoten,Taixe_Bienso,Taixe_Tenxe,ID_nguoinhan,ID_congty,Ngaydathang) VALUES (0,'Lê Tùng Vân','Đang xử lý',NULL,'461 Lê Văn Sỹ, phường 2, quận Tân Bình',0814523168,0358416471,'Trần Thị Mai','61T1-45167','Yamaha Sirius',30,4,'2022-12-26');

--Noi dung don hang
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (1,1,1,39000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (1,2,2,45000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (2,3,2,40000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (2,4,2,50000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (2,5,2,40000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (3,7,1,45000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (3,8,3,40000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (4,9,10,75000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (5,14,1,75000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (5,15,1,35000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (6,14,3,75000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (6,15,5,35000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (6,16,2,30000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (7,20,4,35000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (7,21,3,15000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (8,10,5,50000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (9,18,20,45000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (9,19,15,50000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (10,12,3,45000);
INSERT INTO Noidung_donhang(ID_donhang,ID_monan,Soluongmon,Giamua) VALUES (10,13,4,40000);
