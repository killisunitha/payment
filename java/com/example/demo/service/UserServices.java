package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.Entity.UserDetailsEntity;
import com.example.demo.Repositiories.UserDetailsRepo;

public class UserServices {
	@Autowired
	private UserDetailsRepo userRepo;
	public List<UserDetailsEntity>fetchingAllUsers(){
	return userRepo.findAll();
	}

}
