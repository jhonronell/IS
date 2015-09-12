
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductOptionSelection;

public class TestProductOptionSelection {

	@Test
	public void createProductOptionSelection() {
	
		ProductOptionSelection selection = new ProductOptionSelection();
		
		ProductOptionName optionName1 = new ProductOptionName();
		optionName1.setID(1);
		optionName1.setName("Colors");
		
		selection.setProductOptionName(optionName1);
		
		assertTrue( selection.getProductOptionName().getName() == "Colors" );
		
	}

}
