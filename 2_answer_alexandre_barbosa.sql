--Pergunta 2: Dentre os top 16 filmes mais alugados, qual o nome completo do ator mais presente nesses filmes?


CREATE VIEW pergunta2_top_actors 
AS
SELECT CONCAT(a.first_name, ' ', a.last_name) 
AS nome_completo, COUNT(*) 
AS quantidade  
FROM film_202211251432 f
JOIN film_actor fa 
ON f.film_id = fa.film_id 
JOIN actor a 
ON fa.actor_id = a.actor_id
GROUP BY nome_completo
ORDER BY quantidade 
DESC 
LIMIT 16;


SELECT * FROM pergunta2_top_actors 
