/* Lógico_1: */

CREATE TABLE Aluno (
    nome Varchar(150),
    matricula Varchar(13) PRIMARY KEY,
    FK_Curso_codigo_curso Serial
);

CREATE TABLE RG (
    nome_pai Varchar(150),
    nome_mae Varchar(150),
    FK_Documento_id_documento Integer PRIMARY KEY,
    FK_UF_codigo_uf Serial,
    data_nascimento Date
);

CREATE TABLE Titulo_eleitor (
    zona Integer,
    secao Integer,
    FK_Documento_id_documento Integer PRIMARY KEY,
    FK_Municipio_codigo_municipio Serial
);

CREATE TABLE Municipio (
    codigo_municipio Serial PRIMARY KEY,
    nome_municipio Varchar(150)
);

CREATE TABLE Orgao_emissor (
    codigo_oe Serial PRIMARY KEY,
    nome Varchar(150)
);

CREATE TABLE UF (
    codigo_uf Serial PRIMARY KEY,
    Nome Varchar(150)
);

CREATE TABLE Curso (
    codigo_curso Serial PRIMARY KEY,
    Nome Varchar(150)
);

CREATE TABLE Documento (
    numero_documento Integer,
    id_documento Integer PRIMARY KEY,
    data_expedicao Date,
    FK_Aluno_matricula Varchar(13),
    FK_Tipo_documento_codigo_tipo Serial
);

CREATE TABLE Tipo_documento (
    codigo_tipo Serial PRIMARY KEY,
    descricao Varchar(100)
);

CREATE TABLE Pertence_Orgao_emissor_RG_Titulo_eleitor (
    FK_Orgao_emissor_codigo_oe Serial,
    FK_RG_FK_Documento_id_documento Integer,
    FK_Titulo_eleitor_FK_Documento_id_documento Integer
);
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_1
    FOREIGN KEY (FK_Curso_codigo_curso)
    REFERENCES Curso (codigo_curso)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RG ADD CONSTRAINT FK_RG_1
    FOREIGN KEY (FK_Documento_id_documento)
    REFERENCES Documento (id_documento)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RG ADD CONSTRAINT FK_RG_2
    FOREIGN KEY (FK_UF_codigo_uf)
    REFERENCES UF (codigo_uf)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Titulo_eleitor ADD CONSTRAINT FK_Titulo_eleitor_1
    FOREIGN KEY (FK_Documento_id_documento)
    REFERENCES Documento (id_documento)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Titulo_eleitor ADD CONSTRAINT FK_Titulo_eleitor_2
    FOREIGN KEY (FK_Municipio_codigo_municipio)
    REFERENCES Municipio (codigo_municipio)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Documento ADD CONSTRAINT FK_Documento_1
    FOREIGN KEY (FK_Aluno_matricula)
    REFERENCES Aluno (matricula)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Documento ADD CONSTRAINT FK_Documento_2
    FOREIGN KEY (FK_Tipo_documento_codigo_tipo)
    REFERENCES Tipo_documento (codigo_tipo)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Pertence_Orgao_emissor_RG_Titulo_eleitor ADD CONSTRAINT FK_Pertence_Orgao_emissor_RG_Titulo_eleitor_0
    FOREIGN KEY (FK_Orgao_emissor_codigo_oe)
    REFERENCES Orgao_emissor (codigo_oe)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Pertence_Orgao_emissor_RG_Titulo_eleitor ADD CONSTRAINT FK_Pertence_Orgao_emissor_RG_Titulo_eleitor_1
    FOREIGN KEY (FK_RG_FK_Documento_id_documento)
    REFERENCES RG (FK_Documento_id_documento)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE Pertence_Orgao_emissor_RG_Titulo_eleitor ADD CONSTRAINT FK_Pertence_Orgao_emissor_RG_Titulo_eleitor_2
    FOREIGN KEY (FK_Titulo_eleitor_FK_Documento_id_documento)
    REFERENCES Titulo_eleitor (FK_Documento_id_documento)
    ON DELETE NO ACTION ON UPDATE NO ACTION;