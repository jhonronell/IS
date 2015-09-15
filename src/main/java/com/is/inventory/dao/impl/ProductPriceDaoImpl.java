package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.ProductPriceDao;
import com.is.inventory.model.Price;
import com.is.jdbc.ConnectionManager;

public class ProductPriceDaoImpl implements ProductPriceDao {

	@Override
	public void saveProductPrice(Price price) {
		// TODO Auto-generated method stub
		try {
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`ProductPriceTable` (`ProductId`, `Price`, `Msrp`, `dateAdded`,`AddedBy`) VALUES"
						 + " ("+ price.getID() +","+ price.getPrice() +","+ price.getMsrp() +","+ price.getDateAdded() +","+ price.getAddedBy() +");";
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
	public void updateProductPrice(Price price) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductPrice(Price price) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getProductPrice(Price price) {
		// TODO Auto-generated method stub

	}

}
