CREATE TABLE Categoria (
	cod_categ                             SERIAL,
    nome_categ                            VARCHAR(45),
	CONSTRAINT pk_cod_categ               PRIMARY KEY(cod_categ)
);

CREATE TABLE Status (
    cod_status                            SERIAL,
    descricao_stts                        VARCHAR(40),
	CONSTRAINT pk_cod_status              PRIMARY KEY(cod_status)
);

CREATE TABLE Pagamento (
    cod_pag                               SERIAL,
    nome_meio_pag                         VARCHAR(20),
	CONSTRAINT pk_cod_pag                 PRIMARY KEY(cod_pag)
);

CREATE TABLE Produto (
	cod_prod                              SERIAL,
	nome                                  VARCHAR(200),
    fabricante                            VARCHAR(50),
    valor_unitario_venda                  DECIMAL(9,2),
    largura                               DECIMAL(9,2),
    altura                                DECIMAL(9,2),
    preco_custo                           DECIMAL(9,2),
    comprimento                           DECIMAL(9,2),
    qtdd_prod                             INTEGER,
    descricao_prod                        VARCHAR(1000),
    peso                                  DECIMAL(9,2),
    cod_categ                             INTEGER,
	CONSTRAINT pk_cod_prod                PRIMARY KEY(cod_prod),
	CONSTRAINT fk_cod_categ               FOREIGN KEY(cod_categ)               REFERENCES Categoria(cod_categ)
);

CREATE TABLE Endereco (
    cod_endereco                          SERIAL                              NOT NULL,
	cod_cliente                           INTEGER,
    cep                                   VARCHAR(8),
    bairro                                VARCHAR(20),
    cidade                                VARCHAR(50),
    uf                                    CHAR(2),
    numero                                VARCHAR(5),
    complemento                           VARCHAR(15),
	CONSTRAINT pk_endereco                PRIMARY KEY(cod_endereco)
);

CREATE TABLE Cliente (
	cod_cliente                           SERIAL,
	data_nasc                             DATE                                 NOT NULL,
    nome_cli                              VARCHAR(50),
    cpf                                   VARCHAR(14)                          NOT NULL               UNIQUE,
    cod_endereco                          INTEGER,
    telefone                              VARCHAR(14),
    email_cli                             VARCHAR(50),
    login_cli                             VARCHAR(20)                           UNIQUE,
    senha_cli                             VARCHAR(40)                           UNIQUE,
    cartao_crdt                           VARCHAR(20),
	CONSTRAINT pk_cod_cliente             PRIMARY KEY(cod_cliente)
);

ALTER TABLE Endereco    ADD CONSTRAINT fk_cod_cliente      FOREIGN KEY(cod_cliente)          REFERENCES Cliente(cod_cliente);
ALTER TABLE Cliente     ADD CONSTRAINT fk_cod_endereco     FOREIGN KEY(cod_endereco)         REFERENCES Endereco(cod_endereco);

CREATE TABLE Pedido_Entrega (
    cod_pedido                            SERIAL,
    valor_total                           DECIMAL(9,2),
    previsto_para                         DATE,
    cod_entrega                           SERIAL                                UNIQUE,
    cod_cliente                           INTEGER,
    cod_pag                               INTEGER,
	valor_frete                           DECIMAL(9,2),  
	CONSTRAINT pk_pedido_entrega          PRIMARY KEY(cod_pedido),
	CONSTRAINT fk_cod_pag                 FOREIGN KEY(cod_pag)                 REFERENCES Pagamento(cod_pag),
	CONSTRAINT fk_cod_cliente             FOREIGN KEY(cod_cliente)             REFERENCES Cliente(cod_cliente)

);

CREATE TABLE ItemPedido (
    cod_prod                              INTEGER,
    cod_pedido                            INTEGER,
    quantidade                            INTEGER,
	CONSTRAINT pk_itens                   PRIMARY KEY(cod_pedido, cod_prod),
	CONSTRAINT fk_cod_prod                FOREIGN KEY(cod_prod)                REFERENCES Produto(cod_prod),
	CONSTRAINT fk_cod_pedido              FOREIGN KEY(cod_pedido)              REFERENCES Pedido_Entrega(cod_pedido)
);

CREATE TABLE Tem (
	cod_status                            INTEGER,
    cod_entrega                           INTEGER,
	data_status                           DATE,
	loc_geo                               VARCHAR(50),
	CONSTRAINT fk_cod_status              FOREIGN KEY(cod_status)              REFERENCES Status(cod_status),
	CONSTRAINT fk_cod_entrega             FOREIGN KEY(cod_entrega)             REFERENCES Pedido_Entrega(cod_entrega)
);
