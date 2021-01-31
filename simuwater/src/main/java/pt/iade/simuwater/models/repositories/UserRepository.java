package pt.iade.simuwater.models.repositories;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import pt.iade.simuwater.models.User;
import pt.iade.simuwater.models.Registry;
import pt.iade.simuwater.models.views.UserResidenceView;

public interface UserRepository extends CrudRepository<User, Integer> {

String QueryUserResidenceView = 
"select u.util_id as id, u.util_nome as name, "+
"r.res_id as residenciaId, r.res_morada as morada, r.res_numero as numero, "+
"r.res_tipo as tipo, r.res_escalao as escalao, e.reg_id as registoId "+
"from utilizador u "+
"inner join registo e on u.util_id=e.utilizador_uid "+
"inner join residencia r on e.residencia_reid=r.res_id";

@Query(value=QueryUserResidenceView, nativeQuery=true)
 Iterable<UserResidenceView> findAllUserResidenceRegistry();
	
@Query(value = QueryUserResidenceView + " Where u.util_id=:id", nativeQuery = true)
Iterable<UserResidenceView> UserResidenceRegistrysbyId( @Param("id") int id);

@Query( value = QueryUserResidenceView +
" Where u.util_id=:userId and r.res_id=:residenceId", nativeQuery = true)
Optional<UserResidenceView> findRegistryofUserwithResidence( @Param("userId") int userId,
@Param("residenceId") int residenceId);

@Modifying
@Transactional
@Query(value="Insert into registo "+
"(utilizador_uid,residencia_reid) "+
"values(:#{#registry.user.id}, "+
":#{#registry.residence.id})", nativeQuery=true)
void addResidenceToUser(@Param("registry") Registry registry);





}