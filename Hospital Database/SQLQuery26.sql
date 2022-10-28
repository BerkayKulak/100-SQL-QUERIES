/*

Exercise 26: Doktorlardan tedavi yapmas�na ra�men o bran�le ilgili sertifikas� bulunmayan doktorlar�n ismini result tablosuna bas�n�z

*/

select * from Physician
where EmployeeID in

(select Undergoes.Physician from Undergoes
left join Trained_In on Undergoes.Physician = Trained_In.Physician and Undergoes.Procedures = Trained_In.Treatment
where Treatment is null)