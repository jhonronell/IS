package com.is.inventory.dao;

import com.is.inventory.model.Price;

public interface ProductPriceDao {

	public void addProductPrice(Price price);
	public void updateProductPrice(Price price);
	public void deleteProductPrice(Price price);
	public void getProductPrice(Price price);
	
	
}
