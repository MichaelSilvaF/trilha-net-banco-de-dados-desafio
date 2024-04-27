-- select do nome e ano de um filme
SELECT Nome, Ano FROM Filmes 
  
-- busca do nome, ano e duração de um filme 
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano asc

-- busca do filme "De Volta para o Futuro"
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- busca dos filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'

-- busca dos filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > '2000'

-- buscas dos filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao >100 AND Duracao < 150 ORDER BY Duracao asc

-- busca da quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT	Ano,	COUNT(1) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade desc

-- busca dos Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT	* FROM Atores WHERE Genero = 'M'

-- busca dos Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT	* FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- busca do nome do filme e o gênero
SELECT	f.Nome,	g.Genero FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id

-- busca do nome do filme e o gênero do tipo "Mistério"
SELECT	f.Nome,	g.Genero FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério'

-- busca do nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT	f.Nome,	a.PrimeiroNome,	a.UltimoNome,	ef.Papel FROM Filmes f INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme INNER JOIN Atores a ON ef.IdAtor = a.Id
