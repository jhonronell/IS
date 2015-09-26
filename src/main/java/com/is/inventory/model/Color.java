package com.is.inventory.model;

import java.util.Set;

public class Color {
	private int id;
	private String colorName;
	private String colorPhoto;
	private String colorHex;
	private String colorCode;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the colorName
	 */
	public String getColorName() {
		return colorName;
	}

	/**
	 * @param colorName
	 *            the colorName to set
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
	 * @param colorPhoto
	 *            the colorPhoto to set
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
	 * @param colorHex
	 *            the colorHex to set
	 */
	public void setColorHex(String colorHex) {
		this.colorHex = colorHex;
	}

	/**
	 * @return the colorCode
	 */
	public String getColorCode() {
		return colorCode;
	}

	/**
	 * @param colorCode
	 *            the colorCode to set
	 */
	public void setColorCode(String colorCode) {
		this.colorCode = colorCode;
	}

}
