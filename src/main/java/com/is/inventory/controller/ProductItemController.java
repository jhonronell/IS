package com.is.inventory.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductItemDAO;
import com.is.inventory.dao.impl.ProductItemDAOImpl;
import com.is.inventory.model.ProductItem;

@Controller
public class ProductItemController {
	/*
	@Autowired 
	@Qualifier("productServiceImpl")
	private ProductService productService;
	*/
	@RequestMapping(value = "/items/{productCode}", method = RequestMethod.GET)
	public String showProductList(@PathVariable String productCode, Model model) throws DAOException {
		
		ProductItemDAO productItem = new ProductItemDAOImpl();
		List<ProductItem> productItems = productItem.getProductItemsByCode(productCode);
		
		//productItems.sort(a < b);
		
		model.addAttribute("productItems",productItems );
		return "productitem";
	}

}
