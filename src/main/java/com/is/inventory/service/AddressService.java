package com.is.inventory.service;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Address;


public interface AddressService
{
  // CRUD methods
  public Address getAddress(Address address) throws DAOException;

  public Address update(Address address) throws DAOException;

  public Address insert(Address address) throws DAOException;

  public Address delete(Address address) throws DAOException;

  // Finders
  public List<Address> getByAddress_2(String address_2) throws DAOException;

  public List<Address> getByAddressLookupId(Integer addressLookupId)
    throws DAOException;

  public List<Address> getByAddress_1(String address_1) throws DAOException;
}
