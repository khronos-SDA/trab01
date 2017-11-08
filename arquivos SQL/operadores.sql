/* Operadores Lógicos */ 

/* Consulta 9.3.1*/
select * from rg where nome_mae='Luiza' or fk_uf_codigo_uf=1; 

/* Consulta 9.3.2*/
select * from rg where nome_mae='Luiza' or fk_uf_codigo_uf=3; 

/* Operadores aritméticos */ 

/* Consulta 9.3.3*/
select * from documento where data_de_expedicao > '2000-01-01' and id_documento >10;

/* Consulta 9.3.4*/
select * from rg where data_de_nascimento > '1990-01-01';

/* Update */ 

/* Consulta 9.3.5*/
update aluno set nome = 'Alice Bittencourt Barros de Arruda' where matricula = '20172bsi0981';

/*Consulta 9.3.6*/
update curso set nome ='Engenharia Mecânica' where codigo_curso=1;


