package com.is.inventory.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "`product_item_option_value`")
public class ProductItemOptionValue {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_option_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductOption productOption;

	@OneToOne(cascade = { CascadeType.REFRESH, CascadeType.REFRESH, CascadeType.DETACH })
	@JoinColumn(name = "product_option_value", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductOptionSelection productOptionValue;

	
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



	public ProductItem getProductItem() {
		return productItem;
	}

	public void setProductItem(ProductItem productItem) {
		this.productItem = productItem;
	}

}
