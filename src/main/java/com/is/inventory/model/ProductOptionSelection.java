package com.is.inventory.model;

public class ProductOptionSelection {
	private int id;
	private String productOptionValue;
	private String productOptionText;
	private Boolean isactive;
	private ProductOptionName productOptionName;

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
	 * @return the productOptionValue
	 */
	public String getProductOptionValue() {
		return productOptionValue;
	}

	/**
	 * @param productOptionValue
	 *            the productOptionValue to set
	 */
	public void setProductOptionValue(String productOptionValue) {
		this.productOptionValue = productOptionValue;
	}

	/**
	 * @return the productOptionText
	 */
	public String getProductOptionText() {
		return productOptionText;
	}

	/**
	 * @param productOptionText
	 *            the productOptionText to set
	 */
	public void setProductOptionText(String productOptionText) {
		this.productOptionText = productOptionText;
	}

	/**
	 * @return the isactive
	 */
	public Boolean getIsactive() {
		return isactive;
	}

	/**
	 * @param isactive
	 *            the isactive to set
	 */
	public void setIsactive(Boolean isactive) {
		this.isactive = isactive;
	}

	/**
	 * @return the productOptionName
	 */
	public ProductOptionName getProductOptionName() {
		return productOptionName;
	}

	/**
	 * @param productOptionName
	 *            the productOptionName to set
	 */
	public void setProductOptionName(ProductOptionName productOptionName) {
		this.productOptionName = productOptionName;
	}

}
