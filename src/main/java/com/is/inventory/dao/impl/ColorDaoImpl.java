package com.is.inventory.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.is.inventory.dao.ColorDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Color;

public class ColorDAOImpl implements ColorDAO {

	private final String EM_LINK = "IS";

	@Override
	public Color getByPrimaryKey(Color color) throws DAOException {

		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Color colorRecord = entitymanager.find(Color.class, color.getId());
		entitymanager.close();
		emfactory.close();
		return colorRecord;

	}

	@Override
	public void update(Color color) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();

		Color colorRecord = entitymanager.find(Color.class, color.getId());

		colorRecord.setColorCode(color.getColorCode());
		colorRecord.setColorHex(color.getColorHex());
		colorRecord.setColorName(color.getColorName());
		colorRecord.setColorPhoto(color.getColorPhoto());
		colorRecord.setId(color.getId());
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();

	}

	@Override
	public void insert(Color color) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(color);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void delete(Color color) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Color colorRecord = entitymanager.find(Color.class, color.getId());
		entitymanager.remove(colorRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();

		emfactory.close();
	}

	@Override
	public List getByColorName(Color color) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByColorHex(Color color) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByColorCode(Color color) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
