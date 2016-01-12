package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductModelDAO;
import com.is.inventory.model.ProductModel;

public class ProductModelDAOImpl implements ProductModelDAO  {

	private final String EM_LINK = "IS";

	@Override
	public ProductModel getByPrimaryKey(ProductModel productModel) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductModel productModelRecord = entitymanager.find(ProductModel.class, productModel.getId());
		entitymanager.close();
		emfactory.close();
		return productModelRecord;
	}

	@Override
	public void update(ProductModel productModel) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductModel productModelRecord = entitymanager.find(ProductModel.class, productModel.getId());
		productModelRecord.setId(productModel.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(ProductModel productModel) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productModel);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(ProductModel productModel) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductModel productModelRecord = entitymanager.find(ProductModel.class, productModel.getId());
		entitymanager.remove(productModelRecord);
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
	public List getByYearModel(Integer yearModel) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDetails(String details) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}




}
