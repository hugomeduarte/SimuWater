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

import pt.iade.simuwater.models.Activities;
import pt.iade.simuwater.models.exceptions.NotFoundException;
import pt.iade.simuwater.models.repositories.ActivitiesRepository;

@RestController
@RequestMapping(path = "/api/activities")

public class ActivitiesController {
    private Logger logger = LoggerFactory.getLogger(ActivitiesController.class);
    @Autowired
    private ActivitiesRepository activitiesRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Activities> getactivities() {
        logger.info("Sending all activities");
        return activitiesRepository.findAll();
    }





}


  
    
