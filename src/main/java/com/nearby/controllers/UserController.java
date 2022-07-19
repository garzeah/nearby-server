package com.nearby.controllers;

import com.nearby.models.User;
import com.nearby.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/user")
public class UserController {
    @Autowired
    private UserRepository repository;

    @PostMapping
    public User create(@RequestBody final User user) {
        return repository.create(user);
    }
}
