package com.is.inventory.service;

import com.is.inventory.model.Product;

public interface ProductService{
	
	public void addProduct(Product product);
	public void deleteProduct(Product productId);
	public void updateProducts(Product product);
	
}
