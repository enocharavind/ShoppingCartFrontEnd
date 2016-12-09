package com.niit.shoppingcart.registrationflow;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.niit.shoppingcart.dao.UserDetailsDAO;
import com.niit.shoppingcart.model.UserDetails;

@Component
public class RegistrationFlow {
	
	@Autowired
	UserDetailsDAO userDetailsDAO;
	
	public UserDetails initFlow()
	{
		return new UserDetails();
	}
	
	
	public String validateDetails(UserDetails userDetails,MessageContext messageContext){
		String status = "success";
		if(userDetails.getId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("Please enter a valid userid").build());
			status = "failure";
		}
		if(userDetails.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("name").defaultText("Please enter a valid username").build());
			status="failure";
		}
		if(userDetails.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Please enter a valid password").build());
			status = "failure";
		}
	
		if(userDetails.getMail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mail").defaultText("Please enter a valid email id").build());
			status = "failure";
		}
		
		if(userDetails.getContact().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"contact").defaultText("Please enter a valid mobile no.").build());
			status = "failure";
		}
		if(userDetails.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Please enter a address").build());
			status = "failure";
		}
		
		return status;
	}
	
	public String saveDetails(UserDetails userDetails){
		userDetailsDAO.save(userDetails);
		
		return "success";
	}


}
