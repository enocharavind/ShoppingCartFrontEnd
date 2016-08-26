package com.niit.shoppingcart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
public ModelAndView home(){
	
	ModelAndView mv= new ModelAndView("/Home");
	mv.addObject("message"," thank you for ");
	
	return mv;	
}
	@RequestMapping("/Login")
	public ModelAndView login(){
		
		ModelAndView mv= new ModelAndView("Login");
		mv.addObject("userClickedLoginHere","true");
		return mv;
	}
	@RequestMapping("/Registration")
	public ModelAndView register(){
		ModelAndView mv = new ModelAndView("Registration");
		mv.addObject("userClickedRegisterHere","true");
		return mv;
		
	}
}

