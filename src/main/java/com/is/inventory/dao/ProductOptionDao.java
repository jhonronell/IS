package com.is.inventory.dao;

import com.is.inventory.model.ProductOption;

public interface ProductOptionDao {
		
	void saveProductOption(ProductOption productOption);
	void updateProductOption(ProductOption productOption);
	void deleteProductOption(ProductOption productOption);

}
