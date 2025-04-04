package com.example.spring.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.repository.userDetails;
@Service
public class UserServices {
	@Autowired
	private userDetails userRepo;
	public List<UserDetailsEntity>fetchingAllUsers(){
	return userRepo.findAll();
	}

}

