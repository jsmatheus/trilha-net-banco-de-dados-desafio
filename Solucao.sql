/* Buscar o nome e ano dos filmes */
SELECT Nome, Ano FROM Filmes;

/* Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano;

/* Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome='De Volta para o Futuro';

/* Buscar os filmes lançados em 1997 */
SELECT *
FROM Filmes
WHERE Ano=1997;

/* Buscar os filmes lançados APÓS o ano 2000 */
SELECT *
FROM Filmes
WHERE Ano>2000;

/* Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
SELECT *
FROM Filmes
WHERE Duracao>100 AND Duracao<150
ORDER BY Duracao;

/* Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
SELECT Ano, COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

/* Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero LIKE 'M';

/* Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero LIKE 'F'
ORDER BY PrimeiroNome;

/* Buscar o nome do filme e o gênero */
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;

/* Buscar o nome do filme e o gênero do tipo "Mistério" */
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

/* Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Atores A
JOIN ElencoFilme EF ON A.Id = EF.IdAtor
JOIN Filmes F ON EF.IdFilme = F.Id;