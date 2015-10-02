package com.is.inventory.dao.impl;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductPriceDAO;
import com.is.inventory.model.ProductPrice;

public class ProductPriceDAOImpl implements ProductPriceDAO {

	private final String EM_LINK = "IS";

	@Override
	public ProductPrice getByPrimaryKey(ProductPrice productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductPrice productPriceRecord = entitymanager.find(ProductPrice.class, productPrice.getId());
		entitymanager.close();
		emfactory.close();
		return productPriceRecord;
	}

	@Override
	public void update(ProductPrice productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductPrice productPriceRecord = entitymanager.find(ProductPrice.class, productPrice.getId());
		productPriceRecord.setId(productPrice.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(ProductPrice productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productPrice);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(ProductPrice productPrice) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductPrice productPriceRecord = entitymanager.find(ProductPrice.class, productPrice.getId());
		entitymanager.remove(productPriceRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}
	@Override
	public List getByProductId(Integer productId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByPrice(Double price) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByMsrp(Double msrp) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByCapital(Double capital) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateAddedBy(Integer dateAddedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
