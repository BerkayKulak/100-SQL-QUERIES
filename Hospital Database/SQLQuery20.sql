/*

Exercise 20: Room tablosundaki herbir blok için kaç tane uygun oda olduðunu result tablosuna basan sql sorgusunu yazýnýz

*/

select BlockCode,count(*) as 'uygun oda sayýsý' from room 
where Unavailable = 0
group by BlockCode