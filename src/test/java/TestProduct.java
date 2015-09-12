import static org.junit.Assert.*;

import org.junit.Test;

import com.is.inventory.model.Brand;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductType;

public class TestProduct {

	@Test
	public void createProduct() {
		
		Brand brand = new Brand();
		brand.setName("Merida");
		
		ProductType productType = new ProductType();
		productType.setName("Bike");
		
		Product product = new Product("Merida Bike");
		
		product.setProductType(productType);
		product.setBrand(brand);
		
		assertTrue(product.getProductType().getName() == "Bike" );
	}

}
