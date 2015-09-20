package com.is.inventory.dao;

import com.is.inventory.model.Price;

public interface ProductPriceDao {

	public void saveProductPrice(Price price);
	public void updateProductPrice(Price price);
	public void deleteProductPrice(Price price);
	public Price getProductPrice(Price price);
	
	
}
