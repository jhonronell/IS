package com.is.inventory.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="`address_lookup`")
public class AddressLookup {
	
	@Id	@GeneratedValue(strategy=GenerationType.TABLE)
	@Column(name = "id")
	private int id;
	
	private String country;
	@Column(name = "major_area")
	private String majorArea;
	@Column(name = "zip_code")
	private String zipCode;
	private String city;
	private Set<Address> addresss;

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
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country
	 *            the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * @return the majorArea
	 */
	public String getMajorArea() {
		return majorArea;
	}

	/**
	 * @param majorArea
	 *            the majorArea to set
	 */
	public void setMajorArea(String majorArea) {
		this.majorArea = majorArea;
	}

	/**
	 * @return the zipCode
	 */
	public String getZipCode() {
		return zipCode;
	}

	/**
	 * @param zipCode
	 *            the zipCode to set
	 */
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city
	 *            the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the addresss
	 */
	public Set getAddresss() {
		return addresss;
	}

	/**
	 * @param addresss
	 *            the addresss to set
	 */
	public void setAddresss(Set addresss) {
		this.addresss = addresss;
	}

}
