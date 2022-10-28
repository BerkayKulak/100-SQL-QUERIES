/*

Exercise 28: 122 numaral� odada yatan hastan�n �a��rabilece�i hem�irelerin isimlerini result tablosuna bast�ran bir sql sorgusu yaz�n�z

*/

select Name from Nurse
where EmployeeID in
(select oc.Nurse from On_Call oc
,Room r
where oc.BlockFloor = r.BlockFloor
and oc.BlockCode = r.BlockCode
and r.RoomNumber = 122

)