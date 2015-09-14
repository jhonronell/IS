package com.is.model.service.impl;

import java.util.List;

import com.is.inventory.dao.impl.ProductModelDaoImpl;
import com.is.inventory.model.ProductModel;
import com.is.model.service.ProductModelService;

public class ProductModelServiceImpl implements ProductModelService {

	private final ProductModelDaoImpl productModelDao = new ProductModelDaoImpl();
	
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
