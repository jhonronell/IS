// Generated by DB Solo 5.0.3 on 09 26, 15 at 12:29:04 PM
package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.ProductOptionSelectionDAO;
import com.is.inventory.model.ProductOptionSelection;
import com.is.inventory.service.ProductOptionSelectionService;


public class ProductOptionSelectionServiceImpl implements ProductOptionSelectionService
{

	private ProductOptionSelectionDAO productOptionSelectionDAO;
	
	public void setProductOptionSelectionDAO(ProductOptionSelectionDAO productOptionSelectionDAO) {
		this.productOptionSelectionDAO = productOptionSelectionDAO;
	}

	@Override
	public ProductOptionSelection getByPrimaryKey(ProductOptionSelection productOptionSelection) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ProductOptionSelection productOptionSelection) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(ProductOptionSelection productOptionSelection) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ProductOptionSelection productOptionSelection) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List getByProductOptionValue(String productOptionValue) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByProductOptionNameId(Integer productOptionNameId) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByProductOptionText(String productOptionText) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByIsactive(Byte isactive) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}



}
