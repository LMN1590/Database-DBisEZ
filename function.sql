-- Viết Function tính tổng số mã khuyến mãi của 1 đơn hàng
drop function if exists TONGKHUYENMAI; 
DELIMITER $$ 
CREATE FUNCTION TONGKHUYENMAI(ID_khachhang INT) RETURNS VARCHAR(1000) deterministic
BEGIN
	DECLARE x INT default 0;
    DECLARE x1 VARCHAR(30);
    DECLARE y1 VARCHAR(30);
	DECLARE tongkhuyenmai INT default 0;
    SET x = (SELECT ID from donhang where ID_nguoinhan = ID_khachhang);
    IF (x = 0) THEN
		RETURN CONCAT("Khách hàng có ID là ", ID_khachhang, " không tồn tại.");
	ELSE
		SET tongkhuyenmai = (SELECT COUNT(ID_donhang) FROM apdung_khuyenmai WHERE ID_donhang = x);
        SET x1 = (SELECT Ho from khachhang where IDtaikhoan = ID_khachhang);
		SET y1 = (SELECT Ten from khachhang where IDtaikhoan = ID_khachhang);
		RETURN CONCAT("Khách hàng " , x1, " ", y1, " có ID là ", ID_khachhang , " có ", tongkhuyenmai, " mã khuyến mãi.");
	END IF;
END $$
DELIMITER ;

SELECT TONGKHUYENMAI(1);
