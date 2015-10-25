package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.ColorDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Color;
import com.is.inventory.service.ColorService;

public class ColorServiceImpl implements ColorService {


	private ColorDAO colorDAO; 

	public void setColorDAO(ColorDAO colorDAO) {
		this.colorDAO = colorDAO;
	}

	@Override
	public Color getByPrimaryKey(Color id) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Color color) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(Color color) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Color color) throws DAOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List getByColorName(Color color) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByColorHex(Color color) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByColorCode(Color color) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}


}
