package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.ProductOptionDao;
import com.is.inventory.model.ProductOption;
import com.is.jdbc.ConnectionManager;

public class ProductOptionDaoImpl implements ProductOptionDao {

	@Override
	public void saveProductOption(ProductOption productOption) {
		// TODO Auto-generated method stub
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO InventorySystem.ProductOption "
					+ "	( ProductOptionNameID, AddedBy,"
					+ " dateAdded,  ProductTypeID)"
					+ "	VALUES("
					+ productOption.getProductOptionName().getID() + ","
					+ productOption.getAddedBy() + ",'"
					+ productOption.getAddedDate() + "',"
					+ productOption.getProductType().getID() + ")";
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
	public void updateProductOption(ProductOption productOption) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductOption(ProductOption productOption) {
		// TODO Auto-generated method stub

	}

}
