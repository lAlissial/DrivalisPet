-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ A - CRIAÇÃO E USO DE OBJETOS BÁSICOS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- • 01 consulta com uma tabela usando operadores básicos de filtro (e.g., IN,  between, is null, etc).  
	
	-- // Quais produtos possuem o valor de venda entre R$50 e R$100 reais
	SELECT cod_prod "Código", nome "Nome", valor_unitario_venda "Valor de venda"
	FROM Produto
	WHERE valor_unitario_venda BETWEEN 50 AND 100;
	
	-- // Produtos que contenham no nome a palavra gaiola
	SELECT nome"Nome", fabricante "Fabricante", valor_unitario_venda "Valor de venda", descricao_prod "Descrição"  
	FROM Produto
	WHERE nome LIKE 'Gaiola%' OR nome LIKE '%gaiola%';


	
-- • 03 consultas com inner JOIN na cláusula FROM (pode ser self join, caso  o domínio indique esse uso).  
    
	-- // Mostre os produtos com o nome de suas categorias
	SELECT prod.cod_prod "Código", prod.nome "Produto", cat.nome_categ "Categoria"
	FROM Produto prod JOIN Categoria cat ON cat.cod_categ = prod.cod_categ;
	
	
     -- // Quais clientes têm pedidos com previsão de entrega para setembro(mes 9) e são de Minas Gerais e da Paraiba?
	SELECT cli.nome_cli "Nome" 
	FROM Pedido_Entrega pd JOIN Cliente cli ON cli.cod_cliente = pd.cod_cliente JOIN Endereco ende ON ende.cod_cliente = cli.cod_cliente
	WHERE ende.uf IN ('MG','PB') AND TO_CHAR(pd.previsto_para,'MM') = '09';
				
				
    -- // Exibir a quantidade, a média dos preços de venda e de custo dos produtos de cada categoria, mostrando o código e o nome do tipo do produto.
    SELECT cat.cod_categ "Codigo" , cat.nome_categ "Categoria",
    TRUNC(COUNT(pr.cod_prod)) "Quantidade",
    ROUND(AVG(pr.valor_unitario_venda),2) "Venda", ROUND(AVG(pr.preco_custo),2) "Custo"
    FROM Produto pr
    JOIN Categoria cat
    ON cat.cod_categ = pr.cod_categ
    GROUP BY cat.cod_categ, cat.nome_categ;

	-- // Todos os produtos(com a quantidade) pedidos pelo cliente com cpf = '175.845.658-75'
		SELECT p.nome "Nome", it.quantidade "Quantidade", cli.nome_cli "Cliente"
		FROM Produto p
		JOIN ItemPedido it ON it.cod_prod = p.cod_prod  
		JOIN Pedido_Entrega ped ON ped.cod_pedido = it.cod_pedido 
		JOIN Cliente cli ON cli.cod_cliente = ped.cod_cliente
		WHERE cli.cpf = '175.845.658-75';
	

	-- // Algumas informações do pedido com codigo de entrega = '5'
	SELECT peden.cod_entrega "Código de entrega", tem.data_status "Data do Status", st.descricao_stts "Status"
	FROM Pedido_Entrega peden 
	JOIN Tem ON tem.cod_entrega = peden.cod_entrega JOIN Status st ON st.cod_status = tem.cod_status
	WHERE peden.cod_entrega = 5;
		
				
-- • 01 consulta com left/right/full outer join na cláusula FROM 
   
   -- // Exibir o código e o nome das categorias de produto com os respectivos nomes dos produtos existentes para cada categoria, exibindo também as categorias que não tenham produto, ordenando pelo nome da categoria e nome do produto em ordem ascendente.
    SELECT cat.cod_categ, cat.nome_categ "Categoria",
    pr.nome "Produto"
    FROM Produto pr
    RIGHT JOIN Categoria cat
    ON cat.cod_categ = pr.cod_categ
    ORDER BY cat.nome_categ, pr.nome;		
	
				
-- • 02 consultas usando Group By (e possivelmente o having) 
	
	-- // Exibir os nomes dos Estados do Nordeste e a quantidade de pedidos realizados pelos clientes de cada um deles, mostrando apenas os estados para os quais houve mais de 1 pedido, ordenando pelo nome da UF em ordem ascendente.
	SELECT ende.uf, COUNT(ped.cod_pedido) "Quantidade"
	FROM Pedido_Entrega ped
	JOIN Cliente cli ON cli.cod_cliente = ped.cod_cliente
	JOIN Endereco ende ON ende.cod_endereco = cli.cod_endereco
	WHERE ende.uf IN ('PB','BA','RN','MA','PI', 'CE','PE', 'SE')
	GROUP BY ende.uf 
	HAVING COUNT(ped.cod_pedido) > 1
	ORDER BY ende.uf;
			
			
	-- // Exibir o código do pedido e a quantidade de produtos dos pedidos que tem mais do que 1 produto.
	SELECT cod_pedido, COUNT(cod_prod) AS "Quantidade"
	FROM ItemPedido
	GROUP BY cod_pedido
	HAVING COUNT(cod_pedido) > 1;

	

