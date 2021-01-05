create database simulador_consumos;

use simulador_consumos;

create table utilizador (util_id int not null auto_increment,
					 util_nome varchar(45) not null, #nome do utilizador
					 util_pass varchar(45) not null, #paswword do utilizador
					 primary key (uid));
                     
 create table redidencia (res_id int not null auto_increment,
						res_morada varchar(45) not null, #morada da residencia
                        res_numero varchar(45) not null, #numero da residencia
                        res_tipo varchar(45) not null, #tipo de residencia
                        primary key( reid));
                        
create table atividades (ativ_id int not null auto_increment,
                     ativ_banho int not null,
                     ativ_louça int not null,
                     ativ_roupa int not null,
                     ativ_cozinhados int not null,
                     ativ_higiene int not null,
                     primary key (aid));
                     
create table resultados (resul_id int not null auto_increment,
                          resul_consumos varchar(45) not null, #consumo obtido 
                          resul_dicas varchar(45) not null, #dicas de economização
                          resul_data varchar(45) not null, #data da simulação
                          resul_valorcalculado varchar(45), #valor calculado na simulação
                          resul_diferença varchar(45), #diferença entre valor obtido e valor de referencia
                          primary key (rid));
                          
 create table  registo (reg_id int not null auto_increment,
                        primary key (rgid));
                        
                        
                        
    # Chaves estrangeiras
alter table registo add constraint utilizador_fk_registo
            foreign key (utilizador_uid) references utilizador(uid) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;    
            
alter table registo add constraint residencia_fk_registo
            foreign key (residencia_reid) references residencia(reid) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
            
alter table registo add constraint atividades_fk_registo
            foreign key (atividades_aid) references atividades(aid) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
            
alter table resultados add constraint residencia_fk_resultados
            foreign key (residencia_reid) references residencia(reid) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
                          
                          
                          
                          