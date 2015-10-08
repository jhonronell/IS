package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductItem;

public interface ProductItemOptionNameValue {
	
	// CRUD methods
	  public ProductItemOptionNameValue getByPrimaryKey(ProductItemOptionNameValue productModel) throws DAOException;

	  public void update(ProductItemOptionNameValue productModel) throws DAOException;

	  public void insert(ProductItemOptionNameValue productModel) throws DAOException;

	  public void delete(ProductItemOptionNameValue productModel) throws DAOException;

	  // Finders
	  public List getProductItemOptionNameValues(ProductItem productItem) throws DAOException;

	  public List getByName(String name) throws DAOException;

	  public List getByYearModel(Integer yearModel) throws DAOException;

	  public List getByDetails(String details) throws DAOException;
}
