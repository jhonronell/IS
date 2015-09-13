package com.is.inventory.dao;

import com.is.inventory.model.ProductOptionSelection;

public interface ProductOptionSelectionDao {

	void saveProductOptionSelection(ProductOptionSelection productOptionSelection);
	void updateProductOptionSelection(ProductOptionSelection productOptionSelection);
	void deleteProductOptionSelection(ProductOptionSelection productOptionSelection);
	
}
