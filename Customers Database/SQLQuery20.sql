-- Do�um g�n� bug�n olan m��terileri getiriniz

select * from CUSTOMERS
where MONTH(BIRTHDATE) = MONTH(GETDATE())
AND
DAY(BIRTHDATE) = DAY(GETDATE())