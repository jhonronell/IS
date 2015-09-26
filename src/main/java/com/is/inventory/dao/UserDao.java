package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.Users;


public interface UserDAO
{
  // CRUD methods
  public Users getByPrimaryKey(int id) throws DAOException;

  public List selectAll() throws DAOException;

  public List select(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public long selectCount() throws DAOException;

  public long selectCount(String whereStatement, Object[] bindVariables)
    throws DAOException;

  public int update(Users obj) throws DAOException;

  public int insert(Users obj) throws DAOException;

  public int delete(Users obj) throws DAOException;

  // Finders
  public List getByUsername(String username) throws DAOException;

  public List getByPassword(String password) throws DAOException;

  public List getByFirstName(String firstName) throws DAOException;

  public List getByLastName(String lastName) throws DAOException;

  public List getByEmail(String email) throws DAOException;

  public List getByAddress(Integer address) throws DAOException;

  public List getByContactsId(Integer contactsId) throws DAOException;
}