-- • 01 consulta usando alguma operação de conjunto (union, except ou intersect) 
	
	-- // Exiba os códigos dos clientes que possuem a UF 'RJ' que já fizeram algum pedido
	SELECT cli.cod_cliente "Código"
	FROM cliente cli
	JOIN Endereco ende ON ende.cod_endereco = cli.cod_endereco
	WHERE ende.uf = 'RJ'
	INTERSECT
	SELECT cod_cliente FROM Pedido_Entrega;
		
				
-- • 02 consultas que usem subqueries.  
	
	-- // Que produtos participam em qualquer pedido cuja quantidade de produtos, em itens, seja maior que 5?
	SELECT prod.nome "Nome"
	FROM Produto prod
	WHERE prod.cod_prod IN (SELECT it.cod_prod
							FROM ItemPedido it
							WHERE it.quantidade>5);


	-- // Quais os produtos que não estão presentes em nenhum pedido?
	SELECT prod.cod_prod "Código", prod.nome "Nome"
	FROM produto prod
	WHERE NOT EXISTS (SELECT *
	FROM ItemPedido it
	WHERE it.cod_prod = prod.cod_prod);


				
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ B - VISÕES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- • 01 visão que permita inserção 
    -- // View view que contenha somente os produtos destinados as caes, ou seja, cuja descrição contenha as palavras 'Caes','Cao', 'Cachorro', 'Cachorros'.
	CREATE OR REPLACE VIEW PrCaes
	(cod_prod, nome, fabricante, valor_unitario_venda, descricao_prod, peso, cod_categ)
	AS SELECT cod_prod, nome, fabricante, valor_unitario_venda, descricao_prod, peso, cod_categ
	FROM Produto
	WHERE descricao_prod LIKE '%Caes%' OR  descricao_prod LIKE '%caes%' OR descricao_prod LIKE '%Cao%' OR  descricao_prod LIKE '%cao%' OR descricao_prod LIKE '%Cachorro%' OR  descricao_prod LIKE '%cachorro%' OR descricao_prod LIKE '%Cachorros%' OR descricao_prod LIKE '%cachorro%';
	
	SELECT * FROM Produto;
	SELECT * FROM PrCaes;

	INSERT INTO PrCaes VALUES(DEFAULT, 'Brinquedo Furacão Pet Bola Maciça Mamona Vermelho', 'Furacao Pet', 8.99, 'O Brinquedo Furacão Pet Bola Maciça Mamona Vermelho foi produzido em material de alta qualidade e durabilidade, seu pet vai estar sempre ativo de forma saudável e divertida! Uma ótima opção para deixar seu amigo longe do stress e da ansiedade.Indicação para cachorros', 100, 5);
	
