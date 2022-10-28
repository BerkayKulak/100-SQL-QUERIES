/*

Exercise 25: Patronunuz sizden tedavi olan ve hastanede yat�� yapan hastalar i�in kapsaml� bir rapor istedi 
ve bu sql sorgusunu yazarken bu tabloda neler olaca��ndan belirtti.
- Hastan�n ismi
- Hastay� tedavi eden doktorun ismi
- Tedavi s�ras�nda bulunan hem�irenin ismi
- Hastaneden taburcu olma tarihi
- Hastan�n hangi odada kald���
- Odan�n bulundu�u kat ve blok numaras�n�

Result tablosuna yazd�ran sql sorgusunu yaz�n�z

*/

select 
p.Name as Hasta,
y.Name as Doktor,
n.Name as Hemsire,
u.DateUndergoes as [Tedavi Tarihi],
r.RoomNumber as [Oda Numaras�],
r.BlockFloor as [Bulundu�u kat],
r.BlockCode as [Bulundu�u blok]
from Undergoes u
join Patient p on u.Patient = p.SSN
join Physician y on u.Physician=y.EmployeeID
left join Nurse n on u.AssistingNurse = n.EmployeeID
join Stay s on u.Stay = s.StayID
join Room r on s.Room = r.RoomNumber
