# TRABALHO 01:  **Khronos-Sistema de Digitalização de Arquivos**
Trabalho desenvolvido durante a disciplina de BD1 no semestre 2017/2.

# Sumário

### 1. COMPONENTES<br>

- Guilherme Maciel:    guilhermemaciel2@hotmail.com<br>
- Landerson Alexandre: landerson.lma@hotmail.com<br>
- Mellyssa Stephanny:  mellyssah.mendes@live.com<br>

### 2. INTRODUÇÃO E MOTIVAÇAO<br>
A Digitalização de Documentos é o processo de conversão de documentos físicos em formato digital. Este processo dinamiza extraordinariamente o acesso e a disseminação das informações entre os funcionários e colaboradores, com a visualização instantânea das imagens de documentos. 
Os documentos passam por um processo de preparação para que se tornem aptos à digitalização (higienização, retirada de grampos ou qualquer objeto que prejudique o acesso do documento ao scanner). Em seguida são escaneados, tratados e indexados por lote de documentos, de acordo com as especificações  determinadas pelo projeto. Após esse processo, as imagens e dados são armazenados em um software ou em arquivos para melhor organização das imagens. 
A Digitalização é indicada para empresas que possuem documentos que precisam ser consultados e administrados de forma rápida e organizada.<br/>
Listamos abaixo as vantagens da digitalização de arquivos:<br/>
- Facilidade de acesso e de distribuição dos documentos;<br/>
- Redução de tempo das atividades que requerem a análise de documentos;<br/>
- Redução de custo com recuperação e duplicação;<br/>
- Preservação do arquivo físico;<br/>
- Integração de dados ativos e históricos.<br/>


### 3. MINI-MUNDO<br>

Os setores administrativos do IFES Campus Serra tem a necessidade de um sistema que armazene e gerencie documentos. O sistema deverá permitir que documentos físicos sejam armazenados, analisados e após extraídas suas informações sejam armazenados digitalmente, com o intuito de diminuir o uso da quantidade de papéis e do espaço de armazenamento físico. Com o intuito de melhorar esse processo, propomos um sistema que realize a digitalização de documentos para melhorar o processo de matrícula no IFES Campus Serra, visto que é necessário trazer cópias de muitos documentos. Com esse sistema, visamos agilizar e informatizar o processo bem como reduzir a quantidade de papel utilizado pensando assim no nosso meio ambiente.  <br>

O sistema deverá permitir, além do acesso de cada setor, a entrada de dados, que neste caso são os documentos. Inicialmente RG, CPF e Titulo de Eleitor. Ao fazer a entrada desses novos dados, este setor tem o privilégio de ser o detentor deles. Sendo assim somente ele, ou quem ele permitir, terá acesso a esses dados. Ele deverá permitir que os documentos que estão em posse de um setor, possam ser compartilhados com outro setor que necessite de tal informação. Fazendo assim, esse outro setor terá o direito de visualizar os dados permitidos pelo detentor dos documentos por tempo determinado. Além disso, a visualização dos dados deverá ser feita de maneira simples e em formato, no mínimo, semelhante ao original.

O banco de dados do sistema deverá permitir atualização dos documentos quando os dados contido nele estiverem desatualizados. O sistema deverá criptografar os dados do banco de dados para que somente aqueles que tiverem a chave possam acessá-lo.

As vantagens da digitalização de documentos consiste na maior segurança dos dados, pois o controle de acesso permite que somente pessoas autorizadas com níveis de acesso de acordo com seu perfil possam acessar os documentos; rapidez na busca, evitando assim perda de tempo; diminuição de espaço físico para armazenamento de documentos; prevenção da perda de documentos devido a deterioração ou acontecimentos tais como: enchentes, incêndios ou até mesmo acidentes banais, como derrubar xícara de café naquele documento importante que estava sobre a mesa ou rasgo acidental. E o mais importante: diminuição do uso de papel, impactando positivamente na redução de produção de papel e seus custos diretos e indiretos.

