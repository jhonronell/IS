package com.is.inventory.model;

public class ProductOptionSelection {

	private int ID;
	private String value;
	private ProductOptionName productOptionName;
	/**
	 * @return the ID
	 */
	public int getID() {
		return ID;
	}
	/**
	 * @param ID the ID to set
	 */
	public void setID(int ID) {
		this.ID = ID;
	}
	/**
	 * @return the value
	 */
	public String getValue() {
		return value;
	}
	/**
	 * @param value the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}
	/**
	 * @return the productOptionNameID
	 */
	public ProductOptionName getProductOptionName() {
		return productOptionName;
	}
	/**
	 * @param productOptionNameID the productOptionNameID to set
	 */
	public void setProductOptionName(ProductOptionName productOptionName) {
		this.productOptionName = productOptionName;
	}

	
	
	
}
