-- root 로 접속한 화면(2023-07-21)
CREATE DATABASE bookDB;
use bookDB;
DROP TABLE tbl_books;
CREATE TABLE tbl_books (
	B_CODE	VARCHAR(6)		PRIMARY KEY,
	B_NAME	VARCHAR(125)	NOT NULL,	
	B_AUTHOR	VARCHAR(125)	NOT NULL,	
	B_COMP	VARCHAR(125),		
	B_YEAR	INT	NOT NULL,	
	B_IPRICE	INT,		
	B_OPRICE	INT	NOT NULL	
);

INSERT INTO tbl_books (
B_CODE,
B_NAME,
B_AUTHOR,
B_COMP,
B_YEAR,
B_IPRICE,
B_RPRICE)
VALUES("B00003", "어린왕자", "모름", "빛나라출판사", 1500, 10000, 1000);

SELECT * FROM tbl_books;
alter table tbl_books modify B_RPRICE int not null; 
ALTER TABLE tbl_books CHANGE B_OPRICE B_RPRICE INT;

DESC tbl_books;
SELECT * FROM tbl_books;
CREATE TABLE tbl_users (
	U_CODE	BIGINT		PRIMARY KEY AUTO_INCREMENT,
	U_NAME	VARCHAR(125)	NOT NULL,	
	U_TEL	VARCHAR(125),		
	U_ADDR	VARCHAR(125),
    U_ID VARCHAR(30),
	PASSWORD VARCHAR(50)
);

INSERT INTO tbl_users (
U_NAME,
U_TEL,
U_ADDR,
U_ID,
PASSWORD )
VALUES ( "홍길동", "010-1111-1111", "서울특별시", "addong1", "1234");
SELECT * FROM tbl_users;	
alter table tbl_users ADD u_id VARCHAR(30) NOT NULL;
ALTER TABLE tbl_users CHANGE u_id U_ID VARCHAR(30);
ALTER TABLE tbl_users
MODIFY COLUMN U_CODE BIGINT AUTO_INCREMENT;
ALTER TABLE tbl_rent_book DROP FOREIGN KEY FK_USERS;
alter table tbl_users ADD PASSWORD VARCHAR(50) NOT NULL;
desc tbl_users;
CREATE TABLE tbl_rent_book (
	RENT_SEQ	BIGINT		PRIMARY KEY	AUTO_INCREMENT,
	RENT_DATE	VARCHAR(30)	NOT NULL,		
	RENT_RETURN_DATE	VARCHAR(10)	NOT NULL,		
	RENT_BCODE	VARCHAR(6)	NOT NULL,		
	RENT_UCODE	BIGINT	NOT NULL,		
	RENT_RETURN_YN	VARCHAR(1),			
	RENT_POINT	INT			
);

INSERT INTO tbl_rent_book (RENT_DATE,
RENT_RETURN_DATE,
RENT_BCODE,
RENT_UCODE,
RENT_RETURN_YN,
RENT_POINT)
VALUES("2023-07-21","2023-07-28","B00003",3,"N",10);
DROP TABLE tbl_rent_book;
DESC tbl_rent_book;
SELECT * FROM tbl_rent_book;
SHOW TABLES;
ALTER TABLE tbl_rent_book
ADD CONSTRAINT FK_BOOKS
FOREIGN KEY (RENT_BCODE)
REFERENCES tbl_books ( b_code);

ALTER TABLE tbl_rent_book
ADD CONSTRAINT FK_USERS
FOREIGN KEY (RENT_UCODE)
REFERENCES tbl_users (u_code);

DESC tbl_rent_book;

drop table tbl_users;

