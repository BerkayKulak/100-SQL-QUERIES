/*

Exercise 13: Hastan�n ismini ve muayene i�in gitmesi gereken doktor odas�n� result tablosuna bast�ran bir sql sorgusu yaz�n�z

*/


select p.Name,a.ExaminationRoom from Patient p
Join Appointment a
on p.SSN = a.Patient