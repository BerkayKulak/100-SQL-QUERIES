/*

Exercise 21: Her bir kattaki uygun odalarýn sayýsýný Result tablosuna basan sql sorgusunu yazýn

*/

select BlockFloor, BlockCode, Count(*) as 'Uygun oda sayýsý' from room 
where Unavailable = 0
group by BlockCode,BlockFloor