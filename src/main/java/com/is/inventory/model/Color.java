package com.is.inventory.model;

public class Color {

	private int ID;
	private String colorName;
	private String colorPhoto;
	private String colorHex;
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
	/**
	 * @return the colorName
	 */
	public String getColorName() {
		return colorName;
	}
	/**
	 * @param colorName the colorName to set
	 */
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	/**
	 * @return the colorPhoto
	 */
	public String getColorPhoto() {
		return colorPhoto;
	}
	/**
	 * @param colorPhoto the colorPhoto to set
	 */
	public void setColorPhoto(String colorPhoto) {
		this.colorPhoto = colorPhoto;
	}
	/**
	 * @return the colorHex
	 */
	public String getColorHex() {
		return colorHex;
	}
	/**
	 * @param colorHex the colorHex to set
	 */
	public void setColorHex(String colorHex) {
		this.colorHex = colorHex;
	}
	
}
