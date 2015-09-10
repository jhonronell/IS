package com.is.dao.impl;


import java.awt.List;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.is.dao.ProductDao;
import com.is.inventory.model.Product;
import com.is.jdbc.ConnectionManager;

public class ProductDaoImpl implements ProductDao {
	
	
	@Override
	public void addProduct(Product product)  {
		
		System.out.println(product.getName());
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			
			/*String query = "INSERT INTO InventorySystem.ProductTable (Name, "
					+ "Description, Weight, Height, Color, Code,"
					+ "Sku, Price, DistributorId, DatePurchased,"
					+ "OriginalPrice, DateReceived, Msrp, ProductType,"
					+ "DateShipped, Brand, Model, YearModel)"
					+ "VALUES ("  
					+ product.getName() + " ,"
					+ product.getDescription() + ","
					+ product.getWeight() + ","
					+ product.getHeight() + ","
					+ product.getColor() + ","
					+ product.getCode() + ","
					+ product.getSku() + ","
					+ product.getPrice().getPrice() + "," 
					+ product.getDistributor() + ","
					+ product.getDatePurchased() + "," 
					+ product.getPrice().getPrice() + ","
					+ product.getDateReceived() + ","
					+ product.getPrice().getMsrp() + ","
					+ product.getProductType() + ","
					+ product.getDateShipped() + "," 
					+ product.getBrand().getId() + "," 
					+ product.getModel().getModelName() + ","
					+ product.getModel().getYearModel() + ")";
			 */
			String query = "INSERT INTO InventorySystem.ProductTable ( Name, Description, Weight, Height, Color, Code, Sku, Price, DistributorId, DatePurchased, OriginalPrice, DateReceived, Msrp, ProductType, DateShipped, Manufacturer, Brand, Model, YearModel)"
					+ "VALUES( 'Test', 'Description', 11.0, 1.0, '111', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);";
			myStatement.executeUpdate(query);
			
			String query2 = "";
			for(int i = 0; i < product.getAttribute().size(); i++ )
			{
				query = query2 + "INSERT INTO InventorySystem.ProductTypeAttributesTable (ID, AttributeName, ProductTypeId, ProductId) "
						+ "VALUES(1, NULL, NULL, NULL); ";
				
			}
			myStatement.executeUpdate(query2);
			
			String query3 = "";
			for(int i = 0; i < product.getAttribute().getAttributeValues().size(); i++ )
			{
				query = query3 + "INSERT INTO InventorySystem.ProductTypeAttributeValueTable "
						+ "(ID, ProductAttributeId, ProductId, AttributeValue,"
						+ " Description, isActive, dateAdded) VALUES"
						+ "(1, NULL, NULL, NULL, NULL, NULL, NULL);";
			}
			myStatement.executeUpdate(query3);
			
		
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

}
