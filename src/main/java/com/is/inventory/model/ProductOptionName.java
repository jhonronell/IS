package com.is.inventory.model;

import java.util.Set;

public class ProductOptionName {
	private int id;
	private Integer productTypeId;
	private String name;
	private FormInputType formInputType;
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
	 * @return the productTypeId
	 */
	public Integer getProductTypeId() {
		return productTypeId;
	}

	/**
	 * @param productTypeId
	 *            the productTypeId to set
	 */
	public void setProductTypeId(Integer productTypeId) {
		this.productTypeId = productTypeId;
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
