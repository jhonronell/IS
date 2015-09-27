import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.DistributorDAO;
import com.is.inventory.dao.impl.DistributorDAOImpl;
import com.is.inventory.model.Address;
import com.is.inventory.model.Contact;
import com.is.inventory.model.Distributor;
import com.is.inventory.model.User;

public class DistributorTest {

	@Test
	public void insertDistributorTest() throws DAOException {
		DistributorDAO distributorDao = new DistributorDAOImpl();
		
		Distributor distributor = new Distributor();
		distributor.setName("MOTOWORLD");
		User user = new User();
		user.setId(2);
		distributor.setAddedBy(user);
		
		Address address = new Address();
		address.setId(601);
		distributor.setAddress(address);
		
		Contact contact = new Contact();
		contact.setId(2401);
		distributor.setContact(contact);
		
		distributorDao.insert(distributor);
	}
	@Test
	public void getDistributor() throws DAOException {
		
		DistributorDAO distributorDao = new DistributorDAOImpl();
		Distributor distributor = new Distributor();
		distributor.setId(1401);
		Distributor distributorRecord = distributorDao.getByPrimaryKey(distributor);
		
	}
	@Test
	public void deleteDistributor() throws DAOException {
		
		DistributorDAO distributorDao = new DistributorDAOImpl();
		Distributor distributor = new Distributor();
		distributor.setId(1501);
		distributorDao.delete(distributor);
	}
	
	@Test
	public void updateDistributor() throws DAOException {
		
		DistributorDAO distributorDao = new DistributorDAOImpl();
		Distributor distributor = new Distributor();
		distributor.setId(2401);
	
		distributorDao.update(distributor);
		
	}
}
