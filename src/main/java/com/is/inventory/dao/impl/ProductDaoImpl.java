package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Product;

public class ProductDaoImpl implements ProductDao {

	
	@Override
	public Product getByPrimaryKey(int id) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List selectAll() throws DAOException {

		List<Product> products = new ArrayList<products>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `products` where isActive = true";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	
		    	Product product = new Product();
		    	product.setId(rs.getInt("id"));
		    	product.setCode( rs.getString("code"));
		    	product.setSku( rs.getString("sku"));
		    	product.setDescription( rs.getString("description"));
		    	product.setStatus(1);
		    	product.setModelId(modelId);
		    	product.setBrand
		    	product.setStock
		    	product.setProductType
		    	product.setDateAdded
		    	product.setDateLastModified
		    	product.setDate
		    	product.
		    	product.
		    	
		    	    stdColumns.add("sku");
		    	    stdColumns.add("description");
		    	    stdColumns.add("status");
		    	    stdColumns.add("model_id");
		    	    stdColumns.add("brand_id");
		    	    stdColumns.add("stock");
		    	    stdColumns.add("product_type_id");
		    	    stdColumns.add("date_added");
		    	    stdColumns.add("date_last_modified");
		    	    stdColumns.add("date_added_by");
		    	    stdColumns.add("barcode");
		    	    allColumns.addAll(pkColumns);
		    	    allColumns.addAll(stdColumns);
		    	
		    }
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
	public List select(String whereStatement, Object[] bindVariables) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public long selectCount() throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public long selectCount(String whereStatement, Object[] bindVariables) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int update(Product obj) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int insert(Product obj) throws DAOException {
		try {

			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "";

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

		return 0;
	}


	@Override
	public int delete(Product obj) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List getByCode(String code) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getBySku(String sku) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByDescription(String description) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByStatus(Byte status) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByModelId(Integer modelId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByBrandId(Integer brandId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByStock(Integer stock) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByProductTypeId(Integer productTypeId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByDateAddedBy(Integer dateAddedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByBarcode(String barcode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
