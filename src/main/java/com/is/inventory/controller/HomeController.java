package com.is.inventory.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.is.inventory.dao.BrandDAO;
import com.is.inventory.dao.DAOException;
//import com.is.inventory.dao.ProductDAO;
import com.is.inventory.dao.impl.BrandDAOImpl;
import com.is.inventory.model.Brand;
import com.is.inventory.model.Product;
import com.is.inventory.model.ProductModel;
import com.is.inventory.service.BrandService;
import com.is.inventory.service.ProductModelService;
import com.is.inventory.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private ProductService productService;
	@Autowired
	private BrandService brandService;
	@Autowired
	private ProductModelService modelService;

	@RequestMapping(value = "/starter", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) throws DAOException {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);

		// ProductDAO productDao = new ProductDAOImpl();
		BrandDAO brandDao = new BrandDAOImpl();
		// List<Product> productList = productDao.getProductByStatus(true);
		List<Brand> brandList = brandDao.getBrands();

		model.addAttribute("brandList", brandList);
		model.addAttribute("serverTime", formattedDate);
		// model.addAttribute("productList", productList);

		return "starter";
	}

	@RequestMapping(value = "/products/newProduct", method = RequestMethod.POST)
	public String addProduct(Model model, HttpServletRequest request, Locale locale) throws DAOException {

		String _productName = request.getParameter("name");
		String _productCode = request.getParameter("productCode");
		String _productModel = request.getParameter("model");
		String _description = request.getParameter("description");
		String _sku = request.getParameter("sku");

		int _yearModel = Integer.valueOf(request.getParameter("yearModel"));
		int brandId = Integer.valueOf(request.getParameter("brand"));

		List<Product> productList = productService.getAllProducts();
		List<Brand> brandList = brandService.getBrands();

		Product product = new Product();
		ProductModel productModel = new ProductModel();
		Brand brand = new Brand();

		productModel.setYearModel(_yearModel);
		productModel.setName(_productModel);

		brand.setId(brandId);

		product.setName(_productName);
		product.setCode(_productCode);
		product.setSku(_sku);
		product.setProductModel(productModel);
		product.setBrand(brand);
		product.setDescription(_description);

		model.addAttribute("brandList", brandList);
		model.addAttribute("productList", productList);

		productService.insert(product);
		
		return "starter";
	}

}
