package com.niit.shoppingcart;

import java.io.IOException;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.FileUtil;

@Controller
public class ProductController {
	@Autowired(required=true)
	 private ProductDAO productDAO;
	
	@Autowired
	Category category;
	@Autowired
	Supplier supplier;
	@Autowired
	Product product;
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	@Autowired(required=true)
	private SupplierDAO supplierDAO;
private String Path="F:\\workspace\\ShoppingCartFrontEnd\\src\\main\\resources\\images\\";
	@RequestMapping(value="/product",method=RequestMethod.GET)
	public String listProducts(Model model){
		model.addAttribute("product", product);
		model.addAttribute("category", category);
		model.addAttribute("supplier", supplier);
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList",this.supplierDAO.list());
		return "Product";

	}
	@RequestMapping(value="product/add",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product, @RequestParam("image") MultipartFile file){

              if (productDAO.get(product.getId()) == null) {
       			productDAO.save(product);
       		} else {
       			
       				productDAO.update(product);
       		}
                 FileUtil.upload(Path, file, product.getId()+".jpg");       
                  return "redirect:/manageProducts";
	}
	 	
	
	
	@RequestMapping("product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id)
	{
		Product product=productDAO.get(id);
		ModelAndView mv = new ModelAndView("product");
	boolean flag=	productDAO.delete(product);
		if(flag==true){
			System.out.println("i am in delete operation");
		}
		else{
			mv.addObject("ErrorMessage", "could not delete the record");
		}
		return "redirect:/manageProducts";	
	}
	
	
	@RequestMapping("product/edit/{id}")
	public String  EditProduct(@PathVariable("id") String id,Model model){
	
			product= productDAO.get(id);
		
			//log.debug("Ending  of the method update");
		
		return  "redirect:/product";

	}
	

}