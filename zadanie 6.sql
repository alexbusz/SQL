-- pkt. 1
create database moje_zainteresowania;
use moje_zainteresowania;

-- pkt. 2
create table zainteresowania (
id INT UNIQUE NOT NULL,
nazwa TEXT,
opis TEXT,
data_realizacji DATE);

-- pkt. 3
insert into zainteresowania (id, nazwa, opis) values (
1, "ksiazki", "zakup nowosci z listy Empik");
insert into zainteresowania (id, nazwa, opis) values (
2, "muzyka", "zakup plyt z listy Dobra nuta"),
(3, "robotki reczne", "robienie na drutach ubranek dla zwierzat"),
(4, "ekologia", "sprzatanie parkow w ramach wolnotariatu"),
(5, "akwarystyka", "hodowla rybek w domu");

-- pkt. 4
select * from zainteresowania;

-- pkt. 5
insert into zainteresowania (id, nazwa, opis, data_realizacji) values (
6, "bieganie", "codzienne poranne bieganie", "2022-08-22");

-- pkt. 6
update zainteresowania set data_realizacji = "2022-08-15" where id=4;

-- pkt. 7
select * from zainteresowania;

-- pkt. 8
delete from zainteresowania where id=1;
delete from zainteresowania where id=2;
delete from zainteresowania where id=3;
delete from zainteresowania where id=5;

-- pkt. 9
select * from zainteresowania;
