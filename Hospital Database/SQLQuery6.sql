/*

Exercise 8: Hangi doktorun hangi tedavi  y�ntemleri konusunda e�itim ald���n� result tablosuna basan
bir sql sorgusu yaz�n�z

*/

select p.Name,c.Name from Physician p, Procedures c, Trained_In t
where t.Physician = p.EmployeeID and t.Treatment = c.Code