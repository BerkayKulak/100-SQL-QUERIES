/*

Exercise 30: Hastaneye yatarak tedavi olmak için ilk sýrada gelen hastadan maliyeti 5000 dolarý geçen tedaviler için
hastanýn ismini doktorun ismini ve maliyetini result tablosuna basan bir sql sorgusu yazýnýz

*/

select pt.Name as Hasta, p.Name as Doktor, pd.Cost as maliyet from Patient pt
join undergoes u on u.Patient = pt.SSN
join Physician p on pt.PCP = p.EmployeeID
join Procedures pd on u.Procedures = pd.Code
where Patient = 100000001 and pd.Cost > 5000