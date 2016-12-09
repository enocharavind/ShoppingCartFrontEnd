package com.niit.shoppingcart.webflow;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.niit.shoppingcart.dao.BillingAddressDAO;
import com.niit.shoppingcart.dao.CardDetailDAO;
import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.OrderDetailDAO;
import com.niit.shoppingcart.dao.OrderedItemsDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.ShippingAddressDAO;
import com.niit.shoppingcart.dao.UserDetailsDAO;
import com.niit.shoppingcart.model.BillingAddress;
import com.niit.shoppingcart.model.CardDetail;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.CheckoutDetails;
import com.niit.shoppingcart.model.OrderDetail;
import com.niit.shoppingcart.model.OrderedItems;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.ShippingAddress;
import com.niit.shoppingcart.model.UserDetails;



@Component
public class CheckoutController {
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ShippingAddress shippingAddress;

	@Autowired
	private BillingAddress billingAddress;

	@Autowired
	private OrderDetail orderDetail;

	@Autowired
	private OrderedItems orderedItems;

	@Autowired
	private CardDetail cardDetail;

	@Autowired
	private ShippingAddressDAO shippingAddressDAO;

	@Autowired
	private BillingAddressDAO billingAddressDAO;

	@Autowired
	private OrderedItemsDAO orderedItemsDAO;

	@Autowired
	private OrderDetailDAO orderDetailDAO;

	@Autowired
	private CardDetailDAO cardDetailDAO;
	@Autowired
	UserDetails userDetails;
	
	@Autowired
	UserDetailsDAO  userDetailsDAO ;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	List<Cart> cart;

	
	@Autowired
	HttpSession httpSession;
	@Autowired
	Product product;
	
	
	public ShippingAddress initFlow() {
		
/*		userDetails = userDetailsDAO.get("roopesh");
		checkoutDetails.setCart(cartDAO.getByUser("roopesh"));
		checkoutDetails.setUserDetails(userDetails);
		return checkoutDetails;*/
		return new ShippingAddress();
	}
/*
	public String addShippingAddress(CheckoutDetails checkoutDetails, ShippingAddress shippingAddress) {
		userDetails= userDetailsDAO.get("roopesh");
		checkoutDetails.setShippingAddress(shippingAddress);

		this.shippingAddress.setUser_id(userDetails.getId());
		this.shippingAddress.setS_line1(shippingAddress.getS_line1());
		this.shippingAddress.setS_line2(shippingAddress.getS_line2());
		this.shippingAddress.setS_city(shippingAddress.getS_city());
		this.shippingAddress.setS_state(shippingAddress.getS_state());
		this.shippingAddress.setS_country(shippingAddress.getS_country());
		this.shippingAddress.setS_zipCode(shippingAddress.getS_zipCode());
		checkoutDetails.setShippingAddress(shippingAddress);
		return "success";
	}

	public String addBillingAddress(CheckoutDetails checkoutDetails, BillingAddress billingAddress){
		userDetails = userDetailsDAO.get("roopesh");
		checkoutDetails.setBillingAddress(billingAddress);

		this.billingAddress.setUser_id(userDetails.getId());
		this.billingAddress.setB_line1(billingAddress.getB_line1());
		this.billingAddress.setB_line2(billingAddress.getB_line2());
		this.billingAddress.setB_city(billingAddress.getB_city());
		this.billingAddress.setB_state(billingAddress.getB_state());
		this.billingAddress.setB_country(billingAddress.getB_country());
		this.billingAddress.setB_zipCode(billingAddress.getB_zipCode());
		checkoutDetails.setBillingAddress(billingAddress);
		return "success";
	}

	public String addCardDetails(CheckoutDetails checkoutDetails, CardDetail cardDetail) {
		
		userDetails= userDetailsDAO.get(SecurityContextHolder.getContext()
				.getAuthentication().getName());
		userDetails = userDetailsDAO.get(userDetails.getId());
		List<Cart> cartList=cartDAO.getByUser(userDetails.getId());
		int sum=0;
			for(int i=0;i<cartList.size();i++){
				 sum=sum+cartList.get(i).getTotal();
			}
		cardDetail.setUser_id(userDetails.getId());
		cardDetail.setTotalCost(sum);
		checkoutDetails.setCardDetail(cardDetail);
		shippingAddressDAO.saveOrUpdate(checkoutDetails.getShippingAddress());
		billingAddressDAO.saveOrUpdate(checkoutDetails.getBillingAddress());
		cardDetailDAO.saveOrUpdate(checkoutDetails.getCardDetail());


		return "success";
	}*/

	public String saveDetails(ShippingAddress shippingAddress){
		shippingAddressDAO.saveOrUpdate(shippingAddress);

		return "success";
	}
	public String saveDetails(BillingAddress billingAddress){
		billingAddressDAO.saveOrUpdate(billingAddress);
		return "success";
	}
	public String saveDetails(CardDetail cardDetail){
		cardDetailDAO.saveOrUpdate(cardDetail);
		return "success";	
	}
	public String remove(){
	/*	System.out.println("plz remove");
		String loggedInUser=(String) session.getAttribute("loggedInUserID");
		userDetails=userDetailsDAO.get(loggedInUser);*/
	
		cartDAO.getByUser(userDetails.getId());
		return "success";	
	
}
}
