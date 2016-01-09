package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.Color;

public interface ColorDAO
{
  // CRUD methods
  public Color getByPrimaryKey(Color id) throws DAOException;

  public void update(Color color) throws DAOException;

  public void insert(Color color) throws DAOException;

  public void delete(Color color) throws DAOException;

  // Finders
  public List getByColorName(Color color) throws DAOException;

  public List getByColorHex(Color color) throws DAOException;

  public List getByColorCode(Color color) throws DAOException;
}
