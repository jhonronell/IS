package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.Brand;


public interface BrandDAO
{
  // CRUD methods
  public Brand getByPrimaryKey(Brand brand) throws DAOException;

  public void update(Brand brand) throws DAOException;

  public void insert(Brand brand) throws DAOException;

  public void delete(Brand brand) throws DAOException;

  // Finders
  public List getByName(String name) throws DAOException;

  public List getByStatus(Byte isActive) throws DAOException;

}
