package com.is.inventory.service;

import java.util.List;

import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;

public interface UserService {
	public void addUserDao(User user);
	public void setUserDao(User user);
	public void deleteUserDao(User user);
	public List<User> getUser(User user);
}
