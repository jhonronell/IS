package com.is.inventory.service;


import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Country;


public interface CountryService
{
  // CRUD methods
  public Country getByPrimaryKey(Country country) throws DAOException;

  public void update(Country country) throws DAOException;

  public void insert(Country country) throws DAOException;

  public void delete(Country country) throws DAOException;

  // Finders
  public List getByCountryCode(String countryCode) throws DAOException;

  public List getByCountryName(String countryName) throws DAOException;
}
