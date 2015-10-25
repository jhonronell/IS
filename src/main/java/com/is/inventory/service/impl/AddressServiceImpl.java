package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.AddressDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Address;
import com.is.inventory.service.AddressService;

public class AddressServiceImpl implements AddressService {

	private AddressDAO addressDAO;
	
	public void setAddressDAO(AddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}

	@Override
	public Address getAddress(Address address) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address update(Address address) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address insert(Address address) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address delete(Address address) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Address> getByAddress_2(String address_2) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Address> getByAddressLookupId(Integer addressLookupId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Address> getByAddress_1(String address_1) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}
	

}
