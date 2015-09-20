package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductOptionSelection;

public interface ProductOptionSelectionDao {

	void saveProductOptionSelection(ProductOptionSelection productOptionSelection);
	void updateProductOptionSelection(ProductOptionSelection productOptionSelection);
	void deleteProductOptionSelection(ProductOptionSelection productOptionSelection);
	public List<ProductOptionSelection> getProductOptionSelections(ProductOptionName productOptionNames);
	
}
