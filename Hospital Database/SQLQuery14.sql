/*

Exercise 14: Doktor odasýný ve doktor odasýnda hazýr bulunmasý gereken hemþireyi result tablosuna bastýran bir sql sorgusu yazýnýz

*/

select n.Name, a.ExaminationRoom from Nurse n
join Appointment a
on a.PrepNurse = n.EmployeeID