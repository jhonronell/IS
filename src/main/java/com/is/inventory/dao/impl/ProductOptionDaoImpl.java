package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.is.inventory.dao.ProductOptionDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Brand;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductType;

public class ProductOptionDAOImpl implements ProductOptionDao {

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

	@Override
	public List<ProductOption> getProductOptions(ProductOption productOption) {
		// TODO Auto-generated method stub
		
		List<ProductOption> ProductOptions = new ArrayList<ProductOption>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ProductOption`";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	
		    	ProductOption productOptionRs = new ProductOption();
		    	ProductOptionName productOptionName = new ProductOptionName();
		    	productOptionName.setID( rs.getInt("ProductOptionName"));
		    	
		    	ProductType productType = new ProductType();
		    	productType.setID( rs.getInt("productTypeID"));
		    	
		    	productOptionRs.setProductType(productType);
		    	productOptionRs.setID( rs.getInt("ID"));
		    	productOptionRs.setProductOptionName(productOptionName);
		    	ProductOptions.add(productOptionRs);
		    }
		    rs.close();
		    return ProductOptions;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}

	public List<ProductOption> getProductOptions(ProductType searchProductType) {
		// TODO Auto-generated method stub
		List<ProductOption> ProductOptions = new ArrayList<ProductOption>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ProductOption` where ProductTypeID=" + searchProductType.getID();
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	
		    	ProductOption productOptionRs = new ProductOption();
		    	ProductOptionName productOptionName = new ProductOptionName();
		    	productOptionName.setID( rs.getInt("ProductOptionNameID"));
		    	
		    	ProductType productType = new ProductType();
		    	productType.setID( rs.getInt("productTypeID"));
		    	
		    	productOptionRs.setProductType(productType);
		    	productOptionRs.setID( rs.getInt("ProductOptionID"));
		    	productOptionRs.setProductOptionName(productOptionName);
		    	ProductOptions.add(productOptionRs);
		    }
		    System.out.println(sql);
		    rs.close();
		    return ProductOptions;
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
