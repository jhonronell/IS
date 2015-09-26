package com.is.inventory.model;

import java.util.Date;

public class ProductItem {
	private int id;
	private Integer distributorId;
	private Double weight;
	private Double height;
	private Date dateAdded;
	private Date dateLastModified;
	private String serialNumber;
	private String sku;
	private Product productByCode;
	private Color color;
	private Product productById;
	private ProductPrice productPrice;

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
	 * @return the distributorId
	 */
	public Integer getDistributorId() {
		return distributorId;
	}

	/**
	 * @param distributorId
	 *            the distributorId to set
	 */
	public void setDistributorId(Integer distributorId) {
		this.distributorId = distributorId;
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
	 * @return the productByCode
	 */
	public Product getProductByCode() {
		return productByCode;
	}

	/**
	 * @param productByCode
	 *            the productByCode to set
	 */
	public void setProductByCode(Product productByCode) {
		this.productByCode = productByCode;
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
	public Product getProductById() {
		return productById;
	}

	/**
	 * @param productById
	 *            the productById to set
	 */
	public void setProductById(Product productById) {
		this.productById = productById;
	}

	/**
	 * @return the productPrice
	 */
	public ProductPrice getProductPrice() {
		return productPrice;
	}

	/**
	 * @param productPrice
	 *            the productPrice to set
	 */
	public void setProductPrice(ProductPrice productPrice) {
		this.productPrice = productPrice;
	}

}
