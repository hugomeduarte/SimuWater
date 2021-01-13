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

import pt.iade.simuwater.models.Results;
import pt.iade.simuwater.models.exceptions.NotFoundException;
import pt.iade.simuwater.models.repositories.ResultsRepository;

@RestController
@RequestMapping(path = "/api/results")

public class ResultsController {
    private Logger logger = LoggerFactory.getLogger(ResultsController.class);
    @Autowired
    private ResultsRepository resultsRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Results> getResults() {
        logger.info("Sending all results");
        return resultsRepository.findAll();
    }


    }

    

