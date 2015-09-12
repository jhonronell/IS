import static org.junit.Assert.fail;

import org.junit.Test;

import com.is.inventory.model.Brand;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductOptionSelection;
import com.is.inventory.model.ProductType;

public class TestOption {

	@Test
	public void test() {
		
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setID(100);
		productOptionName.setName("Frame Size");
		
		ProductOptionSelection productOptionSelection = new ProductOptionSelection();
		productOptionSelection.setID(200);
		productOptionSelection.setValue(25);
		productOptionSelection.setProductOptionName(productOptionName);
		
		ProductOption productOption = new ProductOption();
		productOption.setProductOptionName(productOptionName);
		
		
		
		Product product = new Product();
		Brand brand = new Brand();
		brand.setName("Merida");
		
		ProductType productType = new ProductType();
		productType.setName("BIKE");
		
		ProductOption productOption1 = new ProductOption(); 
	
		productOption1.setID(5);
		productOption1.setName("Suspension");
		
		ProductOption productOption2 = new ProductOption();
		productOption2.setID(6);
		productOption2.setName("Seat");
		
		ProductOption productOption3 = new ProductOption();
		productOption3.setID(8);
		productOption3.setName("Deraileur");
		
		product.setName("MERIDA FRAME");
		product.setBrand(brand);
		product.setProductType(productType);
		
		product.getBrandName();
		product.getName();

		
			
		fail("Not yet implemented");
		
	}

}
