package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.UserDAO;
import com.is.inventory.model.User;
import com.is.inventory.service.UserService;

public class UserServiceImpl implements UserService
{

	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public User getByPrimaryKey(User user) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(User user) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(User user) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(User user) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List getByUsername(String username) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByFirstName(String firstName) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByLastName(String lastName) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByEmail(String email) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddress(Integer address) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByContactsId(Integer contactsId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
