-- HER F�LM KATEGOR�S�N�N EN POP�LER 5 F�LM�N�
-- �EK�LDEK� G�B� GET�REN SORGUYU YAZINIZ

SELECT GN.GENREID,GN.GENRE,MV.TITLE,MV.ROWNNR,MV.POPULARITY FROM GENRE GN
CROSS APPLY
(
SELECT TOP 5 
ROW_NUMBER() OVER (ORDER BY POPULARITY DESC) AS ROWNNR,
M.TITLE,M.FILMID,M.POPULARITY,G.GENREID,G.GENRE FROM MOVIE_GENRE MG
INNER JOIN GENRE G ON G.GENREID = MG.GENREID
INNER JOIN MOVIE M ON M.FILMID = MG.FILMID
WHERE G.GENREID = GN.GENREID
ORDER BY M.POPULARITY DESC
) MV


