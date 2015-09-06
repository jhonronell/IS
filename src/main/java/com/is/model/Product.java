package com.is.model;

import java.math.BigDecimal;
import java.sql.Date;

public  class  Product {
	private int id;
	private String productCode;
	private String SKU;
	private String color;
	private String name;
	private Forwarder forwarder;
	private Date datePurchased;
	private Date dateReceived;
	private ProductStatus status;
	private Distributor distributor;
	private float investmentCapital;
	private int productId;
	private BigDecimal price;
	private BigDecimal MSRP;
	private String info;
	private String notes;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getSKU() {
		return SKU;
	}
	public void setSKU(String sKU) {
		SKU = sKU;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Forwarder getForwarder() {
		return forwarder;
	}
	public void setForwarder(Forwarder forwarder) {
		this.forwarder = forwarder;
	}
	public Date getDatePurchased() {
		return datePurchased;
	}
	public void setDatePurchased(Date datePurchased) {
		this.datePurchased = datePurchased;
	}
	public Date getDateReceived() {
		return dateReceived;
	}
	public void setDateReceived(Date dateReceived) {
		this.dateReceived = dateReceived;
	}
	public ProductStatus getStatus() {
		return status;
	}
	public void setStatus(ProductStatus status) {
		this.status = status;
	}
	public Distributor getDistributor() {
		return distributor;
	}
	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
	}
	public float getInvestmentCapital() {
		return investmentCapital;
	}
	public void setInvestmentCapital(float investmentCapital) {
		this.investmentCapital = investmentCapital;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public BigDecimal getMSRP() {
		return MSRP;
	}
	public void setMSRP(BigDecimal mSRP) {
		MSRP = mSRP;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}


}
