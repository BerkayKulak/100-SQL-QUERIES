-- Her ilde en çok müþteriye sahip olduðumuz
-- ilçeleri müþteri sayýsýna göre çoktan aza
-- doðru sýralý þekilde þekildeki gibi getirmek için gereken sorguyu yazýnýz.

select Ct.CITY,D.DISTRICT,Count(C.ID) as CustomerCount 
from CUSTOMERS C
Inner join CITIES CT ON CT.ID = C.CITYID
inner join DISTRICTS D on D.ID = C.DISTRICTID
group by Ct.CITY,D.DISTRICT
order by ct.CITY, Count(C.ID) Desc
