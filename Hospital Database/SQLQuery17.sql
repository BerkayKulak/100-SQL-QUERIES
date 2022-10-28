/* 

Exercise 17: Hastan�n ismini , doktorun ismini ve doktorun verdi�i ilacin ismini result tablosuna bast�ran bir sql sorgusu yaz�n�z

*/

select t.Name as 'Hasta' , p.Name as 'Doktor', m.Name as '�la�' from Patient t
join Prescribes s on s.Patient = t.SSN
join Physician p on s.Physician = p.EmployeeID
join Medication m on s.Medication = m.Code