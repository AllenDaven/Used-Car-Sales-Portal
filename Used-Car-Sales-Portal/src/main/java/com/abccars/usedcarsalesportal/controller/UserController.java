package com.abccars.usedcarsalesportal.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abccars.usedcarsalesportal.service.CarService;
import com.abccars.usedcarsalesportal.service.UserServices;
import com.abccars.usedcarsalesportal.entity.Car;
import com.abccars.usedcarsalesportal.entity.User;

@Controller
public class UserController {

	@Autowired
	UserServices userService;
	
	@Autowired
	private CarService carService;
	
	 @PostMapping("updateUser")
	 public String changeUser(@RequestParam long uid,
			 @ModelAttribute("user") User user) {
		 
		 
		 User subject = userService.findUser(uid);
		 subject.setName(user.getName());
		 subject.setUserName(user.getUserName());
		 subject.setEmail(user.getEmail());
		 subject.setMobile(user.getMobile());
		 subject.setAddress(user.getAddress());
		 
		 userService.changeUser(subject);
		
		 
		 return "redirect:/profile" ;
	 }
	 
	 @GetMapping("deleteUser")
	 public String removeUser(@RequestParam long uid) {
		 userService.removeUser(uid);
		 return "redirect:/all_users";
	 }
	 
	 @PostMapping("roleChange")
	 public String roleTransition(@RequestParam long uid,
			 @RequestParam("role") String role,
			 @ModelAttribute("user") User user) {
		 
		 User userInfo = userService.findUser(uid);
		 
		 userService.roleChange(userInfo, role);
		 
		 return "redirect:all_users";
	 }
	 
	 @GetMapping("adminView")
		public String adminView(@RequestParam long uid, Model model) {
			
			User subject = userService.findUser(uid);
			String uemail = subject.getEmail();
			
			List<User> user = new ArrayList<User>();
			user.add(subject);
			
			model.addAttribute("user", user);
			
			List<Car> cars = carService.search(uemail);
	    	
	    	model.addAttribute("postedCars", cars);
			
			return "profile";
		}
}
