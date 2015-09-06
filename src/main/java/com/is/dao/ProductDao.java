package com.is.dao;

import java.awt.List;

import com.is.model.Product;

public interface ProductDao {
	
	public List getProducts();
	public void addProduct(Product product);
	public void deleteProduct(int productId);
	public void updateProducts(Product product);

}
