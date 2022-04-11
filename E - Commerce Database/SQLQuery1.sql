-- OrderSales tablosu üzerinde hangi þehirde 
-- ne kadarlýk satýþ yapýldýðý bilgisini çeken
-- sql sorgusunu yazýnýz.

SELECT CITY, SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY 
ORDER BY CITY