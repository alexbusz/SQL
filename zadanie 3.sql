-- pkt. 1
create database school_coding;
use school_coding;

-- pkt.2
create table mentors(
id INTEGER UNIQUE NOT NULL,
imie TEXT,
nazwisko TEXT,
specjalizacja TEXT,
data_zatrudnienia DATE,
data_zwolnienia DATE);

-- pkt. 3
insert into mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia, data_zwolnienia)
values
(1, "Dorota", "Kowalska", "DS", "2010-01-01", "2020-01-01");
insert into mentors values (2, "Krzysztof", "Zborowski", "DS", "2010-02-01", "2020-02-01");
select * from mentors;
insert into mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia, data_zwolnienia)
values (3, "Dariusz", "Nadal", "Java", "2010-03-01", "2020-03-01");
insert into mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia, data_zwolnienia)
values
(4, "Monika", "Kolisz", "Java", "2010-04-01", "2020-04-01"),
(5, "Pawel", "Koryto", "DS", "2010-05-01", "2020-05-01"),
(6, "Piotr", "Wysocki", "Java", "2010-06-01", "2020-06-01");
insert into mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia, data_zwolnienia)
values
(7, "Anna", "Jakubiec", "Tester", "2010-07-01", "2020-07-01"),
(8, "Zofia", "Golisz", "UX", "2010-08-01", "2020-08-01"),
(9, "Tomasz", "Sass", "UX", "2010-09-01", "2020-09-01"),
(10, "Karol", "Wysocki", "DS", "2010-10-01", "2020-10-01");

-- pkt. 4
select * from mentors;

-- pkt. 5
update mentors set nazwisko="Rzeka" where id=5;

-- pkt. 6
select nazwisko from mentors where id=5;

-- pkt. 7
update mentors set specjalizacja="DS" where id=9;

-- pkt. 8
select specjalizacja from mentors where id=9;

-- pkt. 9
alter table mentors add wynagrodzenie INTEGER NOT NULL;

-- pkt. 10
update mentors set wynagrodzenie="1000" where id=1;
update mentors set wynagrodzenie="1000" where id=2;
update mentors set wynagrodzenie="1000" where id=3;

-- pkt. 11
select wynagrodzenie from mentors where id=1;
select*from mentors


