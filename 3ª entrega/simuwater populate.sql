-- Informação
  use simuwater;
  

insert into utilizador (util_nome, util_pass) values('Frederico Ramalho', '1234');
insert into utilizador (util_nome, util_pass) values('Hugo Duarte', '1234');

insert into residencia (res_morada, res_numero, res_tipo) values ('Avenida da Liberdade', '15' ,'Apartamento');
insert into residencia (res_morada, res_numero, res_tipo) values ('Rua Alexandre Herculano', '8' ,'Moradia');
insert into residencia (res_morada, res_numero, res_tipo) values ('Quinta do Pinheiro', '35' ,'Moradia');
insert into residencia (res_morada, res_numero, res_tipo) values ('Rua Oliveira Pinto', '12' ,'Apartamento');

insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 5,3,3,4,20);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 3,7,18,9,10);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 11,7,13,4,15);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 15,12,3,14,50);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 2,5,7,5,12);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 8,8,19,13,47);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 5,5,5,5,5);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 3,13,14,17,56);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 8,19,14,21,37);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 5,16,61,20,78);




insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 1, 1);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 1, 7);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 1, 10);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 3, 3);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 3, 9);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 3, 8);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 2, 2);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 2, 6);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 4, 1);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 4, 3);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 4, 5);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 2, 10);










