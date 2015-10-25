package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Country;

public class CountryDAOImpl implements com.is.inventory.dao.CountryDAO {

	private final String EM_LINK = "IS";

	@Override
	public Country getByPrimaryKey(Country country) throws DAOException {

		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Country countryRecord = entitymanager.find(Country.class, country.getId());
		entitymanager.close();
		emfactory.close();
		return countryRecord;

	}

	@Override
	public void update(Country country) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();

		Country countryRecord = entitymanager.find(Country.class, country.getId());

		countryRecord.setCountryCode(country.getCountryCode());
		countryRecord.setId(country.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void insert(Country country) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(country);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void delete(Country country) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Country countryRecord = entitymanager.find(Country.class, country.getId());
		entitymanager.remove(countryRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();

		emfactory.close();
	}

	@Override
	public List getByCountryCode(String countryCode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByCountryName(String countryName) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
