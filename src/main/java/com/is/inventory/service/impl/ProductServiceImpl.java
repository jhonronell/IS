package com.is.inventory.service.impl;
import java.util.List;

import com.is.inventory.dao.ProductDao;
import com.is.inventory.model.Product;
import com.is.inventory.service.ProductService;

public  class ProductServiceImpl implements ProductService {
	
	private ProductDao productDao;

	@Override
	public void setProductDao(ProductDao productDao){
		this.productDao = productDao;
	}
	
	@Override
	public void addProduct(Product product) {
	 	productDao.saveProduct(product);
	}

	@Override
	public void deleteProduct(Product productID) {
		// TODO Auto-generated method stub
		productDao.deleteProduct(productID);
	}

	@Override
	public void updateProducts(Product product) {
		// TODO Auto-generated method stub
		productDao.updateProducts(product);
	}

	@Override
	public List<Product> getProducts(Product product) {
		productDao.getProducts();
		return null;
	}
	@Override
	public List<Product> getProducts() {
		return productDao.getProducts();
	}


}
