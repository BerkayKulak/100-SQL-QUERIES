-- Her ilin Haftan�n en �ok hangi g�n�nde 
-- sat�� yapt����n� ��renip ona g�re �ehir
-- ve g�nlere �zel kampanya yapmak istiyoruz.
-- �ehirlerin haftan�n g�nlerine g�re ne kadarl�k
-- sat�� yapt��� bilgisini �ekildeki gibi getiren sorguyu yaz�n�z

SELECT CITY, DAYOFWEEK_,SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY, DAYOFWEEK_
ORDER BY CITY,DAYOFWEEK_

