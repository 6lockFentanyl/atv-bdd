use cinema;

select ator.NomeArtistico, personagem.Personagem from ator inner join personagem on ator.CodAtor = personagem.CodAtor where ator.NomeReal = 'Maria da Silva';

select filme.NomeFilme, personagem.Personagem from ator inner join personagem on ator.CodAtor = personagem.CodAtor inner join filme  on filme.CodFilme = personagem.CodFilme where ator.NomeArtistico = 'Jim Carrey';
 
use Clinica;

select paciente.nomePac, medico.nomeMed, consulta.dia from paciente inner join consulta on paciente.codPac = consulta.codPac inner join medico on medico.codMed = consulta.codMed where consulta.dia like "2025-04-%"
