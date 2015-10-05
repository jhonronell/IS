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
  public List<ProductItem> getByProductCode(String productCode) throws DAOException;

  public List<ProductItem> getByPriceId(Integer priceId) throws DAOException;

  public List<ProductItem> getByDistributorId(Integer distributorId)
    throws DAOException;

  public List<ProductItem> getByColorId(Integer colorId) throws DAOException;

  public List<ProductItem> getByWeight(Double weight) throws DAOException;

  public List<ProductItem> getByHeight(Double height) throws DAOException;

  public List<ProductItem> getByDateAdded(Date dateAdded) throws DAOException;

  public List<ProductItem> getByDateLastModified(Date dateLastModified)
    throws DAOException;

  public List<ProductItem> getByAddedBy(Integer addedBy) throws DAOException;

  public List<ProductItem> getBySerialNumber(String serialNumber) throws DAOException;

  public List<ProductItem> getBySku(String sku) throws DAOException;

  public List<ProductItem> getProductItemsByCode(String productCode);
}
