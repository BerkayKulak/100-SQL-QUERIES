-- HANG� �EH�RDE KA� ERKEK, KA� KADIN
-- M��TER�M�Z�N OLDU�U B�LG�S�N� �EK�LDEK�
-- G�B� GET�REN SORGUYU YAZINIZ

SELECT CITY AS SEHIRADI, 
(SELECT COUNT(*) FROM CUSTOMERS WHERE CITYID = C.ID) AS MUSTERISAYISI,
(SELECT COUNT(*) FROM CUSTOMERS WHERE CITYID = C.ID AND GENDER ='E') AS ERKEKSAY�S�,
(SELECT COUNT(*) FROM CUSTOMERS WHERE CITYID = C.ID AND GENDER ='K') AS KAD�NSAY�S�
FROM CITIES C