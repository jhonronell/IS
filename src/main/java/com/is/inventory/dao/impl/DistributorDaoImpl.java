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
	public List<Distributor> getDistributors() {
		
		List<Distributor> distributors = new ArrayList<Distributor>();
		
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT * FROM `Distributor`";
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	
		    	Distributor distributor = new Distributor();
		    	distributor.setID( rs.getInt("ID"));
		    	distributor.setName( rs.getString("Name"));
		    	distributors.add(distributor);
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

	@Override
	public Distributor getDistributor(Distributor distributor) {
		// TODO Auto-generated method stub
		try {
			
			ConnectionManager conManager = new ConnectionManager();
			Connection conn = conManager.getConnection();
			Statement myStatement = conn.createStatement();
			String sql = "SELECT"
					+ "  `Distributor`.`ID`"
					+ " , `Distributor`.`Name`"
					+ "    , `Distributor`.`ContactInformation`"
					+ "    , `Distributor`.`DateAdded`"
					+ "    , `Distributor`.`AddedBy`"
					+ "    , `Distributor`.`Status`"
					+ "    , `Distributor`.`isActive`"
					+ "    , `Distributor`.`Addres`"
					+ "    , `AddressComplete`.`country`"
					+ "    , `AddressComplete`.`major_area`"
					+ "    , `AddressComplete`.`zip_code`"
					+ "    , `AddressComplete`.`city`"
					+ "    , `Address`.`Region`"
					+ "    , `Address`.`Address`"
					+ "FROM"
					+ "    `Distributor`"
					+ "    LEFT JOIN `Address`"
					+ ""
					+ "   ON (`Distributor`.`ID` = `Address`.`ID`)"
					+ "  LEFT JOIN `AddressComplete`"
					+ "  ON (`Address`.`AddressFk` = `AddressComplete`.`id`)"
					+ "  where Distributor.ID=" + distributor.getID();
			
			System.out.println(sql);
		    ResultSet rs = myStatement.executeQuery(sql);
		    
		    while(rs.next()){
		    	Distributor distributorRs = new Distributor();
		    	distributorRs.setID( rs.getInt("ID"));
		    	distributorRs.setName( rs.getString("Name"));
		    	distributorRs.setID( rs.getInt("DateAdded"));
		    	distributorRs.setID( rs.getInt("AddedBy"));
		    	return distributorRs;
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
