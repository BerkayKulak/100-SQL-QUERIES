-- �li�kisel tablolar� kullanarak hangi �ehirde
-- ne kadarl�k sat�� yap�ld��� bilgisini getiren
-- sorguyu yaz�n�z

SELECT CT.CITY,SUM(O.TOTALPRICE) AS TOTALPRICE 
FROM ORDERS O
INNER JOIN ADDRESS ADR 
ON ADR.ID = O.ADDRESSID
INNER JOIN CITIES CT 
ON CT.ID = ADR.CITYID
GROUP BY CT.CITY