package com.friska.api.controller;

import com.friska.application.service.UserService;
import com.friska.domain.entity.User;

public class UserController {
    private UserService userService = new UserService();

    public void createUser(User user) {
        userService.createUser(user);
    }
}