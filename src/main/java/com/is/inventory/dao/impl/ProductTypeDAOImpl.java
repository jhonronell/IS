package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductTypeDAO;
import com.is.inventory.model.ProductType;

public class ProductTypeDAOImpl implements ProductTypeDAO{

	private final String EM_LINK = "IS";

	@Override
	public ProductType getByPrimaryKey(ProductType productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductType productPriceRecord = entitymanager.find(ProductType.class, productPrice.getId());
		entitymanager.close();
		emfactory.close();
		return productPriceRecord;
	}

	@Override
	public void update(ProductType productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductType productPriceRecord = entitymanager.find(ProductType.class, productPrice.getId());
		productPriceRecord.setId(productPrice.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(ProductType productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productPrice);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(ProductType productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductType productPriceRecord = entitymanager.find(ProductType.class, productPrice.getId());
		entitymanager.remove(productPriceRecord);
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
	public List getByDetails(String details) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}
}
