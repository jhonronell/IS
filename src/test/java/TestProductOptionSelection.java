
import org.junit.Test;

import com.is.inventory.model.ProductOptionName;
import com.is.inventory.model.ProductOptionSelection;
import com.is.inventory.service.impl.ProductOptionSelectionServiceImpl;

public class TestProductOptionSelection {

	@Test
	public void createProductOptionSelection() {
	
		ProductOptionSelection productOptionSelection = new ProductOptionSelection();
		
		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setID(10);
		productOptionSelection.setProductOptionName(productOptionName);
		productOptionSelection.setValue("DEMO VALUE");
		
		ProductOptionSelectionServiceImpl productOptionSelectionService = new ProductOptionSelectionServiceImpl();
		productOptionSelectionService.addProductOptionSelection(productOptionSelection);
		
	}

}
