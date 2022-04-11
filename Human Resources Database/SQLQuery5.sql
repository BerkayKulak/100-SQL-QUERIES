-- Þirketimizin Planlama Departmanýna yeni bir þef
-- atamasý yapýldý ve maaþýný belirlemek istiyoruz.
-- Planlama departmaný için minimum,maximum ve
-- ortalama þef maaþý getiren sorgu hangisidir
-- not: iþten çýkmýþ personel maaþlarý da dahildir.

SELECT POS.POSITION, 
MIN(P.SALARY) AS MIN_SALARY, 
MAX(P.SALARY) AS MAX_SALARY,
ROUND(AVG(P.SALARY),2) AS AVG_SALARY 
FROM POSITION POS
INNER JOIN PERSON P 
ON P.POSITIONID = POS.ID
WHERE POS.POSITION ='PLANLAMA ÞEFÝ'
GROUP BY POS.POSITION