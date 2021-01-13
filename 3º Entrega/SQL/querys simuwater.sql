use simuwater;
   
#Média dos consumos de água 
select avg(resul_consumos) as Consumo
from resultados;

#Consumo que está dentro dos parametros da ONU
select resul_id as Id, resul_consumos as Consumo
from resultados
where resul_consumos <150;

#Verificar se está dentro dos parametros da ONU
select resul_id as ResultadoId,
CASE 
    WHEN resul_parametros_onu=1 THEN 'Não estão dentro dos parametros'
    WHEN resul_parametros_onu=2 THEN 'Está dentro dos parametros'
END
from resultados;

#Atividades realizada por utilizadores
select utilizador_uid as IdUtilizador,atividades_aid as IdAtividade
from registo
order by atividades_aid;

#Residencias das atividades realizadas
select residencia_reid as IdResidencia,atividades_aid as IdAtividade
from registo
inner join residencia
on (registo.residencia_reid = residencia.res_id)
order by atividades_aid;

#Dicas por utilizador
select resul_dicas as dicas,util_nome as Nome
from resultados
inner join residencia
on (resultados.residencia_reid = residencia.res_id)
inner join registo
on (registo.residencia_reid = residencia.res_id)
inner join utilizador
on (registo.utilizador_uid = utilizador.util_id);

#Atividades por data
select distinct ativ_id as IdAtividades, date_format(resul_data,'%D,%M,%Y') as Data
from resultados
inner join atividades
on (resultados.atividades_aid = atividades.ativ_id);

#Total de atividades por morada
select count(*) as Atividades, res_morada as Morada
from resultados
inner join registo
on ( resultados.atividades_aid = registo.residencia_reid )
inner join residencia
on (registo.residencia_reid=residencia.res_id)
group by res_morada;

# Contar os consumos distintos por escalao
select count(distinct resul_consumos) as Consumo, res_escalao as Escalao
from resultados
inner join registo
on(resultados.residencia_reid=registo.residencia_reid)
inner join residencia
on(registo.residencia_reid=residencia.res_id)
group by res_escalao;