-- • 02 visões robustas (e.g., com vários joins) com justificativa semântica, de acordo com os  requisitos da aplicação. 
 
 -- // Criação da View - vw_status_pedido
	CREATE OR REPLACE VIEW vw_status_pedido AS
	SELECT 
		c.cod_cliente AS cod_cliente,
		c.nome_cli AS NOME_CLIENTE, 
		e.cidade AS CIDADE,
		pe.cod_pedido   AS PEDIDO,
		sp.descricao_stts AS Status,
		tem.data_status    AS Data_Status
	FROM Cliente c
		JOIN Endereco e 
		  ON e.cod_cliente = c.cod_cliente
		JOIN Pedido_Entrega pe 
		  ON pe.cod_cliente = c.cod_cliente
		JOIN Tem 
		  ON tem.cod_entrega = pe.cod_entrega
		JOIN Status sp 
		  ON sp.cod_status = tem.cod_status;

	-- // Produtos mais vendidos
	CREATE OR REPLACE VIEW vw_produtos_mais_vendido; AS
	SELECT
		itemp.cod_prod AS Codigo,
		p.nome,
		c.nome_categ AS Categoria,
		SUM(itemp.quantidade) AS quantidade_total
	FROM
		Produto AS p
	JOIN ItemPedido AS itemp
		ON p.cod_prod = itemp.cod_prod
	JOIN Categoria AS c
		ON c.cod_categ = p.cod_categ
	GROUP BY
		itemp.cod_prod, p.nome, c.nome_categ
	ORDER BY
		quantidade_total DESC
		
	SELECT * FROM vw_produtos_mais_vendido;
		
		
				
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ C - INDICES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- • 03 índices para campos indicados com justificativa dentro do contexto das consultas  formuladas na questão 3a. 
	-- // Pra facilitar a busca de produtos pelo nome
	SELECT nome, valor_unitario_venda FROM Produto;

	CREATE INDEX index_produto ON Produto(nome);
	-- cria o indice, onde o nome do produto é o id

	EXPLAIN ANALYZE SELECT nome, valor_unitario_venda FROM Produto;
	--explica o que o select ta usando/fazendo

	--//Pra facilitar a busca de cliente pelo cpf
	SELECT cpf FROM Cliente;

	CREATE INDEX index_cpf ON Cliente(cpf);
	-- cria o indice, onde o cpf é o id.

	EXPLAIN ANALYZE SELECT cpf FROM Cliente;
	--explica o que o select ta usando/fazendo

	--// Pra facilitar a busca da entrega do pedido pelo codigo da entrega
	SELECT cod_entrega FROM Pedido_Entrega;

	CREATE INDEX index_pedido_entrega ON Pedido_Entrega(cod_entrega);
	-- cria o indice, onde o codigo da entrega é o id

	EXPLAIN ANALYZE SELECT cod_entrega FROM Pedido_Entrega;
	--explica o que o select ta usando/fazendo

				
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ D - REESCRITA DE CONSULTAS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- i. Identificar 02 exemplos de consultas dentro do contexto da aplicação (questão  3.a) que possam e devam ser melhoradas. Reescrevê-las. Justificar a reescrita.  

	-- // A consulta fica mais legível e compreensível
	SELECT nome_cli "Nome" 
	FROM Cliente 
	WHERE cod_cliente IN (SELECT cod_cliente 
						  FROM Endereco 
						  WHERE uf IN ('MG','PB') AND cod_cliente IN (SELECT cod_cliente
											   						  FROM Pedido_Entrega
																	  WHERE TO_CHAR(previsto_para,'MM') = '09'));
			

	-- // A consulta é simplificada e fica mais fácil de entendê-la
	SELECT prod.cod_prod, prod.nome
	FROM produto prod
	WHERE prod.cod_prod NOT IN (SELECT cod_prod
								FROM ItemPedido it
								WHERE it.cod_prod = prod.cod_prod);

				
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ E - FUNÇOES OU PROCEDURES ARMAZENADAS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- • 01 função que use SUM, MAX, MIN, AVG ou COUNT 
	
	-- // Calcula o frete de acordo com os pesos dos produtos e para calcula o valor total do pedido
	
	SELECT * FROM Pedido_Entrega;

	CREATE OR REPLACE FUNCTION CalculaTotalPedido(codigo INTEGER) 
  	RETURNS void
	AS $$
		DECLARE 
		aux decimal;
		auxws decimal;
		auxt varchar(2);
     BEGIN
		SELECT SUM ((prod.peso  * it.quantidade)/500)
		INTO auxws 
		FROM ItemPedido it JOIN Produto prod ON prod.cod_prod = it.cod_prod
		WHERE it.cod_pedido = codigo;
    	IF auxws IS NULL THEN RAISE EXCEPTION 'Código não existe --> %', codigo
			USING HINT = 'Por favor, verifique o código do pedido inserido';
		END IF;
		
		SELECT ende.uf
		INTO auxt
		FROM Pedido_Entrega ped
		JOIN Cliente cli ON cli.cod_cliente = ped.cod_cliente
		JOIN Endereco ende ON ende.cod_endereco = cli.cod_endereco
		WHERE cod_pedido = codigo;
		IF auxt IN ('PB','BA','RN','MA','PI', 'CE','PE', 'SE')	THEN
			aux = 0;
		END IF;
		
		UPDATE Pedido_Entrega
		SET valor_frete = aux
		WHERE cod_pedido = codigo;
		

	 	SELECT SUM ((prod.valor_unitario_venda * it.quantidade)+peden.valor_frete)
		INTO aux 
		FROM Pedido_Entrega peden JOIN ItemPedido it ON peden.cod_pedido = it.cod_pedido JOIN Produto prod ON prod.cod_prod = it.cod_prod
		WHERE it.cod_pedido = codigo;
    	IF aux IS NULL THEN RAISE EXCEPTION 'Código não existe --> %', codigo
			USING HINT = 'Por favor, verifique o código do pedido';
		END IF;
		UPDATE Pedido_Entrega
		SET valor_total = aux
		WHERE cod_pedido = codigo;  
     END; 
     $$ LANGUAGE 'plpgsql';

	SELECT CalculaTotalPedido (5);
	
				
