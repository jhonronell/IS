package DAO;
import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductPriceDAO;
import com.is.inventory.dao.impl.ProductPriceDAOImpl;
import com.is.inventory.model.ProductPrice;
import com.is.inventory.model.ProductPrice;

public class ProductPriceTest {

	@Test
	public void insertProductPriceTest() throws DAOException {
		
		ProductPriceDAO productPriceDao = new ProductPriceDAOImpl();
		ProductPrice productPrice = new ProductPrice();
		
		productPriceDao.insert(productPrice);
	}
	@Test
	public void getProductPrice() throws DAOException {
		
		ProductPriceDAO productPriceDao = new ProductPriceDAOImpl();
		ProductPrice productPrice = new ProductPrice();
		productPrice.setId(1401);
		ProductPrice productPriceRecord = productPriceDao.getByPrimaryKey(productPrice);
		
		
	}
	@Test
	public void deleteProductPrice() throws DAOException {
		
		ProductPriceDAO productPriceDao = new ProductPriceDAOImpl();
		ProductPrice productPrice = new ProductPrice();
		productPrice.setId(1501);
		productPriceDao.delete(productPrice);
	}
	
	@Test
	public void updateProductPrice() throws DAOException {
		
		ProductPriceDAO productPriceDao = new ProductPriceDAOImpl();
		ProductPrice productPrice = new ProductPrice();
		productPriceDao.update(productPrice);
		
	}
}
