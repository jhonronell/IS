package com.is.inventory.dao.impl;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemDAO;
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
	public List getByProductCode(String productCode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByPriceId(Integer priceId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDistributorId(Integer distributorId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByColorId(Integer colorId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByWeight(Double weight) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByHeight(Double height) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateAdded(Date dateAdded) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByDateLastModified(Date dateLastModified) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByAddedBy(Integer addedBy) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getBySerialNumber(String serialNumber) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getBySku(String sku) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
