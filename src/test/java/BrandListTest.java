import org.junit.Test;

import com.is.inventory.dao.impl.BrandDaoImpl;
import com.is.inventory.model.Brand;
import com.is.inventory.model.ProductType;

public class BrandListTest {

	@Test
	public void test() {
		
		BrandDaoImpl brandDao = new BrandDaoImpl();
		Brand brand1 = new Brand();
		brand1.setId(9);
		brand1.setCountryOfOrigin(1);
		brand1.setDescription("DEemo Demo");
		brand1.setName("Yamaha");
		
		Brand brand2 = new Brand();
		brand2.setId(6);
		brand2.setCountryOfOrigin(1);
		brand2.setDescription("DEemo Demo");
		brand2.setName("Kawasaki");
		
		
		brandDao.saveBrand(brand1);
		brandDao.saveBrand(brand2);
		
		
		ProductType productType = new ProductType();
		
		System.out.println(brandDao.getBrands(productType).toString());
	}

}
