package com.is.inventory.service;

import java.util.List;

import com.is.inventory.model.ProductType;

public interface ProductTypeService {
	
	public void addProductTypeDao(ProductType productType);
	public void updateProductTypeDao(ProductType productType);
	public void deleteProductTypeDao(ProductType productType);
	public List<ProductType> getProductTypeDao(ProductType productType);
}
