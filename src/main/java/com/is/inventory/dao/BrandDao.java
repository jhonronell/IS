package com.is.inventory.dao;

import java.awt.List;

import com.is.inventory.model.Brand;

public interface BrandDao {

	public void saveBrand(Brand brand);
	public void updateBrand(Brand brand);
	public void delete(Brand brand);
	public List getBrands();
}
