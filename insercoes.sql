-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ INSERINDO DADOS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



-- _______________________________________ TABELA CATEGORIA ________________________________________
INSERT INTO Categoria VALUES(DEFAULT, 'ALIMENTOS');
INSERT INTO Categoria VALUES(DEFAULT, 'PETISCOS');
INSERT INTO Categoria VALUES(DEFAULT, 'MEDICAMENTOS');
INSERT INTO Categoria VALUES(DEFAULT, 'ACESSORIOS/COLEIRA');
INSERT INTO Categoria VALUES(DEFAULT, 'BRINQUEDOS');
INSERT INTO Categoria VALUES(DEFAULT, 'CASINHAS/AQUARIOS/VIVEIROS');
INSERT INTO Categoria VALUES(DEFAULT, 'LIMPEZA');
INSERT INTO Categoria VALUES(DEFAULT, 'ADESTRAMENTO/COMPORTAMENTO');
INSERT INTO Categoria VALUES(DEFAULT, 'CAMINHAS/ARRANHADORES');
INSERT INTO Categoria VALUES(DEFAULT, 'CAIXAS/BOLSAS DE TRANSPORTE');
INSERT INTO Categoria VALUES(DEFAULT, 'EQUIPAMENTOS');



-- ________________________________________ TABELA STATUS __________________________________________
INSERT INTO Status VALUES(DEFAULT, 'Pedido realizado com sucesso!');
INSERT INTO Status VALUES(DEFAULT, 'Objeto ainda nao chegou a unidade');
INSERT INTO Status VALUES(DEFAULT, 'Encaminhado para transportadora');
INSERT INTO Status VALUES(DEFAULT, 'Em posse da transportadora');
INSERT INTO Status VALUES(DEFAULT, 'Chegou a transportadora');
INSERT INTO Status VALUES(DEFAULT, 'Saiu das instalacoes da transportadora');
INSERT INTO Status VALUES(DEFAULT, 'Saiu para entrega');
INSERT INTO Status VALUES(DEFAULT, 'Pedido entregue');
INSERT INTO Status VALUES(DEFAULT, 'Em atraso');



-- _______________________________________ TABELA PAGAMENTO ________________________________________
INSERT INTO Pagamento VALUES(DEFAULT, 'Credito');
INSERT INTO Pagamento VALUES(DEFAULT, 'Boleto');
INSERT INTO Pagamento VALUES(DEFAULT, 'Debito');



