package com.is.inventory.dao.impl;

import java.awt.List;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.AddressDao;
import com.is.inventory.model.Address;
import com.is.jdbc.ConnectionManager;

public class AddressDaoImpl implements AddressDao {

	@Override
	public void saveAddress(Address address) {
		// TODO Auto-generated method stub
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`Address` (`Country`, `ZipCode`, `Address`, `City`, `Region`) VALUES (" 
					+ address.getCountry() + ", " 		
					+ address.getZipcode() + ", " 
					+ address.getAddress() + ", " 
					+ address.getCity() + ", "
					+ address.getRegion() + ");";

			System.out.println(query);
			myStatement.executeUpdate(query);
			conn.close();
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
	public void updateAddress(Address address) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAddress(Address address) {
		// TODO Auto-generated method stub

	}

	@Override
	public List getAddress(Address address) {
		// TODO Auto-generated method stub
		return null;
	}

}
