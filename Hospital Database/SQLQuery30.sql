/*

Exercise 30: Hastaneye yatarak tedavi olmak i�in ilk s�rada gelen hastadan maliyeti 5000 dolar� ge�en tedaviler i�in
hastan�n ismini doktorun ismini ve maliyetini result tablosuna basan bir sql sorgusu yaz�n�z

*/

select pt.Name as Hasta, p.Name as Doktor, pd.Cost as maliyet from Patient pt
join undergoes u on u.Patient = pt.SSN
join Physician p on pt.PCP = p.EmployeeID
join Procedures pd on u.Procedures = pd.Code
where Patient = 100000001 and pd.Cost > 5000