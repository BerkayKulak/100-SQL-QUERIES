/*

Exercise 23: Hastanýn ismini tedavi gördüðü oda numarasýný blokunu ve hangi katta tedavi gördüðünü result tablosuna bastýran sql sorgusunu yazýnýz

*/

select p.Name as Hasta, s.Room as OdaNumarasi, r.BlockFloor as KatNumarasi, r.BlockCode as Blok from Stay s
join Patient p on s.Patient = p.SSN
join Room r on s.Room = r.RoomNumber