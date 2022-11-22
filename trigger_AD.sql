drop trigger if exists before_monan_insert;
drop trigger if exists before_monan_update;
drop trigger if exists after_monan_delete;

CREATE TABLE monan_log (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    IDmonan INT NOT NULL,
    ten VARCHAR(50) NOT NULL,
    mota VARCHAR(200) NOT NULL,
    IDnhahang INT NOT NULL,
    IDLoaimonan INT NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);

CREATE TRIGGER before_monan_insert
    BEFORE INSERT ON monan
    FOR EACH ROW 
 INSERT INTO monan_log
 SET action = 'add',
	IDmonan = NEW.IDMonAn,
	ten = NEW.TenMonAn,
	mota = NEW.MoTa,
	IDnhahang = NEW.IDNhaHang,
	IDLoaimonan = NEW.IDLoaiMonAn,
	changedat = NOW();

CREATE TRIGGER before_monan_update
    BEFORE UPDATE ON monan
    FOR EACH ROW 
 INSERT INTO monan_log
 SET action = 'update',
	IDmonan = NEW.IDMonAn,
	ten = NEW.TenMonAn,
	mota = NEW.MoTa,
	IDnhahang = NEW.IDNhaHang,
	IDLoaimonan = NEW.IDLoaiMonAn,
	changedat = NOW();

CREATE TRIGGER after_monan_delete
    AFTER DELETE ON monan
    FOR EACH ROW 
 INSERT INTO monan_log
 SET action = 'remove',
	IDmonan = OLD.IDMonAn,
	ten = OLD.TenMonAn,
	mota = OLD.MoTa,
	IDnhahang = OLD.IDNhaHang,
	IDLoaimonan = OLD.IDLoaiMonAn,
	changedat = NOW();
