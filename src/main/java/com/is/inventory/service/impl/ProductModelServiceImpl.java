package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.impl.ProductModelDAOImpl;
import com.is.inventory.model.ProductModel;
import com.is.inventory.service.ProductModelService;

public class ProductModelServiceImpl implements ProductModelService {

	private final ProductModelDAOImpl productModelDao = new ProductModelDAOImpl();
	
	@Override
	public void addProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub
		productModelDao.saveProductModel(productModel);
	}

	@Override
	public void updateProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ProductModel> getProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub
		return null;
	}

}
