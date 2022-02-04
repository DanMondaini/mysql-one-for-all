SELECT 
	ROUND(COUNT(c.id)/60, 0) AS cancoes,
	ROUND(COUNT(at.id)/400, 0) AS artistas,
	ROUND(COUNT(ab.id)/240, 0) AS albuns
FROM spotifyclone.cancao AS c
INNER JOIN spotifyclone.artista AS at
INNER JOIN spotifyclone.album AS ab;