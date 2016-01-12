package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionSelectionDAO;
import com.is.inventory.model.ProductOptionSelection;
import com.is.inventory.model.ProductOptionSelection;

public class ProductOptionSelectionDAOImpl implements ProductOptionSelectionDAO {

	private final String EM_LINK = "IS";

	@Override
	public ProductOptionSelection getByPrimaryKey(ProductOptionSelection productOptionSelection) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOptionSelection productOptionSelectionRecord = entitymanager.find(ProductOptionSelection.class, productOptionSelection.getId());
		entitymanager.close();
		emfactory.close();
		return productOptionSelectionRecord;
	}

	@Override
	public void update(ProductOptionSelection productOptionSelection) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOptionSelection productOptionSelectionRecord = entitymanager.find(ProductOptionSelection.class, productOptionSelection.getId());
		productOptionSelectionRecord.setId(productOptionSelection.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(ProductOptionSelection productOptionSelection) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productOptionSelection);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(ProductOptionSelection productOptionSelection) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductOptionSelection productOptionSelectionRecord = entitymanager.find(ProductOptionSelection.class, productOptionSelection.getId());
		entitymanager.remove(productOptionSelectionRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public List getByProductOptionValue(String productOptionValue) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getByProductOptionText(String productOptionText) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByIsactive(Byte isactive) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByProductOptionNameId(Integer productOptionNameId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
