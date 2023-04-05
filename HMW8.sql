--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), 
--name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CRETAE TABLE employee(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    email VARCHAR(50)
);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into MOCK_DATA (name, birthday, email) values ('Nikita Trevan', '1981-02-20', 'ntrevant@canalblog.com');
insert into MOCK_DATA (name, birthday, email) values ('Jacquenette Sawrey', '1972-09-25', 'jsawreyu@123-reg.co.uk');
insert into MOCK_DATA (name, birthday, email) values ('Bridie Skells', '1942-11-24', 'bskellsv@google.com.hk');
insert into MOCK_DATA (name, birthday, email) values ('Jaine Holde', '1972-07-26', 'jholdew@uol.com.br');
insert into MOCK_DATA (name, birthday, email) values ('Morey Lamputt', '1975-09-22', 'mlamputtx@wufoo.com');
insert into MOCK_DATA (name, birthday, email) values ('Regan Deluze', '1931-02-14', 'rdeluzey@tinyurl.com');
insert into MOCK_DATA (name, birthday, email) values ('Laverna Gisburne', '1916-02-09', 'lgisburnez@woothemes.com');
insert into MOCK_DATA (name, birthday, email) values ('Darrell Bliss', '1996-08-24', 'dbliss10@symantec.com');
insert into MOCK_DATA (name, birthday, email) values ('Kial Miguel', '1944-09-20', 'kmiguel11@si.edu');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'Eren Bilgen'
WHERE email ='cjewelll@home.pl'
RETURNING*;

UPDATE employee
SET email = 'erenbilgenn@gmail.com'
WHERE id = 4
RETURNING*;

UPDATE employee
SET birtday = '1975-03-10'
WHERE name = 'Leshia'
RETURNING*;

UPDATE employee
SET name= 'Ali'
WHERE name LIKE 'Z%'
RETURNING*;

UPDATE employee
SET name= 'Mehmet'
WHERE name LIKE 'O%'
RETURNING*;

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE name ='Naomi Laville'
RETURNING*;

DELETE FROM employee
WHERE id=33
RETURNING*;

DELETE FROM employee
WHERE email = 'lcreighton2i@cocolog-nifty.com'
RETURNING*;

DELETE FROM employee
WHERE id=44
RETURNING*;

DELETE FROM employee
WHERE birtday ='1996-05-31'
RETURNING*;
