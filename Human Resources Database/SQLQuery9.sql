-- �irketimizin 5. Y�l�nda �st�nde herkesin 
-- isminin ve soyisminin ba� harflerinin bulundu�u
-- bir ajanda bast�r�p �al��anlar�na hediye edecektir.
-- Bunun i�in hangi harf kombinasyonundan en az ne kadar 
-- say�da ajanda bast�r�laca�� sorusunun cevab�n� getiren sorguyu yaz�n�z.
-- not: iki isimli olanlar�n birinci isminin ba� harfi kullan�lacakt�r.

SELECT
SUBSTRING(NAME_,1,1) +'.' + SUBSTRING(SURNAME,1,1) + '.' AS SHORTNAME,
COUNT(*) AS PERSONCOUNT
FROM PERSON
GROUP BY SUBSTRING(NAME_,1,1), SUBSTRING(SURNAME,1,1)
ORDER BY COUNT(*) DESC
