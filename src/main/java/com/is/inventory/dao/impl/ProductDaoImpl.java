package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.dao.ProductDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Color;
import com.is.inventory.model.Distributor;
import com.is.inventory.model.Price;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductType;

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
	public List<Product> getProducts() {
		
		List<Product> products = new ArrayList<Product>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ProductTable`";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	
		    	Product product = new Product("name");
		    	product.setId( rs.getInt("ID") );
		    	product.setName(rs.getString("Name"));
		    	product.setDescription(rs.getString("Description"));
		    	product.setWeight(rs.getFloat("weigth"));
		    	product.setHeight(rs.getDouble("Height"));
		    	
		    	Color color = new Color();
		    	color.setColorName(rs.getString("ColorName"));
		    	color.setID(rs.getInt("ID"));
		    	color.setColorHex(rs.getString("ColorHex"));
		    	
		    	product.setColor(color);
		    	product.setCode( rs.getString("Code"));
		    	product.setSku(rs.getString("Sku"));
		    	
		    	Price price = new Price();
		    	price.setPrice( rs.getBigDecimal("Price") );
		    	price.setCapitalPrice( rs.getBigDecimal("capitalPrice") );
		    	price.setDateAdded( rs.getString("dateAdded"));
		    	price.setID( rs.getInt("Id"));
		    	price.setMsrp( rs.getBigDecimal("Msrp"));
		    	
		    	product.setPrice(price);
		    	
		    	Distributor distributor = new Distributor();
		    	distributor.setID(11);
		    	product.setDistributor(distributor);
		    	product.setDatePurchased( rs.getDate("datePurchased"));
		    	product.setDateReceived( rs.getDate("dateReceived"));
		    	
		    	ProductType productType = new ProductType();
		    	productType.setID(11);
		    	productType.setName("Hello");
		    	product.setProductType(productType);

		    	products.add(product);
		    }
		    rs.close();
		    return products;
		  
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
