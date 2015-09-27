package com.is.inventory.dao;

import java.util.Date;
import java.util.List;

import com.is.inventory.model.ProductItem;

public interface ProductItemDAO
{
  // CRUD methods
  public ProductItem getByPrimaryKey(ProductItem productItem) throws DAOException;

  public void update(ProductItem productItem) throws DAOException;

  public void insert(ProductItem productItem) throws DAOException;

  public int delete(ProductItem productItem) throws DAOException;

  // Finders
  public List getByProductCode(String productCode) throws DAOException;

  public List getByPriceId(Integer priceId) throws DAOException;

  public List getByDistributorId(Integer distributorId)
    throws DAOException;

  public List getByColorId(Integer colorId) throws DAOException;

  public List getByWeight(Double weight) throws DAOException;

  public List getByHeight(Double height) throws DAOException;

  public List getByDateAdded(Date dateAdded) throws DAOException;

  public List getByDateLastModified(Date dateLastModified)
    throws DAOException;

  public List getByAddedBy(Integer addedBy) throws DAOException;

  public List getBySerialNumber(String serialNumber) throws DAOException;

  public List getBySku(String sku) throws DAOException;
}
