/*

Exercise 21: Her bir kattaki uygun odalar�n say�s�n� Result tablosuna basan sql sorgusunu yaz�n

*/

select BlockFloor, BlockCode, Count(*) as 'Uygun oda say�s�' from room 
where Unavailable = 0
group by BlockCode,BlockFloor