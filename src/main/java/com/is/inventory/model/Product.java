package com.is.inventory.model;

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
@Table(name = "`product`")
public class Product {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String code;
	private String sku;
	private String description;
	private Boolean status;

	private Integer stock;
	
    @OneToMany
    @JoinColumn(name="product_code",referencedColumnName="code")
    private List<ProductItem> productItem;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_added")
	private Date dateAdded;
	
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<ProductItem> getProductItem() {
		return productItem;
	}

	public void setProductItem(List<ProductItem> productItem) {
		this.productItem = productItem;
	}

	@Temporal(TemporalType.DATE)
	@Column(name="date_last_modified")
	private Date dateLastModified;
 
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH } )
	@JoinColumn(name = "added_by", unique = false, nullable = true, insertable = true, updatable = true)
	private User addedBy;
	private String barcode;
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH } )
	@JoinColumn(name = "brand_id", unique = false, nullable = true, insertable = true, updatable = true)
	private Brand brand;
	
	@OneToOne(cascade = { CascadeType.REFRESH } )
	@JoinColumn(name = "model_id", unique = true, nullable = true )
	private ProductModel productModel;
		  
	@OneToOne(fetch=FetchType.EAGER, cascade = { CascadeType.REFRESH,CascadeType.REFRESH } )
	@JoinColumn(name = "product_type_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductType productType;
	
	/**
	 * @return the addedBy
	 */
	public User getAddedBy() {
		return addedBy;
	}

	/**
	 * @param addedBy the addedBy to set
	 */
	public void setAddedBy(User addedBy) {
		this.addedBy = addedBy;
	}
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
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code
	 *            the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the sku
	 */
	public String getSku() {
		return sku;
	}

	/**
	 * @param sku
	 *            the sku to set
	 */
	public void setSku(String sku) {
		this.sku = sku;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the status
	 */
	public Boolean getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(Boolean status) {
		this.status = status;
	}

	/**
	 * @return the stock
	 */
		public Integer getStock() {
			return stock;
		}
/*	public Integer getStock() {
		return productItem.size();
	}*/

	/**
	 * @param stock
	 *            the stock to set
	 */
	public void setStock(Integer stock) {
		this.stock = stock;
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

	/**
	 * @return the barcode
	 */
	public String getBarcode() {
		return barcode;
	}

	/**
	 * @param barcode
	 *            the barcode to set
	 */
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	/**
	 * @return the brand
	 */
	public Brand getBrand() {
		return brand;
	}

	/**
	 * @param brand
	 *            the brand to set
	 */
	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	/**
	 * @return the productModel
	 */
	public ProductModel getProductModel() {
		return productModel;
	}

	/**
	 * @param productModel
	 *            the productModel to set
	 */
	public void setProductModel(ProductModel productModel) {
		this.productModel = productModel;
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
