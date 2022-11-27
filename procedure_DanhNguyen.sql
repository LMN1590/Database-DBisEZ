USE ass_db;
DELIMITER //
drop procedure if exists Hoadonthuocve;
create procedure Hoadonthuocve(
	id_khachhang int
)
begin
	-- Kiem tra xem ID ton tai chua
    declare countID int default 0;
    set countID = (select count(IDtaikhoan) from khachhang where IDtaikhoan = id_khachhang);
    if countID = 0 then
		SELECT CONCAT('Khách hàng với ID (',id_khachhang,') không tồn tại trong bảng dữ liệu.') AS 'RES';
	else
		select * from Hoadon inner join Donhang on Hoadon.ID_donhang = Donhang.ID
        where Donhang.ID_nguoinhan = id_khachhang order by Hoadon; 
	end if;
end //

DELIMITER ;

call Hoadonthuocve(22);

-- 2: Số lượng nguyên liệu của một món ăn -- 
