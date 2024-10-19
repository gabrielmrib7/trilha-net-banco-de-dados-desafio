--1 

select Nome, Ano from dbo.Filmes

--2

select Nome, Ano, Duracao from dbo.Filmes Order By Ano

--3

select Nome, Ano, Duracao from dbo.filmes where nome = 'De Volta Para o Futuro'

--4 

select Nome, Ano, Duracao from dbo.filmes where Ano = 1997

--5 

select Nome, Ano, Duracao from dbo.filmes where Ano > 2000

--6 

select Nome, Ano, Duracao from dbo.filmes where Duracao > 100 AND duracao < 150 order by Duracao ASC

--7 

select Ano, count(Ano) as Quantidade from dbo.filmes group by Ano order by count(ano) DESC;

--8 

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';

--9 

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' Order By PrimeiroNome;

--10 

select F.Nome, G.Genero from ((Filmes F 
INNER JOIN FilmesGenero FG ON  F.Id = FG.IdFilme)
INNER JOIN Generos G ON FG.IdGenero = G.Id)

--11 

select F.Nome, G.Genero from ((Filmes F 
INNER JOIN FilmesGenero FG ON  F.Id = FG.IdFilme)
INNER JOIN Generos G ON FG.IdGenero = G.Id)

where G.Genero = 'Mistério'


--12
--FORMA 1:
select F.Nome, A.PrimeiroNome, A.UltimoNome, El.Papel  from ((Filmes F 
INNER JOIN ElencoFilme El ON  F.Id = El.IdFilme)
INNER JOIN Atores A ON El.IdAtor = A.Id)
--FORMA 2:
select F.Nome, A.PrimeiroNome, A.UltimoNome, El.Papel from Filmes F, Atores A, ElencoFilme El where F.id = El.IdFilme and El.IdAtor = A.Id;





