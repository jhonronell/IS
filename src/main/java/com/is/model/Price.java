package com.is.model;

import java.math.BigDecimal;

public class Price {
	
	private BigDecimal price;	
	private BigDecimal suggestedRetailPrice;
	private BigDecimal salePrice;
	private boolean onSale;
	
	public void setPrice(BigDecimal price){
		this.price = price;
	}
	public void setOnSale(boolean status){
		this.onSale = status;
	}
	

}
