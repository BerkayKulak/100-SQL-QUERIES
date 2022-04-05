-- Doðum günü bugün olan müþterileri getiriniz

select * from CUSTOMERS
where MONTH(BIRTHDATE) = MONTH(GETDATE())
AND
DAY(BIRTHDATE) = DAY(GETDATE())