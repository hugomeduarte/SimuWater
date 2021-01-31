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

import pt.iade.simuwater.models.Registry;
import pt.iade.simuwater.models.User;
import pt.iade.simuwater.models.repositories.UserRepository;
import pt.iade.simuwater.models.results.SimpleResult;
import pt.iade.simuwater.models.views.UserResidenceView;

@RestController
@RequestMapping(path = "/api/users")

public class UserController {
    private Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserRepository userRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<User> getUsers() {
        logger.info("Sending all users");
        return userRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces= MediaType.APPLICATION_JSON_VALUE)
    public User getUser(@PathVariable int id) {
        logger.info("Sending user with id "+id);
        Optional<User> _user = userRepository.findById(id);
        return _user.get();
    }

    @GetMapping(path = "/registries/", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<UserResidenceView> getUserResidenceRegistrys() {
    logger.info("Sending all UserResidence registrys");
    return userRepository.findAllUserResidenceRegistry();
    }
  
    @GetMapping(path="/{userId}/registries", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<UserResidenceView> getUserResidenceRegistrysbyId 
    (@PathVariable int userId) { 
    logger.info("Registries of user with id "+userId);
    return userRepository.UserResidenceRegistrysbyId(userId);
    }

    @GetMapping(path = "/{userId}/residences/{residenceId}/registries", produces = MediaType.APPLICATION_JSON_VALUE)
    public UserResidenceView getRegistryofUserwithResidence(@PathVariable int userId, @PathVariable int residenceId) {
    Optional<UserResidenceView> _userresidence = userRepository.findRegistryofUserwithResidence(userId, residenceId);
    return _userresidence.get();
    }
    
    
    @PostMapping(path = "/{userId}/residences", produces = MediaType.APPLICATION_JSON_VALUE)
    public SimpleResult addResidencetoUser(
    @RequestBody Registry registry) {
    logger.info("Adding residence with id " + registry.getResidence().getId());
    userRepository.addResidenceToUser(registry);
    return new SimpleResult("Added residence with id "+ registry.getResidence().getId(),registry);
    }
    
    







    
}