-- ________________________________________ TABELA PRODUTO _________________________________________
INSERT INTO Produto VALUES(DEFAULT, 'Bebedouro Classic Pelos Longos Pet Vermelho', 'Furacao Pets', 20.90, 20, 5, 12.90, 10, 20, 'Este bebedouro e super especial. Ele e indicado para caes de pelos longos como maltes, lhasa apso, shih-tsu, york, dentre outras. A peca branca de dentro e feita de plastico que boia de acordo com o volume de agua do recipiente, fazendo com que o caozinho beba a agua apenas no orificio do coraozinho, evitando desta forma que o mesmo fique com o focinho ou bigode encharcado e molhe o piso da sua casa ou apartamento.', 200, 11);
INSERT INTO Produto VALUES(DEFAULT, 'Areia para Gato Pipicat Ultra Dry Kelco', 'Dry Kelco', 34.90, 30, 40, 18.90, 60, 200, 'A Areia para Gato Pipicat Ultra Dry Kelco e elaborada com graos ultrafinos, que possuem alto poder de absorcao. Quando entram em contato com a urina e as fezes do seu gatinho sao formados torroes ultrarresistentes, o que torna a remocao muito mais facil e contribui para manter a caixa de areia do gato sempre limpa e seca. A Areia para Gato Pipicat Ultra Dry Kelco ajuda a neutralizar os odores da urina e das fezes do seu gatinho, contribuindo para a limpeza e organização geral do ambiente, e e biodegradavel e muito economica. Voce remove apenas os torroes formados pela urina ou fezes do gato, e reaproveita o restante do produto.', 4000, 7);
INSERT INTO Produto VALUES(DEFAULT, 'Arranhador Super Cat Relax Pop Rosa Furacão Pet', 'Furacao Pet', 49.90, 42, 5, 29.90, 44, 50, 'O Arranhador Super Cat Relax Pop Furacão Pet e um brinquedo para distracao do seu gato, para descansar e brincar sem sair do lugar, um anti-stress para seu gatinho com design super arrojado. Possui no centro um feltro para os gatos afiarem suas unhas, servindo de arranhador e deixando o local mais atrativo. Possui tambem canaleta lateral para a circulacao da bolinha.', 500, 9);
INSERT INTO Produto VALUES(DEFAULT, 'Caixa de Transporte Love Travel Pet Injet Lilas', 'Pet Injet', 88.90, 30, 26.5, 49.90, 45, 20, 'Pet: Gatos e Cachorros - Porte de Raaa: Pequeno - Material: Plastico', 800, 10);
INSERT INTO Produto VALUES(DEFAULT, 'Racao Peixes Fundo Poytara', 'Poytara', 15.90, 5, 9, 7.90, 10, 30, 'Poytara Peixes de Fundo foi desenvolvido para peixes com habito onivoro/herbivoro, que se alimentem no fundo. Produto extrusado de alta densidade, desenvolvido para favorecer a rapida descida do granulo ao fundo, de modo que o alimento nao sofra ataques dos peixes de superficie e de meia agua. Na agua, os granulos liberarao, gradativamente, pequenas particulas do alimento, de forma que peixes de boca pequena, como as coridoras, tambem possam ingeri-las. Contem ingredientes que atuam como imunoestimulantes.', 50, 1);
INSERT INTO Produto VALUES(DEFAULT, 'Gaiola para Canario Quatigua', 'Quatigua', 96.50, 19, 42, 49.00, 40, 10, 'Gaiola de madeira de pinus estilo "Arco" com arame,fundo de chapa galvanizada com frente de madeira com pintura preta e puxador.', 600, 6);
INSERT INTO Produto VALUES(DEFAULT, 'Antipulgas Simparic Caes 20 mg 5,1 a 10 kg', 'Zoetis', 85.90, 6, 2, 49.90, 10, 70, 'Mata as pulgas antes que produzam ovos - E eficaz contra 11 especies de carrapatos - Comprimido mastigavel, altamente palatavel - Pode ser utilizado em cachorros de portes e racas diferentes - Disponivel em embalagens com 1 ou 3 tabletes mastigaveis de 20mg - Utilizada no controle da dermatite alergica por picada de pulga (DAPP) - Combate tambem tres tipos de sarnas: Sarcopticas, Demodecica e Otodecica', 20, 3);
INSERT INTO Produto VALUES(DEFAULT, 'Gaiola para Hamster e Pequenos Roedores 3 Andares com Teto Completa', 'Ornamental', 189.00, 26, 44, 109, 30, 10, 'Indicada para hamster topolino, anao russo, chines, sirio e outros roedores. Fabricada em material aramado com pintura epoxi de excelente acabamento e resistencia. Acompanha 1 casinha e 3 roda de exercicios com diametro de 14 cm para manter a atividade fisica do seu pet em dia. As cores sao variadas podendo ser diferente a do anuncio. Tudo que seu roedor precisa esta neste habitat', 700, 6);
INSERT INTO Produto VALUES(DEFAULT, 'Tapete Higienico Tico Pads Filhotes Expet', 'Expet', 58.90, 60, 30, 29.90, 65, 75, 'O Tapete Higienico Tico Pads Filhotes Expet e uma otima ferramenta para o cao que ainda esta aprendendo o local correto de fazer suas necessidades. Com alto poder de absorcao, o tapete elimina os odores que tanto incomodam. Com uma poderosa fita adesiva, o Tapete Higienico Tico Pads Filhotes Expet pode ser fixado em diferentes superficies lisas, ate mesmo em laterais. Ele e indicado para filhotes e caes de pequeno porte. O Tapete Higienico Tico Pads Filhotes Expet tambem ajuda muito naqueles dias em que e tao dificil sair com os cachorros, principalmente para quem mora em apartamento. Ele garante protecao durante 24 horas.', 1000, 2);
INSERT INTO Produto VALUES(DEFAULT, 'Petisco Origem Natural Crost Crostine Angus', 'Angus', 19.90, 1, 10, 11.90, 16, 230, 'O Petisco Origem Natural Crost Crostine Angus e um petisco para cachorro e um grande aliado de adestramento para o seu pet em varias situacoes, ele pode ser uma recompensa que ajuda ensinar o novo truque durante o adestramento. Produto natural facil digestao e tem alto valor proteico de sabor irresistivel, auxilia a limpeza mecanica dos dentes e a prevencao de placas e tartaros.', 100, 10);
INSERT INTO Produto VALUES(DEFAULT, 'Ração Affinity PetCare GranPlus Frango e Arroz para Gatos Castrados Adultos', 'GranPlus', 23.31, 10, 27, 17.90, 51, 20, 'A Ração Affinity PetCare GranPlus Frango e Arroz para Gatos Castrados Adultos e um alimento de alta qualidade, com controle de calorias e feito com ingredientes nobres e funcionais, que proporciona uma experiencia irresistivel para seu gato castrado enquanto ajuda a manter seu peso.', 1000, 1);



