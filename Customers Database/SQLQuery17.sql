-- M��terilerimizin Telefon numaralar�n�n operat�r bilgisini
-- getirmek istiyoruz. �rne�in telefon numaralar� '50' ya da '55' 
-- ile ba�layan "X" Operat�r� "54" ile ba�layan "Y" Operat�r�
-- "53" ile ba�layan "Z" operat�r� olsun. Burada hangi operat�rden
-- ne kadar m��terimiz oldu�u bilgisini getirecek sorguyu yaz�n�z.

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