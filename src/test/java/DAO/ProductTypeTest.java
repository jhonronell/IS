package DAO;
import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductTypeDAO;
import com.is.inventory.dao.impl.ProductTypeDAOImpl;
import com.is.inventory.model.ProductType;

public class ProductTypeTest {

	@Test
	public void insertProductTypeTest() throws DAOException {
		
		ProductTypeDAO productTypeDao = new ProductTypeDAOImpl();
		ProductType productType = new ProductType();
		
		productTypeDao.insert(productType);
	}
	@Test
	public void getProductType() throws DAOException {
		
		ProductTypeDAO productTypeDao = new ProductTypeDAOImpl();
		ProductType productType = new ProductType();
		productType.setId(1401);
		ProductType productTypeRecord = productTypeDao.getByPrimaryKey(productType);
		
		
	}
	@Test
	public void deleteProductType() throws DAOException {
		
		ProductTypeDAO productTypeDao = new ProductTypeDAOImpl();
		ProductType productType = new ProductType();
		productType.setId(1501);
		productTypeDao.delete(productType);
	}
	
	@Test
	public void updateProductType() throws DAOException {
		
		ProductTypeDAO productTypeDao = new ProductTypeDAOImpl();
		ProductType productType = new ProductType();
		productTypeDao.update(productType);
		
	}
}
