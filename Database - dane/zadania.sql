-- 2 --
SHOW TABLES;
-- 3 --
DESCRIBE adresy;
DESCRIBE firmy;
DESCRIBE pracownicy;
DESCRIBE pracownicy_adresy;
DESCRIBE stanowiska;
-- 4 --
SELECT * FROM pracownicy;
-- 5 --
SELECT * FROM firmy;
-- 6 --
SELECT imie, nazwisko FROM pracownicy;
-- 7 --
SELECT COUNT(id_pracownika) FROM pracownicy;
-- 8 --
 SELECT nazwa FROM firmy;
 -- 9 --
 SELECT DISTINCT nazwa FROM firmy;
-- 10 --
SELECT * FROM pracownicy WHERE telefon IS NULL;
-- 11 --
SELECT COUNT(id_pracownika) FROM pracownicy WHERE telefon IS NULL;
-- 12 --
SELECT * FROM pracownicy WHERE kolor_oczu = "blekitny";
-- 13--
SELECT DISTINCT kolor_oczu FROM pracownicy;
-- 14 --
SELECT * FROM pracownicy ORDER BY wynagrodzenie DESC LIMIT 1;
-- 15 --
SELECT * FROM pracownicy ORDER BY wynagrodzenie ASC LIMIT 1;
-- 16 --
SELECT * FROM pracownicy WHERE email LIKE "%gmail%";
-- 17 -- 
SELECT AVG(Wynagrodzenie) FROM pracownicy;
-- 18 --
SELECT MAX(Wynagrodzenie) FROM pracownicy;
-- 19 -- 
SELECT MIN(Wynagrodzenie) FROM pracownicy;
-- 20 --
SELECT AVG(Wynagrodzenie), MAX(Wynagrodzenie), MIN(Wynagrodzenie) FROM pracownicy;
-- 21 --
SELECT AVG(Wynagrodzenie) AVG, MAX(Wynagrodzenie) MAX , MIN(Wynagrodzenie) MIN FROM pracownicy;
-- 22 --
SELECT * FROM pracownicy WHERE wynagrodzenie >(SELECT AVG(wynagrodzenie) FROM pracownicy);
-- 23 --
-- SELECT * FROM pracownicy WHERE data_urodzin> -- 
SELECT datediff(now);
-- 24 --
SELECT * FROM pracownicy WHERE plec = "M";
-- 25 --
SELECT * FROM pracownicy WHERE plec = "K" AND  kolor_oczu = "zielony";