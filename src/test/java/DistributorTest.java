import java.util.List;

import org.junit.Test;

import com.is.inventory.dao.impl.DistributorDaoImpl;
import com.is.inventory.model.Distributor;

	public class DistributorTest {
		@Test
		public void getDistributors() {
			
			DistributorDaoImpl distributorDao = new DistributorDaoImpl();
			List<Distributor> distributors = distributorDao.getDistributors();
			
			for(Distributor distributor : distributors){
				System.out.println(distributor.getName());
			}
			
			
		}
		@Test
		public void getDistributor() {
			DistributorDaoImpl distributorDao = new DistributorDaoImpl();
			Distributor distributor = new Distributor();
			distributor.setID(1);
			Distributor distributorData = distributorDao.getDistributor(distributor);
			System.out.println(distributorData.getName());
		}
}
