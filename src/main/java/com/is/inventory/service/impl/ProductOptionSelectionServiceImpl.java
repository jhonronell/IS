package com.is.inventory.service.impl;

import com.is.inventory.dao.impl.ProductOptionSelectionDAOImpl;
import com.is.inventory.model.ProductOptionSelection;
import com.is.inventory.service.ProductOptionSelectionService;

public class ProductOptionSelectionServiceImpl implements ProductOptionSelectionService {

	ProductOptionSelectionDAOImpl productOptionSelectionDao = new ProductOptionSelectionDAOImpl();
	
	@Override
	public void addProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub
		productOptionSelectionDao.saveProductOptionSelection(productOptionSelection);
	}

	@Override
	public void updateProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub

	}

}
