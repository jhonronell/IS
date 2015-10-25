// Generated by DB Solo 5.0.3 on 09 26, 15 at 12:29:04 PM
package com.is.inventory.service;

import java.util.Date;
import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductType;


public interface ProductOptionService
{
  // CRUD methods
  public ProductOption getByPrimaryKey(ProductOption productOption) throws DAOException;

  public void update(ProductOption productOption) throws DAOException;

  public void insert(ProductOption productOption) throws DAOException;

  public void delete(ProductOption productOption) throws DAOException;

  // Finders
  public List getByProductOptionNameId(Integer productOptionNameId)
    throws DAOException;
  
  public List getProductOptionsByType(ProductType productType)  throws DAOException;

  public List getByProductTypeId(Integer productTypeId)
    throws DAOException;

  public List getByDateAdded(Date dateAdded) throws DAOException;

  public List getByDateAddedBy(Integer dateAddedBy) throws DAOException;
}
