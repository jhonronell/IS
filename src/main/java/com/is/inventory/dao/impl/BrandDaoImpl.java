package com.is.inventory.dao.impl;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.BrandDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Brand;

public class BrandDAOImpl implements BrandDAO {

	private final String EM_LINK = "IS";
	
	@Override
	public Brand getByPrimaryKey(Brand brand) throws DAOException {

		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Brand brandRecord = entitymanager.find(Brand.class, brand.getId() );
		entitymanager.close();
		emfactory.close();
		return brandRecord;
	}

	
	@Override
	public void update(Brand brand) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Brand brandRecord = entitymanager.find(Brand.class, brand.getId());
		
		brandRecord.setDescription(brand.getDescription());
		brandRecord.setCountryOfOrigin(brand.getCountryOfOrigin());
		brandRecord.setDateAdded(brand.getDateAdded());
		brandRecord.setIsActive(brand.getIsActive());
		brandRecord.setName( brand.getName() );
		
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void insert(Brand brand) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(brand);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	
	}

	@Override
	public void delete(Brand brand) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Brand brandRecord = entitymanager.find(Brand.class, brand.getId());
		entitymanager.remove(brandRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		
		emfactory.close();
		
	}

	@Override
	public List getByName(String name) throws DAOException {
		return null;
		// TODO Auto-generated method stub
	
	}

	@Override
	public List getByStatus(Byte isActive) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	



}
