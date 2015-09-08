package com.is.dao.impl;


import java.awt.List;

import com.is.dao.ProductDao;
import com.is.inventory.model.Product;

public class ProductDaoImpl implements ProductDao {
	
	
	
	@Override
	public void addProduct(Product product) {
		System.out.println(product.getName());
		
	
	}

	@Override
	public void deleteProduct(int productId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateProducts(Product product) {
		// TODO Auto-generated method stub
	}

	@Override
	public List getProducts() {
		// TODO Auto-generated method stub
		return null;
	}

}
