use pracownicy;
create table Pracownicy (
ID TEXT,
Imie TEXT,
Nazwisko TEXT,
Wiek INT,
Kurs TEXT);
select*from pracownicy;

-- 4. Wyświetl listę pracowników o Imieniu: Anna
select*from pracownicy where imie='anna';

-- 5. Wyświetl listę pracowników z brakującą daną w kolumnie Imię
select * from pracownicy where imie=null;
-- 6. Wyświetl kursy prowadzone przez pracowników w wieku od 30 lat do 40 lat
select * from pracownicy where wiek between 30 and 40;

-- 7. Wyświetl wiek pracowników z ID od 1 do 7;
8. Wyświetl listę pracowników z brakującymi danymi w kolumnie wiek;

-- 9. Zmień nazwę kolumny „Kurs” na „Szkolenie”
select 'Kurs' as 'szkolenie';
select*from pracownicy;