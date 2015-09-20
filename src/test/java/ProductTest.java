import java.util.List;

import org.junit.Test;

import com.is.inventory.dao.impl.ProductDaoImpl;
import com.is.inventory.model.Product;

public class ProductTest {

	@Test
	public void test() {
		ProductDaoImpl productDao = new ProductDaoImpl();
		Product product = new Product(null);
		product.setId(1);
		Product result = productDao.getProduct(product);
		System.out.println(result.getName() + "- "+ result.getDescription());
		
	}
	@Test
	public void testProductList() {
		ProductDaoImpl productDao = new ProductDaoImpl();
		List<Product> result = productDao.getProducts();
		
		for(Product i : result){
			System.out.println(i.getName());
		}
	}


}
