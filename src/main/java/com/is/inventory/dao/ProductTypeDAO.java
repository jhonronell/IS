package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductType;


public interface ProductTypeDAO
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
