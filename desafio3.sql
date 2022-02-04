SELECT 
	u.nome AS usuario, 
    COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_reproducao AS h
ON u.id = h.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON c.id = h.cancao_id
GROUP BY u.nome
ORDER BY u.nome;