--Pergunta 3:Quantos clientes novos a empresa adquiriu por mês? Considere a data de início de um novo cliente como sendo a data do primeiro filme que esse cliente alugou.


CREATE VIEW pergunta3 
AS
SELECT SUBSTR(rental.rental_date, 1, 7) 
AS mes_entrada_cliente,
COUNT(DISTINCT customer.customer_id) 
AS quantidade_de_clientes
FROM customer
INNER JOIN rental 
ON customer.customer_id = rental.customer_id
GROUP BY SUBSTR(rental.rental_date, 1, 7)
ORDER BY SUBSTR(rental.rental_date, 1, 7) 
ASC 
LIMIT 3

SELECT * FROM pergunta3 
