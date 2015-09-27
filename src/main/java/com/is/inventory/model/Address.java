package com.is.inventory.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "`address`")
public class Address {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String address_1;
	private String address_2;

	@OneToOne(cascade = { CascadeType.REFRESH,CascadeType.REFRESH, CascadeType.DETACH } )
	@JoinColumn(name = "address_lookup_id", unique = false, nullable = true, insertable = true, updatable = true)
	private AddressLookup addressLookup;

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
	 * @return the address_1
	 */
	public String getAddress_1() {
		return address_1;
	}

	/**
	 * @param address_1
	 *            the address_1 to set
	 */
	public void setAddress_1(String address_1) {
		this.address_1 = address_1;
	}

	/**
	 * @return the address_2
	 */
	public String getAddress_2() {
		return address_2;
	}

	/**
	 * @param address_2
	 *            the address_2 to set
	 */
	public void setAddress_2(String address_2) {
		this.address_2 = address_2;
	}

	/**
	 * @return the addressLookup
	 */

	public AddressLookup getAddressLookup() {
		return addressLookup;
	}

	/**
	 * @param addressLookup
	 *            the addressLookup to set
	 */
	public void setAddressLookup(AddressLookup addressLookup) {
		this.addressLookup = addressLookup;
	}

}
