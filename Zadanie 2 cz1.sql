-- zadanie 2 pkt 1
CREATE DATABASE literatura;
-- pkt 2
USE literatura;
CREATE TABLE Biblioteczka(
id INTEGER UNIQUE NOT NULL,
tytul TEXT,
data_zakupu DATE);
select * from Biblioteczka;
INSERT INTO Biblioteczka (
id,
tytul,
data_zakupu)
VALUES (
1,
"Kubus Puchatek",
"2010-05-20"
);
SELECT * FROM Biblioteczka