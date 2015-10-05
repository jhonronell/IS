package DAO;
import org.junit.Test;

import com.is.inventory.dao.BrandDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.impl.BrandDAOImpl;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Country;

public class BrandTest {

	@Test
	public void insertBrandTest() throws DAOException {
		
		BrandDAO brandDao = new BrandDAOImpl();
		Brand brand = new Brand();
		
		Country countryOfOrigin = new Country();
		countryOfOrigin.setId(5);
		brand.setCountryOfOrigin(countryOfOrigin);
		brand.setName("ISUZU");
		
		brand.setDescription("DEMO DEMO DEMO DEMO DEMO");
		brandDao.insert(brand);
	}
	@Test
	public void getBrand() throws DAOException {
		
		BrandDAO brandDao = new BrandDAOImpl();
		Brand brand = new Brand();
		brand.setId(1401);
		Brand brandRecord = brandDao.getByPrimaryKey(brand);
		System.out.println(brandRecord.getCountryOfOrigin().getCountryName() + "++++++++++++++++++++++++++++++++++++++++++" + brandRecord.getId()  );
		
	}
	@Test
	public void getBrands() throws DAOException {
		
		BrandDAO brandDao = new BrandDAOImpl();
		brandDao.getBrands();
		
	}
	@Test
	public void deleteBrand() throws DAOException {
		
		BrandDAO brandDao = new BrandDAOImpl();
		Brand brand = new Brand();
		brand.setId(1501);
		brandDao.delete(brand);
	}
	
	@Test
	public void updateBrand() throws DAOException {
		
		BrandDAO brandDao = new BrandDAOImpl();
		Brand brand = new Brand();
		brand.setId(10);
		brand.setDescription("Yeah I've updated the data");
		Country countryOfOrigin = new Country();
		countryOfOrigin.setId(10);
		brand.setCountryOfOrigin(countryOfOrigin);
		brandDao.update(brand);
		
	}
}
