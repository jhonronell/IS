package com.is.inventory.service.impl;

import com.is.inventory.dao.impl.ProductOptionNameDaoImpl;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.service.ProductOptionNameService;

public class ProductOptionNameServiceImpl implements ProductOptionNameService {

	ProductOptionNameDaoImpl productOptionNameDao = new ProductOptionNameDaoImpl();
	
	@Override
	public void addProductOptionName(ProductOptionName productOptionName) {
		// TODO Auto-generated method stub
		productOptionNameDao.saveProductOptionName(productOptionName);
	}

	@Override
	public void updateProductOptionName(ProductOptionName productOptionName) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductOptionName(ProductOptionName productOptionName) {
		// TODO Auto-generated method stub

	}

}
