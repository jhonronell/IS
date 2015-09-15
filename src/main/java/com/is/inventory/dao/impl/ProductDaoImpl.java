package com.is.inventory.dao.impl;

import java.awt.List;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.inventory.dao.ProductDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Product;

public class ProductDaoImpl implements ProductDao {
	
	@Override
	public void saveProduct(Product product)  {
		
		System.out.println(product.getName());
		
		try {
		
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();


			String query = "INSERT INTO InventorySystem.ProductTable (Name, Description, Weight, Height, Color, Code, "
				         + "Sku, DistributorId, DatePurchased, DateReceived, DateShipped, Model, PriceID, productTypeID)"
						 + "VALUES('"+ product.getName() + "','"
						 + product.getDescription() + "', "
						 + product.getWeight() + ", "
						 + product.getHeight() + ", "
						 + product.getColor().getID() +  ",'" 
						 + product.getCode()  +"', '"
						 + product.getSku() + "', "
						 + product.getDistributor().getID() +",'"
						 + product.getDatePurchased() +"', '"
						 + product.getDateReceived() +"', '"
						 + product.getDateShipped() + "', "
						 + product.getProductModel().getID() + ","
						 + product.getPrice().getID() + ", "
						 + product.getProductType().getID() + ")";
			
			myStatement.executeUpdate(query);
			conn.close();
		
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
	public void updateProducts(Product product) {
		// TODO Auto-generated method stub
	}

	@Override
	public List getProducts() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void deleteProduct(Product Product) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

}
