import org.junit.Test;

import com.is.inventory.dao.impl.ProductDaoImpl;
import com.is.inventory.model.Product;

public class ProductTest {

	@Test
	public void test() {
		ProductDaoImpl productDao = new ProductDaoImpl();
		Product product = new Product(null);
		product.setId(200);
		Product result = productDao.getProduct(product);
		
		System.out.println(result.toString());
		
		
	}

}
