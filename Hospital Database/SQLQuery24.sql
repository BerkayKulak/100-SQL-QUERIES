/*

Exercise 24: Hangi hemþirenin hangi kat ve blokta görevli olduðunu result tablosuna basan bir sql sorgusu yazýnýz

*/

select n.Name as [Hemþire ismi], o.BlockCode as Blok, o.BlockFloor as Kat from Nurse n
join On_Call o on o.Nurse = n.EmployeeID