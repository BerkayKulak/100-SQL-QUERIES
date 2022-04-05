-- Müþterilerin Doðum günlerini
-- resimdeki gibi haftanýn günü olarak 
-- getiren sorguyu yazýnýz

set language Turkish
select NAMESURNAME, DATENAME(DW,BIRTHDATE) BIRTHDAY,
* from CUSTOMERS