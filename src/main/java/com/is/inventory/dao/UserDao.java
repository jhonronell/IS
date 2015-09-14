package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;

public interface UserDao {
	public void saveUser(ProductType productType);
	public void setUser(ProductType productType);
	public void deleteUser(ProductType productType);
	public List<User> getUser(User user);
}
