package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserRegistrationController {
	@GetMapping("/register")
	public String RegistrationForml() {
		System.out.println("welcome to registration form");
		return "Registration";
	}
	@PostMapping("/register")
	public String regform() {
		System.out.println("welcome to login form");
		return "login";
	}
}
