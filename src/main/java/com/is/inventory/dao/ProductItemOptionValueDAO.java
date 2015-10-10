package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductItem;
import com.is.inventory.model.ProductItemOptionValue;

public interface ProductItemOptionValueDAO {
	
	// CRUD methods
	  public ProductItemOptionValue getByPrimaryKey(ProductItemOptionValue productModel) throws DAOException;

	  public void update(ProductItemOptionValue productModel) throws DAOException;

	  public void insert(ProductItemOptionValue productModel) throws DAOException;

	  public void delete(ProductItemOptionValue productModel) throws DAOException;

	  // Finders
	  public List<ProductItemOptionValue> getProductItemOptionValueByProductItem(ProductItem productItem) throws DAOException;

	  public List getByName(String name) throws DAOException;

	  public List getByYearModel(Integer yearModel) throws DAOException;

	  public List getByDetails(String details) throws DAOException;
}
