-- pkt. 1
create database literatura;
use literatura;

-- pkt. 2
create table biblioteczka (
id INTEGER UNIQUE NOT NULL,
tytul TEXT,
data_zakupu DATE);

-- pkt. 3
insert into biblioteczka (id, tytul, data_zakupu)
values (
1, "Kubus Puchatek", "2010-05-20");

-- pkt. 4
select * from biblioteczka;

-- pkt. 5
insert into biblioteczka values 
(2, "Maly Ksiaze", "2015-04-10"),
(3, "Sto lat samotnosci", "2018-07-01");
select * from biblioteczka;

-- pkt. 6
update biblioteczka set tytul="Mein Kampf" where id=1;
update biblioteczka set data_zakupu="2014-02-01" where id=1;
select*from biblioteczka;

-- pkt. 7
alter table biblioteczka add Autor TEXT;
select*from biblioteczka;

-- pkt.8
update biblioteczka set Autor="Adolf Hitler" where id=1;
update biblioteczka set Autor="Antoine de Saint-Exupery" where id=2;
update biblioteczka set Autor="Gabriel Garcia Marquez" where id=3;

-- pkt. 9
delete from biblioteczka where id=1;
delete from biblioteczka where id=2;

-- pkt. 10
select Autor from biblioteczka;
