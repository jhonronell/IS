package DAO;
import java.util.List;

import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemOptionValueDAO;
import com.is.inventory.dao.impl.ProductItemOptionValueDAOImpl;
import com.is.inventory.model.ProductItem;
import com.is.inventory.model.ProductItemOptionValue;

public class ProductItemOptionValueTest {

	@Test
	public void insertContactTest() throws DAOException {
		ProductItemOptionValueDAO productItemDao =  new ProductItemOptionValueDAOImpl();
		ProductItemOptionValue productItem = new ProductItemOptionValue();
		productItemDao.insert(productItem);
	}
	@Test
	public void getProductItemOptionValue() throws DAOException {
		ProductItemOptionValueDAO ProductItemOptionValueDao = new ProductItemOptionValueDAOImpl();
		ProductItemOptionValue ProductItemOptionValue = new ProductItemOptionValue();
		ProductItemOptionValue.setId(3951);
		ProductItemOptionValue ProductItemOptionValueRecord = ProductItemOptionValueDao.getByPrimaryKey(ProductItemOptionValue);
		//System.out.println(ProductItemOptionValueRecord.getProduct().getId() + "+++++++++++++++++++++++++++++++++++++");
	}
	@Test
	public void getProductItemOptionValues() throws DAOException {
		
		ProductItemOptionValueDAO productItemOptionValueDao = new ProductItemOptionValueDAOImpl();
		ProductItem productItem = new ProductItem();
		List<ProductItemOptionValue> optionValues = productItemOptionValueDao.getProductItemOptionValueByProductItem(productItem);
	

	}
	
}
