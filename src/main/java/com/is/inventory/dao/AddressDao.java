package com.is.inventory.dao;


import java.util.List;

import com.is.inventory.model.Address;


public interface AddressDAO
{
  // CRUD methods
  public Address getByPrimaryKey(Address address) throws DAOException;

  public List<?> selectAll() throws DAOException;

  public List<?> select(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public long selectCount() throws DAOException;

  public long selectCount(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public Integer update(Address address) throws DAOException;

  public Integer insert(Address address) throws DAOException;

  public Integer delete(Address address) throws DAOException;

  // Finders
  public List<?> getById(Integer id) throws DAOException;

  public List<?> getByAddress_2(String address_2) throws DAOException;

  public List<?> getByAddressLookupId(Integer addressLookupId)
    throws DAOException;

  public List<?> getByAddress_1(String address_1) throws DAOException;
}
