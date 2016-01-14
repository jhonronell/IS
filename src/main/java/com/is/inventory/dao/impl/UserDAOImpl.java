package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.UserDAO;
import com.is.inventory.model.User;


public class UserDAOImpl implements UserDAO {

	private final String EM_LINK = "IS";

	@Override
	public User getByPrimaryKey(User productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		User productPriceRecord = entitymanager.find(User.class, productPrice.getId());
		entitymanager.close();
		emfactory.close();
		return productPriceRecord;
	}

	@Override
	public void update(User productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		User productPriceRecord = entitymanager.find(User.class, productPrice.getId());
		productPriceRecord.setId(productPrice.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(User productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productPrice);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(User productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		User productPriceRecord = entitymanager.find(User.class, productPrice.getId());
		entitymanager.remove(productPriceRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public List getByUsername(String username) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByFirstName(String firstName) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByLastName(String lastName) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByEmail(String email) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddress(Integer address) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByContactsId(Integer contactsId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	

}
