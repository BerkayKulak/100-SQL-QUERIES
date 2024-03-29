-- CUSTOMERS TABLOSUNDA M��TER�N�N YA�INA G�RE HESAPLAYARAK �EK�LDEK� 
-- G�B� B�R SONU� GET�R�N�Z. NOT: AGEGROUP ALANI KULLANILMADAN 
-- SORGU GET�R�LECEKT�R

--SELECT
--CASE 
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 20 AND 35 THEN '20-35 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 45 THEN '36-45 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 46 AND 55 THEN '46-55 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 56 AND 65 THEN '56-65 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) > 65 THEN '65 YA� �ST�'
--END AGEGROUP,COUNT(*) AS CUSTOMERCOUNT
--FROM CUSTOMERS
--GROUP BY 
--CASE 
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 20 AND 35 THEN '20-35 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 45 THEN '36-45 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 46 AND 55 THEN '46-55 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 56 AND 65 THEN '56-65 YA� ARASI'
--	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) > 65 THEN '65 YA� �ST�'
--END 
--ORDER BY AGEGROUP

SELECT AGEGROUP2,COUNT(TMP.ID) AS CUSTOMERCOUNT FROM 
(
SELECT *,
CASE 
	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 20 AND 35 THEN '20-35 YA� ARASI'
	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 36 AND 45 THEN '36-45 YA� ARASI'
	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 46 AND 55 THEN '46-55 YA� ARASI'
	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 56 AND 65 THEN '56-65 YA� ARASI'
	WHEN  DATEDIFF(YEAR,BIRTHDATE,GETDATE()) > 65 THEN '65 YA� �ST�'
END AGEGROUP2
FROM CUSTOMERS
) TMP
GROUP BY AGEGROUP2
ORDER BY AGEGROUP2