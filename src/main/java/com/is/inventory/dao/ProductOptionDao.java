// Generated by DB Solo 5.0.3 on 09 26, 15 at 12:29:04 PM
package com.is.inventory.dao;

import java.util.Date;
import java.util.List;

import com.is.inventory.model.ProductOption;


public interface ProductOptionDAO
{
  // CRUD methods
  public ProductOption getByPrimaryKey(int id) throws DAOException;

  public List selectAll() throws DAOException;

  public List select(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public long selectCount() throws DAOException;

  public long selectCount(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public int update(ProductOption obj) throws DAOException;

  public int insert(ProductOption obj) throws DAOException;

  public int delete(ProductOption obj) throws DAOException;

  // Finders
  public List getByProductOptionNameId(Integer productOptionNameId)
    throws DAOException;

  public List getByProductTypeId(Integer productTypeId)
    throws DAOException;

  public List getByDateAdded(Date dateAdded) throws DAOException;

  public List getByDateAddedBy(Integer dateAddedBy) throws DAOException;
}
