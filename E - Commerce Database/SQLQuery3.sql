-- Her ilin Haftanýn en çok hangi gününde 
-- satýþ yaptýðýýný öðrenip ona göre þehir
-- ve günlere özel kampanya yapmak istiyoruz.
-- þehirlerin haftanýn günlerine göre ne kadarlýk
-- satýþ yaptýðý bilgisini þekildeki gibi getiren sorguyu yazýnýz

SELECT CITY, DAYOFWEEK_,SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY, DAYOFWEEK_
ORDER BY CITY,DAYOFWEEK_

