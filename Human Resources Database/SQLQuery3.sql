-- �irketimizde departman bazl� halen
-- �al��maya devam eden Kad�n ve Erkek
-- say�lar�n� �ekildeki gibi getiren sorguyu yaz�n

SELECT D.DEPARTMENT, 
CASE 
	WHEN P.GENDER = 'E' THEN 'Erkek'
	WHEN P.GENDER = 'K' THEN 'Kad�n'
END AS GENDER
, COUNT(P.ID) AS PERSONCOUNT FROM PERSON P
INNER JOIN DEPARTMENT D ON D.ID = P.DEPARTMENTID
WHERE P.OUTDATE IS NULL
GROUP BY D.DEPARTMENT, GENDER
ORDER BY D.DEPARTMENT, GENDER