/*

Exercise 19: Muayenede doktor taraf�ndan tekrar randevu verilmeyen hastan�n ismini, doktorun ismini ve doktorun verdi�i ilac� 
result tablosuna basan bir sql sorgusu yaz�n�z

*/


select t.Name as 'Hasta', p.Name as 'Doktor', m.Name as '�la�' from Patient t
join Prescribes s on s.Patient = t.SSN
join Physician p on s.Physician = p.EmployeeID
join Medication m on s.Medication = m.Code
where s.Appointment is null