package com.is.model.service.impl;


import com.is.dao.ProductDao;
import com.is.dao.impl.ProductDaoImpl;
import com.is.inventory.model.Product;
import com.is.model.service.ProductService;

public  class ProductServiceImpl implements ProductService {
	ProductDao productImpl = new ProductDaoImpl();
	@Override
	public void saveProduct(Product product) {
		// TODO Auto-generated method stub
	 	try {
			productImpl.addProduct(product);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
