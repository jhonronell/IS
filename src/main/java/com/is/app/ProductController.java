package com.is.app;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.is.inventory.model.Price;
import com.is.inventory.model.Product;
import com.is.model.service.impl.ProductServiceImpl;

@Controller
public class ProductController {
	
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(Locale locale, Model model,HttpServletRequest request) {
	// addProduct(@RequestParam("name") String name, @RequestParam("productId") long productId)
				
		ProductServiceImpl productService = new ProductServiceImpl();
		String id = request.getParameter("id"); 
		String code = request.getParameter("productCode");
		String name = request.getParameter("name");
		
		Product product = new Product();
		product.setName(name);
		product.setCode(name);
		
		Price price = new Price();
		price.setMsrp(1000);
		price.setPrice(900);
		product.setPrice(price);
		product.setInvestmentCapital(900);
		
		product.setProductType("Frame");
		
		
		
		
		//productService.createProduct(product);
		return "home";
	}
	@RequestMapping(value = "/product/{productId}", method = RequestMethod.GET)
	public String viewProduct(@PathVariable("productId") Long productId){
		
		return "product";
	}
	
	
}
