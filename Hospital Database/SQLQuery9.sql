/*

Exercise 9: Uzmanla�mam�� doktorlar� bulan bir sql sorgusu yaz�n�z

*/

select p.Name,p.Position from Physician p
left join Trained_In t on p.EmployeeID = t.Physician
where t.Treatment is null