-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano from Filmes order by Ano
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select Nome, Ano, Duracao from Filmes where Nome='de volta para o futuro'
-- 4 - Buscar os filmes lan�ados em 1997
select * from Filmes where Ano=1997
-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
select * from Filmes where Ano>2000
-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao>100 and Duracao<150 order by Duracao
-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(Nome) as [Quantidade] from Filmes
group by Ano order by count(Duracao) DESC;
-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from Atores where Genero='m'
-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome from Atores where Genero='f' order by PrimeiroNome
-- 10 - Buscar o nome do filme e o g�nero
select Filmes.Nome, Generos.Genero
from ((FilmesGenero
join Filmes on FilmesGenero.IdFilme=Filmes.Id)
join Generos on FilmesGenero.IdGenero=Generos.Id)
-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select Filmes.Nome, Generos.Genero
from ((FilmesGenero
join Filmes on FilmesGenero.IdFilme=Filmes.Id)
join Generos on FilmesGenero.IdGenero=Generos.Id)
where Generos.Genero='Mist�rio'
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
from ((ElencoFilme
join Filmes on ElencoFilme.IdFilme=Filmes.Id)
join Atores on ElencoFilme.IdAtor=Atores.Id)