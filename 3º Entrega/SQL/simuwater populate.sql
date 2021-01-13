
use simuwater;


insert into utilizador (util_nome, util_pass) values('Frederico Ramalho', '1234');
insert into utilizador (util_nome, util_pass) values('Hugo', '1234');


insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Avenida da Liberdade', '15' ,'Apartamento',4);
insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Rua Alexandre Herculano', '8' ,'Moradia',3);
insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Quinta do Pinheiro', '35' ,'Moradia',2);
insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Rua Oliveira Pinto', '12' ,'Apartamento',1);


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
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 0,0,0,0,120);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 0,0,0,17,0);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 0,0,57,0,0);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 0,71,0,0,0);
insert into atividades (ativ_banho, ativ_louça, ativ_roupa, ativ_higiene, ativ_cozinhados) values ( 55,0,0,0,0);


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
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 1, 12);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 3, 14);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 2, 15);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 4, 13);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (1, 3, 11);
insert into registo (utilizador_uid, residencia_reid, atividades_aid) values (2, 2, 11);


insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (160,'tomar banhos mais curtos',str_to_date('2021.01.01','%Y.%m.%d'),257,1,1,1);
insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (112,'desligar a agua ao escovar os dentes',str_to_date('2021.01.02','%Y.%m.%d'),130,2,3,9);
insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (130,'reutilizar agua dos cozinhados',str_to_date('2021.01.03','%Y.%m.%d'),149,1,2,2);
insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (189,'extender a agua de limpeza para varias divisoes',str_to_date('2021.01.04','%Y.%m.%d'),201,1,4,6);
insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (200,'fazer menos máquinas de roupa',str_to_date('2021.01.05','%Y.%m.%d'),157,1,1,1);
insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (191,'tomar banhos mais curtos',str_to_date('2021.01.06','%Y.%m.%d'),157,2,4,15);
insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (90,'aproveitar agua da chuva',str_to_date('2021.01.07','%Y.%m.%d'),157,2,3,8);
insert into resultados (resul_consumos, resul_dicas, resul_data, resul_conta, resul_parametros_onu, residencia_reid, atividades_aid) values (175,'nao lavar grandes grupos de louça à mão',str_to_date('2021.01.08','%Y.%m.%d'),157,1,2,9);










