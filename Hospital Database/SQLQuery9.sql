/*

Exercise 9: Uzmanlaşmamış doktorları bulan bir sql sorgusu yazınız

*/

select p.Name,p.Position from Physician p
left join Trained_In t on p.EmployeeID = t.Physician
where t.Treatment is null