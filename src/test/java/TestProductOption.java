import java.util.Date;

import org.junit.Test;

import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductType;
import com.is.model.service.impl.ProductOptionServiceImpl;

public class TestProductOption {

	@Test
	public void test() {
		
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setID(1);
		productOptionName.setName("Frame Size");
		ProductType productType = new ProductType();
		productType.setName("Frame");
		ProductOption productOption = new ProductOption();
		productOption.setID(100);
		productOption.setProductOptionName(productOptionName);
		productOption.setProductType(productType);
		productOption.setAddedBy(1);
		productOption.setAddedDate(new Date());
		
		ProductOptionServiceImpl productOptionService= new ProductOptionServiceImpl();
		productOptionService.addProductOption(productOption);
		
	}
}
