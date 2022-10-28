/*

Exercise 22: Ayn� katta bulunan herbir bloktaki uygun olmayan odalar�n say�s�n� result tablosuna basan sql sorgusunu yaz�n�z

*/

select BlockFloor, Count(*) as 'Uygun olmayan say�s�' from room 
where Unavailable = 0
group by BlockFloor
having count(*) = ( select max(zz) as 'En y�ksek de�er' from (

select BlockFloor, Count(*) as zz from Room
where Unavailable = 0
group by BlockFloor
) as t);