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

import pt.iade.simuwater.models.Residence;
import pt.iade.simuwater.models.repositories.ResidenceRepository;

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

    @GetMapping(path = "/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
    public Residence getResidence(@PathVariable int id) {
        logger.info("Sending activity with id "+id);
        Optional<Residence> _activities = residenceRepository.findById(id);
        return _activities.get() ;
    }

    @PostMapping(path = "", produces= MediaType.APPLICATION_JSON_VALUE)
    public Residence saveResidence(@RequestBody Residence newResidence) {
        logger.info("Saving residence with name: "+newResidence.getAdress());
        Residence residences = residenceRepository.save(newResidence);
        return residences;
    }





}