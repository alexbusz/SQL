-- 1. Stwórz Bazę „Sklep odzieżowy”
create database Sklep_odziezowy;
use sklep_odziezowy;

/*2. Utwórz tabelę „Producenci” z kolumnami:

id producenta
nazwa producenta
adres producenta
nip producenta
data podpisania umowy z producentem
Do każdej kolumny ustaw odpowiedni „constraint”*/

create table Producenci (
ID_producenta INTEGER primary key NOT NULL,
Nazwa_producenta TEXT,
Adres_producenta TEXT,
NIP_producenta INTEGER,
Data_podpisania_umowy_z_producentem DATE);

create table Produkty (
ID_produktu INTEGER unique NOT NULL,
ID_producenta INTEGER,
Nazwa_produktu TEXT,
Opis_produktu TEXT,
Cena_netto_zakupu decimal(6,2),
Cena_brutto_zakupu decimal(6,2),
Cena_netto_sprzedazy decimal(6,2),
Cena_brutto_sprzedazy decimal(6,2),
Procent_VAT_sprzedazy INTEGER);

create table Zamowienia (
ID_zamowienia int primary key,
ID_klienta int,
ID_produktu int,
Data_zamowienia date);

create table Klienci (
ID_klienta int primary key,
ID_zamowienia int,
Imie text,
Nazwisko text,
Adres text);

/* zad. 6
Połącz tabele ze sobą za pomocą kluczy obcych:

Produkty – Producenci
Zamówienia – Produkty
Zamówienia - Klienci*/

alter table produkty
add constraint FK_produktproducent
foreign key (id_produktu)
references Producenci(id_producenta);

Alter table zamowienia 
add constraint FK_zamowienieprodukt 
foreign key (id_produktu) 
references produkty (id_produktu);

ALTER TABLE zamowienia
DROP FOREIGN KEY fk_zamowienieklient;

Alter table zamowienia 
add constraint fk_zamowienieklient 
foreign key (id_produktu) 
references klienci (id_klienta); 


/*7. Każdą tabelę uzupełnij danymi wg:

Tabela „Producenci” – 4 pozycje
Tabela „Produkty” – 20 pozycji
Tabela „Zamówienia” – 10 pozycji
Tabela „Klienci” – 10 pozycji*/

insert into producenci values 
(1, 'Levis', 'Katowice ul. Konopki 1', 57857834, '2010-09-01');
insert into producenci values 
(2, 'Big Star', 'Warszawa ul. Barlickiego 7', 43545352, '2012-07-01'),
(3, 'Wolczanka', 'Poznan ul. Batorego 4', 64382812, '2015-11-01'),
(4, 'Calvin Klein', 'Krakow ul. Witkacego 25', 74535032, '2012-07-01');
insert into Produkty values
(1, 2, 'jeansy', 'slim fit', '100', '100', '120', '120', 23);
insert into produkty values
(2, 3, 'koszula', 'slim fit', '120', '147', '140', '172', 23);
insert into produkty values
(3, 5, 'bluza', 'z guzikami', '250', '307', '310', '381', 23),
(4, 4, 't-shirt', 'medium', '30', '36', '40', '49', 23),
(5, 2, 'buty', 'sportowe', '140', '172', '180', '221', 23),
(6, 1, 'klapki', 'japonki', '25', '30', '31', '38', 23),
(7, 4, 'jeansy', 'regular', '240', '295', '300', '369', 23),
(8, 3, 'koszula', 'stojka', '135', '166', '170', '210', 23),
(9, 1, 'jeansy', 'czarne', '190', '233', '240', '295', 23),
(10, 5, 'jeansy', 'slim fit', '155', '191', '195', '240', 23),
(11, 2, 't-shirt', 'gladki', '60', '73', '75', '92', 23);
insert into produkty values
(12, 5, 'bluza', 'oversiza', '250', '307', '310', '381', 23),
(13, 1, 't-shirt', 'gladki', '30', '36', '40', '49', 23),
(14, 2, 'buty', 'sportowe', '140', '172', '180', '221', 23),
(15, 1, 'klapki', 'japonki', '25', '30', '31', '38', 23),
(16, 4, 'jeansy', 'fit', '240', '295', '300', '369', 23),
(17, 1, 'koszula', 'slim', '135', '166', '170', '210', 23),
(18, 1, 'jeansy', 'czarne', '190', '233', '240', '295', 23),
(19, 5, 'jeansy', 'slim fit', '155', '191', '195', '240', 23),
(20, 1, 't-shirt', 'gladki', '60', '73', '75', '92', 23);

