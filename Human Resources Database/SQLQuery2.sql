-- �irketimizde halen �al��maya devam eden 
-- �al��anlar�n listesini getiren sorgu hangisidir ?
-- Not : ��ten ��k�� tarihi bo� olanlar �al��maya devam
-- eden �al��anlard�r

USE HR
SELECT * FROM PERSON
WHERE OUTDATE IS NULL
