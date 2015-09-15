package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.is.inventory.model.ProductType;
import com.is.jdbc.ConnectionManager;

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
	public List<ProductType> getProductType(ProductType productType) {
		// TODO Auto-generated method stub
		return null;
	}

}
