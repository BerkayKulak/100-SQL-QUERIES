/*

Exercise 9: Uzmanlaþmamýþ doktorlarý bulan bir sql sorgusu yazýnýz

*/

select p.Name,p.Position from Physician p
left join Trained_In t on p.EmployeeID = t.Physician
where t.Treatment is null