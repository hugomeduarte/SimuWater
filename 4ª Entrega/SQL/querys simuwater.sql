use simuwater;

# Máximo consumo por atividade
select MAX(cons_tempo) as Tempo, ativ_nome as Atividade
from consumos
inner join atividades on  consumos.atividades_aid=atividades.ativ_id
where ativ_nome="Banho";

#Diferentes tipos de residencia consosante a faixa etária
select count(res_tipo) as Numero_de_residenciaas,res_tipo as Tipo_de_Residencia, timestampdiff(year,util_datanascimento,sysdate()) as Idade
from Utilizador
inner join registo
on (util_id=utilizador_uid)
inner join residencia
on(residencia_reid=res_id)
group by Idade;

#Quantidade de atividades diferentes por género
select count(distinct ativ_nome) as ATIVIDADES,util_genero as GÉNERO
from atividades
inner join consumos
on (atividades.ativ_id = consumos.atividades_aid)
inner join registo
on (consumos.registo_reg_id = registo.reg_id)
inner join utilizador
on (registo.utilizador_uid = utilizador.util_id)
where util_genero="Masculino";

#Registos user-residência (query de programação)
select u.util_id as id, u.util_nome as name, 
r.res_id as residenciaId, r.res_morada as morada, r.res_numero as numero, 
r.res_tipo as tipo, r.res_escalao as escalao, e.reg_id as registoId 
from utilizador u 
inner join registo e on u.util_id=e.utilizador_uid 
inner join residencia r on e.residencia_reid=r.res_id;


#Consumos por nome de utilizador, atividade e morada e data e se está dentro dos critérios

select cons_data as Data, (cons_tempo*ativ_taxa) as Consumos, ativ_nome as Atividade,
util_nome as Nome, res_morada as Morada, if((cons_tempo*ativ_taxa)>dica_criterio,
"Está fora dos critérios","Está dentro dos critérios") as Critério
from consumos
inner join atividades on atividades_aid=ativ_id
inner join registo on registo_reg_id = reg_id
inner join residencia on residencia_reid = res_id
inner join utilizador on utilizador_uid = util_id
inner join dicas on (atividades.ativ_id = dicas.atividades_aid)
where util_nome="Hugo Duarte";


# Calcurar média total do tempo de consumo de um escalao
select avg(cons_tempo*ativ_taxa) as Consumo, res_escalao as Escalao
from consumos
inner join atividades on atividades_aid=ativ_id
inner join registo
on (consumos.registo_reg_id = registo.reg_id)
inner join utilizador
on (registo.utilizador_uid = utilizador.util_id)
inner join residencia
on ( registo.residencia_reid = residencia.res_id)
where res_escalao=1;

#Género que gasta mais

select SUM(cons_tempo*ativ_taxa) as Consumo, Util_genero as Genero
from consumos
inner join atividades
on atividades_aid=ativ_id
inner join registo
on ( registo_reg_id=reg_id)
inner join utilizador
on ( utilizador_uid = util_id)
group by util_genero;

# Stored procedures

call calcularConsumo("Banho",6,@result);
select @result;

call calcularConsumodoDia(3,@result);
SELECT @result;
    