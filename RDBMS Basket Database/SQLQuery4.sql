-- HER B�R KULLANICININ KA� TANE ADRES� VAR 

SELECT U.USERNAME_ KULLANICIADI,U.TELNR1 AS TELEFON1, U.TELNR2 AS TELEFON2,
COUNT(A.ID) AS ADRESSAY�S�
FROM USER_ U
JOIN ADDRES A ON U.ID = A.USERID
JOIN CITY C ON C.ID = A.CITYID
JOIN TOWN T ON T.ID = A.TOWNID
JOIN DISTRICT D ON D.ID = A.DISTRICTID
GROUP BY U.USERNAME_ ,U.TELNR1 , U.TELNR2 
--HAVING COUNT(A.ID) = 2
