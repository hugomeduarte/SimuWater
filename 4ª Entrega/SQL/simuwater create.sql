use simuwater;

create table utilizador (util_id int not null auto_increment ,
					 util_nome varchar(45) not null, #nome do utilizador
					 util_datanascimento date not null, #data de nascimento do utilizador
                     util_genero varchar (45) not null, #genero do utilizador
                     util_estadocivil varchar (45) not null, #estado civil do utilizador
                     primary key (util_id));
                     
 create table residencia (res_id int not null auto_increment ,
						res_morada varchar(45) not null, #morada da residencia
                        res_numero integer not null, #numero da residencia
                        res_tipo varchar(45) not null, #tipo de residencia
						res_escalao int not null, #escalao da residencia
                        primary key( res_id));
                        
                        
create table atividades (ativ_id int not null auto_increment,
                     ativ_nome varchar(45) not null,
                     ativ_taxa double not null,
                     primary key (ativ_id));
                     
                     
create table dicas (dica_id int not null auto_increment,
                     dica_texto varchar(60) not null,
                     dica_criterio int not null,
                     atividades_aid int not null,
                     primary key (dica_id));
                                             
                                             
 create table  registo (reg_id int not null auto_increment ,
                         utilizador_uid int not null,
                         residencia_reid int not null,
						 primary key (reg_id));
                        

create table  consumos (cons_id int not null auto_increment ,
                         cons_tempo double not null,
                         cons_data date not null,
                         atividades_aid int not null,
                         registo_reg_id int not null,
						 primary key (cons_id));                   
                        
                        
	# Chaves estrangeiras
    
alter table registo add constraint utilizador_fk_registo
            foreign key (utilizador_uid) references utilizador(util_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;    
            
alter table registo add constraint residencia_fk_registo
            foreign key (residencia_reid) references residencia(res_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
            
alter table consumos add constraint registo_fk_consumos
            foreign key (registo_reg_id) references registo(reg_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
            
alter table consumos add constraint atividades_fk_consumos
            foreign key (atividades_aid) references atividades(ativ_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
          
alter table dicas add constraint atividades_fk_dicas
            foreign key (atividades_aid) references atividades(ativ_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;
            
	# Index

CREATE INDEX residenciaescalao ON residencia (res_escalao);
CREATE INDEX utilizadornome ON utilizador (util_nome);
CREATE INDEX utilizadorgenero ON utilizador (util_genero);
CREATE INDEX atividadesnome ON atividades (ativ_nome);

     # Stored procedures  


#Calcular consumo com parâmetros e vê se está dentro dos critérios de cada atividade
DELIMITER //
CREATE PROCEDURE calcularConsumo(IN atividade VARCHAR(10), IN tempo DOUBLE, OUT var1 VARCHAR(100)) 
BEGIN
DECLARE Consumo DOUBLE DEFAULT 0;
DECLARE taxa double;
DECLARE criterio double;
select distinct ativ_taxa into taxa
from atividades
inner join dicas
on atividades.ativ_id=dicas.atividades_aid
where ativ_nome=atividade;
select distinct dica_criterio into criterio
from dicas
inner join atividades
on dicas.atividades_aid=atividades.ativ_id
where ativ_nome=atividade;
set Consumo = tempo*taxa;
select Consumo from dual;
CASE 
    WHEN (Consumo)>criterio THEN SET VAR1='Nao está dentro dos critérios';
    WHEN (Consumo)<criterio THEN SET VAR1='Está dentro dos critérios';
    else SET VAR1='Está dentro dos critérios';
    END CASE;
END //
DELIMITER ;

#Calcular o consumo do dia e ver se está dentro dos critérios da ONU (<150 litros por dia)
DELIMITER //
CREATE PROCEDURE calcularConsumodoDia(IN registo int,OUT var1 VARCHAR(100))
BEGIN
DECLARE Consumo DOUBLE DEFAULT 0;
select SUM(cons_tempo*ativ_taxa) into Consumo from consumos
inner join atividades on consumos.atividades_aid=atividades.ativ_id
inner join dicas on atividades.ativ_id = dicas.atividades_aid
where registo_reg_id=registo AND cons_data=CURDATE();
select Consumo from dual;
CASE 
    WHEN (Consumo)>150 THEN SET VAR1='Não está dentro dos valores recomendados pela ONU';
    WHEN (Consumo)<150 THEN SET VAR1='Está dentro dos valores recomendados pela ONU';
    else SET VAR1='Está dentro dos valores recomendados pela ONU';
    END CASE;
END //
DELIMITER ;

