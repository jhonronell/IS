package com.is.inventory.dao;


import java.util.List;

import com.is.inventory.model.Contact;


public interface ContactDAO
{
  // CRUD methods
  public Contact getByPrimaryKey(Contact id) throws DAOException;

  public void update(Contact obj) throws DAOException;

  public void insert(Contact obj) throws DAOException;

  public void delete(Contact obj) throws DAOException;

  // Finders
  public List getByContactType(String contactType) throws DAOException;

  public List getByValue(String value) throws DAOException;

  public List getByContactFk(Integer contactFk) throws DAOException;
}
