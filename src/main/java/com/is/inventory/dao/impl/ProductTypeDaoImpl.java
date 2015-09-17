package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.ProductType;
import com.is.inventory.model.User;

public class ProductTypeDaoImpl implements com.is.inventory.dao.ProductTypeDao {
	@Override
	public void saveProductType(ProductType productType) {
		// TODO Auto-generated method stub
		try {
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`ProductType` ( `Name`, `DateAdded`, `AddedBy`, `isActive`) VALUES ('" + productType.getName() + "', '"+ productType.getDateAdded()  +"', '" + productType.getDateAdded() +"', "+ productType.getAddedBy()  +", "+ productType.getDetails()  +",True);";
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
	public void updateProductType(ProductType productType) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProductType(ProductType productType) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductType> getProductTypeList() {
		// TODO Auto-generated method stub
		
		List<ProductType> productTypes = new ArrayList<ProductType>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ProductType` where isActive = 1";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		         
		    	ProductType productType = new ProductType();
		    	User user = new User();
		    	user.setID(rs.getInt("AddedBy"));
		    	productType.setID( rs.getInt("ID") );
		    	productType.setName( rs.getString("Name") );
		    	productType.setDateAdded(rs.getString("DateAdded") );
		    	productType.setAddedBy(user);
		    	productType.setActive(rs.getBoolean("isActive"));
		    	productType.setDetails(rs.getString("details")); 
		    	productTypes.add(productType);
		    }
		    rs.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productTypes;
		
	}

	@Override
	public ProductType getProductType(ProductType productType) {
		// TODO Auto-generated method stub
		return null;
	}





}
