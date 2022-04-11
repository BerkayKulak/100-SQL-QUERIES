-- Her bir pozisyonda mevcut halde
-- �al��anlar olarak ka� ki�i ve ortalama
-- maa�lar�n�n ne kadar oldu�unu listelettirmek istiyoruz.
-- Sorgusu nedir ?

SELECT POS.POSITION,COUNT(P.ID) AS PERSONCOUNT, AVG(P.SALARY) AS AVG_SALARY 
FROM POSITION POS
INNER JOIN PERSON P 
ON P.POSITIONID = POS.ID
GROUP BY POS.POSITION
ORDER BY POS.POSITION