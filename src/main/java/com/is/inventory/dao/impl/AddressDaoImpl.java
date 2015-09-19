package com.is.inventory.dao.impl;

import java.awt.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import com.is.inventory.dao.AddressDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Address;

public class AddressDaoImpl implements AddressDao {
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;

	}

	@Override
	public void saveAddress(Address address) {
		// TODO Auto-generated method stub
		try {

			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`Address` (`Country`, `ZipCode`, `Address`, `City`, `Region`) VALUES ("
					+ address.getCountry() + ", " + address.getZipcode() + ", " + address.getAddress() + ", "
					+ address.getCity() + ", " + address.getRegion() + ");";

			System.out.println(query);
			myStatement.executeUpdate(query);
			conn.close();
		} catch (SQLException e) {
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
	public Address getAddress(Address address) {

		try {
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `Address` where AddressOf =" + address.getAddressOf();
			ResultSet rs = myStatement.executeQuery(sql);
	    	
		    while(rs.next()){	
			Address addressRs = new Address();
			addressRs.setCountry(rs.getInt("country"));
			addressRs.setCity(rs.getString("city"));
			addressRs.setZipcode(rs.getString("zipcode"));
			addressRs.setAddress(rs.getString("address"));
			addressRs.setRegion(rs.getString("region"));
			return addressRs;
		    }
			rs.close();
		
		} catch (ClassNotFoundException e) {

		} catch (SQLException e) {

		}

		return null;
	}

}
