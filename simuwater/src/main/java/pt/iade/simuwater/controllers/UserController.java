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

import pt.iade.simuwater.models.User;
import pt.iade.simuwater.models.exceptions.NotFoundException;
import pt.iade.simuwater.models.repositories.UserRepository;

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

    @GetMapping(path = "{name}", produces = MediaType.APPLICATION_JSON_VALUE)
    public User getUser(@PathVariable String name) {
        logger.info("Sending user with name " + name);
        Optional<User> _user=userRepository.findByName(name);
        return _user.get();
    }


  
    
}
