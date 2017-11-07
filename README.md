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

De RG será armazenado seu número, nome do pai e da mãe e data de expedição. De CPF será armazenado apenas o seu número. De Título de Eleitor será armazenado seu número, seção e zona.

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
   
- [Modelo Conceitual](https://github.com/khronos-SDA/trab01/blob/master/images/conceitual.png)       
    
#### 5.1 Validação do Modelo Conceitual

   **NetIfes**: Jardielma<br>
   **Ido**: Tadeu<br>

#### 5.2 DECISÕES DE PROJETO

- Campo documento: em nosso projeto optamos pela criação da tabela "documento" com herança para as tabelas
"RG" e "Titulo_Eleitor" para que os atributos "numero_documento" e "data_expedição" sejam herdados de "documento".
    
- Campo Tipo_documento: optamos pela criação da tabela "Tipo_documento" para que carregasse consigo qual é o
tipo do documento buscado no momento. O atributo "descrição" desta tabela possui a informação desejada para cada
caso (CPF, RG ou Titulo Eleitor).
    
- O atributo "id_documento" da tabela "Documento" é uma chave primária e estrangeira nas tabelas "RG" e 
"Titulo Eleitor", já que se trata do número destes documentos (além do CPF).
    
- As tabelas "RG" e "Titulo Eleitor" são essenciais, tendo em vista que é preciso associá-las às tabelas "UF"
"Orgão Emissor" e "Municipio" de tal forma que "RG" não seja associada a "Municipio", e "Titulo Eleitor" não
seja associada a "UF".
    
- A tabela "CPF" está omitida, tendo sua existencia em nosso modelo associada a tabela "Documento" uma vez
que o único atributo associado a tabela "CPF" seria o número do cpf em si, que está sendo representado por
"id_documento" na tabela "Documento".

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
    
*__CPF__*: Tabela que contém os dados do CPF do aluno<br>
- *codigo_cpf*: campo que armazena o número do cpf do aluno<br>
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
- *nome_municipio*: campo que armazena cada município cadastrado na base de dados<b/>

*__CONTATO__*: Tabela que relaciona os contatos de cada aluno<br>
- *matricula*: código identificador do aluno na base de dados<br>
- *codigo_tipo*: código identificador de cada documento do aluno armazenado na base de dados<br>
- *valor_contato*: campo que armazena o valor de cada tipo de contato<br>
 
*__TIPO CONTATO__*: Tabela que contém as informações dos meios de contatos fornecidos pelos alunos<br>
- *codigo_tipo*: código identificador de cada tipo de contato na base de dados<br>
- *descrição*: descrição de cada tipo de contato fornecido<br>

### 6	MODELO LÓGICO<br>
- [Modelo lógico](https://github.com/khronos-SDA/trab01/blob/master/images/logico.png)


### 7	MODELO FÍSICO<br>
- [Modelo físico](https://github.com/khronos-SDA/trab01/blob/master/arquivos%20SQL/estruturas.sql)
                
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os res/ltados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
     a) Criar no mínimo 2 com operadores lógicos
     b) Criar no mínimo 2 com operadores aritméticos
     c) Criar no mínimo 2 com operação de renomear campo
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

>## Marco de Entrega 03 em: 06/11/2017<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
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
