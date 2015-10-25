package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.DistributorDAO;
import com.is.inventory.model.Distributor;
import com.is.inventory.service.DistributorService;

public class DistributorServiceImpl implements DistributorService {

	private DistributorDAO distributorDAO;
	
	public void setDistributorDAO(DistributorDAO distributorDAO) {
		this.distributorDAO = distributorDAO;
	}

	@Override
	public Distributor getByPrimaryKey(Distributor Distributor) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Distributor Distributor) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(Distributor Distributor) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Distributor Distributor) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List getByName(String name) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByContactId(Integer contactId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateAdded(Integer dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddedBy(Integer addedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByIsactive(Byte isactive) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddressId(Integer addressId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Distributor> getDistributors() {
		// TODO Auto-generated method stub
		return null;
	}

	public DistributorDAO getDistributorDAO() {
		return distributorDAO;
	}

	

}
