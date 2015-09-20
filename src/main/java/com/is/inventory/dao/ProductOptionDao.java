package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductModel;
import com.is.inventory.model.ProductOption;

public interface ProductOptionDao {
		
	void saveProductOption(ProductOption productOption);
	void updateProductOption(ProductOption productOption);
	void deleteProductOption(ProductOption productOption);
	public List<ProductOption> getProductOptions(ProductOption productOption);

}
