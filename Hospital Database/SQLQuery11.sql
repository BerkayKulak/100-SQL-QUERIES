/*

Exercise 11: Doktorlara al�nan randevu tablosundan hastan�n ismini ve hangi doktora randevu ald���n� result tablosuna bas�n�z 

*/

select p.Name,t.Patient from Appointment t
Join Patient p on t.Patient = p.SSN