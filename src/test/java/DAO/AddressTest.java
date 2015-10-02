package DAO;
import org.junit.Test;

import com.is.inventory.dao.AddressDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.impl.AddressDAOImpl;
import com.is.inventory.model.Address;
import com.is.inventory.model.AddressLookup;

public class AddressTest {

	@Test
	public void insertAddress() throws DAOException {
		
		AddressDAO addressDao = new AddressDAOImpl();
		Address address = new Address();
		address.setAddress_1("Albay");
		address.setAddress_2("Legazpi City");
		AddressLookup addressLookUp = new AddressLookup();
		addressLookUp.setId(1);
		address.setAddressLookup(addressLookUp);
		addressDao.insert(address);
		
	}
	@Test
	public void getAddress() throws DAOException {
		
		AddressDAO addressDao = new AddressDAOImpl();
		Address address = new Address();
		address.setId(501);
		Address addressRecord = addressDao.getAddress(address);
		System.out.println(addressRecord.getAddressLookup().getCountry() + "++++++++++++++++++++++++++++++++++++++++++" + addressRecord.getId() + addressRecord.getAddress_1() );
		
	}
	@Test
	public void deleteAddress() throws DAOException {
		
		AddressDAO addressDao = new AddressDAOImpl();
		Address address = new Address();
		address.setId(201);
		Address addressRecord = addressDao.delete(address);
	}
	
	@Test
	public void updateAddress() throws DAOException {
		
		AddressDAO addressDao = new AddressDAOImpl();
		Address address = new Address();
		address.setId(801);
		address.setAddress_1("MAKATI");
		address.setAddress_2("MAKATI CITY");
		
		AddressLookup addressLookUp = new AddressLookup();
		addressLookUp.setId(2);
		address.setAddressLookup(addressLookUp);
		addressDao.update(address);
		
	}

}
