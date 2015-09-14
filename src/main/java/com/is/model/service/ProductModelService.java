package com.is.model.service;

import java.util.List;

import com.is.inventory.model.ProductModel;

public interface ProductModelService {

	public void addProductModel(ProductModel productModel);
	public void updateProductModel(ProductModel productModel);
	public void deleteProductModel(ProductModel productModel);
	public List<ProductModel> getProductModel(ProductModel productModel);
	
	
}
