-- Müþterilerimizin Telefon numaralarýnýn operatör bilgisini
-- getirmek istiyoruz. Örneðin telefon numaralarý '50' ya da '55' 
-- ile baþlayan "X" Operatörü "54" ile baþlayan "Y" Operatörü
-- "53" ile baþlayan "Z" operatörü olsun. Burada hangi operatörden
-- ne kadar müþterimiz olduðu bilgisini getirecek sorguyu yazýnýz.

select NAMESURNAME,TELNR1_XOPERATORCOUNT+TELNR2_XOPERATORCOUNT from (

select 
case 
	when TELNR1 LIKE '(50%' OR TELNR1 LIKE '(55%' THEN 1
	ELSE 0
END AS TELNR1_XOPERATORCOUNT,
case 
	when TELNR1 LIKE '(54%'  THEN 1
	ELSE 0
END AS TELNR1_YOPERATORCOUNT,
case 
	when TELNR1 LIKE '(53%'  THEN 1
	ELSE 0
END AS TELNR1_ZOPERATORCOUNT,

case 
	when TELNR2 LIKE '(50%' OR TELNR2 LIKE '(55%' THEN 1
	ELSE 0
END AS TELNR2_XOPERATORCOUNT,
case 
	when TELNR2 LIKE '(54%'  THEN 1
	ELSE 0
END AS TELNR2_YOPERATORCOUNT,
case 
	when TELNR2 LIKE '(53%'  THEN 1
	ELSE 0
END AS TELNR2_ZOPERATORCOUNT,

* FROM CUSTOMERS
) T