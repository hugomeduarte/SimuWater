package pt.iade.simuwater.controllers;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.simuwater.models.Residence;
import pt.iade.simuwater.models.exceptions.NotFoundException;
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




}