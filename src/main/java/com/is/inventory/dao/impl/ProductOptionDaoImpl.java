package com.is.inventory.dao.impl;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionDAO;
import com.is.inventory.model.ProductOption;

public class ProductOptionDAOImpl implements ProductOptionDAO {

	private final String EM_LINK = "IS";

	@Override
	public ProductOption getByPrimaryKey(ProductOption productOption) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOption productOptionRecord = entitymanager.find(ProductOption.class, productOption.getId());
		entitymanager.close();
		emfactory.close();
		return productOptionRecord;
	}

	@Override
	public void update(ProductOption productOption) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOption productOptionRecord = entitymanager.find(ProductOption.class, productOption.getId());
		productOptionRecord.setId(productOption.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(ProductOption productOption) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productOption);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(ProductOption productOption) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOption productOptionRecord = entitymanager.find(ProductOption.class, productOption.getId());
		entitymanager.remove(productOptionRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public List getByProductOptionNameId(Integer productOptionNameId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByProductTypeId(Integer productTypeId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateAddedBy(Integer dateAddedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
