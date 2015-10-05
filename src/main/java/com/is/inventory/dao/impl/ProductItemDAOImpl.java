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
import com.is.inventory.dao.ProductItemDAO;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductItem;

public class ProductItemDAOImpl implements ProductItemDAO {

	private final String EM_LINK = "IS";

	@Override
	public ProductItem getByPrimaryKey(ProductItem productItem) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		ProductItem productItemRecord = entitymanager.find(ProductItem.class, productItem.getId());
		entitymanager.close();
		emfactory.close();
		return productItemRecord;
	}

	@Override
	public void update(ProductItem productItem) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(ProductItem productItem) throws DAOException {
		// TODO Auto-generated method stub
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(productItem);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public int delete(ProductItem productItem) throws DAOException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProductItem> getByProductCode(String productCode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByPriceId(Integer priceId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByDistributorId(Integer distributorId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByColorId(Integer colorId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByWeight(Double weight) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByHeight(Double height) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getByAddedBy(Integer addedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getBySerialNumber(String serialNumber) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getBySku(String sku) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductItem> getProductItemsByCode(String productCode) {
	
		@SuppressWarnings("rawtypes")
		Map<String, Comparable> parameters = new HashMap<String, Comparable>();
		parameters.put("status", true);
		String queryString = "Select pi from ProductItem pi where pi.status = :status";
		List<ProductItem> productItems = getProductItemList(queryString, parameters);
		return productItems;
		
	}
	
	protected final List<ProductItem> getProductItemList(String query, Map<String, ?> parameters) {
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
		List<ProductItem> productItems = _query.getResultList();
		emfactory.close();
		return productItems;
	}

}
