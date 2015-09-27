import java.sql.Date;

import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductDAO;
import com.is.inventory.dao.impl.ProductDAOImpl;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductModel;
import com.is.inventory.model.ProductType;

public class ProductTest {

	@Test
	public void insertProductTest() throws DAOException {
		ProductDAO productDao = new ProductDAOImpl();
		
		Product product = new Product();
		product.setBarcode("111");

		Brand brand = new Brand();
		brand.setId(1);
		product.setBrand(brand);
		
		product.setCode("CODE");
		
		ProductModel productModel = new ProductModel();
		productModel.setId(2);
		product.setProductModel(productModel);
	
		ProductType productType = new ProductType();
		productType.setId(1);
		product.setProductType(productType);
		Date date = new Date(111);
		
		product.setDateLastModified(date);
		product.setDateAdded(date);
		
		productDao.insert(product);
	}
	@Test
	public void getProduct() throws DAOException {
		
		ProductDAO productDao = new ProductDAOImpl();
		Product product = new Product();
		product.setId(1401);
		Product productRecord = productDao.getByPrimaryKey(product);
		
	}
	@Test
	public void deleteProduct() throws DAOException {
		
		ProductDAO productDao = new ProductDAOImpl();
		Product product = new Product();
		product.setId(1501);
		productDao.delete(product);
	}
	
	@Test
	public void updateProduct() throws DAOException {
		
		ProductDAO productDao = new ProductDAOImpl();
		Product product = new Product();
		product.setId(2401);
	
		productDao.update(product);
		
	}
}
