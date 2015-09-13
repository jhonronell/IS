package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductModel;

public interface ProductModelDao {

	public void addProductModel(ProductModel productModel);
	public void updateProductModel(ProductModel productModel);
	public void deleteProductModel(ProductModel productModel);
	public List<ProductModel> getProductModel(ProductModel productModel);
	
	
}
