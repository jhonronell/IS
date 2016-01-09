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
import com.is.inventory.dao.ProductDAO;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductItem;

public class ProductDAOImpl implements ProductDAO {

	private final String EM_LINK = "IS";

	// EntityManager entitymanager;

	@Override
	public Product getByPrimaryKey(Product product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Product productRecord = entitymanager.find(Product.class, product.getId());
		entitymanager.close();
		emfactory.close();
		return productRecord;
	}

	@Override
	public void update(Product product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Product productRecord = entitymanager.find(Product.class, product.getId());
		productRecord.setId(product.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(Product product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(product);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void delete(Product product) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Product productRecord = entitymanager.find(Product.class, product.getId());
		entitymanager.remove(productRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public List<Product> getByCode(String code) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getBySku(String sku) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDescription(String description) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByStatus(Byte status) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByModelId(Integer modelId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByBrandId(Integer brandId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByStock(Integer stock) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByProductTypeId(Integer productTypeId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByDateAddedBy(Integer dateAddedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getByBarcode(String barcode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getAllProducts() throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();

		Query query = entitymanager.createQuery("Select p from Product p where p.status = :s");
		query.setParameter("s", true);
		List<Product> products = query.getResultList();

		entitymanager.getTransaction().commit();
		emfactory.close();
		return products;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Product> getProductByStatus(Boolean status) throws DAOException {

		Map<String, Comparable> parameters = new HashMap<String, Comparable>();
		parameters.put("status", true);
		
		String queryString = "Select p from Product p where p.status = :status";
		
		List<Product> productList =  getProductList(queryString, parameters);

		for (Product product : productList) {
			Map<String, Comparable> productItemsParameters = new HashMap<String, Comparable>();
			
			String productItemQueryString = "Select pi from ProductItem pi where pi.product.code = :pcode";
			productItemsParameters.put("pcode", product.getCode());
			List<ProductItem> productItemList = getProductItemList(productItemQueryString, productItemsParameters);
			product.setStock(productItemList.size());
			product.setProductItem((List<ProductItem>) productItemList);
			
		}
		return productList;
	}

	protected List<Product> getProductList(String query, Map<String, ?> parameters) {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Query _query = entitymanager.createQuery(query);
		Set<?> set = parameters.entrySet();
		Iterator<?> i = set.iterator();

		while (i.hasNext()) {
			Map.Entry<?, ?> me = (Map.Entry<?, ?>) i.next();
			_query.setParameter( (String) me.getKey(), me.getValue());
		}
		@SuppressWarnings("unchecked")
		List<Product> products = _query.getResultList();
		emfactory.close();
		return products;
		
	}

	protected List<ProductItem> getProductItemList(String query, Map<String, ?> parameters) {

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
		List<ProductItem> products = _query.getResultList();
		emfactory.close();
		return products;
	}


}
