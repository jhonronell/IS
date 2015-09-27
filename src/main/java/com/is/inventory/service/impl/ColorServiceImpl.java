package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.impl.ColorDAOImpl;
import com.is.inventory.model.Color;
import com.is.inventory.service.ColorService;

public class ColorServiceImpl implements ColorService {

	private final ColorDAOImpl colorDao = new ColorDAOImpl();
	
	@Override
	public void addColor(Color color) {
		// TODO Auto-generated method stub
		colorDao.saveColor(color);
	}

	@Override
	public void updateColor(Color color) {
		// TODO Auto-generated method stub
		colorDao.updateColor(color);
	}

	@Override
	public void deleteColor(Color color) {
		// TODO Auto-generated method stub
		colorDao.deleteColor(color);
	}

	@Override
	public List<Color> getColorList(Color color) {
		// TODO Auto-generated method stub
		return colorDao.getColorList();
	}

}
