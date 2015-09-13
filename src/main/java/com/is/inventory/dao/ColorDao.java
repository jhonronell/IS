package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.Color;

public interface ColorDao {
	
	public void addColor(Color color);
	public void updateColor(Color color);
	public void deleteColor(Color color);
	public List<Color> getColorList(Color color);
	
}
