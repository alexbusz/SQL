-- pkt. 1
CREATE DATABASE pracownicy;
use pracownicy;

-- pkt. 2
create table Pracownicy (
ID TEXT,
Imie TEXT,
Nazwisko TEXT,
Wiek INT,
Kurs TEXT);

-- pkt. 3
insert into Pracownicy 
values
(1, 'Anna', 'NOWAK',	34,	'DS'),
(2,	'Roman', 'KOWALSKI',	42,	'DS'),
(3,	'Tomasz',	'WIŚNIEWSKI',	33,	'DS'),
(4,	'Agata', 'WÓJCIK',	43,	'DS'),
(5,	'Elżbieta', 'KOWALCZYK',	28,	'Java'),
(6,	'Przemysław', NULL,	34,	'Java'),
(7,	'Robert', NULL,	35,	'Java'),
(8,	'Radosław', 'ZIELIŃSKI',	38,	'Java'),
(9,	NULL, 'WOŹNIAK',	26,	'Java'),
(10, 'Robert', 'SZYMAŃSKI',	34,	'Java'),
(11, 'Radosław', 'DĄBROWSKI',	35,	NULL),
(12, 'Robert', 'KOZŁOWSKI',	NULL,	'UX'),
(13, 'Joanna',	'MAZUR',	26,	'UX'),
(14, 'Radosław',	'JANKOWSKI',	27,	'UX'),
(15, 'Patryk',	'LEWANDOWSKI',	28,	'Tester'),
(16, NULL,	'ZIELIŃSKI',	28,	'Tester'),
(17, 'Andrzej',	'WOŹNIAK',	31,	'Tester'),
(18, 'Andrzej',	'LEWANDOWSKI',	30,	'Tester'),
(19, 'Roman', NULL,	39,	'Tester'),
(20, 'Ewa',	'WOŹNIAK',	31,	'Tester');
 
-- 4. Wyświetl listę pracowników w wieku 28 lat.
select * from pracownicy where wiek = '28';

-- 5. Wyświetl listę pracowników w wieku 30 lat i młodszych.
select * from pracownicy where wiek <='30';

-- 6. Wyświetl listę pracowników, których nazwisko zawiera „ski”
select * from pracownicy where nazwisko like '%ski%';

-- 7. Wyświetl listę pracowników z ID: 1,4,7,18,20
select*from pracownicy where id=1 and id=4 and id=7;

-- 8. Wyświetl listę pracowników z wprowadzonymi kompletnymi danymi
select * from pracownicy where ID, Imie, Nazwisko, Wiek, Kurs <>'null';

-- 9. Wyświetl wszystkich pracowników, którzy nie prowadzą kursu DS
select * from pracownicy where kurs <>'DS';