import static org.junit.Assert.fail;

import org.junit.Assert;
import org.junit.Test;

import com.is.inventory.model.ProductOptionName;

public class OptionNameTest {

	@Test
	public void CreateOptionNameTest() {
		
		ProductOptionName optionName1 = new ProductOptionName();
		optionName1.setID(1);
		optionName1.setName("Colors");
		

		ProductOptionName optionName2 = new ProductOptionName();
		optionName2.setID(2);
		optionName2.setName("Colors");

		Assert.assertTrue(optionName2.getName().equalsIgnoreCase("Colors"));
		Assert.assertTrue(optionName1.getName().equalsIgnoreCase("Colors"));
		
	}

}
