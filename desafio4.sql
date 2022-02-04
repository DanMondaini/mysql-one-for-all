SELECT u.usuario AS usuario,
        IF(MAX(YEAR(r.usuario_id)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS r ON r.nome = u.nome
GROUP BY r.nome
ORDER BY u.usuario ASC; 
