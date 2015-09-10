package com.is.dao;

import java.awt.List;

import com.is.inventory.model.Product;

public interface ProductDao {
	
	public List getProducts();
	public void addProduct(Product product) throws ClassNotFoundException;
	public void deleteProduct(Product Product);
	public void updateProducts(Product product);

}
