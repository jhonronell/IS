package com.is.inventory.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
	
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "product_option_name_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductOptionName productOptionName;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_added")
	private Date dateAdded;
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "added_by", unique = false, nullable = true, insertable = true, updatable = true)
	private User addedBy;
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "product_type_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductType productType;
	
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


}
