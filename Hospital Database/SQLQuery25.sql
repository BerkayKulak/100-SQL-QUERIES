/*

Exercise 25: Patronunuz sizden tedavi olan ve hastanede yatýþ yapan hastalar için kapsamlý bir rapor istedi 
ve bu sql sorgusunu yazarken bu tabloda neler olacaðýndan belirtti.
- Hastanýn ismi
- Hastayý tedavi eden doktorun ismi
- Tedavi sýrasýnda bulunan hemþirenin ismi
- Hastaneden taburcu olma tarihi
- Hastanýn hangi odada kaldýðý
- Odanýn bulunduðu kat ve blok numarasýný

Result tablosuna yazdýran sql sorgusunu yazýnýz

*/

select 
p.Name as Hasta,
y.Name as Doktor,
n.Name as Hemsire,
u.DateUndergoes as [Tedavi Tarihi],
r.RoomNumber as [Oda Numarasý],
r.BlockFloor as [Bulunduðu kat],
r.BlockCode as [Bulunduðu blok]
from Undergoes u
join Patient p on u.Patient = p.SSN
join Physician y on u.Physician=y.EmployeeID
left join Nurse n on u.AssistingNurse = n.EmployeeID
join Stay s on u.Stay = s.StayID
join Room r on s.Room = r.RoomNumber
