package com.is.inventory.dao;

import java.util.Date;
import java.util.List;

import com.is.inventory.model.ProductPrice;


public interface ProductPriceDAO
{
  // CRUD methods
  public ProductPrice getByPrimaryKey(int id) throws DAOException;

 

  public int update(ProductPrice obj) throws DAOException;

  public int insert(ProductPrice obj) throws DAOException;

  public int delete(ProductPrice obj) throws DAOException;

  // Finders
  public List getByProductId(Integer productId) throws DAOException;

  public List getByPrice(Double price) throws DAOException;

  public List getByMsrp(Double msrp) throws DAOException;

  public List getByCapital(Double capital) throws DAOException;

  public List getByDateAdded(Date dateAdded) throws DAOException;

  public List getByDateLastModified(Date dateLastModified)
    throws DAOException;

  public List getByDateAddedBy(Integer dateAddedBy) throws DAOException;
}
