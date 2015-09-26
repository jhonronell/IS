package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.Brand;


public interface BrandDAO
{
  // CRUD methods
  public Brand getByPrimaryKey(int id) throws DAOException;

  public List selectAll() throws DAOException;

  public List select(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public long selectCount() throws DAOException;

  public long selectCount(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public int update(Brand obj) throws DAOException;

  public int insert(Brand obj) throws DAOException;

  public int delete(Brand obj) throws DAOException;

  // Finders
  public List getByName(String name) throws DAOException;

  public List getByCountryOfOrigin(String countryOfOrigin)
    throws DAOException;

  public List getByDateAdded(String dateAdded) throws DAOException;

  public List getByIsActive(Byte isActive) throws DAOException;

  public List getByDescription(String description) throws DAOException;
}
