SELECT
	ar.nome AS artista,
    al.nome AS album
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.id = al.artista_id AND ar.nome = 'Walter Phoenix'
ORDER BY al.nome;