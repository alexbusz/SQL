CREATE DATABASE aggregates;
Use aggregates;

CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY NOT NULL,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INTEGER,
  price DOUBLE,
  start_date DATE,
  gift TEXT);
  
  select * from aggregates.batman;
  
INSERT INTO aggregates.batman 
VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' ),
(2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer'),
(3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty'),
(4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'pilka'), 
(5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' ),
(6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' ),
(7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi'),
(8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona'),
(9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');
select * from aggregates.batman;

 -- a. Policz, ile jest rekordów w tabeli (po id)
Select count(id) from aggregates.batman;

-- b. Policz, ile jest rekordów z wiekiem
Select count(age) from aggregates.batman;

-- c. Ilu mężczyzn ma więcej niż 40 lat
Select count(*) from aggregates.batman
where sex = 'M' and age > 40;

-- d. Oblicz sumę wszystkich cen
select sum(price) 
from  aggregates.batman;

-- e. Oblicz łączny wiek kobiet
Select sum(age) 
from  aggregates.batman
where sex = 'F';

-- f. Podaj łączną wartość komputera i okna
select sum(price)
from  aggregates.batman
where gift = 'komputer' or gift = 'okno';

-- g. Podaj maksymalną cenę
select max(price)
from  aggregates.batman;

-- h. Podaj najpóźniejszą datę
Select start_date
from  aggregates.batman
order by start_date desc
Limit 1;

-- i. Podaj nazwisko rozpoczynające się literą, która jest najbliżej końca alfabetu
Select max(last_name)
from  aggregates.batman;

 -- j. Podaj minimalną cenę
select min(price)
from  aggregates.batman;

-- k. Podaj najwcześniejszą datę 
Select min(start_date)
from  aggregates.batman;

-- l. Podaj nazwisko rozpoczynające się literą, która jest najbliżej początku alfabetu
Select min(last_name)
from  aggregates.batman;

-- m. Jednocześnie podaj cenę minimalną oraz maksymalną. Nadaj odpowiednie aliasy
Select min(price) as 'cena minimalna', max(price) 'cena maxymalna'
from  aggregates.batman;

-- n. Oblicz różnicę pomiędzy ceną maksymalną, a minimalną
Select min(price), max(price), max(price) - min(price) as DIFF
from  aggregates.batman;

-- o. Oblicz średnią wieku
Select avg(age)
from  aggregates.batman;

-- p. Oblicz średnią wieku za pomocą COUNT oraz SUM
Select sum(age) / count(age)
from  aggregates.batman;

-- q. Oblicz średni wiek dla kobiet oraz średni wiek dla mężczyzn
Select sex, avg(age)
from  aggregates.batman
group by sex;
