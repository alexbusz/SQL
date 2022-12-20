-- 1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
create database pracownicy;
use pracownicy;

-- 2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS
create table Pracownicy (
ID TEXT,
Imie TEXT,
Nazwisko TEXT,
Wiek INT,
Kurs TEXT);
select * from pracownicy;
-- 3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj

-- 4. Wyświetl listę pracowników o Nazwisku: KOWALCZYK
select * from pracownicy where nazwisko='kowalczyk';

-- 5. Wyświetl listę pracowników w wieku od 30 lat do 40 lat
select * from pracownicy where wiek between 30 and 40;

-- 6. Wyświetl listę pracowników, których nazwisko nie zawiera „and”.
;
-- 7. Wyświetl listę pracowników z ID od 1 do 7.
-- 8. Wyświetl listę pracowników z brakującymi danymi.
-- 9. Wyświetl wszystkich pracowników, którzy nie prowadzą żadnego kursu;
select * from pracownicy where kurs='null';
select * from pracownicy;