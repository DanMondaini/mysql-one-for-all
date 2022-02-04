SELECT 
	COUNT(DISTINCT c.id) AS cancoes,
	COUNT(DISTINCT at.id) AS artistas,
	COUNT(DISTINCT ab.id) AS albuns
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.artista AS at
INNER JOIN SpotifyClone.album AS ab;