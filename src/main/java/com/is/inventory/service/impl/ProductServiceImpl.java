package com.is.inventory.service.impl;
import java.util.List;

import com.is.inventory.dao.ProductDAO;
import com.is.inventory.model.Product;
import com.is.inventory.service.ProductService;

public  class ProductServiceImpl implements ProductService {
	
	private ProductDAO productDAO;

	@Override
	public void setProductDao(ProductDAO productDAO){
		this.productDAO = productDAO;
	}
	
	@Override
	public void addProduct(Product product) {
	 	productDAO.saveProduct(product);
	}

	@Override
	public void deleteProduct(Product productID) {
		// TODO Auto-generated method stub
		productDAO.deleteProduct(productID);
	}

	@Override
	public void updateProducts(Product product) {
		// TODO Auto-generated method stub
		productDAO.updateProducts(product);
	}

	@Override
	public List<Product> getProducts(Product product) {
		productDAO.getProducts();
		return null;
	}
	@Override
	public List<Product> getProducts() {
		return productDAO.getProducts();
	}


}
