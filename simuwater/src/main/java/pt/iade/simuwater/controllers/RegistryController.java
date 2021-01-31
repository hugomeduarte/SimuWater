package pt.iade.simuwater.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.simuwater.models.Registry;
import pt.iade.simuwater.models.repositories.RegistryRepository;

@RestController
@RequestMapping(path = "/api/registries")

public class RegistryController {
    private Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private RegistryRepository registryRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Registry> getRegistries() {
        logger.info("Sending all registries");
        return registryRepository.findAll();
    }












}