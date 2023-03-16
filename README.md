
Explicação da Questão 1:

Primeiro, é feito um join entre as tabelas de filmes, inventário e aluguéis. Isso nos permite relacionar o título do filme com o número de vezes que ele foi alugado.
Em seguida, é feito um agrupamento (GROUP BY) pelo título do filme para que possamos contar quantas vezes cada um deles foi alugado.
Por fim, a visualização é ordenada (ORDER BY) em ordem decrescente (DESC) pela quantidade de aluguéis, e é limitada (LIMIT) a apenas 2 filmes, que são os mais alugados na locadora.
Essa visualização pode ser muito útil para alocar mais cópias desses filmes nas lojas ou para promover outros filmes que têm um desempenho de aluguel semelhante.


Explicação da Questão 2:

O código faz uso de três tabelas: "film_202211251432", que contém informações dos filmes, "film_actor", que relaciona os filmes com os atores que participaram deles, e "actor", que contém informações sobre os atores.
O SELECT faz uso da função CONCAT para unir o primeiro e último nome dos atores em uma única coluna, chamada "nome_completo". A função COUNT é utilizada para contar quantas vezes cada ator apareceu em filmes. Essas informações são agrupadas pelo nome completo dos atores, utilizando o GROUP BY.
Por fim, a tabela resultante é ordenada de forma decrescente pela quantidade de vezes que os atores aparecem em filmes e é limitada a mostrar apenas os 16 atores mais frequentes, utilizando o ORDER BY e o LIMIT.



Explicação da Questão 3:

Este código cria uma visão (view) chamada "pergunta3" que busca responder a uma pergunta sobre a quantidade de clientes novos que a empresa adquiriu por mês.

Para isso, é realizada uma consulta que utiliza as tabelas "customer" e "rental". A coluna "rental_date" da tabela "rental" é utilizada para extrair o mês em que cada cliente realizou seu primeiro aluguel de filme através da função SUBSTR().

Em seguida, é feita a contagem da quantidade de clientes distintos para cada mês utilizando COUNT(DISTINCT). Por fim, é feito o agrupamento dos resultados pelo mês e ordenação em ordem crescente pelo mesmo. A cláusula LIMIT é utilizada para retornar apenas os três primeiros resultados.





