SELECT 
    `users`.`name` AS `usuario`,
    IF(YEAR(MAX(`history`.`reproduction_date`)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.Users AS users
        LEFT JOIN
    SpotifyClone.History AS history ON users.user_id = history.user_id
GROUP BY usuario
ORDER BY usuario ASC;