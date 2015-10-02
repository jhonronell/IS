package DAO;
import org.junit.Test;

import com.is.inventory.dao.ContactDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.impl.ContactDAOImpl;
import com.is.inventory.model.Contact;
import com.is.inventory.model.Country;

public class ContactTest {

	@Test
	public void insertContactTest() throws DAOException {
		
		ContactDAO contactDao = new ContactDAOImpl();
		Contact contact = new Contact();
		
		contact.setContactType("email");
		contact.setValue("B@B.com");
		
		contactDao.insert(contact);
	}
	@Test
	public void getContact() throws DAOException {
		
		ContactDAO contactDao = new ContactDAOImpl();
		Contact contact = new Contact();
		contact.setId(1401);
		Contact contactRecord = contactDao.getByPrimaryKey(contact);
		
	}
	@Test
	public void deleteContact() throws DAOException {
		
		ContactDAO contactDao = new ContactDAOImpl();
		Contact contact = new Contact();
		contact.setId(1501);
		contactDao.delete(contact);
	}
	
	@Test
	public void updateContact() throws DAOException {
		
		ContactDAO contactDao = new ContactDAOImpl();
		Contact contact = new Contact();
		contact.setId(2401);
	    contact.setContactType("EMaIL");
		contact.setValue("Jhon Ronell Arana");
		contactDao.update(contact);
		
	}
}
