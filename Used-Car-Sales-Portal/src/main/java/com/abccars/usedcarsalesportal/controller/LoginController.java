package com.abccars.usedcarsalesportal.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.abccars.usedcarsalesportal.entity.User;
import com.abccars.usedcarsalesportal.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;

	//Load the Login Page and Logout Message
	@GetMapping("/login")
	public String onLogin(@RequestParam(name = "logout", required = false) String logout, Model model) {
	    if (logout != null) {
	        String success_logout = "You have been successfully logged out. See you next time!";
	        model.addAttribute("success_logout", success_logout);
	    }
	    return "login";
	}

    //For any error
    @GetMapping("/error")
    public String onError() {
    	return "error";
    }
    
    //For Login Error
    @GetMapping("/login_error")
    public String onLoginError(Model model) {
        String error_msg = "Incorrect username or password. Try Again.";
        model.addAttribute("error_string", error_msg);
        return "login";
    }
    
    @GetMapping("login_success")
    public String onLoginSuccess(Model model) {
    	String success_login = "Welcome to the world of ABC Used Cars.";
        model.addAttribute("success_login", success_login);
    	return "login";
    }
    
    //For Register
    @GetMapping("/register")
	public String newUserForm(Map<String, Object> model) {
    	System.out.println("new Login Controller");
		User user = new User();
		model.put("user", user);
		return "register";
	}
    
    //Save register user to database
	@PostMapping("/save")
	public String saveStore(@ModelAttribute("user") User user, Model model) {
		System.out.println("/save Login Controller");
		userService.save(user);
		String register_success = "<h5> Registeration Successful! </h5>";
		model.addAttribute("register_success", register_success);
		return "register";
	}
	
    @GetMapping("/all_users")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "all_user";
    }
    
    @GetMapping("profile")
	public String showProfile(Model model, Principal principal) {
		String uname = principal.getName();
		User subject = userService.findLoginUser(uname);
		String uemail = subject.getEmail();
		List<User> user = new ArrayList<User>();
		user.add(subject);
		model.addAttribute("user", user);
		return "profile";
	}
    
    @GetMapping("/index")
    public String index() {
        return "index";
    }
    
    @GetMapping("/home")
    public String home() {
        return "home";
    }
    
    @GetMapping("/about")
    public String about() {
        return "about_us";
    }
    
    @GetMapping("/contact")
    public String contact() {
        return "contact_us";
    }
    
    @GetMapping("/car_lists")
    public String carList() {
        return "car_list";
    }
}
