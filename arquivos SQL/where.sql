/* Consulta 9.2.1*/
select * from municipio where nome_municipio ='Serra'; 

/* Consulta 9.2.2*/
select * from curso where nome ='BSI';

/* Consulta 9.2.3*/
select * from aluno where fk_curso_codigo_curso=1; 

/* Consulta 9.2.4*/
select * from titulo_eleitor where fk_municipio_codigo_municipio=4;

/* Consulta 9.2.5*/
select * from rg where fk_uf_codigo_uf=1;
