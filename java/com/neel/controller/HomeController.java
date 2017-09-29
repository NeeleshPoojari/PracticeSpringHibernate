package com.neel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neel.model.User;

@Controller
public class HomeController {
	
	
	@RequestMapping("/home")
	
	public String getHome(){
		
		return "home";
	}
	

	@RequestMapping("/getUserForm")
	public String getUserForm(Model model){
		model.addAttribute("user",new User());
		return "userreg";	
	}
	
	@RequestMapping("/processuser")
	public ModelAndView readData(@ModelAttribute(value="user")User user,Model model){
	return new ModelAndView("displayuser", "user", user);	
		
	}
	
}
