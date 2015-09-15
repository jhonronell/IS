package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.is.inventory.dao.UserDao;
import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;
import com.is.jdbc.ConnectionManager;

public class UserDaoImpl implements UserDao {

	@Override
	public void saveUser(User User) {
		// TODO Auto-generated method stub
		try {
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`UserTable` (`ID`, `Username`, `Password`, `FirstName`, `LastName`, `Email`, `Address`, `ContactNo`) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);";
			System.out.println(query);
			myStatement.executeUpdate(query);
			
		} catch ( SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
		}
	}

	@Override
	public void setUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> getUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}


}
