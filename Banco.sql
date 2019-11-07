use master
CREATE DATABASE SwapTool
USE SwapTool


CREATE TABLE usuario(
cpf BIGINT not null,
nome VARCHAR (20) not null,
sobrenome VARCHAR(25) not null,
email VARCHAR (50) not null,
senha VARCHAR (150) not null,
CONSTRAINT pk_usuario PRIMARY KEY (cpf));
select * from usuario;

CREATE TABLE endereco(
cod_endereco INT not null,
cpf BIGINT not null,
numero INT null,
complemento VARCHAR (30) null,
cep INT not null,
CONSTRAINT pk_endereco PRIMARY KEY (cod_endereco,cpf),
CONSTRAINT fk_endereco FOREIGN KEY (cpf) references usuario(cpf));
select * from endereco;

CREATE TABLE ddd(
cod_ddd INT not null,
descricao INT not null,
CONSTRAINT pk_ddd PRIMARY KEY (cod_ddd));
select * from ddd;


CREATE TABLE telefone(
cod_telefone INT not null,
cpf BIGINT not null,
numero INT not null,
tipo VARCHAR (20) null,
cod_ddd INT not null,
CONSTRAINT pk_telefone PRIMARY KEY (cod_telefone),
CONSTRAINT fk_telefone FOREIGN KEY (cod_ddd) references ddd (cod_ddd),
CONSTRAINT fk_telefone_usuario FOREIGN KEY (cpf) references usuario (cpf));
select * from telefone;

ALTER TABLE telefone ADD FOREIGN KEY (cpf) REFERENCES usuario(cpf);

CREATE TABLE marca (
cod_marca INT not null,
descricao VARCHAR(20) not null,
CONSTRAINT pk_marca PRIMARY KEY (cod_marca));
select * from marca;

CREATE TABLE modelo (
cod_modelo INT not null,
cod_marca INT not null,
descricao VARCHAR (20) not null,
CONSTRAINT pk_modelo PRIMARY KEY (cod_modelo),
CONSTRAINT fk_modelo FOREIGN KEY (cod_marca) references marca (cod_marca));
select * from modelo;


CREATE TABLE descricaopeca(
cod_descricaopeca INT NOT null,
qnt_memoria VARCHAR(25) null,
versao VARCHAR(50) null,
threads INT null,
nucleos INT null,
frequencia VARCHAR(50) null,
desc_ddr VARCHAR(50) null,
desc_soquete VARCHAR(50) null,
cod_modelo INT NOT null,
CONSTRAINT pk_descricaopeca PRIMARY KEY (cod_descricaopeca),
CONSTRAINT fk_descricaopeca_modelo FOREIGN KEY (cod_modelo) references modelo(cod_modelo));

CREATE TABLE peca(
    cod_peca INT NOT null,
    cod_descricaopeca INT NOT null,
    cpf BIGINT NOT null,
    CONSTRAINT pk_peca PRIMARY KEY (cod_peca),
    CONSTRAINT fk_peca_descricaopeca FOREIGN KEY (cod_descricaopeca) references descricaopeca(cod_descricaopeca),
    CONSTRAINT fk_peca_cpf FOREIGN KEY (cpf) references usuario(cpf)
);


ALTER TABLE peca ADD FOREIGN KEY (cod_descricaopeca) REFERENCES descricaopeca(cod_descricaopeca);
ALTER TABLE peca ADD FOREIGN KEY (cpf) REFERENCES usuario(cpf);

CREATE TABLE pedido(
    cod_pedido INT NOT null,
    cod_peca INT NOT null,
    cpf BIGINT NOT null,
    CONSTRAINT cod_pedido PRIMARY KEY (cod_pedido),
    CONSTRAINT fk_pedido_peca FOREIGN KEY (cod_peca) references peca(cod_peca)),
    CONSTRAINT fk_pedido_cpf FOREIGN KEY (cpf) references usuario(cpf)
);