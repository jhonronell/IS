package com.is.inventory.model;

import java.util.Date;
import java.util.Set;

public class ProductOption {
	private int id;
	private Integer productOptionNameId;
	private Date dateAdded;
	private Integer dateAddedBy;
	private ProductType productType;
	private Set<ProductOptionName> productOptionNames;

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
	 * @return the productOptionNameId
	 */
	public Integer getProductOptionNameId() {
		return productOptionNameId;
	}

	/**
	 * @param productOptionNameId
	 *            the productOptionNameId to set
	 */
	public void setProductOptionNameId(Integer productOptionNameId) {
		this.productOptionNameId = productOptionNameId;
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

	/**
	 * @return the productType
	 */
	public ProductType getProductType() {
		return productType;
	}

	/**
	 * @param productType
	 *            the productType to set
	 */
	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	/**
	 * @return the productOptionNames
	 */
	public Set getProductOptionNames() {
		return productOptionNames;
	}

	/**
	 * @param productOptionNames
	 *            the productOptionNames to set
	 */
	public void setProductOptionNames(Set productOptionNames) {
		this.productOptionNames = productOptionNames;
	}

}
