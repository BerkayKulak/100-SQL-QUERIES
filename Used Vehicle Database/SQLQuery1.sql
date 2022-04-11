-- Araç markalarýna göre her markadan 
-- ne kadar araç olduðu bilgisini
-- þekildeki gibi getiren sorguyu yazýn

SELECT BRAND, COUNT(*) AS COUNT_ FROM WEBOFFERS
GROUP BY BRAND
ORDER BY 2 DESC