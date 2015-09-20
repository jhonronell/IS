package com.is.inventory.service;

import java.util.List;

import com.is.inventory.model.Product;

public interface ProductService{
	
	public void addProduct(Product product);
	public void deleteProduct(Product productId);
	public void updateProducts(Product product);
	public List<Product> getProducts(Product product);
}
