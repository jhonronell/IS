package com.is.inventory.service;

import com.is.inventory.model.Price;

public interface ProductPriceService {

	public void addProductPrice(Price price);
	public void updateProductPrice(Price price);
	public void deleteProductPrice(Price price);
	public void getProductPrice(Price price);
	
	
}
