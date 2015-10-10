package com.is.inventory.dao.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemOptionValueDAO;
import com.is.inventory.dao.ProductItemOptionValueDAO;
import com.is.inventory.model.ProductItem;
import com.is.inventory.model.ProductItemOptionValue;
import com.is.inventory.model.ProductItemOptionValue;

public class ProductItemOptionValueDAOImpl implements ProductItemOptionValueDAO {

	private final String EM_LINK = "IS";

	// EntityManager entitymanager;

	@Override
	public ProductItemOptionValue getByPrimaryKey(ProductItemOptionValue product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductItemOptionValue productRecord = entitymanager.find(ProductItemOptionValue.class, product.getId());
		entitymanager.close();
		emfactory.close();
		return productRecord;
	}

	@Override
	public void update(ProductItemOptionValue product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductItemOptionValue productRecord = entitymanager.find(ProductItemOptionValue.class, product.getId());
		productRecord.setId(product.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(ProductItemOptionValue product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
	 	EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(product);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(ProductItemOptionValue product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductItemOptionValue productRecord = entitymanager.find(ProductItemOptionValue.class, product.getId());
		entitymanager.remove(productRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	

	protected List<ProductItemOptionValue> getProductItemOptionValueList(String query, Map<String, ?> parameters) {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Query _query = entitymanager.createQuery(query);

		if(parameters != null){
			Set<?> set = parameters.entrySet();
			Iterator<?> i = set.iterator();
			while (i.hasNext()) {
				Map.Entry<?, ?> me = (Map.Entry<?, ?>) i.next();
				_query.setParameter( (String) me.getKey(), me.getValue());
			}
		}
		@SuppressWarnings("unchecked")
		List<ProductItemOptionValue> productItemOptionValues = _query.getResultList();
		emfactory.close();
		return productItemOptionValues;
		
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

	@Override
	public List<ProductItemOptionValue> getProductItemOptionValueByProductItem(ProductItem productItem) throws DAOException {

		Map<String, Comparable> parameters = new HashMap<String, Comparable>();
		parameters.put("pitid", 1);
		
		String queryString = "Select pi from ProductItemOptionValue pi inner join pi.productItem pit"
				+ " inner join pi.productOption proOp "
				+ " where pit.id =:pitid order by proOp.optionOrder";
		List<ProductItemOptionValue> productItemOptionValueList =  getProductItemOptionValueList(queryString, parameters);
		
		return productItemOptionValueList;


	}


}
