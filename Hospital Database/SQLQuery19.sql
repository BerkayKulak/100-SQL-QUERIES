/*

Exercise 19: Muayenede doktor tarafýndan tekrar randevu verilmeyen hastanýn ismini, doktorun ismini ve doktorun verdiði ilacý 
result tablosuna basan bir sql sorgusu yazýnýz

*/


select t.Name as 'Hasta', p.Name as 'Doktor', m.Name as 'Ýlaç' from Patient t
join Prescribes s on s.Patient = t.SSN
join Physician p on s.Physician = p.EmployeeID
join Medication m on s.Medication = m.Code
where s.Appointment is null