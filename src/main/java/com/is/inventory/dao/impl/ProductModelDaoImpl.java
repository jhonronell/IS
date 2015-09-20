package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Brand;
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
		
		List<ProductModel> productModels = new ArrayList<ProductModel>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ProductModel`";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	ProductModel productModelRs= new ProductModel();
		    	productModelRs.setModelName(rs.getString("undefined"));
		    	productModelRs.setYearModel(rs.getInt("yearModel;"));
		    	
		    	Brand brand = new Brand();
		    	brand.setId(rs.getInt("BrandID"));
		    	
		    	productModelRs.setBrand(brand);
		    	productModelRs.setID(rs.getInt("ID;"));
		    	
		    	productModelRs.setDetails(rs.getString("details;"));
		    	productModels.add(productModelRs);
		    }
		    rs.close();
		    return productModels;
		  
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
