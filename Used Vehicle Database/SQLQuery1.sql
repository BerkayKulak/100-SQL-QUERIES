-- Ara� markalar�na g�re her markadan 
-- ne kadar ara� oldu�u bilgisini
-- �ekildeki gibi getiren sorguyu yaz�n

SELECT BRAND, COUNT(*) AS COUNT_ FROM WEBOFFERS
GROUP BY BRAND
ORDER BY 2 DESC