insert into zamowienia values
(1, 3, 2, '2022-08-05');
insert into zamowienia values
(2, 6, 9, '2022-08-06'),
(3, 2, 2, '2022-08-23'),
(4, 3, 6, '2022-08-12'),
(5, 6, 3, '2022-09-27'),
(6, 9, 9, '2022-08-20'),
(7, 1, 4, '2022-08-28'),
(8, 6, 2, '2022-10-04'),
(9, 4, 3, '2022-11-17'),
(10, 7, 1, '2022-12-03');

insert into Klienci values
(1, 6, 'Radoslaw', 'Sikorski', 'Katowice, ul. Wyzwolenia 5');
insert into Klienci values
(2, 6, 'Dominika', 'Golisz', 'Krakow, ul. Komorowicka 80'),
(3, 6, 'Wojciech', 'Koronny', 'Pszczyna, ul. Domagaly 2'),
(4, 6, 'Klaudia', 'Barabasz', 'Tychy, ul. Katowicka 180'),
(5, 6, 'Joanna', 'Sytrzelec', 'Bielsko-Biala, ul. Piastowska 53'),
(6, 6, 'Agnieszka', 'Byrdy', 'Katowice, ul. Glowna 4'),
(7, 6, 'Damian', 'Porebski', 'Rybnik, ul. Slaska 28'),
(8, 6, 'Dominik', 'Kozdon', 'Sosnowiec, ul. 3 Maja 27'),
(9, 6, 'Karolina', 'Hamerlak', 'Bytom, ul. Goscinna 1'),
(10, 6, 'Anna', 'Jakubiec', 'Cieszyn, ul. Graniczna 85');

/* zad. 8. 
Wyświetl wszystkie produkty z wszystkimi danymi od producenta który znajduje się na pozycji 1
 w tabeli „Producenci”*/
select * 
from produkty join producenci
on produkty.id_producenta = producenci.id_producenta
where producenci.id_producenta='1';

-- zad. 9. Posortuj te produkty alfabetycznie po nazwie
select * 
from produkty join producenci
on produkty.id_producenta = producenci.id_producenta
where producenci.id_producenta='1' order by nazwa_produktu;

-- 10. Wylicz średnią cenę za produktu od producenta z pozycji 1
select avg(cena_brutto_sprzedazy) from produkty where id_producenta=1;

/*11. Wyświetl dwie grupy produktów tego producenta:
Połowa najtańszych to grupa: „Tanie”
Pozostałe to grupa: „Drogie”*/
select cena_brutto_sprzedazy,
case  when cena_brutto_sprzedazy <= 166 then 'tanie'
when cena_brutto_sprzedazy > 166 then 'drogie'
end
from produkty;
select*from produkty;

-- 12. Wyświetl produkty zamówione, wyświetlając tylko ich nazwę
select nazwa_produktu
from zamowienia  join produkty
on zamowienia.id_zamowienia = produkty.id_producenta;

-- 13. Wyświetl wszystkie produkty zamówione – ograniczając wyświetlanie do 5 pozycji
select *
from zamowienia  join produkty
on zamowienia.id_zamowienia = produkty.id_producenta
limit 5;

-- 14. Policz łączną wartość wszystkich zamówień
select sum(cena_brutto_sprzedazy)
from zamowienia join produkty
on zamowienia.id_zamowienia = produkty.id_producenta;

-- 15. Wyświetl wszystkie zamówienia wraz z nazwą produktu sortując je wg daty od najstarszego do najnowszego
select id_zamowienia, nazwa_produktu, data_zamowienia
from zamowienia join produkty
on zamowienia.id_zamowienia = produkty.id_producenta
order by data_zamowienia;

-- 16. Sprawdź czy w tabeli produkty masz uzupełnione wszystkie dane – wyświetl pozycje dla których brakuje danych
select * from produkty where id_produktu is null or id_producenta is null or nazwa_produktu is null or opis_produktu is null;


-- 17. Wyświetl produkt najczęściej sprzedawany wraz z jego ceną
select id_produktu, count(*) as liczba_zamowien 
from zamowienia group by id_produktu order by liczba_zamowien desc limit 1;


-- 18. Znajdź dzień w którym najwięcej zostało złożonych zamówień
select data_zamowienia, count(*) as liczba_zamowien from zamowienia 
group by id_produktu order by liczba_zamowien desc limit 1;


