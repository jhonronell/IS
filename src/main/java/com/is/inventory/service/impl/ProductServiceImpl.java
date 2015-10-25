package com.is.inventory.service.impl;

import java.util.Date;
import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductDAO;
import com.is.inventory.model.Product;
import com.is.inventory.service.ProductService;

public class ProductServiceImpl implements ProductService {

	private ProductDAO productDAO;
	
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	@Override
	public Product getByPrimaryKey(Product product) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Product product) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(Product product) throws DAOException {
		// TODO Auto-generated method stub
		productDAO.insert(product);
	}

	@Override
	public void delete(Product product) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Product> getAllProducts() throws DAOException {
		
		return productDAO.getAllProducts();
	}

	@Override
	public List<Product> getProductByStatus(Boolean status) throws DAOException {
		// TODO Auto-generated method stub
		return productDAO.getAllProducts();
	}

	@Override
	public List<Product> getByCode(String code) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getBySku(String sku) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDescription(String description) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByStatus(Byte status) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByModelId(Integer modelId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByBrandId(Integer brandId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByStock(Integer stock) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByProductTypeId(Integer productTypeId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDateAddedBy(Integer dateAddedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByBarcode(String barcode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}
	

	
}
