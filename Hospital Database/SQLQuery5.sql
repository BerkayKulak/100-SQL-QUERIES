/*

Exercise 6: Hastalar i�in m�sait odalar�n say�s�n� bulan bir sql sorgusu yaz�n�z

*/

select Count(*) as 'uygun oda say�s�' from Room 
where Unavailable = 0