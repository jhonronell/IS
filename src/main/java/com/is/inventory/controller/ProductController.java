package com.is.inventory.controller;

import java.math.BigDecimal;
import java.sql.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.is.inventory.model.Brand;
import com.is.inventory.model.Color;
import com.is.inventory.model.Distributor;
import com.is.inventory.model.Price;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductModel;
import com.is.inventory.model.ProductType;
import com.is.inventory.service.impl.ProductServiceImpl;

@Controller
public class ProductController {
	
	@RequestMapping(value = "/product/action/new", method = RequestMethod.POST)
	public String addProduct(@RequestParam("id") int id, @RequestParam("name") String name, 
							 @RequestParam("description") String description, @RequestParam("weight") float weight, 
							 @RequestParam("height") float height, @RequestParam("color") int colorID, 
							 @RequestParam("Sku") String Sku,  
							 @RequestParam("datePurchased") Date datePurchased, @RequestParam("dateReceived") Date dateReceived,
							 @RequestParam("dateShipped") Date dateShipped,  @RequestParam("productModelID") int productModelID,
							 @RequestParam("price") BigDecimal sellingPrice,  @RequestParam("capitalPrice") BigDecimal capitalPrice, 
							 @RequestParam("msrp") BigDecimal msrp,  @RequestParam("dateAdded") String dateAdded,
							 @RequestParam("productTypeID") int productTypeId, @RequestParam("code") String code, 
							 @RequestParam("distributorID") int distributorID,  @RequestParam("modelID") int modelID
							){
		
		Product product = new Product(name);
		product.setDescription(description);
		product.setCode(code);
		
		ProductModel productModel = new ProductModel();
		productModel.setID(productModelID);
		
		Distributor distributor = new Distributor();
		distributor.setID(distributorID);
		product.setDistributor(distributor);
		
		product.setProductModel(productModel);
		product.setCode(code);
		
		product.setWeight(weight);
		product.setHeight(height);
		
		Color color = new Color();
		color.setID(colorID);
		
		product.setColor(color);
		product.setSku(Sku);
		product.setDatePurchased(datePurchased);
		product.setDateReceived(dateReceived);
		product.setDateShipped(dateShipped);
		
		Price price = new Price();
		price.setCapitalPrice(capitalPrice);
		price.setMsrp(msrp);
		price.setPrice(sellingPrice);
		
		product.setPrice(price);
		
		ProductType productType = new ProductType();
		productType.setID(productTypeId);
	
		product.setProductType(productType);
		
		ProductServiceImpl productService = new ProductServiceImpl();
		productService.addProduct(product);
		
		return "home";
	}
	
	@RequestMapping(value = "/product/{productId}", method = RequestMethod.GET)
	public String viewProduct(@PathVariable("productId") int productId){
		
		return "product";
	}
	
	
}
