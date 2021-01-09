-- Informação
  use simuwater;
  

insert into utilizador (util_nome, util_pass) values('Frederico Ramalho', '1234');
insert into utilizador (util_nome, util_pass) values('Hugo Duarte', '1234');

insert into residencia (res_morada, res_numero, res_tipo) values ('Avenida da Liberdade', '15' ,'Apartamento');
insert into residencia (res_morada, res_numero, res_tipo) values ('Rua Alexandre Herculano', '8' ,'Moradia');
insert into residencia (res_morada, res_numero, res_tipo) values ('Quinta do Pinheiro', '35' ,'Moradia');
insert into residencia (res_morada, res_numero, res_tipo) values ('Rua Oliveira Pinto', '12' ,'Apartamento');

insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 1,2,3,4,5);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 1,2,3,4,5);


insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 1, 1);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 3, 3);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 2, 2);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 4, 4);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 3, 5);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 2, 5);










