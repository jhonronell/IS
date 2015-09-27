package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.dao.ProductOptionSelectionDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductOptionSelection;

public class ProductOptionSelectionDAOImpl implements ProductOptionSelectionDao {

	@Override
	public void saveProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub
		try {

			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO InventorySystem.ProductOptionSelection (ProductOptionValue, "
					+ "ProductOptionNameID,isActive) VALUES " + "('" + productOptionSelection.getValue() + "',"
					+ productOptionSelection.getProductOptionName().getID() + "," + true + ");";

			System.out.println(query);
			myStatement.executeUpdate(query);

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
	public void updateProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductOptionSelection(ProductOptionSelection productOptionSelection) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ProductOptionSelection> getProductOptionSelections(ProductOptionName searchProductOptionName) {
		List<ProductOptionSelection> productOptionSelections = new ArrayList<ProductOptionSelection>();

		try {

			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ProductOptionSelection` where ProductOptionNameID=" + searchProductOptionName.getID(); 
			ResultSet rs = myStatement.executeQuery(sql);

			while (rs.next()) {

				ProductOptionSelection productOptionSelection = new ProductOptionSelection();
				productOptionSelection.setID( rs.getInt("ProductOptionSelectionID"));
				productOptionSelection.setValue(  rs.getString("ProductOptionValue"));
				productOptionSelection.setValue(  rs.getString("ProductOptionValue"));
				//productOptionSelection.setProductOptionName( rs.getString(columnIndex)   );
				productOptionSelections.add(productOptionSelection);
			}
			System.out.println(sql);
			rs.close();
			return productOptionSelections;
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
