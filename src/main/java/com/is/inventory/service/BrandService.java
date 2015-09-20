package com.is.inventory.service;

import java.util.List;

import com.is.inventory.model.Brand;

public interface BrandService {

	public void addBrand(Brand brand);
	public void updateBrand(Brand brand);
	public void delete(Brand brand);
	public List<Brand> getBrands();
}
