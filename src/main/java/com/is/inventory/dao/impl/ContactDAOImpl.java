package com.is.inventory.dao.impl;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.is.inventory.dao.ContactDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Contact;

public class ContactDAOImpl implements ContactDAO {

	private final String EM_LINK = "IS";

	@Override
	public Contact getByPrimaryKey(Contact contact) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Contact contactRecord = entitymanager.find(Contact.class, contact.getId() );
		entitymanager.close();
		emfactory.close();
		return contactRecord;
	}

	@Override
	public void update(Contact contact) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Contact contactRecord = entitymanager.find(Contact.class, contact.getId());
		contactRecord.setId( contact.getId());
		contactRecord.setContactType( contact.getContactType());
		contactRecord.setValue( contact.getValue() );
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
	}

	@Override
	public void insert(Contact contact) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		entitymanager.persist(contact);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
		
	}

	@Override
	public void delete(Contact contact) throws DAOException {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory(EM_LINK);
		EntityManager entitymanager = emfactory.createEntityManager();
		entitymanager.getTransaction().begin();
		Contact contactRecord = entitymanager.find(Contact.class, contact.getId());
		entitymanager.remove(contactRecord);
		entitymanager.getTransaction().commit();
		entitymanager.close();
		emfactory.close();
		
	}

	@Override
	public List getByContactType(String contactType) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByValue(String value) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByContactFk(Integer contactFk) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}
