package com.is.inventory.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "`product_type`")
public class ProductType {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	
	@Column(name="date_added")
	private Integer dateAdded;
	
	@Column(name="added_by")
	private Integer addedBy;
	
	@Column(name="is_active")
	private Boolean isactive;
	
	private String details;

	private Set<ProductOption> productOptions;

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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the dateAdded
	 */
	public Integer getDateAdded() {
		return dateAdded;
	}

	/**
	 * @param dateAdded
	 *            the dateAdded to set
	 */
	public void setDateAdded(Integer dateAdded) {
		this.dateAdded = dateAdded;
	}

	/**
	 * @return the addedBy
	 */
	public Integer getAddedBy() {
		return addedBy;
	}

	/**
	 * @param addedBy
	 *            the addedBy to set
	 */
	public void setAddedBy(Integer addedBy) {
		this.addedBy = addedBy;
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
	 * @return the details
	 */
	public String getDetails() {
		return details;
	}

	/**
	 * @param details
	 *            the details to set
	 */
	public void setDetails(String details) {
		this.details = details;
	}

	/**
	 * @return the productOptions
	 */
	public Set<ProductOption> getProductOptions() {
		return productOptions;
	}

	/**
	 * @param productOptions
	 *            the productOptions to set
	 */
	public void setProductOptions(Set<ProductOption> productOptions) {
		this.productOptions = productOptions;
	}

}
