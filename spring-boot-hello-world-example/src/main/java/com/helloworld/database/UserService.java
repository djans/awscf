package com.helloworld.database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public List<User> getAllUsers() {
        List<User> users = userRepository.findAll();
        System.out.println("Users: " + users.size());
        for (User user : users) {
            System.out.println(user.getFirst_name());
        }
        return userRepository.findAll(); // Fetch all users from the database
    }
}

