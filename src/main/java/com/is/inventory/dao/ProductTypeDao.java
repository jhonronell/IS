package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductType;

public interface ProductTypeDao {
	
	public void saveProductType(ProductType productType);
	public void updateProductType(ProductType productType);
	public void deleteProductType(ProductType productType);
	public List<ProductType> getProductType(ProductType productType);
}
