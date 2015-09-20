package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.dao.ProductDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Color;
import com.is.inventory.model.Distributor;
import com.is.inventory.model.Price;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductModel;
import com.is.inventory.model.ProductType;

public class ProductDaoImpl implements ProductDao {

	@Override
	public void saveProduct(Product product) {

		System.out.println(product.getName());

		try {

			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO InventorySystem.ProductTable (Name, Description, Weight, Height, Color, Code, "
					+ "Sku, DistributorId, DatePurchased, DateReceived, DateShipped, Model, PriceID, productTypeID)"
					+ "VALUES('" + product.getName() + "','" + product.getDescription() + "', " + product.getWeight()
					+ ", " + product.getHeight() + ", " + product.getColor().getID() + ",'" + product.getCode() + "', '"
					+ product.getSku() + "', " + product.getDistributor().getID() + ",'" + product.getDatePurchased()
					+ "', '" + product.getDateReceived() + "', '" + product.getDateShipped() + "', "
					+ product.getProductModel().getID() + "," + product.getPrice().getID() + ", "
					+ product.getProductType().getID() + ")";

			myStatement.executeUpdate(query);
			conn.close();

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
			String sql = "SELECT"
					   +" `ProductTable`.`ID` "
					   +" , `ProductTable`.`Name`"
					   +" , `ProductTable`.`Description`"
					   +" , `ProductTable`.`Weight`"
					   +" , `ProductTable`.`Height`"
					   +" , `ProductTable`.`Code`"
					   +" , `ProductTable`.`Sku`"
					   +" , `ColorTable`.`ColorName`" 
					   +" , `ProductPriceTable`.`Price`"
					   +" , `ProductPriceTable`.`Msrp`"
					   +" , `Distributor`.`ID` AS 'distributorId'"
					   +" , `Distributor`.`Name` AS 'distributorName'"
					   +" , `ProductType`.`Name` AS 'productTypeName'"
					   +" , `ProductModel`.`Name` AS 'productModelName'"
					   +" , `ProductModel`.`YearModel` AS 'productYearModel'"
					   +" , `Brand`.`Name` AS 'brandName'"
					   +" , `ProductTable`.`AddedBy`"
					   +"  FROM"
					   +"  `ProductTable`"
					   +"  LEFT JOIN `ProductModel` "
					   +"      ON (`ProductTable`.`Model` = `ProductModel`.`ID`)"
					   +"  LEFT JOIN `Brand` "
					   +"       ON (`ProductModel`.`BrandID` = `Brand`.`ID`)"
					   +"   LEFT JOIN `ProductType` "
					   +"      ON (`ProductTable`.`ProductType` = `ProductType`.`ID`)"
					   +"  LEFT JOIN `UserTable` "
					   +"      ON (`ProductTable`.`AddedBy` = `UserTable`.`ID`)"
					   +"  LEFT JOIN `Distributor` "
					   +"      ON (`Distributor`.`ID` = `ProductTable`.`DistributorId`)"
					   +"  LEFT JOIN `ProductPriceTable` "
					   +"      ON (`ProductTable`.`Price` = `ProductPriceTable`.`Id`)"
					   +"  LEFT JOIN `ColorTable` "
					   +"      ON (`ProductTable`.`Color` = `ColorTable`.`ID`);";
			System.out.println(sql);
			ResultSet rs = myStatement.executeQuery(sql);
			
			while (rs.next()) {

				Product product = new Product("Name");
				product.setId(rs.getInt("ID"));
				product.setName(rs.getString("Name"));
				product.setDescription(rs.getString("Description"));
				product.setWeight(rs.getFloat("Weight"));
				product.setHeight(rs.getDouble("Height"));

				Color color = new Color();
				color.setColorName(rs.getString("ColorName"));
				
				product.setColor(color);
				product.setCode(rs.getString("Code"));
				product.setSku(rs.getString("Sku"));

				Price price = new Price();
				price.setPrice(rs.getBigDecimal("Price"));
				price.setMsrp(rs.getBigDecimal("Price"));
				product.setPrice(price);

				Distributor distributor = new Distributor();
				distributor.setName(rs.getString("DistributorName"));
				
				product.setDistributor(distributor);
				
				/*product.setDatePurchased(rs.getDate("datePurchased"));
				product.setDateReceived(rs.getDate("dateReceived"));*/

				ProductType productType = new ProductType();
				productType.setName("ProductTypeName");
				product.setProductType(productType);

				ProductModel productModel = new ProductModel();
				productModel.setModelName(rs.getString("productModelName"));
				productModel.setYearModel( rs.getInt("productYearModel"));
				Brand brand = new Brand();
				brand.setName(rs.getString("BrandName"));
				productModel.setBrand(brand);
				
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

	@Override
	public Product getProduct(Product product) {
		// TODO Auto-generated method stub
		try {

			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * from ProductTable where id="+ product.getId();
			
			ResultSet rs = myStatement.executeQuery(sql);
			while (rs.next()) {

				
				  Product productRs = new Product(rs.getString("Name")); 
				  productRs.setId( rs.getInt("ID") ); 
				  productRs.setName(rs.getString("Name"));
				  productRs.setDescription(rs.getString("Description"));
				  productRs.setWeight(rs.getFloat("weight"));
				  productRs.setHeight(rs.getDouble("Height"));
				  
				  Color color = new Color();
				  color.setID(rs.getInt("Color"));
				  
				  productRs.setColor(color);
				  productRs.setCode( rs.getString("Code")); 
				  productRs.setSku(rs.getString("Sku"));
				  
				  Price price = new Price();
				  price.setID( rs.getInt("Price") ); 
				  
				  productRs.setPrice(price);
				  
				  Distributor distributor = new Distributor();
				  distributor.setID(11); productRs.setDistributor(distributor);

				  productRs.setDatePurchased( rs.getDate("datePurchased"));
				  productRs.setDateReceived( rs.getDate("dateReceived"));
				  
				  ProductType productType = new ProductType();
				  productType.setID(11); productType.setName("Hello");
				  productRs.setProductType(productType);
				 
				return productRs;
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
