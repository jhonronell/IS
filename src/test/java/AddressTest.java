import org.junit.Test;

import com.is.inventory.dao.impl.AddressDaoImpl;
import com.is.inventory.model.Address;

public class AddressTest {

	@Test
	public void test() {
		AddressDaoImpl addressDao = new AddressDaoImpl();
		Address address = new Address();
		address.setAddressOf(1);
		Address resultAddress = addressDao.getAddress(address);
		
		if(resultAddress != null){
			System.out.println(resultAddress.toString());	
		}
		System.out.println("Record not found");
		
		
	}

}
