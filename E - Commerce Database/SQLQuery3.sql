-- Her ilin Haftan�n en �ok hangi g�n�nde 
-- sat�� yapt����n� ��renip ona g�re �ehir
-- ve g�nlere �zel kampanya yapmak istiyoruz.
-- �ehirlerin haftan�n g�nlerine g�re ne kadarl�k
-- sat�� yapt��� bilgisini �ekildeki gibi getiren sorguyu yaz�n�z

SELECT CITY, DAYOFWEEK_,SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY, DAYOFWEEK_
ORDER BY CITY,DAYOFWEEK_

UPDATE SALEORDERS SET DAYOFWEEK_ = '02.SAL' WHERE DAYOFWEEK_ = 'Sal�'
UPDATE SALEORDERS SET DAYOFWEEK_ = '03.�AR' WHERE DAYOFWEEK_ = '�ar�amba'
UPDATE SALEORDERS SET DAYOFWEEK_ = '04.PER' WHERE DAYOFWEEK_ = 'Per�embe'
UPDATE SALEORDERS SET DAYOFWEEK_ = '05.CUM' WHERE DAYOFWEEK_ = 'Cuma'
UPDATE SALEORDERS SET DAYOFWEEK_ = '06.CMT' WHERE DAYOFWEEK_ = 'Cumartesi'
UPDATE SALEORDERS SET DAYOFWEEK_ = '07.PAZ' WHERE DAYOFWEEK_ = 'Pazar'