-- Her bir pozisyonda mevcut halde
-- çalýþanlar olarak kaç kiþi ve ortalama
-- maaþlarýnýn ne kadar olduðunu listelettirmek istiyoruz.
-- Sorgusu nedir ?

SELECT POS.POSITION,COUNT(P.ID) AS PERSONCOUNT, AVG(P.SALARY) AS AVG_SALARY 
FROM POSITION POS
INNER JOIN PERSON P 
ON P.POSITIONID = POS.ID
GROUP BY POS.POSITION
ORDER BY POS.POSITION