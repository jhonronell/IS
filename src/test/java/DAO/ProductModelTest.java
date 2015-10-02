package DAO;
import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductModelDAO;
import com.is.inventory.dao.impl.ProductModelDAOImpl;
import com.is.inventory.model.ProductModel;

public class ProductModelTest {

	@Test
	public void insertContactTest() throws DAOException {
		ProductModelDAO productModelDao = new ProductModelDAOImpl();
		ProductModel productModel = new ProductModel();
		productModelDao.insert(productModel);
	}
	@Test
	public void getProductModel() throws DAOException {
		ProductModelDAO ProductModelDao = new ProductModelDAOImpl();
		ProductModel productModel = new ProductModel();
		productModel.setId(2);
		ProductModel productModelRecord = ProductModelDao.getByPrimaryKey(productModel);
		System.out.println(productModelRecord.getName() + "++++++++++++");
	}
	
}
