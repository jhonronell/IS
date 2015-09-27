package com.is.inventory.service.impl;

import java.util.List;


import com.is.inventory.dao.impl.ProductTypeDAOImpl;
import com.is.inventory.model.ProductType;
import com.is.inventory.service.ProductTypeService;

public class ProductTypeServiceImpl implements ProductTypeService {

	ProductTypeDAOImpl productTypeDao = new ProductTypeDAOImpl();
	
	@Override
	public void addProductTypeDao(ProductType productType) {
		// TODO Auto-generated method stub
		productTypeDao.saveProductType(productType);
	}

	@Override
	public void updateProductTypeDao(ProductType productType) {
		// TODO Auto-generated method stub
		productTypeDao.updateProductType(productType);
	}

	@Override
	public void deleteProductTypeDao(ProductType productType) {
		// TODO Auto-generated method stub
		productTypeDao.deleteProductType(productType);
	}

	@Override
	public List<ProductType> getProductTypeDao(ProductType productType) {
		// TODO Auto-generated method stub
		return null;
	}

}
