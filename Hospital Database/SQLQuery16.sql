/*

Exercise 16: Doktor muayenesi s�ras�nda hem�irenin asiste etmesine gerek olmayan hasta ve doktor ismini 
result tablosuna bast�ran bir sql sorgusu yaz�n�z

*/

select T.Name as 'Hasta' , p.Name as 'Doktor' from Patient t
join Appointment a on a.Patient = t.SSN
join Physician p on a.Physician = p.EmployeeID
where a.PrepNurse is null