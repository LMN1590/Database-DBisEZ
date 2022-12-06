-- Viết function tính tổng số mã khuyến mãi của 1 khách hàng
drop function if exists TONGSOKHUYENMAI; 
DELIMITER $$ 
CREATE FUNCTION TONGSOKHUYENMAI(ID_khachhang INT) RETURNS INT deterministic
BEGIN
-- B1: Kiểm tra có phải là khách hàng không
-- Return -1: Tài khoản không tồn tại
-- Return -2: Không phải là tài khoản khách hàng
	DECLARE countKhachhang INT default 0;
    DECLARE countTaikhoan INT default 0;
	SET countKhachhang = (SELECT COUNT(IDtaikhoan) FROM khachhang WHERE ID_khachhang = IDtaikhoan);
    SET countTaikhoan = (SELECT COUNT(idtaikhoan) FROM taikhoan WHERE ID_khachhang = idtaikhoan);
	IF(countKhachhang = 0 and countTaikhoan = 0) THEN
		RETURN -1;
	ELSEIF(countKhachhang = 0) THEN
		RETURN -2;
    ELSE 
-- B3: Tính tổng số dòng trong bảng
		RETURN (
-- B2:  Kiểm tra tất cả các đơn hàng của khách hàng, gom lại thành 1 bảng
        SELECT COUNT(*)
        FROM (SELECT ID_nguoinhan, ID, ID_makhuyenmai
        FROM donhang, apdung_khuyenmai
        WHERE donhang.ID = apdung_khuyenmai.ID_donhang and ID_nguoinhan = 22) AS BANGKHUYENMAI );
	END IF;
END $$
DELIMITER ;

SELECT TONGSOKHUYENMAI(40);
