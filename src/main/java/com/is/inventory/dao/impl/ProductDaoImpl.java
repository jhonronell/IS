package com.is.inventory.dao.impl;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductDAO;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductItem;

public class ProductDAOImpl implements ProductDAO  {

	private final String EM_LINK = "IS";

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
	public List<?> getByCode(String code) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getBySku(String sku) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByDescription(String description) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByStatus(Byte status) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByModelId(Integer modelId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByBrandId(Integer brandId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByStock(Integer stock) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByProductTypeId(Integer productTypeId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByDateAddedBy(Integer dateAddedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getByBarcode(String barcode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getAllProducts() throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();

		Query query = entitymanager.createQuery("Select p from Product p where p.status = :s");
		query.setParameter("s", true);
		List products = query.getResultList();
		
		entitymanager.getTransaction().commit();
		emfactory.close();
		return products;
	}
	
	public List<?> getProductByStatus(Boolean status) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		//SELECT p FROM Teacher t JOIN t.phones p WHERE t.firstName = :firstName
		/*
		 * JOIN keyword says the JPQL consists of an INNER JOIN (as INNER keyword is optional)
		   t.phones  is a path expression that traverses phone numbers of Teacher.
		   p is the identification variable for JPA inner join specified using  t.phones  path expression.
		 */
		Query query = entitymanager.createQuery("Select p from Product p where p.code = :code");
		query.setParameter("code", "CODE" );
		
		List<Product> products = query.getResultList();
		entitymanager.getTransaction().commit();
	    
	    for(Product product : products){
			Query ProductItem = entitymanager.createQuery("Select p from ProductItem p where product.code =:pcode");
			query.setParameter("pcode",  "CODE" );
			Collection<ProductItem> productItems = ProductItem.getResultList();
			product.setProductItem(productItems);
			entitymanager.getTransaction().commit();
		}
		emfactory.close();
		return products;
	}


}
