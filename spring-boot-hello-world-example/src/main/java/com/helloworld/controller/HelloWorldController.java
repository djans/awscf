package com.helloworld.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class HelloWorldController 
{
@RequestMapping("/")
public String hello() 
{
return "<h1> Congratulations Daniel et Clara et AMS 2000. You have successfully deployed the sample Spring Boot Application. </h1>";
}
}
