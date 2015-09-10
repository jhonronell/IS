package com.is.inventory.model;

public class ProductAttributeValue {

	private int id; 
	private ProductAttribute productAttribute;
	private ProductAttributeValue productAttributeValue;
	/**
	 * @return the productAttributeValue
	 */
	public ProductAttributeValue getProductAttributeValue() {
		return productAttributeValue;
	}
	/**
	 * @param productAttributeValue the productAttributeValue to set
	 */
	public void setProductAttributeValue(ProductAttributeValue productAttributeValue) {
		this.productAttributeValue = productAttributeValue;
	}
	
	
}
