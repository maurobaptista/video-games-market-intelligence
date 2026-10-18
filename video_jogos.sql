Quais são as 5 editoras (Publishers) que mais faturaram globalmente em toda a história?

SELECT "Publisher", SUM("Global") AS receita_total
FROM vendas_videojogos
GROUP BY "Publisher"
ORDER BY receita_total DESC
LIMIT 5;


Focando apenas nos jogos lançados de 2010 para a frente, 
qual é o género de jogo que gerou mais receita e quantos jogos desse género foram lançados?

SELECT "Genre",COUNT("Game") AS quantidade_de_jogos, sum("Global") AS Receita
FROM vendas_videojogos
WHERE "Year" >= 2010
GROUP BY "Genre"
ORDER BY Receita DESC;

SELECT * FROM vendas_VideoJogos

1. Os 10 jogos com maior volume de vendas globais
SELECT game,global 
FROM vendas_VideoJogos
ORDER BY global DESC
LIMIT 10;



2. A editora com mais jogos publicados
SELECT publisher, count(game) AS total_jogos
FROM vendas_videojogos
GROUP BY publisher
ORDER BY total_jogos DESC
LIMIT 1;

3. O género mais lucrativo da história

SELECT genre, sum(global) as receita_total
FROM  vendas_videojogos
GROUP BY genre
ORDER BY  receita_total DESC
LIMIT 1;

4. Top 5 editoras em 2015
SELECT publisher, sum(global)as receita_total
FROM vendas_videojogos
WHERE year =2015
GROUP BY Publisher
ORDER BY receita_total DESC
LIMIT 5;

5. O "ano de ouro" da indústria (Maior pico de vendas)
SELECT sum(global),year
FROM vendas_videojogos
GROUP BY year
ORDER BY sum(global) DESC
LIMIT 1;

6. Os 5 jogos mais antigos do género "Action"
SELECT game,year
FROM  vendas_videojogos
WHERE genre='Action'
ORDER BY year ASC
LIMIT 5;

7. A média de vendas por género

SELECT genre, AVG(global) AS media_vendas 
FROM vendas_videojogos 
GROUP BY genre 
ORDER BY media_vendas DESC;


8. Ritmo de lançamentos da EA Sports por ano

SELECT year, COUNT(game) AS total_jogos 
FROM vendas_videojogos 
WHERE publisher = 'EA Sports' 
GROUP BY year 
ORDER BY total_jogos DESC;


9. Jogos hiper-dependentes da América do Norte (>80%)

SELECT game, north_america, global 
FROM vendas_videojogos 
WHERE global > 0 AND (north_america / global) > 0.80;

10. Editoras com mais "Mega-Hits" (jogos com > 10 milhões)

SELECT publisher, COUNT(game) AS mega_hits
FROM vendas_videojogos 
WHERE global > 10 
GROUP BY publisher 
ORDER BY mega_hits DESC;

SELECT publisher, game, global
FROM vendas_videojogos 
WHERE global > 10 
ORDER BY publisher, global DESC;







