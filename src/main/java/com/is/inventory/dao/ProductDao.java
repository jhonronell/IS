package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.Product;

public interface ProductDao {
	
	public List<Product> getProducts();
	public void saveProduct(Product product);
	public void deleteProduct(Product Product);
	public void updateProducts(Product product);
	public void addProduct(Product product);
	public Product getProduct(Product product);
}
