/*

Exercise 24: Hangi hem�irenin hangi kat ve blokta g�revli oldu�unu result tablosuna basan bir sql sorgusu yaz�n�z

*/

select n.Name as [Hem�ire ismi], o.BlockCode as Blok, o.BlockFloor as Kat from Nurse n
join On_Call o on o.Nurse = n.EmployeeID