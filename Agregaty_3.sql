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
select * from aggregates.batman;

-- a. Rozłóż datę pokazaną w kolumnie start_date na trzy kolumny: rok, miesiąc, dzień
Select year(start_date), month(start_date), day(start_date) 
from aggregates.batman;

-- b. Wyświetl kolumnę start_date oraz kolumnę final_date, która wyświetli datę o 3 dni późniejszą, niż data w start_date.
Select date_add(start_date, interval 3 day)
from aggregates.batman;

Select adddate(start_date,3)
from aggregates.batman;

-- c. Wyświetl dzisiejszą datę
Select current_timestamp as Today 
from aggregates.batman
limit 1;

-- d. Wyświetl nazwę obecnego miesiąca.
select monthname(current_timestamp) as 'Biezący miesiąc'
from aggregates.batman
Limit 1;

-- e. Wyświetl start_date, a następnie kolumny określające: numer tygodnia, nazwę miesiąca, kwartał, numer dnia w roku.
Select start_date, week(start_date), monthname(start_date), quarter(start_date), day(start_date)
from aggregates.batman;
