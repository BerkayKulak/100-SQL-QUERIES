-- HER SEH�RDE KAC KULLAN�C� VAR

SELECT C.CITY,COUNT(U.ID)
FROM USER_ U
JOIN ADDRES A ON U.ID = A.USERID
JOIN CITY C ON C.ID = A.CITYID
JOIN TOWN T ON T.ID = A.TOWNID
JOIN DISTRICT D ON D.ID = A.DISTRICTID
GROUP BY C.CITY
ORDER BY 2 DESC

