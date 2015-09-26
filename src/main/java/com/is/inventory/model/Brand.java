package com.is.inventory.model;

import java.util.Set;

public class Brand {
	private int id;
	private String name;
	private Country countryOfOrigin;
	private String dateAdded;
	private Boolean isActive;
	private String description;

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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the countryOfOrigin
	 */
	public Country getCountryOfOrigin() {
		return countryOfOrigin;
	}

	/**
	 * @param countryOfOrigin
	 *            the countryOfOrigin to set
	 */
	public void setCountryOfOrigin(Country countryOfOrigin) {
		this.countryOfOrigin = countryOfOrigin;
	}

	/**
	 * @return the dateAdded
	 */
	public String getDateAdded() {
		return dateAdded;
	}

	/**
	 * @param dateAdded
	 *            the dateAdded to set
	 */
	public void setDateAdded(String dateAdded) {
		this.dateAdded = dateAdded;
	}

	/**
	 * @return the isActive
	 */
	public Boolean getIsActive() {
		return isActive;
	}

	/**
	 * @param isActive
	 *            the isActive to set
	 */
	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

}
