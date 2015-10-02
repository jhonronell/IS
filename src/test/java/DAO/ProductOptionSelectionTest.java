package DAO;
import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionSelectionDAO;
import com.is.inventory.dao.impl.ProductOptionSelectionDAOImpl;
import com.is.inventory.model.ProductOptionSelection;

public class ProductOptionSelectionTest {

	@Test
	public void insertProductOptionSelectionTest() throws DAOException {
		
		ProductOptionSelectionDAO productOptionSelectionDao = new ProductOptionSelectionDAOImpl();
		ProductOptionSelection productOptionSelection = new ProductOptionSelection();
		
		productOptionSelectionDao.insert(productOptionSelection);
	}
	@Test
	public void getProductOptionSelection() throws DAOException {
		
		ProductOptionSelectionDAO productOptionSelectionDao = new ProductOptionSelectionDAOImpl();
		ProductOptionSelection productOptionSelection = new ProductOptionSelection();
		productOptionSelection.setId(1401);
		ProductOptionSelection productOptionSelectionRecord = productOptionSelectionDao.getByPrimaryKey(productOptionSelection);
		
		
	}
	@Test
	public void deleteProductOptionSelection() throws DAOException {
		
		ProductOptionSelectionDAO productOptionSelectionDao = new ProductOptionSelectionDAOImpl();
		ProductOptionSelection productOptionSelection = new ProductOptionSelection();
		productOptionSelection.setId(1501);
		productOptionSelectionDao.delete(productOptionSelection);
	}
	
	@Test
	public void updateProductOptionSelection() throws DAOException {
		
		ProductOptionSelectionDAO productOptionSelectionDao = new ProductOptionSelectionDAOImpl();
		ProductOptionSelection productOptionSelection = new ProductOptionSelection();
		productOptionSelectionDao.update(productOptionSelection);
		
	}
}
