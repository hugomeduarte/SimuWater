package pt.iade.simuwater.models.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import pt.iade.simuwater.models.views.ConsumptionsView;
import pt.iade.simuwater.models.views.ConsumptionsSUMView;
import pt.iade.simuwater.models.Consumption;

public interface ConsumptionRepository extends CrudRepository<Consumption, Integer> {

    @Query(value = "calcularConsumo(:atividade,:tempo);", nativeQuery = true)
Iterable<ConsumptionsView> calcularConsumo(@Param("atividade") String atividade,
@Param("tempo") double tempo);

String ConsumptionsView =
"select cons_tempo*ativ_taxa as Consumos, cons_tempo as Tempo, ativ_nome as Nome, "+
"ativ_taxa as Taxa, cons_id IdConsumo, registo_reg_id as IdRegisto, cons_data as Data "+
"from consumos "+
"inner join atividades on atividades_aid=ativ_id";

@Query(value=ConsumptionsView, nativeQuery=true)
 Iterable<ConsumptionsView> findAllConsumptions();
	
@Query(value = ConsumptionsView + " Where registo_reg_id=:id", nativeQuery = true)
Iterable<ConsumptionsView> ConsumptionsbyRegistry( @Param("id") int id);

@Query(value = ConsumptionsView + " where cons_tempo=:tempo AND ativ_id=:atividade", nativeQuery = true)
Iterable<ConsumptionsView> ConsumptionsbyTimeandActivity( @Param("tempo") double tempo,
@Param("atividade") int atividade);

String ConsumptionsSUMView =
"select SUM(cons_tempo*ativ_taxa) as Consumos, cons_data as Data "+
"from consumos "+
"inner join atividades on atividades_aid=ativ_id";

@Query(value = ConsumptionsSUMView + " where registo_reg_id=:registo AND cons_data=CURDATE() group by cons_data;", nativeQuery = true)
Iterable<ConsumptionsSUMView> ConsumptionsSUMbyDAY( @Param("registo") int registo);






}