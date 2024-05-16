package com.abccars.usedcarsalesportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.abccars.usedcarsalesportal.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
    User findByUserName(String name);
    User findByEmail(String email);
}

