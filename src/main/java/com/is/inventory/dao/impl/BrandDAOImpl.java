package com.is.inventory.dao.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.is.inventory.dao.BrandDAO;
import com.is.inventory.dao.DAOException;

import com.is.inventory.model.Brand;
import com.is.inventory.model.Product;

public class BrandDAOImpl implements BrandDAO {

	private final String EM_LINK = "IS";

	@Override
	public Brand getByPrimaryKey(Brand brand) throws DAOException {

		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Brand brandRecord = entitymanager.find(Brand.class, brand.getId());
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

		brandRecord.setName(brand.getName());

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
	public List<Brand> getBrands() throws DAOException {
		Map<String, Comparable> parameters = new HashMap<String, Comparable>();
		parameters.put("status", true);
		String queryString = "Select b from Brand b where b.status = :status";
		List<Brand> brands = getBrandList(queryString, parameters);
		return brands;
	}

	protected List<Brand> getBrandList(String query, Map<String, ?> parameters) {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Query _query = entitymanager.createQuery(query);
		Set<?> set = parameters.entrySet();
		Iterator<?> i = set.iterator();

		while (i.hasNext()) {
			Map.Entry<?, ?> me = (Map.Entry<?, ?>) i.next();
			_query.setParameter((String) me.getKey(), me.getValue());
		}
		@SuppressWarnings("unchecked")
		List<Brand> Brands = _query.getResultList();
		emfactory.close();
		return Brands;
	}

	@Override
	public List getByStatus(Byte isActive) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
