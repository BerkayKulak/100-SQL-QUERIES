/*

Exercise 13: Hastanýn ismini ve muayene için gitmesi gereken doktor odasýný result tablosuna bastýran bir sql sorgusu yazýnýz

*/


select p.Name,a.ExaminationRoom from Patient p
Join Appointment a
on p.SSN = a.Patient