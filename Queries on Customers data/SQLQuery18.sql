-- Her ilde en �ok m��teriye sahip oldu�umuz
-- il�eleri m��teri say�s�na g�re �oktan aza
-- do�ru s�ral� �ekilde �ekildeki gibi getirmek i�in gereken sorguyu yaz�n�z.

select Ct.CITY,D.DISTRICT,Count(C.ID) as CustomerCount 
from CUSTOMERS C
Inner join CITIES CT ON CT.ID = C.CITYID
inner join DISTRICTS D on D.ID = C.DISTRICTID
group by Ct.CITY,D.DISTRICT
order by ct.CITY, Count(C.ID) Desc
