package com.is.inventory.dao;

import java.awt.List;

import com.is.inventory.model.Product;

public interface ProductDao {
	
	public List getProducts();
	public void saveProduct(Product product);
	public void deleteProduct(Product Product);
	public void updateProducts(Product product);
	public void addProduct(Product product);

}
