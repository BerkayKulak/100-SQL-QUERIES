/*

Exercise 22: Ayný katta bulunan herbir bloktaki uygun olmayan odalarýn sayýsýný result tablosuna basan sql sorgusunu yazýnýz

*/

select BlockFloor, Count(*) as 'Uygun olmayan sayýsý' from room 
where Unavailable = 0
group by BlockFloor
having count(*) = ( select max(zz) as 'En yüksek deðer' from (

select BlockFloor, Count(*) as zz from Room
where Unavailable = 0
group by BlockFloor
) as t);