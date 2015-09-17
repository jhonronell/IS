package com.is.inventory.dao.impl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.dao.BrandDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Brand;
import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;

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
		List<Brand> brands = new ArrayList<Brand>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `Brands` where isActive = 1";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	Brand brand = new Brand();
		    	brand.setCountryOfOrigin( rs.getInt("CountryOfOrigin") );
		    	brand.setId(rs.getInt("ID")  );
		    	brand.setDescription( rs.getString("Description"));
		    	brand.setName( rs.getString("Name")    );
		    	brand.setDateAdded( rs.getString("DateAdded") );
		    	brand.setActive(  rs.getBoolean("DateAdded") );
		    	brands.add(brand);
		    }
		    rs.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return brands;
		
	}

	@Override
	public Brand getBrand(Brand brand) {
		// TODO Auto-generated method stub
		try {
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `Brand` where ID=" + brand.getId();
		
		    ResultSet rs = myStatement.executeQuery(sql);
		    Brand brandRecord = new Brand();
		    brandRecord.setCountryOfOrigin( rs.getInt("CountryOfOrigin") );
		    brandRecord.setId(rs.getInt("ID")  );
		    brandRecord.setDescription( rs.getString("Description"));
		    brandRecord.setName( rs.getString("Name")    );
	    	brandRecord.setDateAdded( rs.getString("DateAdded") );
	    	brandRecord.setActive(  rs.getBoolean("DateAdded") );
	    	rs.close();
		    return brandRecord;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}



}
