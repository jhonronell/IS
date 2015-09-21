package com.is.inventory.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.is.inventory.model.Product;
import com.is.inventory.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired 
	@Qualifier("productServiceImpl")
	private ProductService productService;
	
	@RequestMapping(value = "/starter", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpServletRequest request) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		List<Product> productList = productService.getProducts();
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("productList", productList );
		return "starter";
	}
	
}
