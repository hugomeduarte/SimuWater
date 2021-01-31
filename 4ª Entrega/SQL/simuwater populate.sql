
use simuwater;


insert into utilizador (util_nome, util_datanascimento, util_genero, util_estadocivil) values('Frederico Ramalho', str_to_date('1997.12.09','%Y.%m.%d'), 'Masculino', 'Solteiro');
insert into utilizador (util_nome, util_datanascimento, util_genero, util_estadocivil) values('Hugo Duarte', str_to_date('2001.01.22','%Y.%m.%d'), 'Masculino', 'Solteiro');
insert into utilizador (util_nome, util_datanascimento, util_genero, util_estadocivil) values('Leonor Couto', str_to_date('1995.08.13','%Y.%m.%d'), 'Feminino', 'Casada');

insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Avenida da Liberdade', '15' ,'Apartamento',4);
insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Rua Alexandre Herculano', '8' ,'Moradia',3);
insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Quinta do Pinheiro', '35' ,'Moradia',2);
insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Rua Oliveira Pinto', '12' ,'Apartamento',1);
insert into residencia (res_morada, res_numero, res_tipo,res_escalao) values ('Rua Anibal Silva', '107' ,'Apartamento',1);


insert into atividades (ativ_nome, ativ_taxa) values('Banho', 6);
insert into atividades (ativ_nome, ativ_taxa) values('Louça', 13.8);
insert into atividades (ativ_nome, ativ_taxa) values('Roupa', 3);
insert into atividades (ativ_nome, ativ_taxa) values('Lavar os dentes', 9);
insert into atividades (ativ_nome, ativ_taxa) values('Lavar as mãos',3);
insert into atividades (ativ_nome, ativ_taxa) values('Cozinhados',4);
insert into atividades (ativ_nome, ativ_taxa) values('Rega',7);
insert into atividades (ativ_nome, ativ_taxa) values('Autoclismo' ,6);


insert into registo (utilizador_uid, residencia_reid) values (1, 1);
insert into registo (utilizador_uid, residencia_reid) values (1, 2);
insert into registo (utilizador_uid, residencia_reid) values (2, 3);
insert into registo (utilizador_uid, residencia_reid) values (2, 4);
insert into registo (utilizador_uid, residencia_reid) values (3, 5);


insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (5,str_to_date('2021.01.20','%Y.%m.%d'),1,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (10,str_to_date('2021.02.26','%Y.%m.%d'),1,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (15,str_to_date('2021.01.18','%Y.%m.%d'),1,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (20,str_to_date('2021.03.14','%Y.%m.%d'),1,4); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (25,str_to_date('2021.03.20','%Y.%m.%d'),1,5); 

insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (5,str_to_date('2021.01.20','%Y.%m.%d'),2,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (10,str_to_date('2021.02.26','%Y.%m.%d'),2,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (15,str_to_date('2021.01.18','%Y.%m.%d'),2,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (20,str_to_date('2021.03.14','%Y.%m.%d'),2,4); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (25,str_to_date('2021.03.20','%Y.%m.%d'),2,5); 

insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (5,str_to_date('2021.01.20','%Y.%m.%d'),3,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (10,str_to_date('2021.02.26','%Y.%m.%d'),3,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (15,str_to_date('2021.01.18','%Y.%m.%d'),3,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (20,str_to_date('2021.03.14','%Y.%m.%d'),3,4); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (25,str_to_date('2021.03.20','%Y.%m.%d'),3,5); 

insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values ('5',str_to_date('2021.01.20','%Y.%m.%d'),4,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values ('10',str_to_date('2021.02.26','%Y.%m.%d'),4,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values ('15',str_to_date('2021.01.18','%Y.%m.%d'),4,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values ('20',str_to_date('2021.03.14','%Y.%m.%d'),4,4); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (25,str_to_date('2021.03.20','%Y.%m.%d'),4,5); 

insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (5,str_to_date('2021.01.20','%Y.%m.%d'),5,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (10,str_to_date('2021.02.26','%Y.%m.%d'),5,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (15,str_to_date('2021.01.18','%Y.%m.%d'),5,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (20,str_to_date('2021.03.14','%Y.%m.%d'),5,4); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (25,str_to_date('2021.03.20','%Y.%m.%d'),5,5); 

insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (5,str_to_date('2021.01.20','%Y.%m.%d'),6,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (10,str_to_date('2021.02.26','%Y.%m.%d'),6,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (15,str_to_date('2021.01.18','%Y.%m.%d'),6,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (20,str_to_date('2021.03.14','%Y.%m.%d'),6,4);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (25,str_to_date('2021.03.20','%Y.%m.%d'),6,5); 

insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (5,str_to_date('2021.01.20','%Y.%m.%d'),7,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (10,str_to_date('2021.02.26','%Y.%m.%d'),7,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (15,str_to_date('2021.01.18','%Y.%m.%d'),7,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (20,str_to_date('2021.03.14','%Y.%m.%d'),7,4); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (25,str_to_date('2021.03.20','%Y.%m.%d'),7,5); 

insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (5,str_to_date('2021.01.20','%Y.%m.%d'),8,1); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (10,str_to_date('2021.02.26','%Y.%m.%d'),8,2);
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (15,str_to_date('2021.01.18','%Y.%m.%d'),8,3); 
insert into consumos (cons_tempo, cons_data, atividades_aid, registo_reg_id) values (20,str_to_date('2021.03.14','%Y.%m.%d'),8,4);


insert into dicas (atividades_aid, dica_texto,dica_criterio) values (1, "Tomar banhos mais rápidos",30);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (1, "Evitar banhos de emersão",30);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (2, "Usar mais louça na mesma máquina",41.4);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (2, "Usar detergente mais eficaz",41.4);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (3, "Encher máquina por lavagem",135);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (3, "Evitar lavar roupa á mão",135);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (4, "Não deixar água a escorrer durante a lavagem",10);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (5, "Não deixar torneira aberta enquanto esfrega as mãos",15);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (6, "Usar medições para evitar desperdiçar agua",120);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (6, "Reutilizar água entre cozinhados",120);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (7, "Usar sistema controlado de irrigação",80);
insert into dicas (atividades_aid, dica_texto,dica_criterio) values (8, "Colocar garrafa de 1,5L no autoclismo",13);