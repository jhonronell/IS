package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.User;


public interface UserDAO
{
  // CRUD methods
  public User getByPrimaryKey(int id) throws DAOException;

 

  public int update(User obj) throws DAOException;

  public int insert(User obj) throws DAOException;

  public int delete(User obj) throws DAOException;

  // Finders
  public List getByUsername(String username) throws DAOException;

  public List getByPassword(String password) throws DAOException;

  public List getByFirstName(String firstName) throws DAOException;

  public List getByLastName(String lastName) throws DAOException;

  public List getByEmail(String email) throws DAOException;

  public List getByAddress(Integer address) throws DAOException;

  public List getByContactsId(Integer contactsId) throws DAOException;
}
