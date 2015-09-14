package com.is.model.service.impl;

import java.awt.List;

import com.is.inventory.dao.impl.AddressDaoImpl;
import com.is.inventory.model.Address;
import com.is.model.service.AddressService;

public class AddressServiceImpl implements AddressService {
	AddressDaoImpl addressDao= new AddressDaoImpl();
	
	@Override
	public void addAddress(Address address) {
		// TODO Auto-generated method stub
		addressDao.saveAddress(address);
	}

	@Override
	public void updateAddress(Address address) {
		// TODO Auto-generated method stub
		addressDao.updateAddress(address);
	}

	@Override
	public void deleteAddress(Address address) {
		// TODO Auto-generated method stub
		addressDao.deleteAddress(address);
	}

	@Override
	public List getAddress(Address address) {
		// TODO Auto-generated method stub
		return null;
	}

	

}