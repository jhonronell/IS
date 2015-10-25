package com.is.inventory.service;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.model.User;

public interface UserService
{
  // CRUD methods
  public User getByPrimaryKey(User user) throws DAOException;

  public void update(User user) throws DAOException;

  public void insert(User user) throws DAOException;

  public void delete(User user) throws DAOException;

  // Finders
  public List getByUsername(String username) throws DAOException;

  public List getByFirstName(String firstName) throws DAOException;

  public List getByLastName(String lastName) throws DAOException;

  public List getByEmail(String email) throws DAOException;

  public List getByAddress(Integer address) throws DAOException;

  public List getByContactsId(Integer contactsId) throws DAOException;
}
