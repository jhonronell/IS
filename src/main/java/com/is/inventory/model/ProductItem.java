package com.is.inventory.model;

import java.util.Date;

import javax.persistence.CascadeType;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name = "`product_item`")
public class ProductItem {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "distributor_id", unique = false, nullable = true, insertable = true, updatable = true)
	private Distributor distributor;
	private Double weight;
	private Double height;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_added")
	private Date dateAdded;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_last_modified")
	private Date dateLastModified;
	@Column(name="serial_number")
	private String serialNumber;
	private String sku;
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "color_id", unique = false, nullable = true, insertable = true, updatable = true)
	private Color color;
	
/*	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "brand_id", unique = false, nullable = true, insertable = true, updatable = true)
	private Product productById;*/
	
	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "price_id", unique = false, nullable = true, insertable = true, updatable = true)
	private ProductPrice productPrice;

	@ManyToOne(fetch=FetchType.LAZY )
	@JoinColumn(name = "product_code", referencedColumnName="code" , unique = false, nullable = true, insertable = true, updatable = true)
	private Product Product;
	

	/**
	 * @return the productPrice
	 */
	public ProductPrice getProductPrice() {
		return productPrice;
	}

	/**
	 * @param productPrice the productPrice to set
	 */
	public void setProductPrice(ProductPrice productPrice) {
		this.productPrice = productPrice;
	}

	/**
	 * @return the product
	 */
	public Product getProduct() {
		return Product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		Product = product;
	}
	
	/**
	 * @return the distributor
	 */
	public Distributor getDistributor() {
		return distributor;
	}

	/**
	 * @param distributor the distributor to set
	 */
	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
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
	 * @return the weight
	 */
	public Double getWeight() {
		return weight;
	}

	/**
	 * @param weight
	 *            the weight to set
	 */
	public void setWeight(Double weight) {
		this.weight = weight;
	}

	/**
	 * @return the height
	 */
	public Double getHeight() {
		return height;
	}

	/**
	 * @param height
	 *            the height to set
	 */
	public void setHeight(Double height) {
		this.height = height;
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
	 * @return the serialNumber
	 */
	public String getSerialNumber() {
		return serialNumber;
	}

	/**
	 * @param serialNumber
	 *            the serialNumber to set
	 */
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
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
	 * @return the color
	 */
	public Color getColor() {
		return color;
	}

	/**
	 * @param color
	 *            the color to set
	 */
	public void setColor(Color color) {
		this.color = color;
	}

	/**
	 * @return the productById
	 */
/*	public Product getProductById() {
		return productById;
	}

	*//**
	 * @param productById
	 *            the productById to set
	 *//*
	public void setProductById(Product productById) {
		this.productById = productById;
	}*/
/*
	*//**
	 * @return the productPrice
	 *//*
	public ProductPrice getProductPrice() {
		return productPrice;
	}

	*//**
	 * @param productPrice
	 *            the productPrice to set
	 *//*
	public void setProductPrice(ProductPrice productPrice) {
		this.productPrice = productPrice;
	}
*/
}
