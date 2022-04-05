-- CUSTOMERS TABLOSUNA EKLED���N�Z AGEGROUP ALANINI
-- 20-35 YA� ARASI, 35-45 YA� ARASI, 46,55 YA� ARASI
-- 55-65 YA� ARASI VE 65 YA� �ST� OLARAK G�NCELLEY�N


UPDATE CUSTOMERS SET AGEGROUP = '20-35 YA�' WHERE DATEDIFF (YEAR,BIRTHDATE,GETDATE()) BETWEEN 20 AND 35
UPDATE CUSTOMERS SET AGEGROUP = '36-45 YA�' WHERE DATEDIFF (YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 45
UPDATE CUSTOMERS SET AGEGROUP = '46-55 YA�' WHERE DATEDIFF (YEAR,BIRTHDATE,GETDATE()) BETWEEN 46 AND 55
UPDATE CUSTOMERS SET AGEGROUP = '56-65 YA�' WHERE DATEDIFF (YEAR,BIRTHDATE,GETDATE()) BETWEEN 56 AND 65
UPDATE CUSTOMERS SET AGEGROUP = '65 YA� �ST�' WHERE DATEDIFF (YEAR,BIRTHDATE,GETDATE()) > 65