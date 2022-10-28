/*

Exercise 15: 25 Nisan 2015 saat 10:00:00 da randevu olam hastan�n doktorunun ismini, hem�iresinin ismini ve doktor odas�n� 
result tablosuna bast�ran bir sql sorgusu yaz�n�z

*/

select t.Name as 'Hasta',n.Name  as 'Hem�ire',p.Name  as 'Doktor' from Patient t
join Appointment a on t.SSN = a.Patient
join Nurse n on a.PrepNurse = n.EmployeeID
join Physician p on p.EmployeeID = a.Physician