package com.is.model.service.impl;

import java.util.List;

import com.is.inventory.dao.impl.ColorDaoImpl;
import com.is.inventory.model.Color;
import com.is.model.service.ColorService;

public class ColorServiceImpl implements ColorService {

	private final ColorDaoImpl colorDao = new ColorDaoImpl();
	
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
		return null;
	}

}
