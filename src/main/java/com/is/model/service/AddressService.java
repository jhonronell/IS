package com.is.model.service;

import java.awt.List;

import com.is.inventory.model.Address;

public interface AddressService {
	
	public void addAddress(Address address);
	public void updateAddress(Address address);
	public void deleteAddress(Address address);
	public List getAddress(Address address);
}
