-- M��terilerin Do�um g�nlerini
-- resimdeki gibi haftan�n g�n� olarak 
-- getiren sorguyu yaz�n�z

set language Turkish
select NAMESURNAME, DATENAME(DW,BIRTHDATE) BIRTHDAY,
* from CUSTOMERS