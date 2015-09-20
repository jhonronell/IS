package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.ProductOptionNameDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.ProductOptionName;

public class ProductOptionNameDaoImpl implements ProductOptionNameDao {

	@Override
	public void saveProductOptionName(ProductOptionName productOptionName) {
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO InventorySystem.ProductOptionName "
					+ "(ProductOptionName)"
					+ " VALUES('"+ productOptionName.getName() + "')";

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
	public void updateProductOptionName(ProductOptionName productOptionName) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductOptionName(ProductOptionName productOptionName) {
		// TODO Auto-generated method stub

	}

	@Override
	public ProductOptionName getProductOptionName(ProductOptionName productOptionName) {
		// TODO Auto-generated method stub
		return null;
	}

}
