package com.helloworld.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@Controller
public class HelloWorldController 
{
@RequestMapping("/home")
public String hello() 
{
    return "<h1> Congratulations Daniel et Clara et AMS 2001. You have successfully deployed the sample Spring Boot Application. </h1>";
}
@GetMapping("/")
public String home()
    {
        return "home";
    }
}
