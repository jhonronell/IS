package com.is.inventory.dao;

import java.awt.List;

import com.is.inventory.model.Address;

public interface AddressDao {
	public void saveAddress(Address address);
	public void updateAddress(Address address);
	public void deleteAddress(Address address);
	public Address getAddress(Address address);
}
