package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.BrandDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Brand;
import com.is.inventory.service.BrandService;

public class BrandServiceImpl implements BrandService {

	private BrandDAO brandDAO;

	public void setBrandDAO(BrandDAO brandDAO) {
		this.brandDAO = brandDAO;
	}

	@Override
	public Brand getByPrimaryKey(Brand brand) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Brand brand) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(Brand brand) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Brand brand) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List getByName(String name) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByStatus(Byte isActive) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Brand> getBrands() throws DAOException {
		 
		return brandDAO.getBrands();
	}

}
