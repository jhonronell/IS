import org.junit.Test;

import com.is.inventory.dao.ColorDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.impl.ColorDAOImpl;
import com.is.inventory.model.Color;
import com.is.inventory.model.AddressLookup;

public class ColorTest {

	@Test
	public void insertColor() throws DAOException {
		
		ColorDAO colorDao = new ColorDAOImpl();
		Color color = new Color();
		color.setColorHex("#####");
		color.setColorName("BLUE");
		color.setColorPhoto("D:\"");
		colorDao.insert(color);
		
	}
	@Test
	public void getColor() throws DAOException {
		
		ColorDAO colorDao = new ColorDAOImpl();
		Color color = new Color();
		color.setId(1);
		Color colorRecord = colorDao.getByPrimaryKey(color);
		System.out.println(colorRecord.getColorCode());
		
	}
	@Test
	public void deleteColor() throws DAOException {
		
		ColorDAO colorDao = new ColorDAOImpl();
		Color color = new Color();
		color.setId(2);
		colorDao.delete(color);
	}
	
	@Test
	public void updateColor() throws DAOException {
		
		ColorDAO colorDao = new ColorDAOImpl();
		Color color = new Color();
		color.setId(1);
		color.setColorName("PINK");
		colorDao.update(color);
		
	}

}
