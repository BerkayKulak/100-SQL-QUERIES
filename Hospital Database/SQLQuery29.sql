/*

Exercise 29: Hastaneye ilk s�radan gelen hastay� ila�la tedavi edilen hastan�n ismini ve doktorun ismini 
result tablosuna basan bir sql sorgusu yaz�n�z

*/

select pt.Name as Hasta, p.Name as Doktor from Patient pt
join Prescribes pr on pr.Patient = pt.SSN
join Physician p on pt.PCP = p.EmployeeID
where pt.PCP = pr.Physician
and pt.PCP = p.EmployeeID