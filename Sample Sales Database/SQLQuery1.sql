select 
BRANCH,
SUM(LINENET) AS TOPLAMSATİS,
COUNT(*) AS SATİRSAYİSİ,
MIN(LINENET) AS ENDUSUKFIYAT,MAX(LINENET) AS ENYUKSEKFIYAT,
AVG(LINENET) AS ORTALAMASATISFIYATI
from SALES 
GROUP BY BRANCH ORDER BY SUM(LINENET) DESC