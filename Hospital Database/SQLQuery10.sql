/*

Exercise 10: Hastan�n ismi adresi ve muayene oldu�u doktoru result tablosuna yazan bir sql sorgusu yaz�n�z

*/

select t.Name,t.address,p.Name from Patient t
join Physician p on t.PCP = p.EmployeeID