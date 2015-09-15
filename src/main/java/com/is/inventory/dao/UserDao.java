package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;

public interface UserDao {
	public void saveUser(User user);
	public void setUser(User user);
	public void deleteUser(User user);
	public List<User> getUser(User user);
}
