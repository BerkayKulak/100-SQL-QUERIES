-- Her ilin Haftanýn en çok hangi gününde 
-- satýþ yaptýðýýný öðrenip ona göre þehir
-- ve günlere özel kampanya yapmak istiyoruz.
-- þehirlerin haftanýn günlerine göre ne kadarlýk
-- satýþ yaptýðý bilgisini þekildeki gibi getiren sorguyu yazýnýz

SELECT CITY, DAYOFWEEK_,SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY, DAYOFWEEK_
ORDER BY CITY,DAYOFWEEK_

UPDATE SALEORDERS SET DAYOFWEEK_ = '02.SAL' WHERE DAYOFWEEK_ = 'Salý'
UPDATE SALEORDERS SET DAYOFWEEK_ = '03.ÇAR' WHERE DAYOFWEEK_ = 'Çarþamba'
UPDATE SALEORDERS SET DAYOFWEEK_ = '04.PER' WHERE DAYOFWEEK_ = 'Perþembe'
UPDATE SALEORDERS SET DAYOFWEEK_ = '05.CUM' WHERE DAYOFWEEK_ = 'Cuma'
UPDATE SALEORDERS SET DAYOFWEEK_ = '06.CMT' WHERE DAYOFWEEK_ = 'Cumartesi'
UPDATE SALEORDERS SET DAYOFWEEK_ = '07.PAZ' WHERE DAYOFWEEK_ = 'Pazar'