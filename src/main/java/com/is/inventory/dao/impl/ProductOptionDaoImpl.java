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
import com.is.inventory.dao.ProductOptionDAO;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductType;

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

	@Override
	public List getProductOptionsByType(ProductType productType) throws DAOException {
		Map<String, Comparable> parameters = new HashMap<String, Comparable>();
		parameters.put("productTypeId", productType.getId() );
		//String queryString = "Select b from ProductOption b where b.status = :status";
		String queryString = "Select productOption from ProductOption productOption left join productOption.productType productType where productType.id = :productTypeId";
		List<ProductOption> productOptions = getProductOptionList(queryString, parameters);
		return productOptions;
	}
	
	protected List<ProductOption> getProductOptionList(String query, Map<String, ?> parameters) {
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
		List<ProductOption> ProductOptions = _query.getResultList();
		emfactory.close();
		return ProductOptions;
	}

}
