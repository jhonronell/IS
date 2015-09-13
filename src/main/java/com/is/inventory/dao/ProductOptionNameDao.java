package com.is.inventory.dao;

import com.is.inventory.model.ProductOptionName;

public interface ProductOptionNameDao {

	void saveProductOptionName(ProductOptionName productOptionName);
	void updateProductOptionName(ProductOptionName productOptionName);
	void deleteProductOptionName(ProductOptionName productOptionName);

}
