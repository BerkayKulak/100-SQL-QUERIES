/*

Exercise 15: 25 Nisan 2015 saat 10:00:00 da randevu olam hastanýn doktorunun ismini, hemþiresinin ismini ve doktor odasýný 
result tablosuna bastýran bir sql sorgusu yazýnýz

*/

select t.Name as 'Hasta',n.Name  as 'Hemþire',p.Name  as 'Doktor' from Patient t
join Appointment a on t.SSN = a.Patient
join Nurse n on a.PrepNurse = n.EmployeeID
join Physician p on p.EmployeeID = a.Physician