De RG serão armazenados seu número, nome do pai e da mãe e data de expedição do documento. De CPF serão armazenados apenas o número do próprio documento, e a sua data de expedição. De Título de Eleitor serão armazenados seu número, seção, zona e a sua data de expedição.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
- [Mockups](https://github.com/khronos-SDA/trab01/blob/master/Prototipo/Khronos.pdf)


#### 4.1 TABELA DE DADOS DO SISTEMA:
    
- [Tabela geral](https://github.com/khronos-SDA/trab01/blob/master/Modelo%20Entidade%20Relacionamento/Khronos.xlsx)
 
     
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

O sistema fornecerá acesso rápido as informações de alunos da instituição, como:<br/>
    - Informações de CPF, RG, Endereço, Titulo de Eleitor, entre outras informações pessoais.<br/>

O sistema proposto poderá fornecer os seguintes relatórios:<br>
    - Relatório de quais setores acessam determinados grupos de documentos;<br/>
    - Relatório de alunos que precisam atualizar documentos;<br/>
    - Relatório que mostra os setores que mais pedem permissão de acesso;<br/>
    - Relatório de setores que mais inserem documentos no sistema;<br/>
    
>## Marco de Entrega 01 em: (06/09/2017)<br>

### 5.MODELO CONCEITUAL<br>
   
- [Modelo Conceitual](https://github.com/khronos-SDA/trab01/blob/master/Modelo%20Entidade%20Relacionamento/Conceitual.png)       
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/conceitual.png)  
#### 5.1 Validação do Modelo Conceitual

   -**NetIfes**: Jardielma<br>
   -**Ido**: Tadeu<br>

#### 5.2 DECISÕES DE PROJETO

- Tabela documento: em nosso projeto optamos pela criação da tabela "documento" com herança para as tabelas
"rg" e "titulo_eleitor" para que os atributos "numero_documento" e "data_expedicao" sejam herdados de "documento".
    
- Tabela tipo_documento: optamos pela criação da tabela "tipo_documento" para que carregasse consigo qual é o
tipo do documento buscado no momento. O atributo "descrição" desta tabela possui a informação desejada para cada
caso (CPF, RG ou Titulo Eleitor).
    
- O atributo "id_documento" da tabela "Documento" é uma chave primária e estrangeira nas tabelas "rg" e 
"titulo_eleitor", já que se trata do número destes documentos (além do CPF).
    
- As tabelas "rg" e "titulo_eleitor" são essenciais, tendo em vista que é preciso associá-las às tabelas "uf"
"orgao_emissor" e "municipio" de tal forma que "rg" não seja associada a "municipio", e "titulo_eleitor" não
seja associada a "uf".
    
- A tabela "cpf" está omitida, tendo sua existencia em nosso modelo associada a tabela "documento" uma vez
que os únicos atributos associados a tabela "cpf" é o número do cpf em si (número do documento) e a data de 
expedição do mesmo, que estão sendo representado por "id_documento" e "data_de_expedicao" dentro da tabela "documento".

#### 5.3 DESCRIÇÃO DOS DADOS 
                                            ==> TABELAS RELACIONADAS AOS ALUNOS <==
    
*__ALUNO__*: Tabela que contém os dados do aluno
- *nome*: campo que armazena o nome do aluno
- *codigo_curso*: campo que contém o código do curso no qual o aluno está matriculado
- *matrícula*: campo que armazena a matrícula ao qual o aluno está vinculado
- *data_nascimento*: campo que armazena o dia em que o aluno nasceu
    
*__RG__*: Tabela que contém os dados do RG do aluno<br>
- *codigo_rg*: campo que armazena o número do rg do aluno<br>
- *pai*: campo que armazena nome do pai do aluno<br>
- *mãe*: campo que armazena nome da mãe do aluno<br>
- *código_uf*: campo que armazena o código relacionado a Unidade Federativa onde o documento foi expedido<br>
- *data_expedição*: campo que armazena a data em que o documento foi expedido<br>
- *código_oe*: campo que armazena o código do órgão emissor do documento em questão<br>
    
*__TÍTULO ELEITOR__*: Tabela que contém os dados do Título de Eleitor do aluno<br>
- *codigo_titulo*: campo que armazena o código identificador do título na base de dados da Justiça Eleitoral<br>
- *zona*: campo que armazena o código identificador da zona eleitoral em que o aluno vota<br>
- *seção*: campo que armazena o número da seção eleitoral na zona em que o aluno vota<br>
- *codigo_municipio*: campo que armazena o código do município em que o título foi expedido<br>
          
*__DOCUMENTOS__*: Tabela que contém as informações dos documentos relacionados a cada aluno<br>
- *codigo_tipo*: código identificador de cada documento do aluno armazenado na base de dados<br>
- *codigo_doc*: número do documento do aluno relacionado a cada código<br>
- *matricula*: código identificador do aluno na base de dados<br>
             
*__CURSO__*: Tabela que contém os dados relacionados aos cursos do campus<br>
- *codigo_curso*: campo que armazena o código relacionado a determinado curso<br>
- *nome_curso*: campo que armazena a identificação do curso<br>
         
*__ÓRGÃO EMISSOR__*: Tabela que contém os dados relacionados aos órgãos emissores de cada documento<br>
- *codigo_oe*: campo que armazena o código relacionado a um determinado Órgão Emissor<br>
- *orgao_emissor*: campo que armazena o nome do órgão responsável pela emissão do documento<br>
         
*__UF__*: Tabela que contém as informações relacionadas as Unidades Federativas<br>
- *codigo_uf*: código identificador da UF na base de dados<br>
- *nome_uf*: campo que armazena o nome da UF na base de dados<br>
 
*__MUNICÍPIO__*: Tabela que contém os dados relacionados a cada município<br>
- *codigo_municipio*: campo que armazena o código atribuído a cada município na base de dados<br>
- *nome_municipio*: campo que armazena cada município cadastrado na base de dados<br/>

*__CONTATO__*: Tabela que relaciona os contatos de cada aluno<br>
- *matricula*: código identificador do aluno na base de dados<br>
- *codigo_tipo*: código identificador de cada documento do aluno armazenado na base de dados<br>
- *valor_contato*: campo que armazena o valor de cada tipo de contato<br>
 
*__TIPO CONTATO__*: Tabela que contém as informações dos meios de contatos fornecidos pelos alunos<br>
- *codigo_tipo*: código identificador de cada tipo de contato na base de dados<br>
- *descrição*: descrição de cada tipo de contato fornecido<br/>



### 6	MODELO LÓGICO<br>
- [Modelo lógico](https://github.com/khronos-SDA/trab01/blob/master/Modelo%20Entidade%20Relacionamento/L%C3%B3gico_1.brM3)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/logico.png)

### 7	MODELO FÍSICO<br>
- [Modelo físico](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/estruturas.sql)
```
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
    nome_municipio Varchar(150),
    FK_UF_CodigoUF Serial
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

```
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
- [Script SQL](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/insert.sql)
```

insert into curso(codigo_curso, nome) values 
    (1, 'BSI'),
    (2, 'CECA'),
    (3,'TPMI'),
    (4,'TPMAI'),
    (5,'TPMMSI'),
    (6,'TIIMI'),
    (7,'TIMAI');


insert into uf(codigo_uf, nome) values 
    (1, 'RN'),
    (2, 'ES'),
    (3, 'AM'),
    (4, 'BR'),
    (5, 'MA'),
    (6, 'MG'),
    (7, 'RS'),
    (8, 'SC'),
    (9, 'AC'),
    (10, 'RJ');


insert into municipio(codigo_municipio, nome_municipio) values
    (1, 'Mossoró'),
    (2, 'Viana'),
    (3, 'Vitória'),
    (4, 'Serra'),
    (5, 'Vila Velhaó'),
    (6, 'Mangueirinha'),
    (7, 'Docas do Rio Preto'),
    (8, 'Ribeirão Branco');


insert into orgao_emissor(codigo_oe, nome) values
    (1, 'SESP'),
    (2, 'Receita Federal do Brasil'),
    (3, 'Tribunal Superior Eleitoral');


insert into tipo_documento(codigo_tipo, descricao) values
    (1, 'CPF'),
    (2, 'RG'),
    (3, 'Título de Eleitor');


insert into aluno(nome, matricula, fk_curso_codigo_curso) values
    ('Vinicius Santos Tosta', '20091ceca0125', 2), 
    ('Tiago Souza Alves', '20122bsi0847', 1),
    ('Yasmin Cardoso Oliveira', '20161bsi5512', 1),
    ('Rafaela Castro Gomes', '20142ceca6398', 2),
    ('Fábio Barros Rodrigues', '20171ceca1234', 2),
    ('Carolina Cavalcanti  Araújo ', '20152bsi7845', 1),
    ('Alice  Sousa da Silva', '20172bsi0981', 1),
    ('Vitor Pereira Alves', '20151ceca0025', 2),
    ('Júlio Lima Azevedo', '20172ceca5598', 2),
    ('Julieta Oliveira Fernandes', '20132bsi6647', 1); 


    insert into documento(numero_documento, id_documento, data_de_expedicao, fk_orgao_emissor_codigo_oe, fk_aluno_matricula, fk_tipo_documento_codigo_tipo) values
    (974909  , 3, '1980-08-29', 1, '20091ceca0125',2),
    (569542 , 4, '2007-09-08', 1, '20122bsi0847',2),
    (484562 , 5, '2001-12-22', 1, '20161bsi5512',2),
    (716601 , 6, '2002-02-09', 1, '20142ceca6398',2),
    (119774 , 7, '1999-08-02', 1, '20171ceca1234',2),
    (880910 , 8, '2007-08-09', 1, '20152bsi7845',2),
    (909514 , 9, '1999-07-06', 1, '20172bsi0981',2),
    (955706 , 13, '2001-11-08', 1, '20151ceca0025',2),
    (104295 , 11, '1988-04-02', 1, '20172ceca5598',2),
    (713636 , 10, '2007-07-07', 1, '20132bsi6647',2);


insert into titulo_eleitor(zona,secao,fk_documento_id_documento,fk_municipio_codigo_municipio) values
    (007,0098,3,1),
    (051,0058,4,2),
    (019,0022,5,3),
    (078,0093,6,3),
    (025,0017,7,4),
    (036,0008,8,4),
    (099,0029,9,5),
    (014,0019,10,6),
    (087,0066,11,7),
    (255,0043,13,8);


insert into rg(nome_pai, nome_mae, data_de_nascimento,fk_documento_id_documento, fk_uf_codigo_uf) values
    ('José Eduardo Correia Tosta', 'Maria Madalena Santos Tosta', '1989-05-28', 3, 1),
    ('Augusto Caio Heitor Alves', 'Amanda Castro Souza', '1990-11-04', 4, 1),
    ('Lorenzo Diogo Nicolas Oliveira', 'Bruna Santos Cardoso', '1984-08-24', 5, 1),
    ('Tomás Vitor Gomes', 'Giovanna Pinto Castro', '1994-09-29', 6, 3),
    ('Samuel Henry Rodrigues', 'Marina Dias Barros', '1988-11-26', 7, 4),
    ('Anthony Benício Marcelo Araújo', 'Nicole Cardoso Cavalcanti', '1985-08-15', 8, 5),
    ('João Augusto da Silva', 'Larissa Rocha Sousa', '1999-09-09', 9, 1),
    ('Estevan Martins Alves', 'Leila Almeida Pereira', '1982-03-12', 10, 1),
    ('Pedro Castro Azevedo', 'Luiza Rodrigues Lima', '1975-05-16', 11, 1),
    ('Nicolas Rodrigues Fernandes', 'Luana Castro Oliveira', '1988-02-08', 13, 1);

```
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
- [Script SQL 8.2](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/createANDinsert.sql)

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
- [Script SQL 8.3](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/dropCreateInsert.sql)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) 
- [Consultas SQL](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/select.sql)
- [Prints](https://github.com/khronos-SDA/trab01/tree/master/images/Consultas%209.1)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20aluno.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20curso.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20documento.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20municipio.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20orgao_emissor.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20rg.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20tipo_documento.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20titulo_eleitor.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.1/select%20tabela%20uf.png)
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
- [Consultas SQL](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/where.sql)
- [Prints](https://github.com/khronos-SDA/trab01/tree/master/images/Consultas%209.2)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.2/filtro%20where%209.2.1.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.2/filtro%20where%209.2.2.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.2/filtro%20where%209.2.3.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.2/filtro%20where%209.2.4.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.2/filtro%20where%209.2.5.png)
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
- [Consultas SQL](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/operadores.sql)
- [Prints](https://github.com/khronos-SDA/trab01/tree/master/images/Consultas%209.3)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.3/consulta%20aritmetica%209.3.3.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.3/consulta%20aritmetica%209.3.4.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.3/consulta%20logica%20%209.3.1.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.3/consulta%20logica%20%209.3.2.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.3/consulta%20update%209.3.5.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.3/consulta%20update%209.3.6.png)
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>
- [Consultas SQL](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/like.sql)
- [Prints](https://github.com/khronos-SDA/trab01/tree/master/images/Consultas%209.4)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.4/like%209.4.1.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.4/like%209.4.2.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.4/like%209.4.3.png)
  ![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.4/like%209.4.4.png)
>## Marco de Entrega 03 em: 06/11/2017<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
```
select a.nome as aluno,c.nome as curso ,d.numero_documento,oe.nome as "orgao emissor",td.descricao,d.data_de_expedicao 
from curso as c 
inner join aluno as a on(c.codigo_curso=a.fk_curso_codigo_curso)
inner join documento as d on(a.matricula=d.fk_aluno_matricula)
inner join orgao_emissor as oe on(d.fk_orgao_emissor_codigo_oe=oe.codigo_oe)
inner join tipo_documento as td on(d.fk_tipo_documento_codigo_tipo=td.codigo_tipo)
inner join titulo_eleitor as te on(d.id_documento=te.fk_documento_id_documento)
inner join municipio as m on(m.codigo_municipio=te.fk_municipio_codigo_municipio)
inner join rg on(rg.fk_documento_id_documento=d.id_documento)
inner join uf on(rg.fk_uf_codigo_uf=uf.codigo_uf);
```
![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.6/consulta%209.6.1.PNG)
```
select a.matricula,a.nome,d.numero_documento,td.descricao from documento as d
inner join aluno as a
on(d.fk_aluno_matricula=a.matricula)
inner join tipo_documento as td
on(d.fk_tipo_documento_codigo_tipo=td.codigo_tipo);
```
![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.6/consulta%209.6.2.PNG)
```
select a.matricula,a.nome,count(td.codigo_tipo) as "numero de documentos diferentes",count(a.matricula) as "numero de documentos" 
from documento as d
inner join aluno as a
on(d.fk_aluno_matricula=a.matricula)
inner join tipo_documento as td
on(d.fk_tipo_documento_codigo_tipo=td.codigo_tipo)
inner join curso as c
on(c.codigo_curso=a.fk_curso_codigo_curso)
where c.codigo_curso=1
group by a.matricula
order by a.matricula;
```
![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.6/consulta%209.6.3.PNG)
```
select d.fk_aluno_matricula,a.nome from documento as d
inner join rg
on(d.id_documento=rg.fk_documento_id_documento)
inner join aluno as a
on(a.matricula=d.fk_aluno_matricula)
where date_part('year',rg.data_de_nascimento)<1997
order by rg.data_de_nascimento;
```
![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.6/consulta%209.6.4.PNG)
```
select a.matricula,a.nome,rg.data_de_nascimento from aluno as a
inner join documento as d
on(a.matricula=d.fk_aluno_matricula)
inner join rg
on(rg.fk_documento_id_documento=d.id_documento)
where a.matricula like '2017%' and date_part('year',age(rg.data_de_nascimento))>=18
order by a.matricula;
```
![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.6/consulta%209.6.5.PNG)
```
select a.matricula,a.nome,m.nome_municipio from aluno as a
inner join documento as d
on(a.matricula=d.fk_aluno_matricula)
inner join titulo_eleitor as te
on(te.fk_documento_id_documento=d.id_documento)
inner join municipio as m
on(m.codigo_municipio=te.fk_municipio_codigo_municipio)
where m.nome_municipio in ('Serra','Vitória');
```
![Alt Text](https://github.com/khronos-SDA/trab01/blob/master/images/Consultas%209.6/consulta%209.6.6.PNG)

        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado<br>
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho<br>
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
teste
