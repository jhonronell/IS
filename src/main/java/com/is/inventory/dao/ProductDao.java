package com.is.inventory.dao;

import java.util.Date;
import java.util.List;

import com.is.inventory.model.Product;

public interface ProductDao {
	

	  public Product getByPrimaryKey(int id) throws DAOException;

	  public List selectAll() throws DAOException;

	  public List select(String whereStatement, Object[] bindVariables)
	    throws DAOException;

	  public long selectCount() throws DAOException;

	  public long selectCount(String whereStatement, Object[] bindVariables)
	    throws DAOException;

	  public int update(Product obj) throws DAOException;

	  public int insert(Product obj) throws DAOException;

	  public int delete(Product obj) throws DAOException;

	  // Finders
	  public List getByCode(String code) throws DAOException;

	  public List getBySku(String sku) throws DAOException;

	  public List getByDescription(String description) throws DAOException;

	  public List getByStatus(Byte status) throws DAOException;

	  public List getByModelId(Integer modelId) throws DAOException;

	  public List getByBrandId(Integer brandId) throws DAOException;

	  public List getByStock(Integer stock) throws DAOException;

	  public List getByProductTypeId(Integer productTypeId)
	    throws DAOException;

	  public List getByDateAdded(Date dateAdded) throws DAOException;

	  public List getByDateLastModified(Date dateLastModified)
	    throws DAOException;

	  public List getByDateAddedBy(Integer dateAddedBy) throws DAOException;

	  public List getByBarcode(String barcode) throws DAOException;
}
