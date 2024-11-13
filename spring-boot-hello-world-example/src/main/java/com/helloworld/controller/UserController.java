package com.helloworld.controller;

import com.helloworld.aws.Metadata;
import com.helloworld.database.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.IOException;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public String showUsers(Model model) {
        // Fetch metadata from the service layer
        Metadata metadata = new Metadata();
        try {
            model.addAttribute("instance-id",metadata.getMetdata("instance-id"));
            model.addAttribute("instance-type",metadata.getMetdata("instance-type"));
            model.addAttribute("instance-life-cycle",metadata.getMetdata("instance-life-cycle"));
            model.addAttribute("region",metadata.getMetdata("/placement/region"));
            model.addAttribute("availability-zone",metadata.getMetdata("/placement/availability-zone"));
        } catch (IOException | InterruptedException e) {
            throw new RuntimeException(e);
        }
        // Fetch users from the service layer
        model.addAttribute("users", userService.getAllUsers());
        return "users";  // Return the 'users.html' view
    }
}

