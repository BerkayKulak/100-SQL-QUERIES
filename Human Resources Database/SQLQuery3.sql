-- Þirketimizde departman bazlý halen
-- çalýþmaya devam eden Kadýn ve Erkek
-- sayýlarýný þekildeki gibi getiren sorguyu yazýn

SELECT D.DEPARTMENT, 
CASE 
	WHEN P.GENDER = 'E' THEN 'Erkek'
	WHEN P.GENDER = 'K' THEN 'Kadýn'
END AS GENDER
, COUNT(P.ID) AS PERSONCOUNT FROM PERSON P
INNER JOIN DEPARTMENT D ON D.ID = P.DEPARTMENTID
WHERE P.OUTDATE IS NULL
GROUP BY D.DEPARTMENT, GENDER
ORDER BY D.DEPARTMENT, GENDER