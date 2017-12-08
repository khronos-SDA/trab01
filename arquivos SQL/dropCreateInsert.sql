
/* Drop table */

drop table if existis aluno;
drop table if existis curso;
drop table if existis documento;
drop table if existis municipio;
drop table if existis orgao_emissor;
drop table if existis rg;
drop table if existis tipo_documeto;
drop table if existis titulo_eleitor;
drop table if existis uf;

/* Create */

CREATE TABLE aluno (
    nome Varchar(150),
    matricula Varchar(13) PRIMARY KEY,
    FK_curso_codigo_curso Serial
);

CREATE TABLE rg (
    nome_pai Varchar(150),
    nome_mae Varchar(150),
    data_de_nascimento Date,
    FK_documento_id_documento Integer PRIMARY KEY,
    FK_uf_codigo_uf Serial
);

CREATE TABLE titulo_eleitor (
    zona Integer,
    secao Integer,
    FK_documento_id_documento Integer PRIMARY KEY,
    FK_municipio_codigo_municipio Serial
);

CREATE TABLE municipio (
    codigo_municipio Serial PRIMARY KEY,
    nome_municipio Varchar(150)
);

CREATE TABLE orgao_emissor (
    codigo_oe Serial PRIMARY KEY,
    nome Varchar(150)
);

CREATE TABLE uf (
    codigo_uf Serial PRIMARY KEY,
    nome Varchar(150)
);

CREATE TABLE curso (
    codigo_curso Serial PRIMARY KEY,
    nome Varchar(150)
);

CREATE TABLE documento (
    numero_documento  Integer,
    id_documento Integer PRIMARY KEY,
    data_de_expedicao Date,
    FK_orgao_emissor_codigo_oe Serial,
    FK_aluno_matricula Varchar(13),
    FK_tipo_documento_codigo_tipo Serial
);

CREATE TABLE tipo_documento (
    codigo_tipo Serial PRIMARY KEY,
    descricao Varchar(100)
);

/* Alter table */
 
ALTER TABLE aluno ADD CONSTRAINT FK_aluno_1
    FOREIGN KEY (FK_curso_codigo_curso)
    REFERENCES curso (codigo_curso)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE rg ADD CONSTRAINT FK_rg_1
    FOREIGN KEY (FK_documento_id_documento)
    REFERENCES documento (id_documento)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE rg ADD CONSTRAINT FK_rg_2
    FOREIGN KEY (FK_uf_codigo_uf)
    REFERENCES uf (codigo_uf)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE titulo_eleitor ADD CONSTRAINT FK_titulo_eleitor_1
    FOREIGN KEY (FK_documento_id_documento)
    REFERENCES documento (id_documento)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE titulo_eleitor ADD CONSTRAINT FK_titulo_eleitor_2
    FOREIGN KEY (FK_municipio_codigo_municipio)
    REFERENCES municipio (codigo_municipio)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE documento ADD CONSTRAINT FK_documento_1
    FOREIGN KEY (FK_orgao_emissor_codigo_oe)
    REFERENCES orgao_emissor (codigo_oe)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE documento ADD CONSTRAINT FK_documento_2
    FOREIGN KEY (FK_aluno_matricula)
    REFERENCES aluno (matricula)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE documento ADD CONSTRAINT FK_documento_3
    FOREIGN KEY (FK_tipo_documento_codigo_tipo)
    REFERENCES tipo_documento (codigo_tipo)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
	
/* Insert */

insert into curso(codigo_curso, nome) values (1, 'BSI');
insert into curso(codigo_curso, nome) values (2, 'CECA');
insert into curso(codigo_curso, nome) values (3,'TPMI');
insert into curso(codigo_curso, nome) values (4,'TPMAI');
insert into curso(codigo_curso, nome) values (5,'TPMMSI');
insert into curso(codigo_curso, nome) values (6,'TIIMI');
insert into curso(codigo_curso, nome) values (7,'TIMAI');


insert into uf(codigo_uf, nome) values (1, 'RN');
insert into uf(codigo_uf, nome) values (2, 'ES');
insert into uf(codigo_uf, nome) values (3, 'AM');
insert into uf(codigo_uf, nome) values (4, 'BR');
insert into uf(codigo_uf, nome) values (5, 'MA');
insert into uf(codigo_uf, nome) values (6, 'MG');
insert into uf(codigo_uf, nome) values (7, 'RS');
insert into uf(codigo_uf, nome) values (8, 'SC');
insert into uf(codigo_uf, nome) values (9, 'AC');
insert into uf(codigo_uf, nome) values (10, 'RJ');


