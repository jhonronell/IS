package DAO;
import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionNameDAO;
import com.is.inventory.dao.impl.ProductOptionNameDAOImpl;
import com.is.inventory.model.ProductOptionName;

public class ProductOptionNameTest {

	@Test
	public void insertProductOptionNameTest() throws DAOException {
		
		ProductOptionNameDAO productOptionNameDao = new ProductOptionNameDAOImpl();
		ProductOptionName productOptionName = new ProductOptionName();
		
		productOptionNameDao.insert(productOptionName);
	}
	@Test
	public void getProductOptionName() throws DAOException {
		
		ProductOptionNameDAO productOptionNameDao = new ProductOptionNameDAOImpl();
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setId(1401);
		ProductOptionName productOptionNameRecord = productOptionNameDao.getByPrimaryKey(productOptionName);
		
		
	}
	@Test
	public void deleteProductOptionName() throws DAOException {
		
		ProductOptionNameDAO productOptionNameDao = new ProductOptionNameDAOImpl();
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setId(1501);
		productOptionNameDao.delete(productOptionName);
	}
	
	@Test
	public void updateProductOptionName() throws DAOException {
		
		ProductOptionNameDAO productOptionNameDao = new ProductOptionNameDAOImpl();
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionNameDao.update(productOptionName);
		
	}
}
