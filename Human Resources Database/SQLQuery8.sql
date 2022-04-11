-- Her bir personelin ne kadar süredir çalýþtýðýný
-- þekildeki gibi ay olarak getiren sorguyu yazýnýz

SELECT NAME_ + ' ' + SURNAME AS PERSON, INDATE, OUTDATE,
CASE 
	WHEN OUTDATE IS NOT NULL THEN DATEDIFF(MONTH, INDATE, OUTDATE)
	ELSE DATEDIFF(MONTH, INDATE, GETDATE())
END AS WORKINTIME
FROM PERSON
