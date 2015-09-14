package com.is.model.service.impl;

import java.util.List;

import com.is.inventory.dao.impl.UserDaoImpl;
import com.is.inventory.model.ProductType;
import com.is.model.service.ProductTypeService;

public class UserServiceImpl implements ProductTypeService {
	
	UserDaoImpl userDao = new UserDaoImpl();
	
	@Override
	public void addProductTypeDao(User user) {
		// TODO Auto-generated method stub
		userDao.saveUser(user);
	}

	@Override
	public void updateProductTypeDao(ProductType productType) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductTypeDao(ProductType productType) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ProductType> getProductTypeDao(ProductType productType) {
		// TODO Auto-generated method stub
		return null;
	}

}
