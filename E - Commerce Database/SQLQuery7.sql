-- Ýliþkisel tablolarý kullanarak hangi þehirde
-- ne kadarlýk satýþ yapýldýðý bilgisini getiren
-- sorguyu yazýnýz

SELECT CT.CITY,SUM(O.TOTALPRICE) AS TOTALPRICE 
FROM ORDERS O
INNER JOIN ADDRESS ADR 
ON ADR.ID = O.ADDRESSID
INNER JOIN CITIES CT 
ON CT.ID = ADR.CITYID
GROUP BY CT.CITY