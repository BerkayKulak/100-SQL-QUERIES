/* 

Exercise 17: Hastanýn ismini , doktorun ismini ve doktorun verdiði ilacin ismini result tablosuna bastýran bir sql sorgusu yazýnýz

*/

select t.Name as 'Hasta' , p.Name as 'Doktor', m.Name as 'Ýlaç' from Patient t
join Prescribes s on s.Patient = t.SSN
join Physician p on s.Physician = p.EmployeeID
join Medication m on s.Medication = m.Code