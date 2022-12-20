-- pkt. 1. 
create database lista_pracownikow;
use lista_pracownikow;

-- pkt 2. 
create table pracownicy (
id INTEGER UNIQUE NOT NULL,
imie TEXT,
nazwisko TEXT,
stanowisko TEXT,
dzial TEXT);

-- pkt. 3
insert into pracownicy (id, imie, nazwisko, stanowisko, dzial)
values
(1, "Wojciech", "Koszyna", "Kelner", "Gastronomia");
insert into pracownicy
values
(2, "Lucyna", "Szarek", "Recepcjonistka", "Recepcja"),
(3, "Bozena", "Dykiel", "Kierownik Gastronomii", "Gastronomia"),
(4, "Wojciech", "Kopacki", "Masazysta", "Wellness");

-- pkt. 4
select*from pracownicy;

-- pkt. 5
alter table pracownicy add data_zatrudnienia DATE;

-- pkt. 6
insert into pracownicy 
values (
5, "Renata", "Bafia", "Specjalista ds marketingu", "Marketing", "2020-02-20");
select*from pracownicy;

-- pkt. 7
select * from pracownicy;

-- pkt. 8
update pracownicy set data_zatrudnienia="2015-10-10" where id=1;
update pracownicy set data_zatrudnienia="2016-05-20" where id=2;
update pracownicy set data_zatrudnienia="2017-08-15" where id=3;
update pracownicy set data_zatrudnienia="2018-10-10" where id=4;

-- pkt. 8
select data_zatrudnienia from pracownicy;

