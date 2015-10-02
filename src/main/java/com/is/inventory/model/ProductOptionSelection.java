package com.is.inventory.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "`product_option_selection`")
public class ProductOptionSelection {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="product_option_value")
	private String productOptionValue;
	
	@Column(name="product_option_text")
	private String productOptionText;
	
	@Column(name="isActive")
	private Boolean isActive;
	
	@OneToOne(fetch=FetchType.LAZY )
	@JoinColumn(name = "product_option_name_id", referencedColumnName="id" , unique = false, nullable = true, insertable = true, updatable = true)
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
		return isActive;
	}

	/**
	 * @param isactive
	 *            the isactive to set
	 */
	public void setIsactive(Boolean isActive) {
		this.isActive = isActive;
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
