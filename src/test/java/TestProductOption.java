import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.is.inventory.dao.impl.ProductOptionDaoImpl;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductType;
import com.is.inventory.service.impl.ProductOptionServiceImpl;

public class TestProductOption {

	@Test
	public void test() {
		
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setID(1);
		productOptionName.setName("Frame Size");
		ProductType productType = new ProductType();
		productType.setID(1);
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
	@Test
	public void getProductOPtionBasedOnType() {
		
		ProductOptionDaoImpl productOptionDao = new ProductOptionDaoImpl();
		ProductType productType = new ProductType();
		productType.setID(1);
		List<ProductOption> productOptions = productOptionDao.getProductOptions(productType);
		
		for(ProductOption i: productOptions){
			System.out.println(i.getProductOptionName().getID() );;
		}
		
	}
}
