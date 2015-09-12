package com.is.inventory.model;

public class ProductOption {

	private int ID;
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
	 * @return the productOptionName
	 */
	public ProductOptionName getProductOptionName() {
		return productOptionName;
	}
	/**
	 * @param productOptionName the productOptionName to set
	 */
	public void setProductOptionName(ProductOptionName productOptionName) {
		this.productOptionName = productOptionName;
	}
	
}
