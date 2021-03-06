package com.is.inventory.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "`product_option`")

public class ProductOption {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@OneToOne(fetch = FetchType.EAGER ,cascade = { CascadeType.REFRESH, CascadeType.REFRESH })
	@JoinColumn(name = "product_option_name_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductOptionName productOptionName;
	
	
	
	@Temporal(TemporalType.DATE)
	@Column(name = "date_added")
	private Date dateAdded;

	@OneToOne(cascade = { CascadeType.REFRESH, CascadeType.REFRESH })
	@JoinColumn(name = "added_by", unique = false, nullable = true, insertable = true, updatable = true)
	private User addedBy;

	@OneToOne(cascade = { CascadeType.REFRESH, CascadeType.REFRESH })
	@JoinColumn(name = "product_type_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductType productType;

	@Column(name = "option_order")
	private int optionOrder;

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

	/**
	 * @return the addedBy
	 */
	public User getAddedBy() {
		return addedBy;
	}

	/**
	 * @param addedBy
	 *            the addedBy to set
	 */
	public void setAddedBy(User addedBy) {
		this.addedBy = addedBy;
	}

	public int getOrder() {
		return optionOrder;
	}

	public void setOrder(int order) {
		this.optionOrder = order;
	}

}
