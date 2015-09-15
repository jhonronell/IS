package com.is.inventory.service.impl;

import com.is.inventory.dao.ProductPriceDao;
import com.is.inventory.dao.impl.ProductPriceDaoImpl;
import com.is.inventory.model.Price;
import com.is.inventory.service.ProductPriceService;

public class ProductPriceServiceImpl implements ProductPriceService {

	ProductPriceDao productPriceDao = new ProductPriceDaoImpl();
	@Override
	public void addProductPrice(Price price) {
		// TODO Auto-generated method stub
		productPriceDao.saveProductPrice(price);
	}

	@Override
	public void updateProductPrice(Price price) {
		// TODO Auto-generated method stub
		productPriceDao.updateProductPrice(price);
	}

	@Override
	public void deleteProductPrice(Price price) {
		// TODO Auto-generated method stub
		productPriceDao.deleteProductPrice(price);
	}

	@Override
	public void getProductPrice(Price price) {
		// TODO Auto-generated method stub
		productPriceDao.getProductPrice(price);
	}

}
