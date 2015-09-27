package com.is.inventory.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "`color`")
public class Color {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="color_name")
	private String colorName;
	@Column(name="color_photo")
	private String colorPhoto;
	@Column(name="color_hex")
	private String colorHex;
	@Column(name="color_code")
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
