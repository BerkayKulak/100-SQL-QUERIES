/*

Exercise 6: Hastalar için müsait odalarýn sayýsýný bulan bir sql sorgusu yazýnýz

*/

select Count(*) as 'uygun oda sayýsý' from Room 
where Unavailable = 0