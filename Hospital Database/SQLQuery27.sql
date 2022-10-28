/*

Exercise 27: Doktorlardan tedavi yapmas�na ra�men o bran�la ilgili sertifikas� bulunmayan doktorlar�n ismini,
yapt��� tedaviyi, tedavinin zaman�n� ve hangi hastaya uygulad���n� bulan bir sql sorgusu yaz�n�z

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