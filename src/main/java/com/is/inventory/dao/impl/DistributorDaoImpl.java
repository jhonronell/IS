package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.DistributorDAO;
import com.is.inventory.model.Distributor;

public class DistributorDAOImpl implements DistributorDAO {

	private final String EM_LINK = "IS";

	@Override
	public Distributor getByPrimaryKey(Distributor distributor) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Distributor distributorRecord = entitymanager.find(Distributor.class, distributor.getId());
		entitymanager.close();
		emfactory.close();
		return distributorRecord;
	}

	@Override
	public void update(Distributor distributor) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Distributor distributorRecord = entitymanager.find(Distributor.class, distributor.getId());
		distributorRecord.setId(distributor.getId());
		distributorRecord.setName(distributor.getName());
		distributorRecord.setAddress(distributor.getAddress());
		distributorRecord.setContact(distributor.getContact());
		distributorRecord.setDateAdded(distributor.getDateAdded());
		distributorRecord.setIsactive(distributor.getIsactive());

		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(Distributor distributor) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(distributor);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(Distributor distributor) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Distributor distributorRecord = entitymanager.find(Distributor.class, distributor.getId());
		entitymanager.remove(distributorRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

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

}
