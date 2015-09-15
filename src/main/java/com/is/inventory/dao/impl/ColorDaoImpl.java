package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.is.inventory.dao.ColorDao;
import com.is.inventory.jdbc.ConnectionManager;
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
	public List<Color> getColorList(Color color) {
		// TODO Auto-generated method stub
		return null;
	}

}
