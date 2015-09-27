// Generated by DB Solo 5.0.3 on 09 26, 15 at 12:29:04 PM
package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductOptionSelection;


public interface ProductOptionSelectionDAO
{
  // CRUD methods
  public ProductOptionSelection getByPrimaryKey(int id)
    throws DAOException;

 
  public int update(ProductOptionSelection obj) throws DAOException;

  public int insert(ProductOptionSelection obj) throws DAOException;

  public int delete(ProductOptionSelection obj) throws DAOException;

  // Finders
  public List getByProductOptionValue(String productOptionValue)
    throws DAOException;

  public List getByProductOptionNameId(Integer productOptionNameId)
    throws DAOException;

  public List getByProductOptionText(String productOptionText)
    throws DAOException;

  public List getByIsactive(Byte isactive) throws DAOException;
}
