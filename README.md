# Database-DBisEZ
Our Database Assignment on Online Food Ordering

Import Data from CSV:
---
Database->Manage Connection->CLick vao mysql server-> Advanced -> them vao Other 
OPT_LOCAL_INFILE=1
---
SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE  
'd:/Baihoc/DataBaseSystem/BTL/A2/data/Data_taikhoan.csv' -- Thay bang dir tren PC
INTO TABLE taikhoan 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idtaikhoan, tendangnhap, matkhau, sdt, email);  -- cac cot trong table