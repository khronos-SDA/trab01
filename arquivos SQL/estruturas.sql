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
