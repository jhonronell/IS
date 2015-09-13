package com.is.model.service.impl;

import com.is.inventory.dao.impl.ProductOptionSelectionDaoImpl;
import com.is.inventory.model.ProductOptionSelection;
import com.is.model.service.ProductOptionSelectionService;

public class ProductOptionSelectionServiceImpl implements ProductOptionSelectionService {

	ProductOptionSelectionDaoImpl productOptionSelectionDao = new ProductOptionSelectionDaoImpl();
	
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
