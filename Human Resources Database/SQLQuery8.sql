-- Her bir personelin ne kadar s�redir �al��t���n�
-- �ekildeki gibi ay olarak getiren sorguyu yaz�n�z

SELECT NAME_ + ' ' + SURNAME AS PERSON, INDATE, OUTDATE,
CASE 
	WHEN OUTDATE IS NOT NULL THEN DATEDIFF(MONTH, INDATE, OUTDATE)
	ELSE DATEDIFF(MONTH, INDATE, GETDATE())
END AS WORKINTIME
FROM PERSON
