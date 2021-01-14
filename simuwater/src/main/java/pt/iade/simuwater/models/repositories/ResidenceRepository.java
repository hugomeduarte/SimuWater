package pt.iade.simuwater.models.repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import pt.iade.simuwater.models.Registry;
import pt.iade.simuwater.models.Residence;

public interface ResidenceRepository extends CrudRepository<Residence, Integer> {

    @Modifying
    @Transactional
    @Query(value="Insert into registo "+
    "(utilizador_uid,residencia_reid,atividades_aid) "+
    "values(:#{#registry.user.id}, "+
    ":#{#registry.residence.id},:#{#registry.activities.id})", nativeQuery=true)
    void addResidenceToUser(@Param("registry") Registry registry);



}