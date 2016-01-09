package com.is.inventory.dao;

import java.util.List;
import com.is.inventory.model.Address;

public interface AddressDAO
{
  // CRUD methods
  public Address getAddress(Address address) throws DAOException;

  public Address update(Address address) throws DAOException;

  public Address insert(Address address) throws DAOException;

  public Address delete(Address address) throws DAOException;

  // Finders
  public List<?> getByAddress_2(String address_2) throws DAOException;

  public List<?> getByAddressLookupId(Integer addressLookupId)
    throws DAOException;

  public List<?> getByAddress_1(String address_1) throws DAOException;
}
