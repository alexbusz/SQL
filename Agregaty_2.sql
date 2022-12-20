CREATE DATABASE aggregates;
use  aggregates;
drop table aggregates.batman;
CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY NOT NULL,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INT,
  price DOUBLE,
  start_date DATE,
  gift TEXT
);
INSERT INTO aggregates.batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' ),
(2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer'),
(3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty'),
(4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'pilka'),
(5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' ),
(6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' ),
(7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi'),
(8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona'),
(9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');
select * from aggregates.batman;

-- a. Wyświetl imię i nazwisko w jednej kolumnie. Kolumnie nadaj alias „Pracownik”
Select Concat(first_name, ' ',last_name) as 'pracownik' 
from aggregates.batman;

-- b. Złącz kolumny gift i price tak, aby powstał napis: „rower – cena: ”. Kolumnie nadaj alias: cennik.
Select concat(gift, ' ', price) as cennik
from aggregates.batman;

-- c. Ponownie wykonaj zadanie 2b – doklej imię i nazwisko pracownika
Select Concat(first_name, ' ',last_name, ' ', gift, ' ', price) as 'pracownik z prezentem'
from aggregates.batman;

-- d. Wyświetl prezenty. Ich nazwy mają być wyświetlane wielkimi literami
Select upper(gift)
from aggregates.batman;

-- e. Wyświetl imiona. Mają być wyświetlane małymi literami
Select lower(first_name)
from aggregates.batman;

-- f. Wyświetl nazwiska oraz dodatkową kolumnę „długość” zawierającą informację o liczbie liter w nazwisku
Select last_name, length(last_name) as długość
from aggregates.batman;

-- g. Wyświetl pierwsze 3 litery imion
Select first_name, substring(first_name, 1, 3) as 'xxx' 
from aggregates.batman;

-- h. Wyświetl imię, nazwisko i login użytkownika w formacie: mała litera imienia + 3 pierwsze, małe litery nazwiska
Select first_name, last_name, concat( lower(substring(first_name, 1, 1)), lower(substring(last_name, 1, 3 ))) as login
from aggregates.batman;
