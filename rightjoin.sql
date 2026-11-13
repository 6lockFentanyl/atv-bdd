-- 1)
select p.nome, r.pontos from resultados_corrida r right join pilotos p on r.piloto_id = p.id where r.gp = 'GP de Interlagos';

-- 2)
select f.nome as fabricante, e.nome as equipe from equipes e right join fabricantes_motor f on e.motor_id = f.id;

-- 3)
select * from equipes e right join fabricantes_motor f on e.motor_id = f.id where e.motor_id is null or f.id is null;

-- 4)
-- a) A consulta apresenta os fabricantes de motores, as equipes e os pilotos relacionados a eles. Quando não existe uma associação entre esses registros, os campos correspondentes são exibidos como NULL.
-- b) A consulta exibe os pilotos que possuem resultados registrados no GP de Interlagos, junto com a pontuação obtida nessa corrida.
-- c) A consulta identifica as equipes que não possuem nenhum piloto associado a elas.
