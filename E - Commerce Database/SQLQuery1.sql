-- OrderSales tablosu �zerinde hangi �ehirde 
-- ne kadarl�k sat�� yap�ld��� bilgisini �eken
-- sql sorgusunu yaz�n�z.

SELECT CITY, SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY 
ORDER BY CITY