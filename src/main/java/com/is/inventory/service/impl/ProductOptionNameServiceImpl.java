package com.is.inventory.service.impl;

import com.is.inventory.dao.impl.ProductOptionNamDAOImpl;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.service.ProductOptionNameService;

public class ProductOptionNameServiceImpl implements ProductOptionNameService {

	ProductOptionNamDAOImpl productOptionNameDao = new ProductOptionNamDAOImpl();
	
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
