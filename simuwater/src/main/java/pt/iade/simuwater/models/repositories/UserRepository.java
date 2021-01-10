package pt.iade.simuwater.models.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import pt.iade.simuwater.models.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	Optional<User> findByName(String name);


	
    
    
    
}