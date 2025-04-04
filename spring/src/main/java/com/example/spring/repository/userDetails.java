package com.example.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.spring.Entity.TransactionEntity;
import com.example.spring.Entity.UserDetailsEntity;

public interface userDetails extends JpaRepository<UserDetailsEntity,Long>{
	

}
