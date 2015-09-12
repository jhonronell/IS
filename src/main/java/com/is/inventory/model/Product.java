package com.is.inventory.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Product {

	private int id;
	private String name;
	private String description;
	private float weight;
	private float height;
	private String color;
	private String code;
	private String Sku;
	private Distributor distributor;
	private Date datePurchased;
	private Date dateReceived;
	private Date dateShipped;
	private float investmentCapital;
	private Price price;
	private ProductType productType;
	private Brand brand;
	private ProductModel productModel;
	
	// private ArrayList AttributeList = new ArrayList<Attribute>();

	

	public String getBrandName() {
		return this.brand.getName();
	}

	public int getBrandId() {
		return this.brand.getId();
	}

	public String getBrandDescription() {
		return this.brand.getDescription();
	}

	public String getProductModelName() {
		return this.productModel.getModelName();
	}

	public int getProductYearModel() {
		return this.productModel.getYearModel();
	}

	public float getProductPrice() {
		return this.price.getPrice();
	}

	public float getProductMSRP() {
		return this.price.getMsrp();
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
	 * @return the weight
	 */
	public float getWeight() {
		return weight;
	}

	/**
	 * @param weight
	 *            the weight to set
	 */
	public void setWeight(float weight) {
		this.weight = weight;
	}

	/**
	 * @return the height
	 */
	public float getHeight() {
		return height;
	}

	/**
	 * @param height
	 *            the height to set
	 */
	public void setHeight(float height) {
		this.height = height;
	}

	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}

	/**
	 * @param color
	 *            the color to set
	 */
	public void setColor(String color) {
		this.color = color;
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
		return Sku;
	}

	/**
	 * @param sku
	 *            the sku to set
	 */
	public void setSku(String sku) {
		Sku = sku;
	}

	/**
	 * @return the distributor
	 */
	public Distributor getDistributor() {
		return distributor;
	}

	/**
	 * @param distributor
	 *            the distributor to set
	 */
	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
	}

	/**
	 * @return the datePurchased
	 */
	public Date getDatePurchased() {
		return datePurchased;
	}

	/**
	 * @param datePurchased
	 *            the datePurchased to set
	 */
	public void setDatePurchased(Date datePurchased) {
		this.datePurchased = datePurchased;
	}

	/**
	 * @return the dateReceived
	 */
	public Date getDateReceived() {
		return dateReceived;
	}

	/**
	 * @param dateReceived
	 *            the dateReceived to set
	 */
	public void setDateReceived(Date dateReceived) {
		this.dateReceived = dateReceived;
	}

	/**
	 * @return the dateShipped
	 */
	public Date getDateShipped() {
		return dateShipped;
	}

	/**
	 * @param dateShipped
	 *            the dateShipped to set
	 */
	public void setDateShipped(Date dateShipped) {
		this.dateShipped = dateShipped;
	}

	/**
	 * @return the price
	 */
	public Price getPrice() {
		return price;
	}

	/**
	 * @param price
	 *            the price to set
	 */
	public void setPrice(Price price) {
		this.price = price;
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
	 * @return the model
	 */
	public ProductModel getProductModel() {
		return productModel;
	}

	/**
	 * @param model
	 *            the model to set
	 */
	public void setModel(ProductModel model) {
		this.productModel = model;
	}


	/**
	 * @return the capital
	 */
	public float getInvestmentCapital() {
		return investmentCapital;
	}

	/**
	 * @param capital
	 *            the capital to set
	 */
	public void setInvestmentCapital(float capital) {
		this.investmentCapital = capital;
	}

}
