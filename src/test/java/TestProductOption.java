import static org.junit.Assert.*;

import org.junit.Test;

import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductType;

public class TestProductOption {

	@Test
	public void test() {
		
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setID(1);
		productOptionName.setName("Colors");

		ProductType productType = new ProductType();
		productType.setName("Frame");
		
		ProductOption productOption = new ProductOption();
		productOption.setID(100);
		productOption.setProductOptionName(productOptionName);
		productOption.setProductType(productType);
		
	}

}
