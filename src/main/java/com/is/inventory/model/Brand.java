package com.is.inventory.model;

public class Brand {

	private int id;
	private String name;
	private int CountryOfOrigin;
	private String dateAdded;
	private String description;
	private boolean isActive;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
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
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the dateAdded
	 */
	public String getDateAdded() {
		return dateAdded;
	}
	/**
	 * @param dateAdded the dateAdded to set
	 */
	public void setDateAdded(String dateAdded) {
		this.dateAdded = dateAdded;
	}
	/**
	 * @return the isActive
	 */
	public boolean isActive() {
		return isActive;
	}
	/**
	 * @param isActive the isActive to set
	 */
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public String getDescription() {
		// TODO Auto-generated method stub
		return this.description;
	}
	public void setDescription(String description) {
		// TODO Auto-generated method stub
		this.description = description;
	}
	/**
	 * @return the countryOfOrigin
	 */
	public int getCountryOfOrigin() {
		return CountryOfOrigin;
	}
	/**
	 * @param countryOfOrigin the countryOfOrigin to set
	 */
	public void setCountryOfOrigin(int countryOfOrigin) {
		CountryOfOrigin = countryOfOrigin;
	}
	
	
}
