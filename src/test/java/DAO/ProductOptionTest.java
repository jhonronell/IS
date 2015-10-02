package DAO;
import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionDAO;
import com.is.inventory.dao.impl.ProductOptionDAOImpl;
import com.is.inventory.model.ProductOption;

public class ProductOptionTest {

	@Test
	public void insertProductOptionTest() throws DAOException {
		
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		ProductOption productOption = new ProductOption();
		
		productOptionDao.insert(productOption);
	}
	@Test
	public void getProductOption() throws DAOException {
		
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		ProductOption productOption = new ProductOption();
		productOption.setId(1401);
		ProductOption productOptionRecord = productOptionDao.getByPrimaryKey(productOption);
		
		
	}
	@Test
	public void deleteProductOption() throws DAOException {
		
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		ProductOption productOption = new ProductOption();
		productOption.setId(1501);
		productOptionDao.delete(productOption);
	}
	
	@Test
	public void updateProductOption() throws DAOException {
		
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		ProductOption productOption = new ProductOption();
		productOptionDao.update(productOption);
		
	}
}
