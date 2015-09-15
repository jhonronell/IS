import org.junit.Test;

import com.is.inventory.model.ProductOptionName;
import com.is.inventory.service.impl.ProductOptionNameServiceImpl;
import com.is.inventory.service.impl.ProductOptionServiceImpl;

public class OptionNameTest {

	@Test
	public void CreateOptionNameTest() {
		
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setID(1);
		productOptionName.setName("Colors");
		
		ProductOptionNameServiceImpl productOptionNameService = new ProductOptionNameServiceImpl();
		productOptionNameService.addProductOptionName(productOptionName);
		
		
	}

}
