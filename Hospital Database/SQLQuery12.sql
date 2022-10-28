/*

Exercise 12: Doktor odasý C de kaç farklý hasta bakýldýðýný result tablosuna bastýran bir sql sorgusu yazýnýz

*/

select Count(DISTINCT Patient) as FarkliHasta from Appointment
where ExaminationRoom = 'C'