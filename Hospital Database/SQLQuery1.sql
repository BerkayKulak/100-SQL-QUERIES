/*

Exercise 4: En az bir doktordan randevu alan hasta say�s� result tablosuna basan sql sorgusu yaz�n�z

*/

select count (distinct Patient) as 'En az bir muayene alan hastalar' from Appointment