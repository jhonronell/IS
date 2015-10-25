package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemOptionValueDAO;
import com.is.inventory.model.ProductItem;
import com.is.inventory.model.ProductItemOptionValue;
import com.is.inventory.service.ProductItemOptionValueService;

public class ProductItemOptionValueServiceImpl implements  ProductItemOptionValueService{

	private ProductItemOptionValueDAO productItemOptionValueDAO;
	
	public void setProductItemOptionValueDAO(ProductItemOptionValueDAO productItemOptionValueDAO) {
		this.productItemOptionValueDAO = productItemOptionValueDAO;
	}

	@Override
	public ProductItemOptionValue getByPrimaryKey(ProductItemOptionValue productModel) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ProductItemOptionValue productModel) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(ProductItemOptionValue productModel) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ProductItemOptionValue productModel) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductItemOptionValue> getProductItemOptionValueByProductItem(ProductItem productItem)
			throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByName(String name) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByYearModel(Integer yearModel) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDetails(String details) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
