/*

Exercise 12: Doktor odas� C de ka� farkl� hasta bak�ld���n� result tablosuna bast�ran bir sql sorgusu yaz�n�z

*/

select Count(DISTINCT Patient) as FarkliHasta from Appointment
where ExaminationRoom = 'C'