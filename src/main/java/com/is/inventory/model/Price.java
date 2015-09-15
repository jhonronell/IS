package com.is.inventory.model;

import java.math.BigDecimal;

public class Price {

	private BigDecimal price;
	private BigDecimal msrp;
	private BigDecimal capitalPrice;
	private User addedBy;
	private String dateAdded;
	private int ID;
	
	/**
	 * @return the addedBy
	 */
	public User getAddedBy() {
		return addedBy;
	}
	/**
	 * @param addedBy the addedBy to set
	 */
	public void setAddedBy(User addedBy) {
		this.addedBy = addedBy;
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
	 * @return the iD
	 */
	public int getID() {
		return ID;
	}
	/**
	 * @param iD the iD to set
	 */
	public void setID(int iD) {
		this.ID = iD;
	}
	/**
	 * @return the capitalPrice
	 */
	public BigDecimal getCapitalPrice() {
		return capitalPrice;
	}
	/**
	 * @param capitalPrice the capitalPrice to set
	 */
	public void setCapitalPrice(BigDecimal capitalPrice) {
		this.capitalPrice = capitalPrice;
	}
	/**
	 * @return the price
	 */
	public BigDecimal getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	/**
	 * @return the msrp
	 */
	public BigDecimal getMsrp() {
		return msrp;
	}
	/**
	 * @param msrp the msrp to set
	 */
	public void setMsrp(BigDecimal msrp) {
		this.msrp = msrp;
	}
	
}
