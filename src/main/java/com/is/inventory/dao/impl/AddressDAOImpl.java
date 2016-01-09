package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.AddressDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Address;
import com.is.inventory.model.AddressLookup;

public class AddressDAOImpl implements AddressDAO {

	private final String EM_LINK = "IS";

	@Override
	public Address getAddress(Address address) throws DAOException {
	
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Address addressRecord = entitymanager.find(Address.class, address.getId());
		entitymanager.close();
		emfactory.close();
		return addressRecord;
	}

	@Override
	public Address update(Address address) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();

		Address addressRecord = entitymanager.find(Address.class, address.getId());
		addressRecord.setAddress_1(address.getAddress_1());
		addressRecord.setAddress_2(address.getAddress_2());

		AddressLookup addressLookupRecord = new AddressLookup();
		addressLookupRecord.setId(451);
		addressRecord.setAddressLookup(addressLookupRecord);

		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
		return null;
	}

	@Override
	public Address insert(Address address) throws DAOException {

		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(address);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
		return null;
	}

	@Override
	public Address delete(Address address) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Address addressRecord = entitymanager.find(Address.class, address.getId());
		entitymanager.remove(addressRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		
		emfactory.close();
		return null;
	}



	@Override
	public List getByAddress_2(String address_2) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddressLookupId(Integer addressLookupId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddress_1(String address_1) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
