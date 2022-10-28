/*

Exercise 10: Hastanýn ismi adresi ve muayene olduðu doktoru result tablosuna yazan bir sql sorgusu yazýnýz

*/

select t.Name,t.address,p.Name from Patient t
join Physician p on t.PCP = p.EmployeeID