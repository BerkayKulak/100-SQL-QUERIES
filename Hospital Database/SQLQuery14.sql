/*

Exercise 14: Doktor odas�n� ve doktor odas�nda haz�r bulunmas� gereken hem�ireyi result tablosuna bast�ran bir sql sorgusu yaz�n�z

*/

select n.Name, a.ExaminationRoom from Nurse n
join Appointment a
on a.PrepNurse = n.EmployeeID