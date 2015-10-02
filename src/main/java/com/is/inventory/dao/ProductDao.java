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
	  public List<?> getAllProducts() throws DAOException;
	  
	  public List<?> getProductByStatus(Boolean status) throws DAOException;
	  
	  public List<?> getByCode(String code) throws DAOException;

	  public List<?> getBySku(String sku) throws DAOException;

	  public List<?> getByDescription(String description) throws DAOException;

	  public List<?> getByStatus(Byte status) throws DAOException;

	  public List<?> getByModelId(Integer modelId) throws DAOException;

	  public List<?> getByBrandId(Integer brandId) throws DAOException;

	  public List<?> getByStock(Integer stock) throws DAOException;

	  public List<?> getByProductTypeId(Integer productTypeId)
	    throws DAOException;

	  public List<?> getByDateAdded(Date dateAdded) throws DAOException;

	  public List<?> getByDateLastModified(Date dateLastModified)
	    throws DAOException;

	  public List<?> getByDateAddedBy(Integer dateAddedBy) throws DAOException;

	  public List<?> getByBarcode(String barcode) throws DAOException;
}
