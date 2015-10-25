package com.is.inventory.service.impl;

import java.util.Date;
import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemDAO;
import com.is.inventory.model.ProductItem;
import com.is.inventory.service.ProductItemService;

public class ProductItemServiceImpl implements ProductItemService
{
	private ProductItemDAO productItemDAO;
	
	
	public void setProductItemDAO(ProductItemDAO productItemDAO) {
		this.productItemDAO = productItemDAO;
	}

	@Override
	public ProductItem getByPrimaryKey(ProductItem productItem) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ProductItem productItem) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(ProductItem productItem) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int delete(ProductItem productItem) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProductItem> getByProductCode(String productCode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByPriceId(Integer priceId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByDistributorId(Integer distributorId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByColorId(Integer colorId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByWeight(Double weight) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByHeight(Double height) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByAddedBy(Integer addedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getBySerialNumber(String serialNumber) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getBySku(String sku) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getProductItemsByCode(String productCode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}
}
