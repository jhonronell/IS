package com.is.inventory.dao;


import java.util.List;

import com.is.inventory.model.Country;


public interface CountryDAO
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
