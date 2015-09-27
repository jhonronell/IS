import org.junit.Test;

import com.is.inventory.dao.impl.ProductTypeDAOImpl;

public class ProductTypeTest {

	@Test
	public void test() {
		ProductTypeDAOImpl productTypes = new ProductTypeDAOImpl();
		
		System.out.println(productTypes.getProductTypeList().toString());
		
		
	}

}
