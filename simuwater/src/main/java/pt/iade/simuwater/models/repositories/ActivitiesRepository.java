package pt.iade.simuwater.models.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import pt.iade.simuwater.models.Activities;

public interface ActivitiesRepository extends CrudRepository<Activities, Integer> {
    
}
