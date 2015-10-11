package DAO;
import java.util.List;

import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemDAO;
import com.is.inventory.dao.impl.ProductItemDAOImpl;
import com.is.inventory.model.ProductItem;
import com.is.inventory.model.ProductItemOptionValue;

public class ProductItemTest {

	@Test
	public void insertContactTest() throws DAOException {
		ProductItemDAO productItemDao = new ProductItemDAOImpl();
		ProductItem productItem = new ProductItem();
		productItemDao.insert(productItem);
	}
	@Test
	public void getProductItem() throws DAOException {
		ProductItemDAO ProductItemDao = new ProductItemDAOImpl();
		ProductItem ProductItem = new ProductItem();
		ProductItem.setId(3951);
		ProductItem ProductItemRecord = ProductItemDao.getByPrimaryKey(ProductItem);
		//System.out.println(ProductItemRecord.getProduct().getId() + "+++++++++++++++++++++++++++++++++++++");
	}
	@Test
	public void getProductItems() throws DAOException {
		ProductItemDAO ProductItemDao = new ProductItemDAOImpl();
		
		List<ProductItem> productItems = ProductItemDao.getProductItemsByCode("CODE");

		for(ProductItem productItem: productItems){
			if(!productItem.getProductItemOptionValues().isEmpty()){
				for(ProductItemOptionValue productItemOptionValue : productItem.getProductItemOptionValues()){
					System.out.println(productItemOptionValue.getId() + "AAAAAAAAAAAAA");
				}
			} 
		}
	}
	
}
