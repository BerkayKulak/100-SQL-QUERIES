/*

Exercise 8: Hangi doktorun hangi tedavi  yöntemleri konusunda eðitim aldýðýný result tablosuna basan
bir sql sorgusu yazýnýz

*/

select p.Name,c.Name from Physician p, Procedures c, Trained_In t
where t.Physician = p.EmployeeID and t.Treatment = c.Code