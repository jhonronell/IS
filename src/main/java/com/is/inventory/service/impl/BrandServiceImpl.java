package com.is.inventory.service.impl;

import java.awt.List;

import com.is.inventory.dao.impl.BrandDaoImpl;
import com.is.inventory.model.Brand;
import com.is.inventory.service.BrandService;

public class BrandServiceImpl implements BrandService {

	BrandDaoImpl brandDao = new BrandDaoImpl();
	
	@Override
	public void addBrand(Brand brand) {
		// TODO Auto-generated method stub
		brandDao.saveBrand(brand);
		
	}

	@Override
	public void updateBrand(Brand brand) {
		// TODO Auto-generated method stub
		brandDao.updateBrand(brand);
	}

	@Override
	public void delete(Brand brand) {
		// TODO Auto-generated method stub
		brandDao.delete(brand);
	}

	@Override
	public List getBrands() {
		// TODO Auto-generated method stub
		return brandDao.getBrands();
	}

}
