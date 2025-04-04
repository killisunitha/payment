package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserLoginController {
@GetMapping("/login")
public String checkUserLogin() {
	System.out.println("logged Successfully");
	return "profile";
}
}