-- _______________________________________ TABELA ENDEREÇO _________________________________________
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES (DEFAULT, 44046-512,'Asa Branca','Feira de Santana','BA', '555','casa');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,57071-617,'Clima Bom','Maceio','AL', '125','AP 505');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,58417-178,'Santa Cruz','Campina Grande','PB', '1120','AP 201');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,70745-010,'Asa Norte','Brasilia','DF', '955','casa');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,54245-105,'Floriano','Jaboatao dos Guararapes','PE', '466','casa');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,32042-310,'Olinda','Contagem','MG', '888','AP 1705');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,25510-400,' Centro','Sao Joao de Meriti','RJ', '630','AP 306');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,58804-220,' Sao Jose','Sousa','PB', '888','casa');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT,85817-830,' Morumbi','Cascavel','PR', '1025','casa');
INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT, 59066-845,'Candelaria','Natal','RN', '268','AP 405');


INSERT INTO Endereco (cod_endereco, cep, bairro, cidade, uf, numero, complemento) VALUES(DEFAULT, 59051-2210,'Alecrim','Natal','RN', '234','AP 302');



-- ________________________________________ TABELA CLIENTE _________________________________________
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '03/05/1968', 'Carlos Onofre Silva', '175.845.658-75', '83985457895', 'ofreos1980@gmail.com', 'ofreos1980', 'OF123456', '5262 6343 8061 2414');
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '18/12/1958', 'Daniela Jordana Leite', '090.854.985-12', '81999275412', 'jordleit@hotmail.com', 'jordana2000', 'DJ654321', '4844 6545 9082 6091');
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '23/06/1991','Antonio Mauricio Albuquerque', '079.652.384-85', '05511986789089', 'albur1995qq@gmail.com', 'albur1995qq', 'ANM123456', NULL);
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '23/02/1966', 'Valquiria Marrocos Cavalcante', '088.987.654-52', '6288851181', 'valqca1512@yahoo.com', 'valqmar', '123456VMC', '3764 363712 31053');
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '01/02/1953', 'Daniel Aciole Barbosa', '089.523.514-85', '11888965241', 'dnielbarb@gmail.com', 'danielbarbosa2000', 'DAB123456', '6062 8293 0271 1738');
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '29/08/1986', 'Claudia Braga Coutinho', '092.548.956-52', '41859612453', 'clauclaubc@hotmail.com', 'claudiabraga2020', 'CBC', '6062 8293 0271 1738');
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '18/08/1999', 'Valdiney Pinto Lemos', '089.654.852-57', '82985964512', 'valdiney151098@gmail.com', 'valdiney151098', 'VP852963', '3578 8556 2033 3966');
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '20/09/1981', 'Alene Winter', '738.857.788-23', '65985741245', 'alene5263@gmail.com', 'alene2021', 'AW123456', '5089 3986 4757 7254');
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '14/12/1994', 'Oscar Preece', '078.739.546-33', '65974125636', 'oscar1990@hotmail.com', 'oscarpreece2021', '123456OP', NULL);
INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '01/10/1994', 'Agueda Roche', '566.081.143-46', '81985632189', 'agueda1998@hotmail.com', 'agueda2019', 'AR21101998', '3846 658395 9472');


