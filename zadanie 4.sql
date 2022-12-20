-- pkt. 1
create database lista_prezentow;
use lista_prezentow;

-- pkt. 2
create table prezenty (
id INT UNIQUE NOT NULL,
imie_obdarowanego TEXT,
pomysl_na_prezent TEXT,
cena INT NOT NULL,
miejsce_zakupu TEXT);

-- pkt. 3
insert into prezenty  values 
(1, "Kamil", "plyta CD", 60, "Allegro");
insert into prezenty  values 
(2, "Dorota", "ksiazka", 90, "Empik");
insert into prezenty  values 
(3, "Ania", "wino", 150, "Biedronka"),
(4, "Darek", "jeansy", 300, "Pepe Jeans Salon"),
(5, "Jola", "perfumy", 200, "Sephora");

-- pkt. 4
select * from prezenty;

-- pkt. 5
update prezenty set pomysl_na_prezent="rower" where id=3;

-- pkt. 6
select pomysl_na_prezent from prezenty where id=3;

-- pkt. 7
delete from prezenty where id=1;

-- pkt. 8
select*from prezenty;

-- pkt.9
alter table prezenty drop miejsce_zakupu;

-- pkt. 10
select imie_obdarowanego from prezenty where id=3;
select imie_obdarowanego from prezenty where id=4;
select imie_obdarowanego from prezenty where id=5;
