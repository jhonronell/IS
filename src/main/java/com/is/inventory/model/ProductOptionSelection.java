package com.is.inventory.model;

public class ProductOptionSelection {

	private int ID;
	private int value;
	private ProductOptionName productOptionName;
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
	 * @return the value
	 */
	public int getValue() {
		return value;
	}
	/**
	 * @param value the value to set
	 */
	public void setValue(int value) {
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
