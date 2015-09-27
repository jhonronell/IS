package com.is.inventory.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "`product_Option_name`")
public class ProductOptionName {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "product_type_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductType productType;
	
	private String name;
	
	@OneToMany(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "form_type_id", unique = false, nullable = true, insertable = true, updatable = true)
	private FormInputType formInputType;
	
	@OneToMany(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "product_option_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductOption productOption;
	
	private Set<ProductOptionSelection> productOptionSelections;

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
	 * @return the formInputType
	 */
	public FormInputType getFormInputType() {
		return formInputType;
	}

	/**
	 * @param formInputType
	 *            the formInputType to set
	 */
	public void setFormInputType(FormInputType formInputType) {
		this.formInputType = formInputType;
	}

	/**
	 * @return the productOption
	 */
	public ProductOption getProductOption() {
		return productOption;
	}

	/**
	 * @param productOption
	 *            the productOption to set
	 */
	public void setProductOption(ProductOption productOption) {
		this.productOption = productOption;
	}

	/**
	 * @return the productOptionSelections
	 */
	public Set<ProductOptionSelection> getProductOptionSelections() {
		return productOptionSelections;
	}

	/**
	 * @param productOptionSelections
	 *            the productOptionSelections to set
	 */
	public void setProductOptionSelections(Set<ProductOptionSelection> productOptionSelections) {
		this.productOptionSelections = productOptionSelections;
	}

}
