/*

Exercise 7: Hangi doktorun hangi bran�a ait oldu�unu bulan bir sql sorgusu yaz�n�z

*/


select p.Name, d.Name from Physician p, Department d, Affiliated_With a
where p.EmployeeID = a.Physician and d.DepartmentID = a.Department