/*

Exercise 20: Room tablosundaki herbir blok i�in ka� tane uygun oda oldu�unu result tablosuna basan sql sorgusunu yaz�n�z

*/

select BlockCode,count(*) as 'uygun oda say�s�' from room 
where Unavailable = 0
group by BlockCode