-- �irketimizin Planlama Departman�na yeni bir �ef
-- atamas� yap�ld� ve maa��n� belirlemek istiyoruz.
-- Planlama departman� i�in minimum,maximum ve
-- ortalama �ef maa�� getiren sorgu hangisidir
-- not: i�ten ��km�� personel maa�lar� da dahildir.

SELECT POS.POSITION, 
MIN(P.SALARY) AS MIN_SALARY, 
MAX(P.SALARY) AS MAX_SALARY,
ROUND(AVG(P.SALARY),2) AS AVG_SALARY 
FROM POSITION POS
INNER JOIN PERSON P 
ON P.POSITIONID = POS.ID
WHERE POS.POSITION ='PLANLAMA �EF�'
GROUP BY POS.POSITION