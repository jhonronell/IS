package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;

public interface UserDao {
	public void addUserDao(ProductType productType);
	public void setUserDao(ProductType productType);
	public void deleteUserDao(ProductType productType);
	public List<User> getUser(User user);
}
