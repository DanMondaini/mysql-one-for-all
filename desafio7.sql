SELECT
	a.nome AS artista,
    al.nome AS album,
    COUNT(ua.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.id = al.artista_id
INNER JOIN SpotifyClone.usuario_artista AS ua
ON a.id = ua.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;