package com.is.model.service.impl;


import com.is.model.Product;
import com.is.model.service.ProductService;

public  class ProductServiceImpl implements ProductService {

	@Override
	public void createProduct(Product product) {
		// TODO Auto-generated method stub
		System.out.println(product.getProductCode() + product.getName());
	}

	@Override
	public void deleteProduct(int productId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateProducts(Product product) {
		// TODO Auto-generated method stub
		
	}

}
