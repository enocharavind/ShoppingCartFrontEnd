package com.niit.shoppingcart;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDetailsDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.UserDetails;

@Controller
public class HomeController {


	@Autowired
	// to inject the object in the home controller automatically
	CategoryDAO categoryDAO;
	
	@Autowired
	UserDetailsDAO userDetailsDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	UserDetails userDetails;
	
	@Autowired
	Product product;
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	Category category;

	@RequestMapping("/")
	public ModelAndView home(HttpSession session) {
		ModelAndView m = new ModelAndView("Home");
		m.addObject("carousel1", true);
		// get all categories along with products
		// you have to integrate with the backend project
	

		session.setAttribute("supplier",supplier);
		session.setAttribute("supplierList",supplierDAO.list());

		session.setAttribute("product",product);
		session.setAttribute("productList",productDAO.list());
		
		session.setAttribute("category",category);
		session.setAttribute("categoryList",categoryDAO.list());
		
		return m;
	}
	
	@RequestMapping("/Home")
	public String returnHome(Model model){
		model.addAttribute("carousel", true);
		
		return "Home";
		
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("userDetails") UserDetails userDetails,HttpSession session) {
		
		ModelAndView mv = new ModelAndView("/Home");


		if(userDetailsDAO.get(userDetails.getId())==null){
			userDetailsDAO.save(userDetails);
			mv.addObject("successRegister", "true");
			mv.addObject("SuccessMessage","YOU ARE SUCCESSFULLY REGISTER,PLEASE LOGIN WITH THIS CREDENTIALS");
		}
		else{
			mv.addObject("userExist", "true");
		mv.addObject("failureMessage","USER EXIST WITH THIS ID,PLEASE REGISTER WITH NEW USER ID");
		}
		return mv;
	}
	
	@RequestMapping("/Registration")
	public ModelAndView register(HttpSession session) {
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("RegisterMsg", "REGISTER");
		mv.addObject("userDetails", userDetails);
		mv.addObject("userClickedRegisterHere", true);

		session.setAttribute("product",product);
		session.setAttribute("productList",productDAO.list());
		
		session.setAttribute("category",category);
		session.setAttribute("categoryList",categoryDAO.list());
		return mv;
	}

	@RequestMapping("/Login")
	public ModelAndView Login(HttpSession session) {

		session.setAttribute("product",product);
		session.setAttribute("productList",productDAO.list());
		
		session.setAttribute("category",category);
		session.setAttribute("categoryList",categoryDAO.list());
		ModelAndView m = new ModelAndView("/Home");
		m.addObject("LoginMsg", "LOGIN");
		m.addObject("userDetails", userDetails);
		m.addObject("userClickedLoginHere", true);
		
		return m;
	}
	
@RequestMapping(value="ProductList")
	public String  getSelectedProduct(Model model,HttpSession session){

	session.setAttribute("product",product);
	session.setAttribute("productList",productDAO.list());
	
	session.setAttribute("category",category);
	session.setAttribute("categoryList",categoryDAO.list());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("IsClickedProduct", true);
			return "Home";
	}
	
	
	@RequestMapping(value="about")
	public String about(Model model){
		model.addAttribute("clickedAbout", true);		
		return "Home";
		
	}
	
    @RequestMapping(value="viewProduct/{id}")
    public String viewProduct(@PathVariable("id") String id, Model model,HttpSession session) throws IOException {

		session.setAttribute("product",product);
		session.setAttribute("productList",productDAO.list());
		
		session.setAttribute("category",category);
		session.setAttribute("categoryList",categoryDAO.list());
    	Product product=productDAO.get(id);
        model.addAttribute("clickedIndividualProduct", true);
        model.addAttribute("product", product);
      //  System.out.println(product.getPro_name());
        return "Home";
    }
	
	
}
