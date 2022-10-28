/*

Exercise 18: Muayenede doktor tarafýndan tekrar randevu verilen hastanýn ismini , doktorunun ismini ve doktorun verdiði ilacý
result tablosuna basan bir sql sorgusu yazýnýz

*/


select t.Name as 'Hasta', p.Name as 'Doktor', m.Name as 'Ýlaç' from Patient t
join Prescribes s on s.Patient = t.SSN
join Physician p on s.Physician = p.EmployeeID
join Medication m on s.Medication = m.Code
where s.Appointment is not null