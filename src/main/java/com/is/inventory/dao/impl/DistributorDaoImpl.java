package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.is.inventory.dao.DistributorDao;
import com.is.inventory.jdbc.ConnectionManager;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Color;
import com.is.inventory.model.ContactInformation;
import com.is.inventory.model.Distributor;

public class DistributorDaoImpl implements DistributorDao {

	
	
	@Override
	public void saveDistributor(Distributor distributor) {
		// TODO Auto-generated method stub
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();

			String query = "INSERT INTO `InventorySystem`.`Distributor` (`Notes`,`Name`, `ContactInformation`, `DateAdded`, `AddedBy`,  `isActive` , `Address`) VALUES"
					+ " ('"+ distributor.getNotes() +"','"+ distributor.getName() +"', "+ distributor.getContactInformation() +", '"+  distributor.getDateAdded() +"', "+ distributor.getAddedBy() +", TRUE, "+ distributor.getAddress() +");";

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
	public void updateDistributor(Distributor distributor) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteDistributor(Distributor distributor) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Distributor> getDistributorList() {
		
		List<Distributor> distributors = new ArrayList<Distributor>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `Distributors`";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	
		    	Distributor distributor = new Distributor();
		    	
		    	distributor.setID( rs.getInt("ID"));
		    	distributor.setName( rs.getString("Name"));
		    	ContactInformation contactInfo = new ContactInformation();
		    	contactInfo.setID(1);
		    	contactInfo.setContactInfoType("Email");
		    	contactInfo.setContactInfoValue("JhonronelL@gmail.com");
		    	distributor.setContactInformation(contactInfo);
		    	distributor.setID( rs.getInt("DateAdded"));
		    	distributor.setID( rs.getInt("AddedBy"));

		    }
		    rs.close();
		    return distributors;
		  
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
