# TRABALHO 01:  Khronos-Sistema de Digitalização de Arquivos
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Guilherme Maciel: guilhermemaciel2@hotmail.com<br>
Landerson Alexandre: landerson.lma@hotmail.com<br>
Mellyssa Stephanny: mellyssah.mendes@live.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
A Digitalização de Documentos é o processo de conversão de documentos físicos em formato digital. Este processo dinamiza extraordinariamente o acesso e a disseminação das informações entre os funcionários e colaboradores, com a visualização instantânea das imagens de documentos. Empresas que possuem documentos que precisam ser consultados e administrados de forma rápida e organizada.<br/>
Listamos abaixo as vantagens da digitalização de arquivos:<br/>
-> Facilidade de acesso e de distribuição dos documentos;<br/>
-> Redução de tempo das atividades que requerem a análise de documentos;<br/>
-> Redução de custo com recuperação e duplicação;<br/>
-> Preservação do arquivo físico;<br/>
-> Integração de dados ativos e históricos.<br/>
Com o intuito de melhorar esse processo, propomos um sistema que realize a digitalização de documentos para melhorar o processo de matrícula no IFES Campus Serra, visto que é necessário trazer cópias de muitos documentos. Com esse sistema, visamos agilizar e informatizar o processo bem como reduzir a quantidade de papel utilizado pensando assim no nosso meio ambiente.  <br>

### 3.MINI-MUNDO<br>

Link mini-mundo: https://github.com/khronos-SDA/trab01/blob/master/Minimundo.docx

Os setores administrativos do IFES Campus Serra tem a necessidade de um sistema que armazene e gerencie documentos. O sistema deverá permitir que documentos físicos sejam armazenados, analisados e após extraídas suas informações sejam armazenados digitalmente, com o intuito de diminuir o uso da quantidade de papéis e do espaço de armazenamento físico.

O sistema deverá permitir, além do acesso de cada setor, a entrada de dados, que neste caso são os documentos. Inicialmente RG, CPF e Titulo de Eleitor. Ao fazer a entrada desses novos dados, este setor tem o privilégio de ser o detentor deles. Sendo assim somente ele, ou quem ele permitir, terá acesso a esses dados. Ele deverá permitir que os documentos que estão em posse de um setor, possam ser compartilhados com outro setor que necessite de tal informação. Fazendo assim, esse outro setor terá o direito de visualizar os dados permitidos pelo detentor dos documentos por tempo determinado. Além disso, a visualização dos dados deverá ser feita de maneira simples e em formato, no mínimo, semelhante ao original.

O banco de dados do sistema deverá permitir atualização dos documentos quando os dados contido nele estiverem desatualizados. O sistema deverá criptografar os dados do banco de dados para que somente aqueles que tiverem a chave possam acessá-lo.

As vantagens da digitalização de documentos consiste na maior segurança dos dados, pois o controle de acesso permite que somente pessoas autorizadas com níveis de acesso de acordo com seu perfil possam acessar os documentos; rapidez na busca, evitando assim perda de tempo; diminuição de espaço físico para armazenamento de documentos; prevenção da perda de documentos devido a deterioração ou acontecimentos tais como: enchentes, incêndios ou até mesmo acidentes banais, como derrubar xícara de café naquele documento importante que estava sobre a mesa ou rasgo acidental. E o mais importante: diminuição do uso de papel, impactando positivamente na redução de produção de papel e seus custos diretos e indiretos.

De RG será armazenado seu número, nome do pai e da mãe e data de expedição. De CPF será armazenado apenas o seu número. De Título de Eleitor será armazenado seu número, seção e zona.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Link balsamiq: https://github.com/khronos-SDA/trab01/blob/master/Prototipo/Khronos.pdf

#### 4.1 TABELA DE DADOS DO SISTEMA:
    
 Link da tabela de dados do sistema: https://github.com/khronos-SDA/trab01/blob/master/Modelo%20Entidade%20Relacionamento/Khronos.xlsx
   
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que podero ser obtidos por meio do sistema proposto!
O sistema fornecerá acesso rápido as informações de alunos da instituição, como:<br/>
    -> Informações de CPF, RG, Endereço, Titulo de Eleitor, entre outras informações pessoais.<br/>

O sistema proposto poderá fornecer os seguintes relatórios:<br/>
    -> Relatório de quais setores acessam determinados grupos de documentos;<br/>
    -> Relatório de alunos que precisam atualizar documentos;<br/>
    -> Relatório que mostra os setores que mais pedem permissão de acesso;<br/>
    -> Relatório de setores que mais inserem documentos no sistema;<br/>
    
