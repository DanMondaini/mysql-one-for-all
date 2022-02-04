SELECT
	  c.nome AS cancao,
    COUNT(c.id) AS reproducao
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_reproducao AS h
ON c.id = h.cancao_id
GROUP BY c.nome
ORDER BY reproducao DESC, c.nome
LIMIT 2;