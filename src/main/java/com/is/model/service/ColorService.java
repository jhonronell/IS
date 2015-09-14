package com.is.model.service;

import java.util.List;

import com.is.inventory.model.Color;

public interface ColorService {
	
	public void addColor(Color color);
	public void updateColor(Color color);
	public void deleteColor(Color color);
	public List<Color> getColorList(Color color);
	
}
