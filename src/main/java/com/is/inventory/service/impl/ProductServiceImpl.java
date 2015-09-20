package com.is.inventory.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.is.inventory.dao.ProductDao;
import com.is.inventory.model.Product;
import com.is.inventory.service.ProductService;

public  class ProductServiceImpl implements ProductService {
	
	public ProductDao productDaoImpl;
	public String demoString;
	
	@Autowired
	public void setDemoString(String i){
		this.demoString = i;
	}
	@Autowired
	public void setProductDaoImpl(ProductDao productDaoImpl){
		
		System.out.println("invoke?");
		this.productDaoImpl = productDaoImpl;
	}
	
	@Override
	public void addProduct(Product product) {
		System.out.println(demoString);
		// TODO Auto-generated method stub
		System.out.println("invoke1?");
		System.out.println(productDaoImpl.toString());
	 	productDaoImpl.saveProduct(product);
	}

	@Override
	public void deleteProduct(Product productID) {
		// TODO Auto-generated method stub
		productDaoImpl.deleteProduct(productID);
	}

	@Override
	public void updateProducts(Product product) {
		// TODO Auto-generated method stub
		productDaoImpl.updateProducts(product);
	}

	@Override
	public List<Product> getProducts(Product product) {
		productDaoImpl.getProducts();
		return null;
	}

}
