-- 1 - Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM Filmes WHERE Nome = 'De Volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes WHERE Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes WHERE Ano >= 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
    Ano, 
    COUNT(*) AS QuantidadeFilmes
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    COUNT(*) DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	Atores.Genero,
	Atores.PrimeiroNome,
	Atores.UltimoNome
From Atores
WHERE Atores.Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
	Atores.Genero,
	Atores.PrimeiroNome,
	Atores.UltimoNome
From Atores
WHERE Atores.Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT Filmes.Nome AS Filme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
ORDER BY Filmes.Nome;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"