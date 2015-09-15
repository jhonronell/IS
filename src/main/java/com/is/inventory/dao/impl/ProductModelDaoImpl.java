package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.ProductModel;

public class ProductModelDaoImpl implements com.is.inventory.dao.ProductModelDao {

	@Override
	public void saveProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub
		try {
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`ProductModel` ( `Name`, `YearModel`, `Details`, `BrandID`) VALUES"
					+ " ('" + productModel.getModelName() + "','" + productModel.getYearModel() + "','"+ productModel.getDetails() +"',"+ productModel.getBrand().getId() +");";
		
			System.out.println(query);
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
	public void updateProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ProductModel> getProductModel(ProductModel productModel) {
		// TODO Auto-generated method stub
		return null;
	}

}
