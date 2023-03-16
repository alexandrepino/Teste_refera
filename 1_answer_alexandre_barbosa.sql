--Pergunta 1: Qual foi os top 2 filmes mais alugados de todos os tempos?


CREATE VIEW pergunta1_top_films 
AS
SELECT f.title
AS titulo_filme, COUNT(*) 
AS quantidade
FROM film_202211251432 f
JOIN inventory i 
ON f.film_id = i.film_id 
JOIN rental r 
ON r.inventory_id = i.inventory_id
GROUP BY f.title
ORDER BY quantidade 
DESC
LIMIT 2;
