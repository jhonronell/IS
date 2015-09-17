package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.dao.ColorDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Color;

public class ColorDaoImpl implements ColorDao {

	@Override
	public void saveColor(Color color) {
		// TODO Auto-generated method stub
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`ColorTable` (`ColorName`, `ColorPhoto`, `ColorHex`) VALUES ("+ 
					color.getColorName() +",'" + 
					color.getColorPhoto() +"','" + 
					color.getColorHex() +"');";

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
	public void updateColor(Color color) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteColor(Color color) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Color> getColorList() {
		// TODO Auto-generated method stub
		List<Color> colors = new ArrayList<Color>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `ColorTable`";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	Color color = new Color();
		    	color.setID(rs.getInt("ID"));
		    	color.setColorPhoto(rs.getString("ColorPhoto"));
		    	color.setColorHex(rs.getString("ColorHex"));
		    	color.setColorName(rs.getString("Name"));
		    	colors.add(color);
		    }
		    rs.close();
		    return colors;
		  
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return colors;
	}

}
