package com.abccars.usedcarsalesportal.service;

import java.util.List;

import com.abccars.usedcarsalesportal.entity.User;

public interface UserServices {

		String saveUser(User user);
	
		String changeUser(User user);
	
		User findUser(long uid);
	
		User findLoginUser(String username);
	
    List<User> listUsers();
    
    String removeUser(long uid);
    
    void roleChange(User user, String role);
	
}
