--CREATE DATABASE KutuphaneDB;
use KutuphaneDB
go

CREATE TABLE islem (
	islemno INT,
	ogrno INT,
	kitapno INT,
	alistarih DATE,
	iadetarih DATE
);

-- ��lem tablosuna veri ekleme
INSERT INTO islem (islemno, ogrno, kitapno, alistarih, iadetarih)
VALUES (1, 101, 201, '2023-06-01', '2023-06-10'),
       (2, 102, 202, '2023-06-02', '2023-06-12'),
       (3, 103, 203, '2023-06-03', '2023-06-13'),
       (4, 104, 204, '2023-06-04', '2023-06-14'),
       (5, 105, 205, '2023-06-05', '2023-06-15'),
       (6, 106, 206, '2023-06-06', '2023-06-16'),
       (7, 107, 207, '2023-06-07', '2023-06-17');

CREATE TABLE ogrenci (
	ogrno INT,
	ograd varchar(50),
	ogrsoyad varchar(50),
	cinsiyet varchar(50),
	degistirmetarih DATE,
	sinif varchar(50)
);

-- ��renci tablosuna veri ekleme
INSERT INTO ogrenci (ogrno, ograd, ogrsoyad, cinsiyet, degistirmetarih, sinif)
VALUES (101, 'Ahmet', 'Y�lmaz', 'Erkek', '2002-01-10', '12. S�n�f'),
       (102, 'Ay�e', 'Kaya', 'Kad�n', '2003-03-15', '11. S�n�f'),
       (103, 'Mehmet', 'Demir', 'Erkek', '2002-05-20', '12. S�n�f'),
       (104, 'Zeynep', 'Aksoy', 'Kad�n', '2003-07-25', '11. S�n�f'),
       (105, 'Emre', 'Y�ld�z', 'Erkek', '2002-09-30', '12. S�n�f'),
       (106, 'Selin', 'Arslan', 'Kad�n', '2003-11-05', '11. S�n�f'),
       (107, 'Murat', 'Kara', 'Erkek', '2002-12-10', '12. S�n�f');

CREATE TABLE kitap(
	kitapno INT,
	isbnno varchar(50),
	kitapadi varchar(50),
	yazarno INT,
	turno INT,
	sayfasayisi INT,
	puan INT
);

-- Kitap tablosuna veri ekleme
INSERT INTO kitap (kitapno, isbnno, kitapadi, yazarno, turno, sayfasayisi, puan)
VALUES (201, '9786052980001', 'K�rm�z� Pazartesi', 1, 1, 300, 8),
       (202, '9789750723843', '�stanbul Hat�ras�', 2, 2, 400, 9),
       (203, '9789753638013', 'Sineklerin Tanr�s�', 3, 1, 350, 7),
       (204, '9789750725236', 'K�rk Mantolu Madonna', 4, 2, 250, 8),
       (205, '9789753638044', '1984', 5, 1, 320, 9),
       (206, '9786053753468', 'Cing�z Recai', 6, 2, 280, 7),
       (207, '9789750738588', 'D�n���m', 7, 1, 200, 8);


CREATE TABLE yazar (
	yazarno INT,
	yazarad varchar(50),
	yazarsoyad varchar(50)
);

-- Yazar tablosuna veri ekleme
INSERT INTO yazar (yazarno, yazarad, yazarsoyad)
VALUES (1, 'Ahmet', '�mit'),
       (2, 'Orhan', 'Pamuk'),
       (3, 'William', 'Golding'),
       (4, 'Sabahattin', 'Ali'),
       (5, 'George', 'Orwell'),
       (6, 'Peyami', 'Safa'),
       (7, 'Franz', 'Kafka');

--select * from yazar

CREATE TABLE tur (
	turno INT,
	turadi varchar(50)
);

-- T�r tablosuna veri ekleme
INSERT INTO tur (turno, turadi)
VALUES (1, 'Roman'),
       (2, 'Matematik'),
       (3, 'Bilim Kurgu'),
       (4, 'Tarih'),
       (5, 'Psikoloji'),
       (6, 'polisiye'),
       (7, 'Klasik');

-- select * from tur