import org.junit.Test;

import com.is.inventory.model.Attribute;
import com.is.inventory.model.Distributor;
import com.is.inventory.model.Price;
import com.is.inventory.model.Product;
import com.is.model.service.impl.ProductServiceImpl;

public class FrameTest {

	@Test
	public void test() {
		
		ProductServiceImpl productService = new ProductServiceImpl();
		int id = 1001;
		String code = "1111";
		String name = "Kenesis";
		
		Product product = new Product();
		product.setName(name);
		product.setCode(name);
		
		Price price = new Price();
		price.setMsrp(1000);
		price.setPrice(900);
		
		Distributor distributor= new Distributor();
		product.setDistributor(distributor);
		product.setPrice(price);
		product.setInvestmentCapital(900);
		
	    Attribute attribute = new Attribute();
	    product.addAttribute(attribute);
		
		
		product.setProductType("Frame");
		
	}

}
