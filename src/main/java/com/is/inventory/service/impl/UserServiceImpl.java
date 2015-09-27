package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.UserDao;
import com.is.inventory.dao.impl.UserDAOImpl;
import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;
import com.is.inventory.service.ProductTypeService;
import com.is.inventory.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao userDao = new UserDAOImpl();
	@Override
	public void addUserDao(User user) {
		// TODO Auto-generated method stub
		userDao.saveUser(user);
	}

	@Override
	public void setUserDao(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUserDao(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> getUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
