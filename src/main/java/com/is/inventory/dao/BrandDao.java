package com.is.inventory.dao;
import java.util.List;
import com.is.inventory.model.Brand;
import com.is.inventory.model.ProductType;

public interface BrandDao {

	public void saveBrand(Brand brand);
	public void updateBrand(Brand brand);
	public void delete(Brand brand);
	public List getBrands();
	public Brand getBrand(Brand brand);
}
