package com.is.inventory.dao;

import java.util.Date;
import java.util.List;

import com.is.inventory.model.Product;

public interface ProductDAO {
	

	  public Product getByPrimaryKey(Product product) throws DAOException;

	  public void update(Product product) throws DAOException;

	  public void insert(Product product) throws DAOException;

	  public void delete(Product product) throws DAOException;

	  // Finders
	  public List<Product> getAllProducts() throws DAOException;
	  
	  public List<Product> getProductByStatus(Boolean status) throws DAOException;
	  
	  public List<Product> getByCode(String code) throws DAOException;

	  public List<Product> getBySku(String sku) throws DAOException;

	  public List<Product> getByDescription(String description) throws DAOException;

	  public List<Product> getByStatus(Byte status) throws DAOException;

	  public List<Product> getByModelId(Integer modelId) throws DAOException;

	  public List<Product> getByBrandId(Integer brandId) throws DAOException;

	  public List<Product> getByStock(Integer stock) throws DAOException;

	  public List<Product> getByProductTypeId(Integer productTypeId)
	    throws DAOException;

	  public List<Product> getByDateAdded(Date dateAdded) throws DAOException;

	  public List<Product> getByDateLastModified(Date dateLastModified)
	    throws DAOException;

	  public List<Product> getByDateAddedBy(Integer dateAddedBy) throws DAOException;

	  public List<Product> getByBarcode(String barcode) throws DAOException;
}
