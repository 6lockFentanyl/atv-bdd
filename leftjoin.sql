-- 1) O LEFT JOIN permite que todos os registros da tabela da esquerda sejam exibidos. Quando existe uma correspondência na tabela da direita, os dados são apresentados normalmente. Caso contrário, os campos da tabela da direita aparecem como NULL.

-- 2) Vantagens: Exibe todos os registros da tabela principal; ajuda a identificar informações que não possuem correspondência; permite reunir dados de diferentes tabelas em uma única consulta.
-- Desvantagens: Pode gerar valores NULL, exigindo um tratamento adequado; pode tornar as consultas mais complexas; em tabelas muito grandes, pode prejudicar o desempenho.

-- 3)
select * from cliente;

-- 4)
select cliente.nome, loja.valor from cliente left join loja on cliente.id_cliente = loja.id_cliente order by loja.valor asc;

-- 5)
select cliente.nome from cliente order by cliente.nome asc;

-- 6)
select cliente.nome, loja.valor from cliente left join loja on cliente.id_cliente = loja.id_cliente order by loja.valor desc limit 1;

-- 7)
select nome, idade from cliente order by idade desc limit 1;

-- 8) O LEFT JOIN retorna todos os registros da tabela à esquerda, mesmo quando não existem dados correspondentes na outra tabela. Já o INNER JOIN exibe somente os registros que possuem correspondência entre as duas tabelas.
