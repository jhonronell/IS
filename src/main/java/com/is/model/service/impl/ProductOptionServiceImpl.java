package com.is.model.service.impl;

import com.is.inventory.dao.impl.ProductOptionDaoImpl;
import com.is.inventory.model.ProductOption;
import com.is.model.service.ProductOptionService;

public class ProductOptionServiceImpl implements ProductOptionService {

	ProductOptionDaoImpl productOptionDao = new ProductOptionDaoImpl();
	
	@Override
	public void addProductOption(ProductOption productOption) {
		// TODO Auto-generated method stub
		productOptionDao.saveProductOption(productOption);
	}

	@Override
	public void updateProductOption(ProductOption productOption) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductOption(ProductOption productOption) {
		// TODO Auto-generated method stub

	}

}