INSERT INTO Cliente (cod_cliente,data_nasc,nome_cli,cpf,telefone, email_cli, login_cli, senha_cli, cartao_crdt) VALUES(DEFAULT, '09/01/2008','Jeanett Davison', '895.638.373-12', '8198662674', 'Jeanett_Davison@hotmail.com', 'JeanettDav', 'iDfJtHQTEwxc5ei', '5380422127188717');


-- `´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´`
UPDATE Endereco SET cod_cliente = 1 WHERE cod_endereco = 1;

DO $$ DECLARE
	contador integer := 0;
	aux public.Endereco%ROWTYPE;
	cursor_end CURSOR FOR
              SELECT cod_cliente,cod_endereco FROM Endereco;
	BEGIN
		FOR aux IN cursor_end  LOOP
			SELECT MAX(cod_cliente) + 1 INTO contador FROM Endereco;
			UPDATE Endereco 
			SET cod_cliente = contador
			WHERE cod_endereco = contador;
		END LOOP;
	END$$;



UPDATE Cliente SET cod_endereco = 1 WHERE cod_cliente = 1;

DO $$ DECLARE
	cont integer := 0;
	aux public.Cliente%ROWTYPE;
	cursor_cli CURSOR FOR
              SELECT cod_endereco , cod_cliente FROM Cliente;
	BEGIN
		FOR aux IN cursor_cli LOOP
			SELECT MAX(cod_endereco) + 1 INTO cont FROM Cliente;
			UPDATE Cliente
			SET cod_endereco = cont
			WHERE cod_cliente = cont;
		END LOOP;
	END$$;



-- ´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´

-- _____________________________________ TABELA PEDIDO_ENTREGA _____________________________________
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '01/10/2021', DEFAULT, 1, 2);
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '11/10/2021', DEFAULT, 2, 3);
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '25/09/2021', DEFAULT, 3, 1);
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '27/09/2021', DEFAULT, 4, 2);
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '03/10/2021', DEFAULT, 5, 3);
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '09/10/2021', DEFAULT, 6, 1);
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '10/10/2021', DEFAULT, 7, 2);

INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '26/09/2021', DEFAULT, 8, 3);
INSERT INTO Pedido_Entrega (cod_pedido, previsto_para,cod_entrega, cod_cliente, cod_pag) VALUES (DEFAULT, '01/10/2021', DEFAULT, 9, 1);

-- 2 livres daqui p baixo




-- ______________________________________ TABELA ITEMPEDIDO _______________________________________
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (1, 5, 3);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (3, 2, 2);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (4, 1, 5);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (5, 3, 4);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (6, 2, 10);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (7, 4, 6);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (8, 6, 5);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (9, 7, 15);

INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (10, 8, 3);
INSERT INTO ItemPedido (cod_prod, cod_pedido, quantidade) VALUES (2, 9, 1);

	

-- _______________________________________ TABELA TEM _________________________________________
INSERT INTO Tem VALUES(3, 1, '16/09/2021', 'Joao Pessoa');
INSERT INTO Tem VALUES(3, 2, '19/09/2021', 'Joao Pessoa');
INSERT INTO Tem VALUES(3, 3, '16/09/2021', 'Joao Pessoa');
INSERT INTO Tem VALUES(3, 4, '05/09/2021', 'Joao Pessoa');
INSERT INTO Tem VALUES(3, 5, '01/09/2021', 'Joao Pessoa');
INSERT INTO Tem VALUES(3, 6, '22/08/2021', 'Joao Pessoa');																			   
INSERT INTO Tem VALUES(3, 7, '08/09/2021', 'Joao Pessoa');	

INSERT INTO Tem VALUES(3, 8, '25/08/2021', 'Joao Pessoa');
INSERT INTO Tem VALUES(3, 9, '20/08/2021', 'Joao Pessoa');	

																		   
