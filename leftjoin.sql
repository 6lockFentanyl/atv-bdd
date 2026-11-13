-- 1) O LEFT JOIN apresenta todos os registros da tabela localizada à esquerda. Quando há informações relacionadas na tabela da direita, elas são incluídas no resultado. Se não houver relação, os campos correspondentes recebem NULL.

-- 2) Vantagens: Permite consultar todos os registros da tabela principal; facilita localizar dados que não possuem correspondência; possibilita combinar informações de tabelas diferentes.
-- Desvantagens: Pode apresentar campos com valores NULL; pode deixar as consultas mais difíceis de organizar; em tabelas com muitos registros, pode tornar a execução mais lenta.

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

-- 8) Enquanto o LEFT JOIN mantém todos os registros da tabela da esquerda, mesmo que não encontre correspondentes, o INNER JOIN considera apenas os registros que possuem informações relacionadas nas duas tabelas.
