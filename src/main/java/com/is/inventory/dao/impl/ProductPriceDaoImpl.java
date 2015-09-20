package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.ProductPriceDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Price;

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
	public Price getProductPrice(Price price) {

		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ProductPriceTable` where productId = " + price.getID();
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		         
		    	Price priceRs = new Price();
		    	priceRs.setID( rs.getInt("ID"));
		    	priceRs.setPrice( rs.getBigDecimal("Price"));
		    	priceRs.setMsrp(rs.getBigDecimal("MSRP"));
		    	priceRs.setCapitalPrice( rs.getBigDecimal("capitalPrice") );
		    	return priceRs;
		    }
		   
		    rs.close();
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
