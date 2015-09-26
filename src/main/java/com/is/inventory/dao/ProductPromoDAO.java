// Generated by DB Solo 5.0.3 on 09 26, 15 at 12:29:04 PM
package com.mycompany.pojo;

import java.util.List;

import com.is.inventory.model.PromoTable;


public interface ProductPromoDAO
{
  // CRUD methods
  public PromoTable getByPrimaryKey(int id) throws DAOException;

  public List selectAll() throws DAOException;

  public List select(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public long selectCount() throws DAOException;

  public long selectCount(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public int update(PromoTable obj) throws DAOException;

  public int insert(PromoTable obj) throws DAOException;

  public int delete(PromoTable obj) throws DAOException;

  // Finders
  public List getByPercentoff(Double percentoff) throws DAOException;

  public List getByDateadded(String dateadded) throws DAOException;

  public List getByAddedby(Integer addedby) throws DAOException;

  public List getByIsactive(Byte isactive) throws DAOException;
}