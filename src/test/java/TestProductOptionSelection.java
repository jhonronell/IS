
import java.util.List;

import org.junit.Test;

import com.is.inventory.dao.impl.ProductOptionSelectionDaoImpl;
import com.is.inventory.model.ProductOption;
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
	@Test
	public void displayProductOptionSelection() {

		ProductOptionSelectionDaoImpl productOptionSelectionDao = new ProductOptionSelectionDaoImpl();

		ProductOptionName productOptionName = new ProductOptionName();
		productOptionName.setID(10);
		List<ProductOptionSelection> productOptionSelections = productOptionSelectionDao
				.getProductOptionSelections(productOptionName);

		for (ProductOptionSelection i : productOptionSelections) {
			System.out.println(i.getValue())
			;
		}

	}

}
