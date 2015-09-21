package com.is.inventory.model;

public class ProductModel {
	
	private String modelName;
	private int yearModel;
	private Brand brand;
	private int ID;
	private String details;
	
	/**
	 * @return the details
	 */
	public String getBrandName() {
		return brand.getName();
	}
	public String getDetails() {
		return details;
	}
	/**
	 * @param details the details to set
	 */
	public void setDetails(String details) {
		this.details = details;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public int getYearModel() {
		return yearModel;
	}
	public void setYearModel(int year) {
		this.yearModel = year;
	}
	/**
	 * @return the brand
	 */
	public Brand getBrand() {
		return brand;
	}
	/**
	 * @param brand the brand to set
	 */
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	/**
	 * @return the iD
	 */
	public int getID() {
		return ID;
	}
	/**
	 * @param iD the iD to set
	 */
	public void setID(int iD) {
		ID = iD;
	}
	
}
