-- Þirketimizde halen çalýþmaya devam eden 
-- çalýþanlarýn listesini getiren sorgu hangisidir ?
-- Not : Ýþten çýkýþ tarihi boþ olanlar çalýþmaya devam
-- eden çalýþanlardýr

USE HR
SELECT * FROM PERSON
WHERE OUTDATE IS NULL
