-- QUENTIN TARANTINO �S�ML� K���N�N 
-- BU ZAMANA KADAR HANG� G�REVDE,
-- KA� F�LMDE �ALI�TI�I B�LG�S�N� �EK�LDEK�
-- G�B� GET�REN SORGUYU YAZINIZ

SELECT P.NAME_ KISI,D.DEPARTMENT BOLUM,J.JOB GOREV,COUNT(M.FILMID) FILM_SAYISI FROM PERSON P
INNER JOIN CREW_CREDIT CC ON CC.PERSONID = P.PERSONID
INNER JOIN DEPARTMENT D ON D.ID = CC.DEPARTMENTID
INNER JOIN JOB J ON J.ID = CC.JOBID
INNER JOIN MOVIE M ON M.FILMID = CC.FILMID
WHERE P.NAME_ LIKE 'Quentin Tarantino'
GROUP BY P.NAME_,D.DEPARTMENT,J.JOB 
ORDER BY D.DEPARTMENT,J.JOB
