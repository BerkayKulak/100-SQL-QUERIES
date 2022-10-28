/*

Exercise 7: Hangi doktorun hangi branþa ait olduðunu bulan bir sql sorgusu yazýnýz

*/


select p.Name, d.Name from Physician p, Department d, Affiliated_With a
where p.EmployeeID = a.Physician and d.DepartmentID = a.Department