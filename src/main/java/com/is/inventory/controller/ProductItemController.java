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
import com.is.inventory.model.ProductOption;
import com.is.inventory.model.ProductType;

@Controller
public class ProductItemController {
	/*
	@Autowired 
	@Qualifier("productServiceImpl")
	private ProductService productService;
	*/
	@RequestMapping(value = "/category/{type}/item/{productCode}", method = RequestMethod.GET)
	public String showProductList(@PathVariable String productCode,@PathVariable Integer type, Model model , HttpServletRequest request) throws DAOException {
		
		ProductItemDAO productItemDAO = new ProductItemDAOImpl();
		ProductOptionDAO productOptionDao = new ProductOptionDAOImpl();
		List<ProductItem> productItems = productItemDAO.getProductItemsByCode(productCode);
		
		ProductType productType = new ProductType();
		productType.setId(type);
		List<ProductOption> productOptions = productOptionDao.getProductOptionsByType(productType);

		if(!productOptions.isEmpty()){
		
			//List<ProductOptionValue> productOptionValue 
			
			for(ProductOption productOption: productOptions ){
				request.getParameter("name");	
			}
		}
	
    		
		
//		/List<ProductOption> productOptions = productOptionDao.getProductOptionsByType(productType) 
		//productItems.sort(a < b);
		model.addAttribute("productItemsOptions",productItemOptions );
		model.addAttribute("productItems",productItems );
		return "productitem";
	}

}
