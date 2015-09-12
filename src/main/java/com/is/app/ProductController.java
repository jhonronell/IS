package com.is.app;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.is.inventory.model.Brand;
import com.is.inventory.model.Price;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductType;
import com.is.model.service.impl.ProductServiceImpl;

@Controller
public class ProductController {
	
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@RequestParam("name") String name, @RequestParam("name") float size
			) {
				
		ProductServiceImpl productService = new ProductServiceImpl();
		
		Brand brand = new Brand();
		brand.setName(name);
		
		ProductType productType = new ProductType();
		productType.setName("Bike");
		
		Product product = new Product("Merida Bike");
		
		product.setProductType(productType);
		product.setBrand(brand);
		
		//productService.createProduct(product);
		return "home";
	}
	@RequestMapping(value = "/product/{productId}", method = RequestMethod.GET)
	public String viewProduct(@PathVariable("productId") int productId){
		
		return "product";
	}
	
	
}