>## Marco de Entrega 01 em: (Data definida no cronograma)<br>

### 5.MODELO CONCEITUAL<br>

    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/khronos-SDA/trab01/blob/master/Prototipo/Khronos.pdf "Protótipo")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO

    a) Campo documento: em nosso projeto optamos pela criação da tabela "documento" com herança para as tabelas "RG" e "Titulo_Eleitor" 
    para que os atributos "numero_documento" e "data_expedição" sejam herdados de "documento".
    
    b) Campo Tipo_documento: optamos pela criação da tabela "Tipo_documento" para que carregasse consigo qual é o tipo do documento 
    buscado no momento. O atributo "descrição" desta tabela possui a informação desejada para esse caso.

#### 5.3 DESCRIÇÃO DOS DADOS 
                                            ==> TABELAS RELACIONADAS AOS ALUNOS <==
    
    ALUNO: Tabela que contém os dados do aluno.
         nome: campo que armazena o nome do aluno.
         codigo_curso: campo que contém o código do curso no qual o aluno está matriculado.
         matrícula: campo que armazena a matrícula ao qual o aluno está vinculado.
         data_nascimento: campo que armazena o dia em que o aluno nasceu.
    
    RG: Tabela que contém os dados do RG do aluno.
         codigo_rg: campo que armazena o número do rg do aluno.
         pai: campo que armazena nome do pai do aluno.
         mãe: campo que armazena nome da mãe do aluno.
         código_uf: campo que armazena o código relacionado a Unidade Federativa onde o documento foi expedido.
         data_expedição: campo que armazena a data em que o documento foi expedido.
         código_oe: campo que armazena o código do órgão emissor do documento em questão.
    
    CPF: Tabela que contém os dados do CPF do aluno.
         codigo_cpf: campo que armazena o número do cpf do aluno.
         código_oe: campo que armazena o código do órgão emissor do documento em questão.
    
    TÍTULO ELEITOR: Tabela que contém os dados do Título de Eleitor do aluno.
         codigo_titulo: campo que armazena o código identificador do título na base de dados da Justiça Eleitoral.
         zona: campo que armazena o código identificador da zona eleitoral em que o aluno vota.
         seção: campo que armazena o numéro da seção eleitoral na zona em que o aluno vota.
         codigo_municipio: campo que armazena o código do município em que o título foi expedido.
          
    DOCUMENTOS: Tabela que contém as informações dos documentos relacionados a cada aluno.
         codigo_tipo: código identificador de cada documento do aluno armazenado na base de dados.
         codigo_doc: número do documento do aluno relacionado a cada código.
         matricula: código identificador do aluno na base de dados.
             
    CURSO: Tabela que contém os dados relacionados aos cursos do campus.
         codigo_curso: campo que armazena o código relacionado a determinado curso.
         nome_curso: campo que armazena a identificação do curso.
         
    ÓRGÃO EMISSOR: Tabela que contém os dados relacionados aos órgãos emissores de cada documento.
          codigo_oe: campo que armazena o código relacionado a um determinado Órgão Emissor.
          orgao_emissor: campo que armazena o nome do órgão responsável pela emissão do documento.
         
    UF: Tabela que contém as informações relacionadas as Unidades Federativas.
          codigo_uf: código identificador da UF na base de dados.
          nome_uf: campo que armazena o nome da UF na base de dados.
 
    MUNICÍPIO: Tabela que contém os dados relacionados a cada município.
         codigo_municipio: campo que armazena o código atribuído a cada município na base de dados.
         nome_municipio: campo que armazena cada município cadastrado na base de dados.

    CONTATO: Tabela que relaciona os contatos de cada aluno.
         matricula: código identificador do aluno na base de dados.
         codigo_tipo: código identificador de cada documento do aluno armazenado na base de dados.
         valor_contato: campo que armazena o valor de cada tipo de contato.
 
    TIPO CONTATO: Tabela que contém as informações dos meios de contatos fornecidos pelos alunos.
         codigo_tipo: código identificador de cada tipo de contato na base de dados.
         descrição: descrição de cada tipo de contato fornecido.

### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
          
        
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
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
     a) Criar no mínimo 2 com operadores lógicos
     b) Criar no mínimo 2 com operadores aritméticos
     c) Criar no mínimo 2 com operação de renomear campo
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>

>## Marco de Entrega 03 em: (Data definida no cronograma)<br>
    
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
