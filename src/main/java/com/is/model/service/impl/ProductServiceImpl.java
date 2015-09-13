package com.is.model.service.impl;


import com.is.inventory.dao.ProductDao;
import com.is.inventory.dao.impl.ProductDaoImpl;
import com.is.inventory.model.Product;
import com.is.model.service.ProductService;

public  class ProductServiceImpl implements ProductService {
	
	ProductDao productImpl = new ProductDaoImpl();

	@Override
	public void addProduct(Product product) {
		// TODO Auto-generated method stub
	 	productImpl.saveProduct(product);
	}

	@Override
	public void deleteProduct(Product productID) {
		// TODO Auto-generated method stub
		productImpl.deleteProduct(productID);
	}

	@Override
	public void updateProducts(Product product) {
		// TODO Auto-generated method stub
		productImpl.updateProducts(product);
	}

}
