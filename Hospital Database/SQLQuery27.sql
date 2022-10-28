/*

Exercise 27: Doktorlardan tedavi yapmasýna raðmen o branþla ilgili sertifikasý bulunmayan doktorlarýn ismini,
yaptýðý tedaviyi, tedavinin zamanýný ve hangi hastaya uyguladýðýný bulan bir sql sorgusu yazýnýz

*/

select p.Name as Doktor, pr.Name as Tedavi,u.DateUndergoes as Tarih, pt.Name as hasta from Physician p, Undergoes u, Patient pt, Procedures pr
where u.Patient = pt.SSN
and u.Procedures = pr.Code
and u.Physician = p.EmployeeID
and not exists (
select * from Trained_In t
where t.Treatment = u.Procedures
and t.Physician = u.Physician

)