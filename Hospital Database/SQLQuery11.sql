/*

Exercise 11: Doktorlara alýnan randevu tablosundan hastanýn ismini ve hangi doktora randevu aldýðýný result tablosuna basýnýz 

*/

select p.Name,t.Patient from Appointment t
Join Patient p on t.Patient = p.SSN