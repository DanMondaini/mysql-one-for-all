SELECT 
	u.nome AS usuario,
	IF( MAX(YEAR(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_reproducao AS h
ON u.id = h.usuario_id
GROUP BY h.usuario_id
ORDER BY u.nome;