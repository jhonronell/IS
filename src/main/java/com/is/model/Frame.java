package com.is.model;

import java.math.BigDecimal;
import java.sql.Date;

public class Frame extends Product{

	private MaterialType materialType;
	private WheelSize wheelsize;
	private FrameType frameType;
	private float weight;
	private float size;
	
	public MaterialType getMaterialType() {
		return materialType;
	}
	public void setMaterialType(MaterialType materialType) {
		this.materialType = materialType;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	public float getSize() {
		return size;
	}
	public void setSize(float size) {
		this.size = size;
	}
	
	
	
}

