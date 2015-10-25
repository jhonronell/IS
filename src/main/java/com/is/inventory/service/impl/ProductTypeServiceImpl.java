package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductTypeDAO;
import com.is.inventory.model.ProductType;
import com.is.inventory.service.ProductTypeService;


public class ProductTypeServiceImpl implements ProductTypeService
{

	private ProductTypeDAO productTypeDAO;
	
	public void setProductTypeDAO(ProductTypeDAO productTypeDAO) {
		this.productTypeDAO = productTypeDAO;
	}

	@Override
	public ProductType getByPrimaryKey(ProductType productType) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ProductType productType) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(ProductType productType) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ProductType productType) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List getByName(String name) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateAdded(Integer dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddedBy(Integer addedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByIsactive(Byte isactive) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDetails(String details) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
