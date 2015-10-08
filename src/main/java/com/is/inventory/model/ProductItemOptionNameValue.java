package com.is.inventory.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "`product_item_option_name_value`")
public class ProductItemOptionNameValue {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@OneToOne(cascade = { CascadeType.REFRESH, CascadeType.REFRESH, CascadeType.DETACH })
	@JoinColumn(name = "product_option_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductOption productOption;

	@OneToOne(cascade = { CascadeType.REFRESH, CascadeType.REFRESH, CascadeType.DETACH })
	@JoinColumn(name = "product_option_value", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductOptionSelection productOptionValue;

	@OneToOne(cascade = { CascadeType.REFRESH, CascadeType.REFRESH, CascadeType.DETACH })
	@JoinColumn(name = "product_type_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductType productType;

	@OneToOne(cascade = { CascadeType.REFRESH, CascadeType.REFRESH, CascadeType.DETACH })
	@JoinColumn(name = "product_item_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductItem productItem;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ProductOption getProductOption() {
		return productOption;
	}

	public void setProductOption(ProductOption productOption) {
		this.productOption = productOption;
	}

	public ProductOptionSelection getProductOptionValue() {
		return productOptionValue;
	}

	public void setProductOptionValue(ProductOptionSelection productOptionValue) {
		this.productOptionValue = productOptionValue;
	}

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public ProductItem getProductItem() {
		return productItem;
	}

	public void setProductItem(ProductItem productItem) {
		this.productItem = productItem;
	}

}
