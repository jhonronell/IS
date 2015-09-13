package com.is.inventory.dao.impl;

import java.awt.List;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.BrandDao;
import com.is.inventory.model.Brand;
import com.is.jdbc.ConnectionManager;

public class BrandDaoImpl implements BrandDao {

	@Override
	public void saveBrand(Brand brand) {
		// TODO Auto-generated method stub
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO InventorySystem.Brand"
					+ "(Name, CountryOfOrigin, DateAdded, isActive)"
					+ "VALUES('"
					+ brand.getName()  + "', '"
					+ brand.getCountryOfOrigin() + "', '"
					+ brand.getDateAdded()  + "', "
					+ brand.isActive() + ")";

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
	public void updateBrand(Brand brand) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Brand brand) {
		// TODO Auto-generated method stub

	}

	@Override
	public List getBrands() {
		// TODO Auto-generated method stub
		return null;
	}

}
