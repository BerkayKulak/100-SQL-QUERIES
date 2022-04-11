-- Araç Markalarýna göre her markadan ne kadar
-- araç olduðu ve yüzdesel olarak toplamýn ne kadarýna
-- tekabül etitði bilgisini þekildeki gibi getiren sorguyu yazýnýz.

SELECT BRAND, COUNT(*) AS COUNT_ ,
ROUND(
CONVERT(FLOAT,COUNT(*))/(SELECT COUNT(*) FROM WEBOFFERS)*100,2) AS PERCENT_
FROM WEBOFFERS
GROUP BY BRAND
ORDER BY 2 DESC