package com.is.inventory.model;

import java.util.Date;
import java.util.Set;

public class ProductPrice {
	private int id;

	private Double price;
	private Double msrp;
	private Double capital;
	private Date dateAdded;
	private Date dateLastModified;
	private Integer dateAddedBy;

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
	 * @return the price
	 */
	public Double getPrice() {
		return price;
	}

	/**
	 * @param price
	 *            the price to set
	 */
	public void setPrice(Double price) {
		this.price = price;
	}

	/**
	 * @return the msrp
	 */
	public Double getMsrp() {
		return msrp;
	}

	/**
	 * @param msrp
	 *            the msrp to set
	 */
	public void setMsrp(Double msrp) {
		this.msrp = msrp;
	}

	/**
	 * @return the capital
	 */
	public Double getCapital() {
		return capital;
	}

	/**
	 * @param capital
	 *            the capital to set
	 */
	public void setCapital(Double capital) {
		this.capital = capital;
	}

	/**
	 * @return the dateAdded
	 */
	public Date getDateAdded() {
		return dateAdded;
	}

	/**
	 * @param dateAdded
	 *            the dateAdded to set
	 */
	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}

	/**
	 * @return the dateLastModified
	 */
	public Date getDateLastModified() {
		return dateLastModified;
	}

	/**
	 * @param dateLastModified
	 *            the dateLastModified to set
	 */
	public void setDateLastModified(Date dateLastModified) {
		this.dateLastModified = dateLastModified;
	}

	/**
	 * @return the dateAddedBy
	 */
	public Integer getDateAddedBy() {
		return dateAddedBy;
	}

	/**
	 * @param dateAddedBy
	 *            the dateAddedBy to set
	 */
	public void setDateAddedBy(Integer dateAddedBy) {
		this.dateAddedBy = dateAddedBy;
	}

}
