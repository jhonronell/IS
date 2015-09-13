package com.is.inventory.model;

import java.util.Date;

public class ProductOption {

	private int ID;
	private ProductOptionName productOptionName;
	private ProductType productType;;
	private int addedBy;
	private Date addedDate;
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
	/**
	 * @return the productType
	 */
	public ProductType getProductType() {
		return productType;
	}
	/**
	 * @param productType the productType to set
	 */
	public void setProductType(ProductType productType) {
		this.productType = productType;
	}
	public int getAddedBy() {
		// TODO Auto-generated method stub
		return this.addedBy;
	}
	public void setAddedBy(int addedBy) {
		// TODO Auto-generated method stub
		this.addedBy = addedBy;
	}
	public Date getAddedDate() {
		// TODO Auto-generated method stub
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		// TODO Auto-generated method stub
		this.addedDate = addedDate;
	}
	
	
}
