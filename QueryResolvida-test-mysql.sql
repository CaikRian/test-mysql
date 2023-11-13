/* 
	----TESTE MySQL para Desenvolvedor----

	CRIADO POR: Caik Rian Gadelha Vieira
	EMAIL: caik.job1707@gmail.com

	INÍCIO: 12/11/2023 22:05
	TÉRMINO: 13/11/2023 00:12

	DESCRIÇÃO: Query SQL que retorna os dados dos cliente, cor de suas casas, seus bairros e seus modelos de carros.
*/
SELECT 
	A.nome AS 'Nome',
	A.sobrenome AS 'Sobrenome',
	A.data_nascimento AS 'Data de Nascimento',
	B.cor AS 'Cor da Casa', 
	C.nome AS 'Bairro', 
	D.modelo AS 'Modelo do Carro' 
FROM cliente AS A
	inner join casa AS B ON B.fk_cliente = A.id_cliente 
	inner join bairro AS C ON C.id_bairro = B.fk_bairro
	inner join carro AS D ON D.fk_cliente = A.id_cliente
