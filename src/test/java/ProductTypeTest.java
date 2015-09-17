import org.junit.Test;

import com.is.inventory.dao.impl.ProductTypeDaoImpl;

public class ProductTypeTest {

	@Test
	public void test() {
		ProductTypeDaoImpl productTypes = new ProductTypeDaoImpl();
		
		System.out.println(productTypes.getProductTypeList().toString());
		
		
	}

}
