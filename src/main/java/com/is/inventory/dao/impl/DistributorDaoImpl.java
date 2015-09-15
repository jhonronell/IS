package com.is.inventory.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.is.inventory.dao.DistributorDao;
import com.is.inventory.jdbc.ConnectionManager;
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
	public List<Distributor> getDistributorList(Distributor distributor) {
		// TODO Auto-generated method stub
		return null;
	}

}
