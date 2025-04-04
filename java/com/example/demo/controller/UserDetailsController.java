package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Entity.UserDetailsEntity;
import com.example.demo.service.UserServices;

public class UserDetailsController {
@Autowired
private UserServices userDetails;
@RequestMapping("/testing")
public String viewUser() {
	List<UserDetailsEntity>user=userDetails.fetchingAllUsers();
	System.out.println(user);
	return "test";
}
}
