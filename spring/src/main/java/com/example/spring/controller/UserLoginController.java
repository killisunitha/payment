package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserLoginController {
	@GetMapping("/login")
	public String showLoginPage() {
		System.out.println("logged Successfully");
		return "login";
	}
	@PostMapping("/login")
	public String authenticate() {
		System.out.println("logged Successfully");
		return "profile";
	}
}
