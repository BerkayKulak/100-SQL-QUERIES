/*

Exercise 4: En az bir doktordan randevu alan hasta sayýsý result tablosuna basan sql sorgusu yazýnýz

*/

select count (distinct Patient) as 'En az bir muayene alan hastalar' from Appointment