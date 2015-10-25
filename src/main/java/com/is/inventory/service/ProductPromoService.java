package com.is.inventory.service;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.model.PromoTable;

public interface ProductPromoService
{
  // CRUD methods
  public PromoTable getByPrimaryKey(int id) throws DAOException;

  public int update(PromoTable obj) throws DAOException;

  public int insert(PromoTable obj) throws DAOException;

  public int delete(PromoTable obj) throws DAOException;

  // Finders
  public List getByPercentoff(Double percentoff) throws DAOException;

  public List getByDateadded(String dateadded) throws DAOException;

  public List getByAddedby(Integer addedby) throws DAOException;

  public List getByIsactive(Byte isactive) throws DAOException;
}
