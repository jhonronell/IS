package com.is.inventory.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "`product_price`")
public class ProductPrice {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private Double price;
	private Double msrp;
	private Double capital;
	
	@Temporal(TemporalType.DATE)
	@Column(name="added_by")
	private Date AddedBy;

	@Temporal(TemporalType.DATE)
	@Column(name="date_added")
	private Date dateAdded;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_last_modified")
	private Date dateLastModified;
 
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

	public Date getAddedBy() {
		return AddedBy;
	}

	public void setAddedBy(Date addedBy) {
		AddedBy = addedBy;
	}



}
