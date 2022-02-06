SELECT
    COUNT(u.id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reproducao AS h
INNER JOIN SpotifyClone.usuario AS u
ON u.id = h.usuario_id AND u.nome = 'Bill';