package com.is.inventory.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemDAO;
import com.is.inventory.dao.ProductOptionDAO;
import com.is.inventory.dao.impl.ProductItemDAOImpl;
import com.is.inventory.dao.impl.ProductOptionDAOImpl;
import com.is.inventory.model.ProductItem;
import com.is.inventory.model.ProductItemOptionValue;
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductOptionSelection;
import com.is.inventory.model.ProductType;

@Controller
public class ProductItemController {
	/*
	@Autowired 
	@Qualifier("productServiceImpl")
	private ProductService productService;
	*/
	@SuppressWarnings("null")
	@RequestMapping(value = "/category/{type}/item/{productCode}", method = RequestMethod.GET)
	public String showProductList(@PathVariable String productCode,@PathVariable Integer type, Model model , HttpServletRequest request) throws DAOException {
		
		ProductItemDAO productItemDAO = new ProductItemDAOImpl();
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		List<ProductItem> productItems = productItemDAO.getProductItemsByCode(productCode);
		
		ProductType productType = new ProductType();
		productType.setId(type);
		List<ProductOption> productOptions = productOptionDao.getProductOptionsByType(productType); 
		
		if( productOptions.size() > 0){
			double productOptionSize;
			productOptionSize = Math.round((productOptions.size() / 2.0 ));
			model.addAttribute("productOptionSize",productOptionSize );
			model.addAttribute("productOptions",productOptions );
		}
		 
		model.addAttribute("productItems",productItems );
		return "productitem";
	}

	@SuppressWarnings("null")
	@RequestMapping(value = "/productitem/save", method = RequestMethod.GET)
	public String persistProductItem(@PathVariable String productCode,@PathVariable Integer type, Model model , HttpServletRequest request) throws DAOException {
		
		ProductItemDAO productItemDAO = new ProductItemDAOImpl();
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		List<ProductItem> productItems = productItemDAO.getProductItemsByCode(productCode);
		
		ProductItem productItem = new ProductItem();
		
		ProductType productType = new ProductType();
		productType.setId(type);
		List<ProductOption> productOptions = productOptionDao.getProductOptionsByType(productType);

		if(!productOptions.isEmpty()){
			List<ProductItemOptionValue> productItemOptionValues = null;
			for(ProductOption productOption: productOptions ){
				 String productOptionValue = request.getParameter(productOption.getProductOptionName().getName().toString());	
			
				 ProductItemOptionValue productItemOptionValue = new ProductItemOptionValue();
				 
				 ProductOptionSelection productOptionSelectionValue = new ProductOptionSelection();
				 
				 productItemOptionValue.setProductItem(productItem);
				 productItemOptionValue.setProductOption(productOption);
				 productItemOptionValue.setProductOptionValue(productOptionSelectionValue);
				 
				 productItemOptionValues.add(productItemOptionValue);
			}
		}		
		model.addAttribute("productItems",productItems );
		return "productitem";
	}


}
