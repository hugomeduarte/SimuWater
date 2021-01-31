package pt.iade.simuwater.controllers;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.simuwater.models.Consumption;
import pt.iade.simuwater.models.repositories.ConsumptionRepository;
import pt.iade.simuwater.models.views.ConsumptionsView;
import pt.iade.simuwater.models.views.ConsumptionsSUMView;

@RestController
@RequestMapping(path = "/api/consumptions")

public class ConsumptionController {
    private Logger logger = LoggerFactory.getLogger(ConsumptionController.class);
    @Autowired
    private ConsumptionRepository consumptionRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Consumption> getConsumptions() {
        logger.info("Sending all consumptions");
        return consumptionRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
    public Consumption getConsumption(@PathVariable int id) {
        logger.info("Sending consumption with id "+id);
        Optional<Consumption> _consumptions = consumptionRepository.findById(id);
        return _consumptions.get() ;
    }

    @PostMapping(path = "", produces= MediaType.APPLICATION_JSON_VALUE)
    public Consumption saveConsumption(@RequestBody Consumption newConsumption) {
        logger.info("Saving consumption with name: "+newConsumption.getActivities());
        Consumption consumption = consumptionRepository.save(newConsumption);
        return consumption;
    }
        
    @GetMapping(path = "/registries", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<ConsumptionsView> findAllConsumptions() {
    logger.info("Sending all ConsumptionsView");
    return consumptionRepository.findAllConsumptions();
    }
  
    @GetMapping(path="/{registryId}/registries", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<ConsumptionsView> ConsumptionsbyRegistry 
    (@PathVariable int registryId) { 
    logger.info("Consumptions of user with id "+registryId);
    return consumptionRepository.ConsumptionsbyRegistry(registryId);
    }

    @GetMapping(path="/{tempo}/{atividade}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<ConsumptionsView> ConsumptionsbyTimeandActivity 
    (@PathVariable double tempo, @PathVariable int atividade) { 
    logger.info("Consumptions of user with activity "+atividade);
    return consumptionRepository.ConsumptionsbyTimeandActivity(tempo,atividade);
    }

    @GetMapping(path="/sum/{registo}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<ConsumptionsSUMView> ConsumptionsSUMbyDAY 
    (@PathVariable int registo) { 
    logger.info("Consumptions of user with activity "+registo);
    return consumptionRepository.ConsumptionsSUMbyDAY(registo);
    }
    


}