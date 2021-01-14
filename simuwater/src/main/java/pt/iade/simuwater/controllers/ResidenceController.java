package pt.iade.simuwater.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.simuwater.models.Registry;
import pt.iade.simuwater.models.Residence;
import pt.iade.simuwater.models.repositories.ResidenceRepository;
import pt.iade.simuwater.models.results.SimpleResult;

@RestController
@RequestMapping(path = "/api/residences")

public class ResidenceController {
    private Logger logger = LoggerFactory.getLogger(ResidenceController.class);
    @Autowired
    private ResidenceRepository residenceRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Residence> getResidences() {
        logger.info("Sending all residences");
        return residenceRepository.findAll();
    }

    @PostMapping(path = "/{residenceId}/users", produces = MediaType.APPLICATION_JSON_VALUE)
    public SimpleResult addResidencetoUser(
    @RequestBody Registry registry) {
    logger.info("Adding unit with id " + registry.getUser().getId());
    residenceRepository.addResidenceToUser(registry);
    return new SimpleResult("Added unit with id "+ registry.getUser().getId(),registry);
    }




}