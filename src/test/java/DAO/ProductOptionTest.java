package DAO;
import java.util.List;

import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionDAO;
import com.is.inventory.dao.impl.ProductOptionDAOImpl;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductType;

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
	@Test
	public  void getProductOptions() throws DAOException {
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		//ProductOption productOption = new ProductOption();
		//productOptionDao.update(productOption);
		
		ProductType productType = new ProductType();
		productType.setId(1);
		List<ProductOption> list = productOptionDao.getProductOptionsByType(productType);
		
		for(ProductOption productOption: list){
			System.out.println(productOption.getProductOptionName().getName());
		}
		
		System.out.println(list.size());
	}
}
