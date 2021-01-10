use simuwater;

select util_nome('Frederico Ramalho') from utilizador;  #selecionar o utilizador com o nome 'Frederico Ramalho'


select sysdate()  #mostrar a data atual a partir tabela resultados
from resultados;


select * from resultados
where year(resul_data)='2021';   #mostrar resultados obtidos no ano de 2021


select  UPPER(util_nome)  #mostrar o nome do utilizador no topo da lista
from utilizador;





select count(*) , res_numero from residencia group by res_numero 
having count(*)>10;                #mostrar residencias com os numero superior a 10


select * from utilizador
inner join residencia;
 #junta a tabela utilizadores com a tabela residencia
 
 
 select util_nome
 from utilizador
 where util_pass='1234';
 #selecionar todos od utilizadores com a password '1234'
 
 
 select count(distinct res_morada)
from residencia;

#conta o numero de moradas diferentes que existem na base de dados
   

 
 








