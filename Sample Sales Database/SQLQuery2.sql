-- TOPLAM SAT�S� 50.000 DEN BUYUK OLAN MAGAZALAR

SELECT BRANCH,SUM(LINENET) AS TOPLAMSATIS
FROM SALES
GROUP BY BRANCH
HAVING SUM(LINENET) > 50000
ORDER BY 2 DESC