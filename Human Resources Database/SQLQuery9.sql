-- Þirketimizin 5. Yýlýnda üstünde herkesin 
-- isminin ve soyisminin baþ harflerinin bulunduðu
-- bir ajanda bastýrýp çalýþanlarýna hediye edecektir.
-- Bunun için hangi harf kombinasyonundan en az ne kadar 
-- sayýda ajanda bastýrýlacaðý sorusunun cevabýný getiren sorguyu yazýnýz.
-- not: iki isimli olanlarýn birinci isminin baþ harfi kullanýlacaktýr.

SELECT
SUBSTRING(NAME_,1,1) +'.' + SUBSTRING(SURNAME,1,1) + '.' AS SHORTNAME,
COUNT(*) AS PERSONCOUNT
FROM PERSON
GROUP BY SUBSTRING(NAME_,1,1), SUBSTRING(SURNAME,1,1)
ORDER BY COUNT(*) DESC
