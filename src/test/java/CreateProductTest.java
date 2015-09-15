import static org.junit.Assert.fail;

import java.math.BigDecimal;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.junit.Test;

import com.is.inventory.model.Color;
import com.is.inventory.model.Distributor;
import com.is.inventory.model.Price;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductModel;
import com.is.inventory.model.ProductType;
import com.is.inventory.service.impl.ProductServiceImpl;

public class CreateProductTest {

	@Test
	public void test() throws ParseException {
		
		Product product = new Product("BIKE");
		product.setDescription("Bike Test");
		product.setCode("BKE123123");
		
		ProductModel productModel = new ProductModel();
		productModel.setID(33);
		
		Distributor distributor = new Distributor();
		distributor.setID(11);
		product.setDistributor(distributor);
		
		product.setProductModel(productModel);

		product.setWeight(11);
		product.setHeight(22);
		
		Color color = new Color();
		color.setID(11111);
		
		product.setColor(color);
		product.setSku("BKE");
		
		Date date = new Date(112132311);

		product.setDatePurchased(date);
		product.setDateReceived(date);
		product.setDateShipped(date);
		
		Price price = new Price();
		price.setCapitalPrice(new BigDecimal(200));
		price.setMsrp(new BigDecimal(250));
		price.setPrice(new BigDecimal(300));
		
		product.setPrice(price);
		
		ProductType productType = new ProductType();
		productType.setID(11);
	
		product.setProductType(productType);
		
		ProductServiceImpl productService = new ProductServiceImpl();
		productService.addProduct(product);

		
	}

}
