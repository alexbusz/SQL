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
(4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'),
(5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' ),
(6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' ),
(7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi'),
(8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona'),
(9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');
Select * from aggregates.batman;

-- a. Podaj średnią wieku. Podaj zaokrąglony wynik do dwóch miejsc po przecinku
Select  Avg(age) as 'AVERAGE AGE', round(avg(age), 2) as 'ROUND AVERAGE AGE'
from aggregates.batman;

-- b. Wyświetl wartość bezwzględną liczby -3
Select abs(-3);

-- c. Wyświetl wynik mnożenie 2 * 3
Select 2 * 3 as 'mnozenie';

-- d. Wyświetl wynik dzielenia 6 przez 2
Select round(6/2, 0) as 'dzielenie';