insert into municipio(codigo_municipio, nome_municipio) values (1, 'Mossoró');
insert into municipio(codigo_municipio, nome_municipio) values (2, 'Viana');
insert into municipio(codigo_municipio, nome_municipio) values (3, 'Vitória');
insert into municipio(codigo_municipio, nome_municipio) values (4, 'Serra');
insert into municipio(codigo_municipio, nome_municipio) values (5, 'Vila Velhaó');
insert into municipio(codigo_municipio, nome_municipio) values (6, 'Mangueirinha');
insert into municipio(codigo_municipio, nome_municipio) values (7, 'Docas do Rio Preto');
insert into municipio(codigo_municipio, nome_municipio) values (8, 'Ribeirão Branco');


insert into orgao_emissor(codigo_oe, nome) values (1, 'SESP');
insert into orgao_emissor(codigo_oe, nome) values (2, 'Receita Federal do Brasil');
insert into orgao_emissor(codigo_oe, nome) values (3, 'Tribunal Superior Eleitoral');


insert into tipo_documento(codigo_tipo, descricao) values (1, 'CPF');
insert into tipo_documento(codigo_tipo, descricao) values (2, 'RG');
insert into tipo_documento(codigo_tipo, descricao) values (3, 'Título de Eleitor');


insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Vinicius Santos Tosta', '20091ceca0125', 2); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Tiago Souza Alves', '20122bsi0847', 1); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Yasmin Cardoso Oliveira', '20161bsi5512', 1); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Rafaela Castro Gomes', '20142ceca6398', 2); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Fábio Barros Rodrigues', '20171ceca1234', 2); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Carolina Cavalcanti  Araújo ', '20152bsi7845', 1); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Alice  Sousa da Silva', '20172bsi0981', 1); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Vitor Pereira Alves', '20151ceca0025', 2); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Júlio Lima Azevedo', '20172ceca5598', 2); 
insert into aluno(nome, matricula, fk_curso_codigo_curso) values ('Julieta Oliveira Fernandes', '20132bsi6647', 1); 


insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (974909  , 3, '1980-08-29', 1, '20091ceca0125',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (569542 , 4, '2007-09-08', 1, '20122bsi0847',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (484562 , 5, '2001-12-22', 1, '20161bsi5512',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (716601 , 6, '2002-02-09', 1, '20142ceca6398',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (119774 , 7, '1999-08-02', 1, '20171ceca1234',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (880910 , 8, '2007-08-09', 1, '20152bsi7845',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (909514 , 9, '1999-07-06', 1, '20172bsi0981',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (955706 , 13, '2001-11-08', 1, '20151ceca0025',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (104295 , 11, '1988-04-02', 1, '20172ceca5598',2);
insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values (713636 , 10, '2007-07-07', 1, '20132bsi6647',2);


insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (007,0098,3,1);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (051,0058,4,2);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (019,0022,5,3);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (078,0093,6,3);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (025,0017,7,4);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (036,0008,8,4);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (099,0029,9,5);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (014,0019,10,6);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (087,0066,11,7);
insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values (255,0043,13,8);


insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('José Eduardo Correia Tosta', 'Maria Madalena Santos Tosta', '1989-05-28', 3, 1);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Augusto Caio Heitor Alves', 'Amanda Castro Souza', '1990-11-04', 4, 1);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Lorenzo Diogo Nicolas Oliveira', 'Bruna Santos Cardoso', '1984-08-24', 5, 1);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Tomás Vitor Gomes', 'Giovanna Pinto Castro', '1994-09-29', 6, 3);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Samuel Henry Rodrigues', 'Marina Dias Barros', '1988-11-26', 7, 4);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Anthony Benício Marcelo Araújo', 'Nicole Cardoso Cavalcanti', '1985-08-15', 8, 5);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('João Augusto da Silva', 'Larissa Rocha Sousa', '1999-09-09', 9, 1);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Estevan Martins Alves', 'Leila Almeida Pereira', '1982-03-12', 10, 1);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Pedro Castro Azevedo', 'Luiza Rodrigues Lima', '1975-05-16', 11, 1);
insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values ('Nicolas Rodrigues Fernandes', 'Luana Castro Oliveira', '1988-02-08', 13, 1);