-- • Mais 02 funções ou procedures com justificativa semântica, conforme os requisitos da  aplicação 
/* ** Pelo menos uma função deve ter um exemplo de tratamento de exceção */
	
	-- // Funcao para atualizar estoque
	CREATE OR REPLACE FUNCTION atualiza_estoque() RETURNS TRIGGER AS
	$$
	DECLARE
	  qtd integer; -- quantidade disponível do produto em estoque
	BEGIN
	  SELECT qtdd_prod FROM Produto WHERE cod_prod = NEW.cod_prod  INTO qtd;
	  IF qtd < NEW.quantidade THEN
		RAISE EXCEPTION 'Quantidade indisponível em estoque.';
	  ELSE
		UPDATE Produto SET qtdd_prod = qtdd_prod - NEW.quantidade
		  WHERE cod_prod = NEW.cod_prod;
	  END IF;
	  RETURN NEW;
	END
	$$ LANGUAGE 'plpgsql';


	-- // Função para verificar Status Atual da Entrega
	CREATE OR REPLACE FUNCTION VerifStatusAtual(v_codent INTEGER) 
  	RETURNS varchar AS $$
	DECLARE
			E_cod Pedido_Entrega.cod_entrega%type;
			P_previsao Pedido_Entrega.previsto_para%type;
			S_status Status.descricao_stts%type;
			S_data Tem.data_status%type;
			msg varchar(200);
     BEGIN

		SELECT pent.cod_entrega, pent.previsto_para, stat.descricao_stts, tem.data_status
		INTO STRICT E_cod, P_previsao, S_status, S_data  
		FROM Tem JOIN Pedido_Entrega pent ON pent.cod_entrega = tem.cod_entrega JOIN Status stat ON stat.cod_status = tem.cod_status
		WHERE pent.cod_entrega = v_codent;
		
		SELECT 'Código:'||E_cod || ' -- '|| 'Previsão de entrega:' || P_previsao || ' -- '|| 'Status:'||S_status || ' -- '|| 'Data de atualização:' ||S_data INTO msg;
		RETURN msg;
		
		EXCEPTION 
			WHEN no_data_found THEN
				RETURN 'Código de entrega não existe';

			WHEN OTHERS THEN
				RETURN 'Erro desconhecido ';
		
     END; 
     $$ LANGUAGE 'plpgsql';
	
	SELECT VerifStatusAtual(4);
	SELECT VerifStatusAtual(19);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ F - TRIGGERS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- • 02 diferentes triggers com justificativa semântica, de acordo com os requisitos da  aplicação. 
	
	-- // Auxilia na atualizacao do Estoque (Antes de haver um insert na tabela ItemPedido)
	SELECT * FROM Produto;
	
	CREATE TRIGGER trig_att_estoque
	BEFORE INSERT ON ItemPedido
	FOR EACH ROW
	EXECUTE PROCEDURE atualiza_estoque();
	
	
	-- // Clientes como menos de 18 não podem ser inseridos
	CREATE TRIGGER verificandoidade
	BEFORE INSERT ON Cliente
	FOR EACH ROW
	EXECUTE PROCEDURE VerifIdade();
	
	CREATE OR REPLACE FUNCTION VerifIdade()
	RETURNS TRIGGER AS $$
		DECLARE idade integer;
	BEGIN
		SELECT ABS(EXTRACT(YEAR FROM AGE(NEW.data_nasc))) INTO idade;
		IF idade < 18 THEN
			RAISE EXCEPTION '%', 'Menor de 18 anos';
		END IF;
		RETURN NEW;
	END;
	$$ LANGUAGE 'plpgsql';
	
	
	-- // Verificando se pagamento é válido
	CREATE TRIGGER verificandopags
	BEFORE INSERT ON Pedido_Entrega
	FOR EACH ROW
	EXECUTE PROCEDURE VerifPags();
	
	CREATE OR REPLACE FUNCTION VerifPags()
	RETURNS TRIGGER AS $$
		DECLARE pags integer;

	BEGIN
		SELECT NEW.cod_pag INTO pags;
		
		IF pags NOT IN (1,2,3) THEN
			RAISE EXCEPTION '%', 'Meio de pagamento inválido'
			USING HINT = 'Por favor, informe um código válido';
		END IF;

		RETURN NEW;
	END;
	$$ LANGUAGE 'plpgsql';
	
	INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '26/09/2021', DEFAULT, 8, 5);

	
