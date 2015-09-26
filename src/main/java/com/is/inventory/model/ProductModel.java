package com.is.inventory.model;

import java.util.Set;


public class ProductModel
{
  private int id;
  private String name;
  private Integer yearModel;
  private String details;
  private Set<Product> products;
/**
 * @return the id
 */
public int getId() {
	return id;
}
/**
 * @param id the id to set
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
 * @param name the name to set
 */
public void setName(String name) {
	this.name = name;
}
/**
 * @return the yearModel
 */
public Integer getYearModel() {
	return yearModel;
}
/**
 * @param yearModel the yearModel to set
 */
public void setYearModel(Integer yearModel) {
	this.yearModel = yearModel;
}
/**
 * @return the details
 */
public String getDetails() {
	return details;
}
/**
 * @param details the details to set
 */
public void setDetails(String details) {
	this.details = details;
}
/**
 * @return the products
 */
public Set<Product> getProducts() {
	return products;
}
/**
 * @param products the products to set
 */
public void setProducts(Set<Product> products) {
	this.products = products;
}

 
}
