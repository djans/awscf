package com.helloworld.controller;

import com.helloworld.database.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public String showUsers(Model model) {
        // Fetch users from the service layer
        model.addAttribute("users", userService.getAllUsers());
        return "users";  // Return the 'users.html' view
    }
}

