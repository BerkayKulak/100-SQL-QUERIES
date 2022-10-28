/*

Exercise 23: Hastan�n ismini tedavi g�rd��� oda numaras�n� blokunu ve hangi katta tedavi g�rd���n� result tablosuna bast�ran sql sorgusunu yaz�n�z

*/

select p.Name as Hasta, s.Room as OdaNumarasi, r.BlockFloor as KatNumarasi, r.BlockCode as Blok from Stay s
join Patient p on s.Patient = p.SSN
join Room r on s.Room = r.RoomNumber