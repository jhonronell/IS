package com.is.inventory.service;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.model.ProductType;


public interface ProductTypeService
{
  // CRUD methods
  public ProductType getByPrimaryKey(ProductType productType) throws DAOException;

  public void update(ProductType productType) throws DAOException;

  public void insert(ProductType productType) throws DAOException;

  public void delete(ProductType productType) throws DAOException;

  // Finders
  public List getByName(String name) throws DAOException;

  public List getByDateAdded(Integer dateAdded) throws DAOException;

  public List getByAddedBy(Integer addedBy) throws DAOException;

  public List getByIsactive(Byte isactive) throws DAOException;

  public List getByDetails(String details) throws DAOException;
}
