-- �STANBULDA YA�AYIP �L�ES�
-- BEYKOZ DI�INDA OLAN M��TER�LER� L�STELEY�N�Z

SELECT * FROM CUSTOMERS C 
INNER JOIN CITIES CT ON CT.ID = C.CITYID
INNER JOIN DISTRICTS D ON D.ID = C.DISTRICTID
WHERE CT.CITY = '�STANBUL' AND D.DISTRICT NOT IN ('BEYKOZ')
