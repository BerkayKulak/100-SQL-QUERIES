/*

Exercise 28: 122 numaralý odada yatan hastanýn çaðýrabileceði hemþirelerin isimlerini result tablosuna bastýran bir sql sorgusu yazýnýz

*/

select Name from Nurse
where EmployeeID in
(select oc.Nurse from On_Call oc
,Room r
where oc.BlockFloor = r.BlockFloor
and oc.BlockCode = r.BlockCode
and r.RoomNumber = 122

)