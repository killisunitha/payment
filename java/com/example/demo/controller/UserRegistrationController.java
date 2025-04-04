package com.example.demo.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.Model.UserRegistrationModel;

public class UserRegistrationController {
@GetMapping("/register")
public String RegistrationForm(Model model) {
	model.addAttribute("registrationForm",new UserRegistrationModel());
	System.out.println("welcome to registration form");
	return "registration";
}
}
