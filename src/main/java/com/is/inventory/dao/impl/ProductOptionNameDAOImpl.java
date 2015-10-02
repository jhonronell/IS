package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionNameDAO;
import com.is.inventory.model.ProductOptionName;

public class ProductOptionNameDAOImpl implements ProductOptionNameDAO {

	private final String EM_LINK = "IS";

	@Override
	public ProductOptionName getByPrimaryKey(ProductOptionName productOptionName) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOptionName productOptionNameRecord = entitymanager.find(ProductOptionName.class, productOptionName.getId());
		entitymanager.close();
		emfactory.close();
		return productOptionNameRecord;
	}

	@Override
	public void update(ProductOptionName productOptionName) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOptionName productOptionNameRecord = entitymanager.find(ProductOptionName.class, productOptionName.getId());
		productOptionNameRecord.setId(productOptionName.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(ProductOptionName productOptionName) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productOptionName);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(ProductOptionName productOptionName) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOptionName productOptionNameRecord = entitymanager.find(ProductOptionName.class, productOptionName.getId());
		entitymanager.remove(productOptionNameRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public List getByProductTypeId(Integer productTypeId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByFormTypeId(Integer formTypeId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByName(String name) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByProductOptionId(Integer productOptionId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	

}
