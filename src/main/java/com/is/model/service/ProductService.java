package com.is.model.service;

import com.is.model.Product;

public interface ProductService{
	
	public void createProduct(Product product);
	public void deleteProduct(int productId);
	public void updateProducts(Product product);
}
