select SUM(LINENET) AS TOPLAMSAT�S,COUNT(*) AS SAT�RSAY�S�,MIN(LINENET) AS ENDUSUKFIYAT,MAX(LINENET) AS ENYUKSEKFIYAT,AVG(LINENET) AS ORTALAMASATISFIYATI
from SALES 
WHERE BRANCH = 'Kocaeli Subesi'