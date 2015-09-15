package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.ProductOptionSelectionDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.ProductOptionSelection;

public class ProductOptionSelectionDaoImpl implements ProductOptionSelectionDao {

	@Override
	public void saveProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO InventorySystem.ProductOptionSelection (ProductOptionValue, "
					+ "ProductOptionNameID,isActive) VALUES "
					+ "('"
					+ productOptionSelection.getValue()  + "',"
					+ productOptionSelection.getProductOptionName().getID() +","
					+ true +");";

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
	public void updateProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub

	}

}
