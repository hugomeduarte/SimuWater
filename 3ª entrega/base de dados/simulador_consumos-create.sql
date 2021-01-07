

create table utilizador (util_id int not null auto_increment,
					 util_nome varchar(45) not null, #nome do utilizador
					 util_pass varchar(45) not null, #paswword do utilizador
					 primary key (util_id));
                     
 create table redidencia (res_id int not null auto_increment,
						res_morada varchar(45) not null, #morada da residencia
                        res_numero integer not null, #numero da residencia
                        res_tipo varchar(45) not null, #tipo de residencia
                        primary key( res_id));
                        
create table atividades (ativ_id int not null auto_increment,
                     ativ_banho double not null,
                     ativ_louça double not null,
                     ativ_roupa double not null,
                     ativ_cozinhados double not null,
                     ativ_higiene double not null,
                     primary key (ativ_id));
                     
create table resultados (resul_id int not null auto_increment,
                          resul_consumos varchar(45) not null, #consumo obtido 
                          resul_dicas varchar(45) not null, #dicas de economização
                          resul_data varchar(45) not null, #data da simulação
                          resul_valorcalculado varchar(45), #valor calculado na simulação
                          resul_diferença varchar(45), #diferença entre valor obtido e valor de referencia
                          primary key (resul_id));
                          
 create table  registo (reg_id int not null auto_increment,
                        primary key (reg_id));
                        
                        
                        
    # Chaves estrangeiras
alter table registo add constraint utilizador_fk_registo
            foreign key (utilizador_util_id) references utilizador(util_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;    
            
alter table registo add constraint residencia_fk_registo
            foreign key (residencia_res_id) references residencia(res_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
            
alter table registo add constraint atividades_fk_registo
            foreign key (atividades_ativ_id) references atividades(ativ_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
            
alter table resultados add constraint residencia_fk_resultados
            foreign key (residencia_res_id) references residencia(res_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
                          
                          
                          
                          