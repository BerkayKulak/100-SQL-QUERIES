/*

Exercise 26: Doktorlardan tedavi yapmasýna raðmen o branþle ilgili sertifikasý bulunmayan doktorlarýn ismini result tablosuna basýnýz

*/

select * from Physician
where EmployeeID in

(select Undergoes.Physician from Undergoes
left join Trained_In on Undergoes.Physician = Trained_In.Physician and Undergoes.Procedures = Trained_In.Treatment
where Treatment is null)