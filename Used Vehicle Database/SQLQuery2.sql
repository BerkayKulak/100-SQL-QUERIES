-- Ara� Markalar�na g�re her markadan ne kadar
-- ara� oldu�u ve y�zdesel olarak toplam�n ne kadar�na
-- tekab�l etit�i bilgisini �ekildeki gibi getiren sorguyu yaz�n�z.

SELECT BRAND, COUNT(*) AS COUNT_ ,
ROUND(
CONVERT(FLOAT,COUNT(*))/(SELECT COUNT(*) FROM WEBOFFERS)*100,2) AS PERCENT_
FROM WEBOFFERS
GROUP BY BRAND
ORDER BY 2 DESC